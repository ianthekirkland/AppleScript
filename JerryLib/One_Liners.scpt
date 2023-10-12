-- Using a handler in a .scpt library
tell application "Finder"
	set homeAlias to home
	set scriptFile to file "JerryLib.scptd" of folder "AppleScripts" of folder "Documents" of home
	set scriptHfsPath to scriptFile as string
end tell
set myLibrary to (load script file scriptHfsPath)
-- Test it
tell myLibrary to set newString to searchAndReplace("I am old", "old", "new")

-- Specifying an application by path.  This may be necessary if more than one instance of an app is installed.  Note that the following will also LAUNCH the application if it if not launched.  Interestingly, though, if the path does not exist, the following will NOT make an error.
set appSpecifiedByPath to application "Users/jk/Documents/Programming/Builds/Debug/Bookmarksman.app"

-- To "save as" in an application.  It depends on the class
tell application "TextEdit" to save aDocument in myAlias
tell application "TextEdit" to save aDocument in file myHFSPathAsString
-- The class of an alias is 'furl'
-- The class of a string is 'text'

-- To determine the AppleScript class of a variable
class of someVariable as string


-------------------
-- POSIX/HFS/ALIAS CONVERSIONS
-- POSIX to HFS
set theUnixPath to "/Users/Shared/"
(POSIX file theUnixPath) as string

-- POSIX to ALIAS
set theUnixPath to "/Users/Shared/"
(POSIX file theUnixPath) as alias
-- Doing the above inside of a tell application "Finder" block will fail!!

-- ALIAS to HFS
tell application "Finder" to set aAlias to folder "Safari" of folder "Preferences" of folder "Library" of home
set hfsPath to (aAlias as string)

-- ALIAS to POSIX (note that this is same as HFS to POSIX)
set aAlias to choose file with prompt "Choose the application, workflow application, or AppleScript application bundle to be scheduled." of type "com.apple.application" default location myAppSupport
POSIX path of aAlias

-- HFS to POSIX (note that this is same as ALIAS to POSIX)
set hfsPath to "Macintosh HD:Users:Shared:"
POSIX path of hfsPath
--> "/Users/Shared/"
-------------------

-- Case-Sensitive string compare
considering case
	set result1 to "LOG" = "log" --> Returns: false
end considering

-- Case-Insensitive string compare
ignoring case
	set result2 to "LOG" = "log" --> Returns: true
end ignoring



-- See http://docs.info.apple.com/article.html?path=AppleScript/2.1/en/as189.html ...

-- Path and version of application
-- The following WILL NOT LAUNCH the application.  Thanks to Joseph Weaks for this one!
set targetAppBundleID to "com.sheepsystems.Bookdog"
tell application "Finder"
	set targetAppAlias to (application file id targetAppBundleID)
	set targetAppName to displayed name of targetAppAlias
	set targetAppPath to POSIX path of (targetAppAlias as string)
	set targetAppVersion to version of targetAppAlias
end tell

-- The following WILL LAUNCH the application
set targetAppPathHFS to (path to application targetAppName)

set v to get version of application "Safari"
set v to get version of application id "com.apple.Safari"

set pathToMe to ((POSIX path of (path to me)) as string)
set toolPath to quoted form of (pathToMe & "Contents/MacOS/SomeTool")

-- The following does not work when run from Automator, because the current working directory is /Applications
set aliasPathToMe to path to me
set myParent to missing value
tell application "Finder"
	set myParent to parent of aliasPathToMe
end tell
set myParentPathHFS to (myParent as string)
set myParentPosixPath to POSIX path of myParentPathHFS

-- Path to another file in same folder as this script
tell application "Finder" to set myPath to folder of (path to me) as string
set otherScript to myPath & "OtherScript.scptd"

-- POSIX Desktop
set home_path_desktop to POSIX path of (path to desktop)
log home_path_desktop

-- HFS Home, the BEST way
set homeHFS to path to home folder

-- POSIX Home, the BEST WAY
set posixHome to POSIX path of (path to home folder)

-- For more named standard files, folders, disks:
-- http://docs.info.apple.com/article.html?path=AppleScript/2.1/en/as130.html

-- Appending to a list
set aList to {"one", "two"}
set end of aList to "shoe" -- {"one", "two", "shoe"}

-- To get stderr from do shell script, or error from any command:
try
	set ffPlacesPosixPath to do shell script toolCmd
on error errMsg number errNumber
	set msg to "shell script returned Error " & errNumber & return & return & errMsg & return & return & "Will abort to avoid possible data loss."
	display dialog msg buttons {"Cancel", "Copy to Clipboard"} default button "Copy To Clipboard"
	if button returned of result is "Copy to Clipboard" then
		set the clipboard to msg
	end if
	return
end try

-- To activate the application using it's PID try this.
--(Use $! in bash to get pid of newest process.)
set appID to 37146
tell application "System Events" to set frontmost of (every process whose unix id is appID) to true

set wealthOfInformation to system info
-- result: {AppleScript version:"2.0.1", AppleScript Studio version:"1.5", system version:"10.5.6", short user name:"jk", long user name:"Jerry", user ID:501, user locale:"en_US", home directory:alias "JMiniHD:Users:jk:", boot volume:"JMiniHD", computer name:"Jerry’s Mac Mini", host name:"Jerrys-Mac-Mini.local", IPv4 address:"10.0.1.205", primary Ethernet address:"00:16:cb:a3:72:ac", CPU type:"Intel 80486", CPU speed:1660, physical memory:2048}
-- To extract one of them (parentheses are required):
set userShortName to short user name of (system info)

-- This isn't exactly a One Liner, but it's not a handler either
set daPath to "/Applications/Firefox.app"
tell application "System Events"
	set targetProcess to missing value
	set targetAlias to (POSIX file daPath) as alias
	repeat with appProcess in application processes
		set appFile to missing value
		set appFile to application file of appProcess
		-- We need a 'try' block here, because there is what I would call a bug in System Events, that my printer process, i.e. "Macintosh HD:Users:jk:Library:Printers:Laserjet 2100.app:" returns *undefined* as its application file.  For more explanation of *undefined* AppleScript variables see pg. 103 of "AppleScript: the definitive Guide" by Matt Neuberg, 2nd edition.
		try
			if appFile is targetAlias then
				set targetProcess to appProcess
			end if
		end try
	end repeat
	log (short name of targetProcess as Unicode text)
	return targetProcess
end tell
