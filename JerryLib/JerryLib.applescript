-- To load this library, see section titled "-- Using a handler in a .scpt library" at the top of One_Liners.scpt.

on testJerryLib()
	return 0
end testJerryLib



(* The bad thing about this handler is that it always asks the user for admin credentials whether or not they are actually needed to answer the question on the given path.
Obviously, you can remove the 'with adminstrator privileges'.  Unfortunately, this will cause the method to return 'false' if an existing path cannot be probed because of bad permissions.  I can't see any way to differentiate between inadequate permissions and nonexisting file because they both set errNumber = 54.
The -e checks for directories or files.  To require that the given path be a directory, use -d.  For file, use -f.  For more variations, see:
     http://www.cyberciti.biz/tips/find-out-if-file-exists-with-conditional-expressions.html *)
on pathExistsWithAdmin(path)
	local fileExists -- boolean
	
	try
		set result to (do shell script "if [ -e " & quoted form of path & " ] ; then exit 0 ; else exit 1 ; fi" with administrator privileges)
		set fileExists to true
	on error errMsg number errNumber
		set fileExists to false
	end try
	
	return fileExists
end pathExistsWithAdmin



on pathExists(path)
	local fileExists -- boolean
	
	try
		set result to (do shell script "if [ -e " & quoted form of path & " ] ; then exit 0 ; else exit 1 ; fi")
		set fileExists to true
	on error errMsg number errNumber
		set fileExists to false
	end try
	
	return fileExists
end pathExists



-- This works with a POSIX package.  Never tried with HFS or Alias
on fileExists(theFile)
	tell application "System Events"
		if exists file theFile then
			return true
		else
			return false
		end if
	end tell
end fileExists



on addTrailingSlashIfMissing(aString)
	set chars to characters of aString
	if ((count of chars) is greater than 1) then
		if (last item of chars) is not "/" then
			set aString to aString & "/"
		end if
	else
		set aString to "/"
	end if
	return aString
end addTrailingSlashIfMissing



on removeTrailingSlash(aString)
	return trim(aString, "/", 1)
end removeTrailingSlash



(* Replaces the "~" POSIX shorthand for home folder with its actual path and returns the resulting path. *)
on expandHomeTildePathPrefix(aPath)
	if ((characters of aPath) is equal to (characters of "~")) then
		set aPath to (POSIX path of (path to home folder))
		-- Remove the trailing /
		set aPath to characters 1 thru ((count of characters of aPath) - 1) of aPath as string
	else if ((characters of aPath) is equal to (characters of "~/")) then
		set aPath to (POSIX path of (path to home folder))
	else if aPath begins with "~" then
		set home_posix_path to POSIX path of (path to home folder)
		set aPath to home_posix_path & characters 3 thru end of aPath
	end if
	return aPath
end expandHomeTildePathPrefix



(*
Performs POSIX chmod command on a given path
optionModeString is a string, the option(s) and/or mode will be sandwiched between the chmod program name and the path to be modified.  Examples…
"700"  Change mode of aPath to 700
"-N"  Remove all ACLs from aPath
"-RN"  Remove all ACLs from directory aPath, and from all of its contents
This method returns a human-readable string that says if it succeeded or failed, why &/or how.
*)
on chmodPath(optionModeString, aPath, doEscalate)
	set resultString to missing value
	set aPath to expandHomeTildePathPrefix(aPath)
	set cmd to "/bin/chmod " & optionModeString & " " & quoted form of aPath
	set errNum to missing value
	set errMsg to missing value
	set cmdResult to missing value
	try
		set cmdResult to do shell script cmd
	on error errMsg number errNum
	end try
	
	if ((cmdResult is missing value) or (length of cmdResult is 0) or (cmdResult is equal to 0)) and errNum is missing value then
		set resultString to "Succeeded without administrator privileges"
	else
		set errNum to missing value
		set errMsg to missing value
		set cmdResult to missing value
		try
			set cmdResult to do shell script cmd with administrator privileges
		on error errMsg number errNum
		end try
		if ((cmdResult is missing value) or (length of cmdResult is 0) or (cmdResult is equal to 0)) and errNum is missing value then
			set resultString to "Succeeded with administrator privileges"
		else
			set resultString to "Failed even with administrator privileges.  Command returned " & cmdResult & " with Error " & errNum & ": " & errMsg
		end if
	end if
	return resultString
end chmodPath



(* Use this to get an alias if you are not sure that the folder exists.  The parentAlias must exist *)
on getFolderAlias_MakeIfNeeded(parentAlias, folderName)
	tell application "Finder"
		if not (exists (folder folderName of parentAlias)) then
			make new folder at parentAlias with properties {name:folderName}
		end if
		set targetAlias to (folder folderName of parentAlias) as alias
	end tell
	return targetAlias
end getFolderAlias_MakeIfNeeded



on pathSpelledOut(aliasPath)
	set aPathComps to split(aliasPath as string, ":")
	if (count of last item of aPathComps) is 0 then
		set nParents to (count of aPathComps) - 1
		set aPathComps to (items 1 thru nParents) of aPathComps
	end if
	set aName to last item in aPathComps
	set aPathSpelledOut to aName & " is located "
	set nParents to (count of aPathComps) - 1
	set parents to (items 1 thru nParents) of aPathComps
	set i to 0
	repeat with dirName in parents
		if i is greater than 0 then
			repeat with j from 0 to i - 1
				set aPathSpelledOut to aPathSpelledOut & "   "
			end repeat
		end if
		if i is 0 then
			set aPathSpelledOut to aPathSpelledOut & "on volume \"" & dirName & "\""
		else if i is 1 then
			set aPathSpelledOut to aPathSpelledOut & "in folder \"" & dirName & "\""
		else
			set aPathSpelledOut to aPathSpelledOut & "in subfolder \"" & dirName & "\""
		end if
		if i is less than nParents - 1 then
			set aPathSpelledOut to aPathSpelledOut & return
		end if
		set i to i + 1
	end repeat
	return aPathSpelledOut
end pathSpelledOut



(* returns a string of the form "20100816j230115" where that "j" is a given joiner string *)
on geekDateTime(joiner)
	return geekDateDaysAgo(0) & joiner & geekTime()
end geekDateTime



(* returns an 8-character string of the form "20100816", which expresses the date that it was daysAgo ago.  Pass daysAgo=0 to get today's date.  If daysAgo is positive, the answer will be in the past.  If daysAgo is negative, the answer will be in the future *)
to geekDateDaysAgo(daysAgo) -- Old_date is text, not a date.
	set old_date to ((current date) - 24 * 3600 * daysAgo) as string
	set {year:y, month:m, day:d} to date old_date
	tell (y * 10000 + m * 100 + d) as string to text 1 thru 4 & text 5 thru 6 & text 7 thru 8
end geekDateDaysAgo



-- Returns the number of hours relative to GMT.  California is -7 or -8.
on timeZone()
	return (time to GMT) / hours -- hours is 3600, a built-in constant
end timeZone



-- Returns a 6-digit string representing the current time's hours, minutes and seconds.   For example, if the time is 23:01:15, returns 230115
on geekTime()
	set secsPastMidnight to time of (current date)
	set currentHour to ((secsPastMidnight - 1799) / 3600) as integer
	
	set secsPastHour to secsPastMidnight - 3600 * currentHour
	set currentMin to ((secsPastHour - 29) / 60) as integer
	
	set currentSec to secsPastHour - 60 * currentMin
	
	return padZeros(currentHour, 2) & padZeros(currentMin, 2) & padZeros(currentSec, 2)
end geekTime



(*
    # Converts the specified object - which may be of any type - into a string representation for logging/debugging.
    # Tries hard to find a readable representation - sadly, simple conversion with `as text` mostly doesn't work with non-primitive types.
    # An attempt is made to list the properties of non-primitive types (does not always work), and the result is prefixed with the type (class) name
    # and, if present, the object's name and ID.
    #
    # EXAMPLE
    #       toString(path to desktop)  # -> "[alias] Macintosh HD:Users:mklement:Desktop:"
    # To test this subroutine and see the various representations, use the following:
    #   repeat with elem in {42, 3.14, "two", true, (current date), {"one", "two", "three"}, {one:1, two:"deux", three:false}, missing value, me,  path to desktop, front window of application (path to frontmost application as text)}
    #       log my toString(contents of elem)
    #   end repeat
    #
Source: http://stackoverflow.com/questions/13653358/how-to-log-objects-to-a-console-with-applescript?rq=1
*)
on toString(anyObj)
	local i, txt, errMsg, orgTids, oName, oId, prefix
	set txt to ""
	repeat with i from 1 to 2
		try
			if i is 1 then
				if class of anyObj is list then
					set {orgTids, AppleScript's text item delimiters} to {AppleScript's text item delimiters, {", "}}
					set txt to ("{" & anyObj as string) & "}"
					set AppleScript's text item delimiters to orgTids # '
				else
					set txt to anyObj as string
				end if
			else
				set txt to properties of anyObj as string
			end if
		on error errMsg
			# Trick for records and record-*like* objects:
			# We exploit the fact that the error message contains the desired string representation of the record, so we extract it from there. This (still) works as of AS 2.3 (OS X 10.9).
			try
				set txt to do shell script "egrep -o '\\{.*\\}' <<< " & quoted form of errMsg
			end try
		end try
		if txt is not "" then exit repeat
	end repeat
	set prefix to ""
	if class of anyObj is not in {text, integer, real, boolean, date, list, record} and anyObj is not missing value then
		set prefix to "[" & class of anyObj
		set oName to ""
		set oId to ""
		try
			set oName to name of anyObj
			if oName is not missing value then set prefix to prefix & " name=\"" & oName & "\""
		end try
		try
			set oId to id of anyObj
			if oId is not missing value then set prefix to prefix & " id=" & oId
		end try
		set prefix to prefix & "] "
	end if
	return prefix & txt
end toString

-- Returns a string of digits representing n, padded on the left by as many leading zeros as are needed to make the length of the string equal to targLen
on padZeros(n, targLen)
	set nS to n as string
	set nNeeded to targLen - (count of nS)
	set zeros to ""
	repeat with i from 1 to nNeeded
		set zeros to "0" & zeros
	end repeat
	
	return zeros & nS
end padZeros



(* The handlers below use the File Read/Write suite http://developer.apple.com/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_cmds.html *)



on ClearOutDesktopLogFile(filename)
	(* Warning: filename must not end in ".log" or else a "file already open" error will result.  Maybe some system logging daemon takes over all .log files??  Some stupid bug in AppleScript? *)
	set filePath to (path to desktop as string) & filename
	set fileRef to open for access filePath with write permission
	set eof fileRef to 0
	set newText to "Beginning New Log at " & (current date) as string
	write newText to fileRef
	close access fileRef
end ClearOutDesktopLogFile



-- This reads non-ASCII characters properly provided that the file is encoded as UTF8, with or without BOM.
-- If file is not found, returns 'missing value'
-- If file exists but is empty, returns an empty string
on readTextFile(posixPath)
	try
		-- 'info for' could return a value, but we ignore it
		info for posixPath
	on error
		return missing value
	end try
	open for access (posixPath as POSIX file)
	try
		set fileContents to (read posixPath for (get eof posixPath) as «class utf8»)
	on error
		return ""
	end try
	close access posixPath
	return fileContents
end readTextFile



-- Writes given text to a given file path
-- filename must not end in ".log" or else a "file already open" error will result.
-- Maybe some system logging daemon takes over all .log files??
-- Uses File Read/Write suite of the Standard Additions scripting addition
-- If doAppend is true, appends.  If doAppend is false, overwrites.
on writeTextToPosixPath(aPath, newText, doAppend)
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to {""}
	if aPath begins with "~" then
		set home_posix_path to POSIX path of (path to home folder)
		set aPath to home_posix_path & characters 2 thru end of aPath
	end if
	log "aPath: " & aPath
	set filePath to (POSIX file aPath as text)
	set fileRef to open for access filePath with write permission
	if doAppend is true then
		write newText to fileRef starting at eof
	else
		-- Wipe out all existing text first
		set eof of fileRef to 0
		write newText to fileRef
	end if
	close access fileRef
	set AppleScript's text item delimiters to oldastid
end writeTextToPosixPath



-- Writes given text to a given file path, appending a line feed at the end
-- filename must not end in ".log" or else a "file already open" error will result.
-- Maybe some system logging daemon takes over all .log files??
-- Uses File Read/Write suite of the Standard Additions scripting addition
-- aPath is the path to which text will be written.  It may begin with "~" to indicate home.
-- If doAppend is true, appends.  If doAppend is false, overwrites.
on writeLineToPosixPath(aPath, newText, doAppend)
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to {""}
	if aPath begins with "~" then
		set home_posix_path to POSIX path of (path to home folder)
		set aPath to home_posix_path & characters 2 thru end of aPath
	end if
	log "aPath: " & aPath
	set filePath to (POSIX file aPath as text)
	set fileRef to open for access filePath with write permission
	-- See http://lists.apple.com/archives/applescript-users/2002/Feb/msg00994.html
	-- Note that it may be better to do as Chris suggests, so that *all* 'return' in all text will be unix line feeds.  In particular, if the first line written contains a regular AppleScript Old Mac 'return', BBEdit will think that the whole file has Old Mac line feeds.
	set unixLineFeed to ASCII character 10
	set newText to newText & unixLineFeed
	if doAppend is true then
		write newText to fileRef starting at eof
	else
		-- Wipe out all existing text first
		set eof of fileRef to 0
		write newText to fileRef
	end if
	close access fileRef
	set AppleScript's text item delimiters to oldastid
end writeLineToPosixPath



on WriteToDesktopTextFile(filename, newText, doAppend)
	-- filename must not end in ".log" or else a "file already open" error will result.
	-- Maybe some system logging daemon takes over all .log files??
	-- Uses File Read/Write suite of the Standard Additions scripting addition
	set filePath to (path to desktop as string) & filename
	set fileRef to open for access filePath with write permission
	set newText to (return & return & (current date) & ": " & newText) as string
	if doAppend is true then
		write newText to fileRef starting at eof
	else
		write newText to fileRef
	end if
	close access fileRef
end WriteToDesktopTextFile



-- Handler for directly writing to a file.  Handy for logging, etc.
on AppendToDesktopLogFile(filename, newText)
	-- filename must not end in ".log" or else a "file already open" error will result.
	-- Maybe some system logging daemon takes over all .log files??
	-- Uses File Read/Write suite of the Standard Additions scripting addition
	set filePath to (path to desktop as string) & filename
	set fileRef to open for access filePath with write permission
	set newText to (return & return & (current date) & ": " & newText) as string
	write newText to fileRef starting at eof
	close access fileRef
end AppendToDesktopLogFile



-- Returns a list.
-- If you're looking to split at line feeds, try to pass for delimiter either 'return' (without the quotes) or "\n" (with the quotes).  I've seen both work and both fail.  Probably it depends on the type of line feed.  For splitting data read from a file with unix line endings, "\n" works.
on split(aString, delimiter)
	if aString is missing value then
		return {}
	else
		set oldastid to AppleScript's text item delimiters
		set AppleScript's text item delimiters to delimiter
		set pieces to aString's text items
		set AppleScript's text item delimiters to oldastid
		return pieces
	end if
end split



on join(joiner, aList)
	set nJoiners to ((count of aList) - 1)
	set answer to ""
	set i to 0
	repeat with aItem in aList
		set answer to answer & aItem
		if i is less than nJoiners then
			set answer to answer & joiner
		end if
		set i to i + 1
	end repeat
	
	return answer
end join



to unquote(someText)
	set AppleScript's text item delimiters to "\""
	set someText to someText's text items
	set AppleScript's text item delimiters to {""} --> restore delimiters to default value
	-- Item 1 will be the opening quote, item 3 is closing quote, item 2 is what we want
	return item 2 of someText
end unquote



on searchAndReplace(this_text, search_string, replacement_string)
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to search_string
	-- We're going to split this_text at each searchString.  However, this will miss search_string if it is at the beginning or ending of this_text, since no split will be made there.  We fix that by temporarily appending a prefix and suffix "X".
	set this_text to "X" & this_text & "X"
	set the item_list to every text item of this_text
	set AppleScript's text item delimiters to replacement_string
	set this_text to item_list as string
	set AppleScript's text item delimiters to oldastid
	-- Remove the temporary prefix and suffix
	set aLength to ((count of characters of this_text) - 1)
	set this_text to characters 2 thru aLength of this_text as string
	return this_text
end searchAndReplace



on percentEscapeEncode(aText)
	return percentEscapeEncodeSelectively(aText, true, true)
end percentEscapeEncode



on encode_char(this_char)
	set the ASCII_num to (the ASCII number this_char)
	set the hex_list to {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"}
	set x to item ((ASCII_num div 16) + 1) of the hex_list
	set y to item ((ASCII_num mod 16) + 1) of the hex_list
	return ("%" & x & y) as string
end encode_char



(*
Parameters encode_URL_A and says encode_URL_B say whether or not to encode certain printable ASCII characters, as you can see.  For most purposes, both should be 'true' *)
on percentEscapeEncodeSelectively(this_text, encode_URL_A, encode_URL_B)
	set the standard_characters to "abcdefghijklmnopqrstuvwxyz0123456789"
	set the URL_A_chars to "$+!'/?;&@=#%><{}[]\"~`^\\|*"
	set the URL_B_chars to ".-_:"
	set the acceptable_characters to the standard_characters
	if encode_URL_A is false then set the acceptable_characters to the acceptable_characters & the URL_A_chars
	if encode_URL_B is false then set the acceptable_characters to the acceptable_characters & the URL_B_chars
	set the encoded_text to ""
	repeat with this_char in this_text
		if this_char is in the acceptable_characters then
			set the encoded_text to (the encoded_text & this_char)
		else
			set the encoded_text to (the encoded_text & encode_char(this_char)) as string
		end if
	end repeat
	return the encoded_text
end percentEscapeEncodeSelectively



(* Collapses all runs of consecutive tab characters, consecutive space characters, or consecutive combinations of tab characters and space characters each into a single space character, and returns the result *)
on coalesceTabsAndSpaces(aString)
	if aString is missing value then
		return aString
	end if
	set oldLength to count of aString
	set newLength to 0
	repeat while oldLength is not equal to newLength
		set oldLength to count of aString
		set aString to searchAndReplace(aString, "  ", " ")
		set aString to searchAndReplace(aString, "	", " ")
		set newLength to count of aString
	end repeat
	
	return aString
end coalesceTabsAndSpaces



on backslashEscapeSpaces(this_text)
	return searchAndReplace(this_text, " ", "\\ ")
end backslashEscapeSpaces



on clipboardSearchAndReplace(search_string, replacement_string)
	set the_string to the clipboard
	set the_string to searchAndReplace(the_string, search_string, replacement_string)
	set the clipboard to the_string
end clipboardSearchAndReplace



on verifyTextContains(aText, aTarget)
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to aTarget
	set answer to false
	try
		set textItems to text items of aText
		set nParts to count of textItems
		if nParts is greater than 1 then
			set answer to true
		end if
	end try
	set AppleScript's text item delimiters to oldastid
	return answer
end verifyTextContains



on removeFilenameExtension(this_name)
	if this_name contains "." then
		set this_name to ¬
			(the reverse of every character of this_name) as string
		set x to the offset of "." in this_name
		set this_name to (text (x + 1) thru -1 of this_name)
		set this_name to (the reverse of every character of this_name) as string
	end if
	return this_name
end removeFilenameExtension



(* Splits the input aText into three substrings and returns a record containing these three substrings as properties: preAsterisks, body, and postAsterisks *)
on trimAndReturnAsterisks(aText)
	-- Separate prefix Asterisks
	set originalText to aText
	set aText to my trim(aText, "*", 0)
	set preAsterisks to ""
	if aText is not equal to originalText then
		repeat with i from 1 to (length of originalText) - (length of aText)
			set preAsterisks to preAsterisks & "*"
		end repeat
	end if
	
	-- Separate suffix Asterisks
	set originalText to aText
	set aText to my trim(aText, "*", 2)
	set postAsterisks to ""
	if aText is not equal to originalText then
		repeat with i from 1 to (length of originalText) - (length of aText)
			set postAsterisks to postAsterisks & "*"
		end repeat
	end if
	
	set myRecord to {body:aText, preAsterisks:preAsterisks, postAsterisks:postAsterisks}
	return myRecord
end trimAndReturnAsterisks



on trimChars(aString, character_list, trim_indicator)
	-- trim_indicator: trim from 0 = beginning, 1 = end, 2 = both
	set newLength to -1
	set oldLength to length of aString
	repeat while newLength is not equal to oldLength
		set oldLength to length of aString
		repeat with aChar in character_list
			set aString to trim(aString, aChar, trim_indicator)
		end repeat
		set newLength to length of aString
	end repeat
	return aString
end trimChars



on trimwhitespace(aString, trim_indicator)
	-- trim_indicator: trim from 0 = beginning, 1 = end, 2 = both
	trimChars(aString, {" ", ASCII character 9, ASCII character 10, ASCII character 13}, trim_indicator)
end trimwhitespace



on trim(this_text, trim_substring, trim_indicator)
	-- trim_substring: A string to trim. 
	-- trim_indicator: trim from 0 = beginning, 1 = end, 2 = both
	set x to the length of the trim_substring
	-- TRIM BEGINNING
	if the trim_indicator is in {0, 2} then
		repeat while this_text begins with the trim_substring
			try
				set this_text to characters (x + 1) thru -1 of this_text as string
			on error
				-- the text contains nothing but the trim characters
				return ""
			end try
		end repeat
	end if
	-- TRIM ENDING
	if the trim_indicator is in {1, 2} then
		repeat while this_text ends with the trim_substring
			try
				set this_text to characters 1 thru -(x + 1) of this_text as string
			on error
				-- the text contains nothing but the trim characters
				return ""
			end try
		end repeat
	end if
	return this_text
end trim



-- Returns 'true' or 'false'.  Case-insensitive.  If aSuffix is an empty string, returns 'true'.
on hasSuffix(aString, aSuffix)
	set stringLength to length of aString
	set suffixLength to length of aSuffix
	--log (stringLength & " -- " & suffixLength)
	if stringLength is less than suffixLength then
		return false
	end if
	if stringLength is 0 then
		if suffixLength is 0 then
			return true
		else
			return false
		end if
	end if
	if suffixLength is 0 then
		return true
	end if
	set theEnd to characters (stringLength - suffixLength + 1) thru stringLength of aString as string
	-- It appears that AppleScript does a case-insensitive comparison in the following:
	if theEnd is aSuffix then
		return true
	end if
	return false
end hasSuffix



on systemVersion()
	set n to system attribute "sysv"
	set major to (n div 4096 * 10) + (n div 256 mod 16)
	set minor to n div 16 mod 16
	set bugfix to n mod 16
	return {major, minor, bugfix}
end systemVersion



-- Takes > 1 minute
on miniSystemProfile()
	return do shell script "/usr/sbin/system_profiler -detailLevel mini"
end miniSystemProfile



-- Takes, oh, 30 seconds
on microSystemProfile()
	return do shell script "/usr/sbin/system_profiler SPHardwareDataType SPMemoryDataType SPSoftwareDataType SPUniversalAccessDataType SPFrameworksDataType SPApplicationsDataType"
end microSystemProfile



-- Takes, oh, 10 seconds
on nanoSystemProfile()
	return do shell script "/usr/sbin/system_profiler SPHardwareDataType SPSoftwareDataType SPUniversalAccessDataType"
end nanoSystemProfile



on reportVersionOfApplicationId(appId)
	set v to "not found"
	try
		set v to get version of application id appId
	end try
	set comps to split(appId, ".")
	try
		set appName to item 3 of comps
	on error
		set appName to appId
	end try
	return appName & " version is " & v
end reportVersionOfApplicationId



on versionOfApplicationPath(path)
	set v to missing value
	try
		set v to get version of application path
	end try
	return v
end versionOfApplicationPath



-- The following reduces the 100 or so lines generated by miniSystemProfile to the half dozen most interesting lines, but it is a kludge and is not recommended unless you're really short on space.
on miniMiniSystemProfile()
	set sysText to miniSystemProfile()
	set sysLines to split(sysText, return)
	set profile to ""
	repeat with aLine in sysLines
		set wantedLine to ""
		if verifyTextContains(aLine, "Mac OS X") then
			if verifyTextContains(aLine, "System Version:") then
				set aLine to item 2 of split(aLine, ":") & return
				set wantedLine to aLine
			end if
		else if verifyTextContains(aLine, "  Memory:") then
			set wantedLine to aLine
			-- The following work only in Leopard
		else if verifyTextContains(aLine, "Model Name") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Model Identifier") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Processor Name") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Processor Speed") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Number of Processors") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Total Number of Cores") then
			set wantedLine to aLine
			-- The following work only in Tiger
		else if verifyTextContains(aLine, "Machine Name") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Machine Model") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "CPU Type") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "CPU Speed") then
			set wantedLine to aLine
		else if verifyTextContains(aLine, "Number of CPUs") then
			set wantedLine to aLine
		end if
		if length of wantedLine > 0 then
			set wantedLine to trim_line(wantedLine, " ", 2)
			set profile to profile & wantedLine & return
		end if
	end repeat
	return profile
end miniMiniSystemProfile



(* Opens a document on aPath with a specified application aApp *)
on launchPathWithApp(aPath, aApp)
	set hfsDoc to POSIX file aPath
	tell application aApp
		set newDoc to open hfsDoc
		set newWindow to window 1
	end tell
	return newWindow
end launchPathWithApp



(* Starting in, I think it was Mac OS X 10.5, AppleScript opens applications as hidden.  This handler takes advantage of that fact. *)
on openAppAsHidden(appNameOrPosixPath)
	tell application appNameOrPosixPath
		(* According to the AppleScript Language Guide > Class Reference > application, the 'application' class has about 5 properties, but only one of them, id (the bundle identifier), seems guaranteed to launch the app..  So we use id.¬
              Apparently, AppleScript is sometimes smart enough to discard a statement if it has no effect.  In this case, I've found we need to *do* something with x, or the app won't launch.  Trying to be neat, I tried this:¬
		set x to id
		set cmd to "/bin/echo " & x & " > /dev/null"
		tell me to do shell script cmd
		
		But it was insufficient; the app does not launch.  Oddly, and smelly, the following line works. *)
		log id
		(* Maybe *you* can find a better way! *)
	end tell
end openAppAsHidden



(* Will launch an app, quitting first if already running.  Unlike MiniGlot, this has the advantage of working for apps which have their localizations buried in frameworks, such as Bookdog and BookMacster.
languageCode is one of:
   two-letter ISO language code.  Examples: "en", "ja", "de"
  "default" for the current system default language
  "ask" to get a dialog
*)
on relaunchApp(appParentDir, appName, languageCode)
	quitAppIfRunning(appName, ask, true, 8.0)
	
	set appPath to appParentDir & "/" & appName
	set contentsPath to appPath & ".app/Contents"
	
	set cmd to "~/Documents/Programming/Builds/Release/plistread " & "CFBundleExecutable" & " " & contentsPath & "/" & "Info.plist" ----------------> THIS WILL NOT WORK ON ANY SYSTEM EXCEPT AUTHOR'S
	
	set executableName to do shell script cmd
	set executablePath to contentsPath & "/MacOS/" & executableName
	
	set languageArg to missing value
	if languageCode is "ask" then
		set aPrompt to "Choose localization to re-launch:" & return & appPath
		choose from list {"de", "en", "es", "fr", "it", "ja"} with prompt aPrompt
		try
			set languageCode to item 1 of result
			set languageArg to "-AppleLanguages '(" & languageCode & ")'"
		end try
	else
		set languageArg to ""
	end if
	
	if languageArg is not missing value then
		set cmd to executablePath & " " & languageArg & " &> /dev/null &"
		-- The  &> /dev/null & at the end tells the command to send both stdout and stderr to /dev/null.  This is so that the "do shell script" will not block until appName is quit.
		do shell script cmd
	end if
end relaunchApp



(* This handler may not work for apps with multiple names, for example, "Chrome" vs. "Google Chrome" *)
on isAppNameRunning(targetAppName)
	tell application "System Events"
		set runningProcesses to processes whose name is targetAppName
	end tell
	set answer to ((count of runningProcesses) is greater than 0)
	return answer
end isAppNameRunning



on isAppBundleIdentifierRunning(targetBundleIdentifier)
	tell application "System Events"
		set runningProcesses to processes whose bundle identifier is targetBundleIdentifier
	end tell
	set answer to ((count of runningProcesses) is greater than 0)
	return answer
end isAppBundleIdentifierRunning



(* 
If possible, use one of the equivalent handlers quitAppBundleIdentifierIfRunning() or quitAppIfRunningBundleIdentifier() instead, because this handler hangs for 20 seconds if the given app is not running.

The following one-liners, though commonly used,
	quit application "MyApp" 
	tell application "MyApp" to quit
have a couple of annoying behaviors:
1.  If MyApp is not installed, the stupid thing will churn for about 20 seconds, then put up a dialog "Where is MyApp".  That happens even if enclosed in try/end try.
2.  They return before the app is quit.  (See waitUntilDone, below).
The handler quitAppIfRunning was written to fix these issues. 
howSave should be: 'yes', 'no' or 'ask', withOUT the quotes.
waitUntilDone should be 'true' or 'false', withOUT the quotes.  This sets whether or not this handler should wait until the app quits before returning.
	  (Use 'true' if you want to immediately relaunch the application.  Otherwise, you'll get a "Connection is invalid" because it will connect to a dying app.)
aTimeout is the maximum time in seconds that it will waitUntilDone.  You need this in case the app will not quit, which ^will^ happen if a dirty document is open, howSave is 'ask', and the user clicks "Cancel".  The aTimeout does ^not^ affect how long the user gets to respond to the Save/Don't dialog, which is infinite.
Returns true if the app is not running. 
Example: quitAppIfRunning("Bookdog", ask, true, 4.5)
*)
on quitAppNameIfRunning(targetAppName, howSave, waitUntilDone, aTimeout)
	set succeeded to true
	try
		-- id of app "Chrome" will show the EXTREMELY ANNOYING "Where is 'Chrome'" dialog if Chrome is not running.  To avoid that, use System Events.  Unfortunately, the this takes 20 seconds if targetAppName is not running.
		tell application "System Events" to set targetBundleIdentifier to (bundle identifier of process targetAppName)
		-- THERE MAY BE A FASTER METHOD, USING BASH SHELL.  The following was taken from http://superuser.com/questions/346369/getting-the-bundle-identifier-of-an-os-x-application-in-a-shell-script
		(*
		$ bundle=$(mdfind -onlyin / kMDItemKind==Application | grep -i "/Whatever.app$" | head -1)
		$ defaults read "$bundle/Contents/Info" CFBundleIdentifier
		com.apple.finder
		*)
		-- If targetAppName is not running, will error out of the try here
		-- If we made it to here, targetAppName is probably running
		set isRunning to isAppBundleIdentifierRunning(targetBundleIdentifier)
	on error
		set isRunning to false
	end try
	if isRunning is true then
		set succeeded to quitAppBundleIdentifierIfRunning(targetBundleIdentifier)
	end if
	return succeeded
end quitAppNameIfRunning



on quitAppBundleIdentifierIfRunning(targetBundleIdentifier, howSave, waitUntilDone, aTimeout)
	set succeeded to true
	try
		set isRunning to isAppBundleIdentifierRunning(targetBundleIdentifier)
	on error
		set isRunning to false
	end try
	if isRunning is true then
		set succeeded to false
		try
			set answer to quit application id bundleIdentifier saving howSave
		end try
		
		tell me to set timeoutTime to ((time of (current date)) + aTimeout) mod (24 * 60 * 60)
		if (waitUntilDone) then
			repeat
				if (isAppBundleIdentifierRunning(targetBundleIdentifier) is false) then
					set succeeded to true
					exit repeat
				end if
				if (time of (current date) is less than timeoutTime) then
					exit repeat
				end if
				delay 1
				log "waiting for " & targetBundleIdentifier & " to quit"
			end repeat
		end if
	end if
	return succeeded
end quitAppBundleIdentifierIfRunning



-- This handler does not launch the target app if it is not running
on quitAppIfRunningBundleIdentifier(bi)
	tell application "System Events"
		set runCount to count (every process whose bundle identifier is bi)
	end tell
	if runCount is greater than 0 then
		tell application id bi
			close windows
			quit
		end tell
	end if
end quitAppIfRunningBundleIdentifier



on killAppNamed(appName)
	set cmdResult to -100
	tell application "System Events"
		set pid to 0
		with timeout of 10 seconds
			try
				set pid to unix id of process appName
			on error errMsg number errNumber
				set cmdResult to errNumber
			end try
		end timeout
		if pid is not 0 then
			set cmdResult to do shell script "/bin/kill " & pid
		end if
	end tell
	return cmdResult
end killAppNamed



-- Doesn't work because "No user interaction allowed".  Oh, well.
on displayDialogAsync(msg)
	set asCmd to "display dialog " & "\"" & msg & "\" buttons {} giving up after 5"
	set shellCmd to "osascript -e " & quoted form of asCmd
	log shellCmd
	do shell script shellCmd
end displayDialogAsync



on meName()
	set pathToMe to ((POSIX path of (path to me)) as string)
	set filename to getLastPathComponent(pathToMe)
	set aName to removeFilenameExtension(filename)
	return aName
end meName



(* Logs a message to the system log (which you can monitor in Console.app).  The msg is tagged with the name of this script. *)
on syslog1(msg)
	if (length of msg is greater than 1500) then
		set msg to (text 1 thru 1500 of msg) & " <snip> *** Sorry, Message > 1500 chars will not be reliably logged by BSD's 'logger'."
	end if
	set scriptName to meName()
	set cmd to "logger -t " & quoted form of scriptName & " " & quoted form of msg
	do shell script cmd
end syslog1



-- Simply logs a message to the system console
on syslog(msg)
	set cmd to "logger " & quoted form of msg
	do shell script cmd
end syslog



(* Returns true if aString has prefix, no otherwise.  Case sensitive.  Note: For case-insensitive compare, use the AppleScript term 'begins with' *)
on hasPrefix(prefix, aString)
	if length of prefix is 0 then
		return false
	end if
	if length of aString is less than length of prefix then
		return false
	end if
	set prefixChars to characters of prefix
	set stringChars to characters of aString
	set i to 1
	repeat with prefixChar in prefixChars
		set stringChar to (item i of stringChars)
		-- In AppleScript, "id" is the "identifier
		-- For characters, it is the Unicode code point
		-- See http://www.apple.com/applescript/features/unicode.html
		if id of stringChar is not id of prefixChar then
			return false
		end if
		set i to i + 1
	end repeat
	return true
end hasPrefix



(* Copies a file using /bin/cp, returns true if successful, otherwise false *)
on copyPath(src, dst)
	set ok to true
	try
		set cmd to "/bin/cp \"" & src & "\" \"" & dst & "\""
		do shell script cmd
	on error
		set ok to false
	end try
	return ok
end copyPath



(* Removes (unlinks) a given posix path, fails silently.  Overwrites any existing path in trash with same name.  Quotes the path, so you path cannot include a glob.  Fails silently. *)
on removePath(aPath)
	set target to quoted form of aPath
	set cmd to "/bin/rm -Rf " & target
	try
		do shell script cmd
	end try
end removePath



(* Removes (unlinks) a given posix path, fails silently.  Overwrites any existing path in trash with same name.  Does not quote the path, so path may be a glob.  Fails silently. *)
on removePathGlob(aPath)
	set cmd to "/bin/rm -Rf " & aPath
	try
		do shell script cmd
	end try
end removePathGlob



(* Trashes a file given a posix path, fails silently.  Finder makes a noise when trashing a file. *)
on trashPathUsingFinder(aPath)
	try
		tell application "Finder" to move (POSIX file aPath) as alias to trash
	end try
end trashPathUsingFinder



(* If a directory does not exist at a given path, creates it, also creating any intermediate ancestor directories which do not exist.  If given path already exists, does nothing.  Works with or without a trailing slash on the given path. *)
on ensurePathExists(path)
	set fragment to removeTrailingSlash(path)
	set missingComponents to {}
	set done to false
	repeat while done is false
		set cmd to "stat " & quoted form of fragment
		try
			do shell script cmd
			exit repeat
		on error
			set lastPathComponent to getLastPathComponent(fragment)
			set beginning of missingComponents to lastPathComponent
			set fragment to removeLastPathComponent(fragment, true)
		end try
		log "fragment: " & fragment
		-- In case someone passes a completely bogus path
		if (length of fragment is less than 2) then
			set done to true
		end if
	end repeat
	log ("frg = " & fragment)
	log ("mcs = " & missingComponents)
	repeat with component in missingComponents
		set fragment to fragment & "/" & component
		set cmd to "mkdir " & quoted form of fragment
		do shell script cmd
	end repeat
end ensurePathExists



(* Closes a window identified by the name in its title bar, if such a window exists *)
on closeFinderWindowWithTitle(targetName)
	tell application "Finder"
		set openWindows to windows
		repeat with aWindow in openWindows
			set thisName to name of aWindow
			log "window name: " & thisName
			if thisName is targetName then
				close aWindow
			end if
		end repeat
	end tell
end closeFinderWindowWithTitle



(* If aPath begins with "/", the first item in the returned list will be an empty string *)
on pathComponents(aPath)
	set aPath to trim(aPath, " ", 2)
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the "/"
	set components to every text item of aPath
	set AppleScript's text item delimiters to oldastid
	return components
end pathComponents



(* Gets the part of a filename after the last slash *)
on getLastPathComponent(aPath)
	set components to pathComponents(aPath)
	return last item of components as string
end getLastPathComponent

(* removeTrailingSlash indicates whether or not trailing slash should be removed too *)
on removeLastPathComponent(aPath, removeTrailingSlash)
	if aPath is missing value then
		return missing value
	end if
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the "/"
	set the item_list to every text item of aPath
	set lastItem to last item of item_list
	set offsetForTrailingSlash to 0
	if (count of lastItem) is 0 then
		-- aPath has a trailing slash
		set item_list to items 1 thru -2 of item_list
		set offsetForTrailingSlash to 1
	end if
	set lastItem to last item of item_list
	set cutLength to ((count of lastItem) as string) + offsetForTrailingSlash
	set wholeLength to length of aPath
	set newLength to wholeLength - cutLength
	if removeTrailingSlash is true then
		set newLength to newLength - 1
	end if
	set AppleScript's text item delimiters to oldastid
	set answer to (characters 1 thru newLength of aPath) as string
	return answer
end removeLastPathComponent



(* It seems to be not possible to remove a trailing colon from an alias.  If an alias is to a directory, it will have a colon at the end.  To remove it, I tried to convert it to a string, remove the colon, then convert it back to an alias.  But upon coverting the string with no colon back to an alias, the colon reapppears. *)
on removeLastAliasComponent(aAlias)
	if aAlias is missing value then
		return missing value
	end if
	set aString to aAlias as string
	set oldastid to AppleScript's text item delimiters
	set AppleScript's text item delimiters to the ":"
	set the pathComps to every text item of aString
	set lastItem to last item of pathComps
	set lengthOfLastItem to (count of lastItem)
	if lengthOfLastItem is 0 then
		-- Alias ends in a colon.  We need to cut off the second-last item.
		set secondLastItem to item ((count of pathComps) - 1) of pathComps
		set cutLength to (count of secondLastItem) + 1
		-- We added +1 for the colon at the end
	else
		set cutLength to lengthOfLastItem
	end if
	-- Also cut the colon between the last two nonzero pathComps
	set cutLength to cutLength + 1
	set wholeLength to length of aString
	set newLength to wholeLength - cutLength
	set AppleScript's text item delimiters to oldastid
	set aString to (characters 1 thru newLength of aString) as string
	set answer to aString as alias
	return answer
end removeLastAliasComponent



on getFilenameExtension(aPath)
	if aPath contains "." then
		set aPath to ¬
			(the reverse of every character of aPath) as string
		set x to the offset of "." in aPath
		set aPath to (text 1 thru (x - 1) of aPath)
		set aPath to (the reverse of every character of aPath) as string
	end if
	return aPath
end getFilenameExtension



(* Removes from a list the item at a given index and returns the new list *)
on removeItemFromListByIndex(aList, index)
	if index is greater than (count of aList) then
		return aList
	end if
	if index is less than 1 then
		return aList
	end if
	if index is greater than 1 then
		set beforeItems to items 1 thru (index - 1) of aList
	else
		set beforeItems to {}
	end if
	if index is less than (count of aList) then
		set afterItems to items (index + 1) thru end of aList
	else
		set afterItems to {}
	end if
	return beforeItems & afterItems
end removeItemFromListByIndex



-- This handler uses Finder, which has two effects:
-- * Should ask if authentication is required
-- * Gives the "trashed" sound effect
-- Returns true if requested path was found and deleted
-- Returns false if file could not be found or could not be deleted
to deletePosixFilePath(aPath)
	set ok to true
	tell application "Finder"
		try
			delete (POSIX file aPath) as alias
		on error
			set ok to false
		end try
	end tell
	return ok
end deletePosixFilePath



on deleteDuplicates(aList)
	set list2 to {}
	repeat with x from 1 to count of items of aList
		set n to item x of aList
		if n is not in list2 then set end of list2 to n
	end repeat
	return list2
end deleteDuplicates



-- Returns 'missing value' if targetString is not in aList
-- Case-sensitive
on indexOfStringInList(targetItem, aList)
	set i to 1
	repeat with aItem in aList
		considering case
			set compareResult to (aItem as string = targetItem as string)
		end considering
		if compareResult is true then
			return i
		end if
		set i to i + 1
	end repeat
	
	return missing value
end indexOfStringInList



-- AppleScript does not provide time with milliseconds, but unix does
on timeWithMilliseconds()
	try
		-- Will log an error since there is no such domain
		do shell script "defaults read noSuchDomain"
	on error errorText
		-- The first 23 chars of the error message will be the time
		text 1 thru 23 of errorText
	end try
end timeWithMilliseconds



on sort(my_list)
	set the index_list to {}
	set the sorted_list to {}
	repeat (the number of items in my_list) times
		set the low_item to ""
		repeat with i from 1 to (number of items in my_list)
			if i is not in the index_list then
				set this_item to item i of my_list as text
				if the low_item is "" then
					set the low_item to this_item
					set the low_item_index to i
				else if this_item comes before the low_item then
					set the low_item to this_item
					set the low_item_index to i
				end if
			end if
		end repeat
		set the end of sorted_list to the low_item
		set the end of the index_list to the low_item_index
	end repeat
	return the sorted_list
end sort



on latestFilenames(glob, limit)
	set byteCount to 0
	set cmd to "/bin/ls -ltww " & glob
	set lsResult to missing value
	try
		set lsResults to do shell script cmd
		set fileStrings to split(lsResults, return)
		set results to {}
		repeat with fileString in fileStrings
			set fileString to coalesceTabsAndSpaces(fileString)
			set fields to split(fileString, " ")
			set fileSize to item 5 of fields
			set byteCount to (byteCount + fileSize)
			if byteCount is less than limit then
				set filePath to last item of fields
				set pathComps to split(filePath, "/")
				set filename to last item of pathComps
				set end of results to filename
			end if
		end repeat
	on error
		set results to missing value
	end try
	return results
end latestFilenames



(* This method was written by Luther Fuller and posted in applescript-users@lists.apple.com on 20120325 *)
on getInstallHistory(leaders)
	set filePath to ((path to library folder from local domain) as text) & "Receipts:InstallHistory.plist"
	try
		filePath as alias
	on error
		return "The file " & filePath & " does not exist." & return & "It is available only in Snow Leopard." & return & return
	end try
	tell application "System Events" to set installList to value of property list file filePath -- a list
	set historyText to "Install History (./Library/Receipts/InstallHistory.plist)" & return
	repeat with i from 1 to (count items of installList)
		set installItem to (item i of installList)
		set itemName to (displayName of installItem) as text
		--
		set itemDate to (|date| of installItem)
		set dateText to (text 1 thru 3 of ((month of itemDate) as text))
		set dateText to (((day of itemDate) as text) & space & dateText & space & (year of itemDate))
		--
		set spaceLen to (lineLength - (length of itemName) - (length of dateText) - 2)
		set spacers to (space & (text 1 thru spaceLen of leaders) & space)
		set historyText to (historyText & itemName & spacers & dateText & return)
	end repeat
	
	"" & return
	repeat lineLength times
		the result & "_"
	end repeat
	set historyText to (historyText & the result)
	
	return historyText & return & return
end getInstallHistory



on narrateDurationOfProcess(processNameFragment, displayName)
	try
		set theLine to do shell script "ps -eo etime,%cpu,args | grep " & processNameFragment & " | grep -v grep"
		-- The "grep -v grep" is to exclude the previous grep process from the result
		log (theLine)
		set theChar to item 3 of characters in theLine
		set nDays to text 1 thru 2 of theLine
		set nHours to text 4 thru 5 of theLine
		set nMinutes to text 7 thru 8 of theLine
		set nSeconds to text 10 thru 11 of theLine
		set narrative to displayName & " has been running for " & nDays & " days " & nHours & " hours " & nMinutes & " minutes " & nSeconds & " seconds."
	on error
		set narrative to displayName & " is not running."
	end try
	return narrative & return & return
end narrateDurationOfProcess



(* Makes a lineage of folders; OK if some of the lineage already exists
* parameter 'root' is an alias to the parent of the lineage
* paramenter 'lineage' is a list of folder names which are desired to be created as necessary underneath root.
Returns an alias to the last folder in the lineage
Example:  Create lineage AA ▸ BB ▸ CC on the Desktop
tell application "Finder" to set myRoot to the desktop
set myLineage to {"AA", "BB", "CC"}
set lastFolder to makeFolders(myRoot, myLineage)
log "path: " & (POSIX path of (lastFolder as alias))
*)
on makeFolders(root, lineage)
	tell application "Finder"
		set currFolder to root
		repeat with aFolder in lineage
			try
				set nextFolder to make new folder at currFolder with properties {name:"" & aFolder}
			on error
				-- Assume that error occurred because folder already exists
				set nextFolder to folder aFolder of currFolder
			end try
			set currFolder to nextFolder
		end repeat
	end tell
	return currFolder
end makeFolders



on quickLookPath(path)
	set aAlias to (POSIX file path) -- as alias -- caused error
	tell application "Finder"
		reveal aAlias
		activate
		tell application "System Events"
			delay 1.0 -- threshold for working is 0.45 seconds
			tell process "Finder"
				keystroke space
			end tell
		end tell
	end tell
end quickLookPath



-- Activates Finder and types a space character, which will toggle the show/hide state of Finder's QuickLook window
on toggleFinderQuickLookWindow()
	tell application "Finder"
		activate
		tell application "System Events"
			delay 1.0 -- threshold for working is ??
			tell process "Finder"
				keystroke space
			end tell
		end tell
	end tell
end toggleFinderQuickLookWindow



(* Here's a universal handler to include in all of your GUI Scripting scripts so they will work in the new Mavericks world and the old world. This is included with the current version of my UI Browser product to help you write GUI Scripting scripts <http://pfiddlesoft.com/uibrowser>.  Bill Cheeseman.
*)
on enabledGUIScripting(flag)
	get system attribute "sysv"
	if result is less than 4240 then -- 4240 is OS X 10.9.0 Mavericks
		
		-- In OS X 10.8 Mountain Lion and older, enable GUI Scripting globally by calling this handler and passing 'true' in the flag parameter before your script executes any GUI Scripting commands, or pass 'false' to disable GUI Scripting. Authentication is required only if the value of the 'UI elements enabled' property will be changed. Returns the final setting of 'UI elements enabled' even if unchanged.
		
		tell application "System Events"
			activate -- brings System Events authentication dialog to front
			set UI elements enabled to flag
			return UI elements enabled
		end tell
	else
		
		-- In OS X 10.9 Mavericks, global access is no longer available and GUI Scripting can only be enabled manually on a per-application basis. Pass true to present an alert with a button to open System Preferences and telling the user to select the current application (the application running the script) in the Accessibility list in the Security & Privacy preference's Privacy pane. Authentication is required to unlock the preference. Returns the current setting of 'UI elements enabled' asynchronously, without waiting for System Preferences to open, and tells the user to run the script again.
		
		tell application "System Events" to set GUIScriptingEnabled to UI elements enabled -- read-only in OS X 10.9 Mavericks
		if flag is true then
			if not GUIScriptingEnabled then
				activate
				set scriptRunner to name of current application
				display alert "GUI Scripting is not enabled for " & scriptRunner & "." message "Open System Preferences, unlock the Security & Privacy preference, select " & scriptRunner & " in the Privacy Pane's Accessibility list, and then run this script again." buttons {"Open System Preferences", "Cancel"} default button "Cancel"
				if button returned of result is "Open System Preferences" then
					tell application "System Preferences"
						tell pane id "com.apple.preference.security" to reveal anchor "Privacy_Accessibility"
						activate
					end tell
				end if
			end if
		end if
		return GUIScriptingEnabled
	end if
end enabledGUIScripting

