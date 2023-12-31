FasdUAS 1.101.10   ��   ��    k             l     ��  ��    	 --:     � 	 	  - - :   
  
 l     ��  ��       as-finderLib     �        a s - f i n d e r L i b      l     ��������  ��  ��        l     ��  ��    6 0  @author			Ian Kirkland <ianthekirkland@me.com>     �   `     @ a u t h o r 	 	 	 I a n   K i r k l a n d   < i a n t h e k i r k l a n d @ m e . c o m >      l     ��  ��    6 0  @copyright		2021 Kirkland Professional Studios     �   `     @ c o p y r i g h t 	 	 2 0 2 1   K i r k l a n d   P r o f e s s i o n a l   S t u d i o s      l     ��  ��       @date			2021-01-18     �   (     @ d a t e 	 	 	 2 0 2 1 - 0 1 - 1 8     !   l     �� " #��   "    @version		2.0.6    # � $ $ "     @ v e r s i o n 	 	 2 . 0 . 6 !  % & % l     �� ' (��   '    @license		MIT    ( � ) )      @ l i c e n s e 	 	 M I T &  * + * l     �� , -��   , � �  @link 			https://stackoverflow.com/questions/26247926/how-to-solve-usr-bin-env-ruby-executable-hooks-no-such-file-or-directory    - � . .      @ l i n k   	 	 	 h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 6 2 4 7 9 2 6 / h o w - t o - s o l v e - u s r - b i n - e n v - r u b y - e x e c u t a b l e - h o o k s - n o - s u c h - f i l e - o r - d i r e c t o r y +  / 0 / l     �� 1 2��   1 c ]  @note 			$HOME/.rvm/gems/ruby-2.4.0/bin/sass  -->  $HOME/.rvm/gems/ruby-2.4.0/wrappers/sass    2 � 3 3 �     @ n o t e   	 	 	 $ H O M E / . r v m / g e m s / r u b y - 2 . 4 . 0 / b i n / s a s s     - - >     $ H O M E / . r v m / g e m s / r u b y - 2 . 4 . 0 / w r a p p e r s / s a s s 0  4 5 4 l     �� 6 7��   6 C =  @todo			Move SASS compilation features out of this library.    7 � 8 8 z     @ t o d o 	 	 	 M o v e   S A S S   c o m p i l a t i o n   f e a t u r e s   o u t   o f   t h i s   l i b r a r y . 5  9 : 9 l     �� ; <��   ; P J  @todo			Build a subroutine for a repeat loop for finder item !!!!!!!!!!!    < � = = �     @ t o d o 	 	 	 B u i l d   a   s u b r o u t i n e   f o r   a   r e p e a t   l o o p   f o r   f i n d e r   i t e m   ! ! ! ! ! ! ! ! ! ! ! :  > ? > l     �� @ A��   @ > 8  @todo			Build a "run shell script on each" subroutine.    A � B B p     @ t o d o 	 	 	 B u i l d   a   " r u n   s h e l l   s c r i p t   o n   e a c h "   s u b r o u t i n e . ?  C D C l     �� E F��   E ] W  @example		To use this library's functionality, include following code in your script:    F � G G �     @ e x a m p l e 	 	 T o   u s e   t h i s   l i b r a r y ' s   f u n c t i o n a l i t y ,   i n c l u d e   f o l l o w i n g   c o d e   i n   y o u r   s c r i p t : D  H I H l     �� J K��   J F @      				set finderLib to load script "/path/to/FinderLib.scpt"    K � L L �             	 	 	 	 s e t   f i n d e r L i b   t o   l o a d   s c r i p t   " / p a t h / t o / F i n d e r L i b . s c p t " I  M N M l     �� O P��   O H B      				set the result to finderLib's handlerName( myArguments )    P � Q Q �             	 	 	 	 s e t   t h e   r e s u l t   t o   f i n d e r L i b ' s   h a n d l e r N a m e (   m y A r g u m e n t s   ) N  R S R l     ��������  ��  ��   S  T U T l     �� V W��   V _ Y  @example		You can also load the script as a property, so it's available in subroutines:    W � X X �     @ e x a m p l e 	 	 Y o u   c a n   a l s o   l o a d   t h e   s c r i p t   a s   a   p r o p e r t y ,   s o   i t ' s   a v a i l a b l e   i n   s u b r o u t i n e s : U  Y Z Y l     �� [ \��   [ L F      				property finderLib : (load script "/path/to/FinderLib.scpt")    \ � ] ] �             	 	 	 	 p r o p e r t y   f i n d e r L i b   :   ( l o a d   s c r i p t   " / p a t h / t o / F i n d e r L i b . s c p t " ) Z  ^ _ ^ l     �� ` a��   ` H B      				set the result to finderLib's handlerName( myArguments )    a � b b �             	 	 	 	 s e t   t h e   r e s u l t   t o   f i n d e r L i b ' s   h a n d l e r N a m e (   m y A r g u m e n t s   ) _  c d c l     ��������  ��  ��   d  e f e l      g h i g x     �� j k��   j 1      ��
�� 
ascr k �� l��
�� 
minv l m       m m � n n  2 . 4��   h    Yosemite (10.10) or later    i � o o 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r f  p q p x    �� r����   r 2  	 ��
�� 
osax��   q  s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w l     ��������  ��  ��   x  y z y l     �� { |��   {    Properties    | � } }      P r o p e r t i e s z  ~  ~ l     �� � ���   �  	    � � � �  	   � � � l      � � � � j    �� ��� 0 my_name MY_NAME � m     � � � � �  F i n d e r L i b � 6 0							<text>  	The name of this script library.    � � � � ` 	 	 	 	 	 	 	 < t e x t >     	 T h e   n a m e   o f   t h i s   s c r i p t   l i b r a r y . �  � � � l      � � � � j    �� ��� 0 my_path MY_PATH � l    ����� � n     � � � 1    ��
�� 
psxp � l    ����� � I   �� ���
�� .earsffdralis        afdr �  f    ��  ��  ��  ��  ��   � x r			<text>  	The path of this script library as defined by self (if run) or caller (if called with POSIX path arg).    � � � � � 	 	 	 < t e x t >     	 T h e   p a t h   o f   t h i s   s c r i p t   l i b r a r y   a s   d e f i n e d   b y   s e l f   ( i f   r u n )   o r   c a l l e r   ( i f   c a l l e d   w i t h   P O S I X   p a t h   a r g ) . �  � � � l      � � � � j     "�� ��� 0 my_init MY_INIT � m     !��
�� boovfals � Y S									<bool>  	False if this library has not been self initialized via 'on run'.    � � � � � 	 	 	 	 	 	 	 	 	 < b o o l >     	 F a l s e   i f   t h i s   l i b r a r y   h a s   n o t   b e e n   s e l f   i n i t i a l i z e d   v i a   ' o n   r u n ' . �  � � � l      � � � � j   # %�� ��� 0 unix_basename UNIX_BASENAME � m   # $��
�� boovfals � R L							<bool>  	Make `getBasenames()` behave like UNIX's `basename` command.    � � � � � 	 	 	 	 	 	 	 < b o o l >     	 M a k e   ` g e t B a s e n a m e s ( ) `   b e h a v e   l i k e   U N I X ' s   ` b a s e n a m e `   c o m m a n d . �  � � � l      � � � � j   & (�� ��� (0 always_return_list ALWAYS_RETURN_LIST � m   & '��
�� boovfals � S M						<bool>  	Results from handlers with variadic input always return lists.    � � � � � 	 	 	 	 	 	 < b o o l >     	 R e s u l t s   f r o m   h a n d l e r s   w i t h   v a r i a d i c   i n p u t   a l w a y s   r e t u r n   l i s t s . �  � � � l      � � � � j   ) +�� ��� >0 use_empty_strings_for_missing USE_EMPTY_STRINGS_FOR_MISSING � m   ) *��
�� boovtrue � ] W		<bool>  	Prefer results with empty strings instead of allowing list counts to change.    � � � � � 	 	 < b o o l >     	 P r e f e r   r e s u l t s   w i t h   e m p t y   s t r i n g s   i n s t e a d   o f   a l l o w i n g   l i s t   c o u n t s   t o   c h a n g e . �  � � � l      � � � � j   , .�� ��� .0 remove_trailing_slash REMOVE_TRAILING_SLASH � m   , -��
�� boovtrue � = 7					<bool>  	Remove trailing slashes from POSIX paths.    � � � � n 	 	 	 	 	 < b o o l >     	 R e m o v e   t r a i l i n g   s l a s h e s   f r o m   P O S I X   p a t h s . �  � � � l      � � � � j   / 1�� ��� .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS � m   / 0��
�� boovfals � ! 				<bool>  	Beep on error.    � � � � 6 	 	 	 	 < b o o l >     	 B e e p   o n   e r r o r . �  � � � l      � � � � j   2 4�� ��� (0 display_all_errors DISPLAY_ALL_ERRORS � m   2 3��
�� boovfals � : 4						<bool>  	Verbose mode. (Display error alerts).    � � � � h 	 	 	 	 	 	 < b o o l >     	 V e r b o s e   m o d e .   ( D i s p l a y   e r r o r   a l e r t s ) . �  � � � l      � � � � j   5 7�� ��� 0 
debug_mode 
DEBUG_MODE � m   5 6��
�� boovtrue � Y S								<bool>  	A special hook for partially enabling certain behavior in 'on run'    � � � � � 	 	 	 	 	 	 	 	 < b o o l >     	 A   s p e c i a l   h o o k   f o r   p a r t i a l l y   e n a b l i n g   c e r t a i n   b e h a v i o r   i n   ' o n   r u n ' �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    Functions    � � � �      F u n c t i o n s �  � � � l     �� � ���   �        � � � �      �  � � � l     �� � ���   �    setMyPath( )    � � � �      s e t M y P a t h (   ) �  � � � l     �� � ���   �    getProperties( )    � � � � $     g e t P r o p e r t i e s (   ) �  � � � l     �� � ���   �    getLibraryProperties( )    � � � � 2     g e t L i b r a r y P r o p e r t i e s (   ) �  � � � l     �� � ���   �    getFinderProperties( )    � � � � 0     g e t F i n d e r P r o p e r t i e s (   ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    getPath( )    � � � �      g e t P a t h (   ) �  � � � l     �� � ���   �    getPaths( )    � � � �      g e t P a t h s (   ) �    l     ����      getPathsQ( )    �      g e t P a t h s Q (   )  l     ����      getPOSIXPaths(_quoted)    �		 0     g e t P O S I X P a t h s ( _ q u o t e d ) 

 l     ����   %   getCurrentPath( ), getPath( )    � >     g e t C u r r e n t P a t h (   ) ,   g e t P a t h (   )  l     ����      getCurrentPathQ( )    � (     g e t C u r r e n t P a t h Q (   )  l     ����   J D  getCurrentFolder( ), getInsertionLocation( ), insertionLocation( )    � �     g e t C u r r e n t F o l d e r (   ) ,   g e t I n s e r t i o n L o c a t i o n (   ) ,   i n s e r t i o n L o c a t i o n (   )  l     ����   : 4  getCurrentSelection( ), getSelection( ), getSel( )    � h     g e t C u r r e n t S e l e c t i o n (   ) ,   g e t S e l e c t i o n (   ) ,   g e t S e l (   )  l     ��������  ��  ��    !  l     ��"#��  " ' !  getBasenameAndExtension( item )   # �$$ B     g e t B a s e n a m e A n d E x t e n s i o n (   i t e m   )! %&% l     ��'(��  ' + %  getBasenameAndFullExtension( item )   ( �)) J     g e t B a s e n a m e A n d F u l l E x t e n s i o n (   i t e m   )& *+* l     ��,-��  , #   getNameAndExtension( item )   - �.. :     g e t N a m e A n d E x t e n s i o n (   i t e m   )+ /0/ l     ��12��  1 ' !  getNameAndFullExtension( item )   2 �33 B     g e t N a m e A n d F u l l E x t e n s i o n (   i t e m   )0 454 l     ��������  ��  ��  5 676 l     ��89��  8    getBasenames( items )   9 �:: .     g e t B a s e n a m e s (   i t e m s   )7 ;<; l     ��=>��  =    getNames( items )   > �?? &     g e t N a m e s (   i t e m s   )< @A@ l     ��BC��  B - '  getDirs( items ), getParents( items )   C �DD N     g e t D i r s (   i t e m s   ) ,   g e t P a r e n t s (   i t e m s   )A EFE l     ��GH��  G    getSizes( paths )   H �II &     g e t S i z e s (   p a t h s   )F JKJ l     ��������  ��  ��  K LML l     ��NO��  N "   getFullExtensions( items )   O �PP 8     g e t F u l l E x t e n s i o n s (   i t e m s   )M QRQ l     ��ST��  S    getFullExts( items )   T �UU ,     g e t F u l l E x t s (   i t e m s   )R VWV l     ��XY��  X    getExtensions( items )   Y �ZZ 0     g e t E x t e n s i o n s (   i t e m s   )W [\[ l     ��]^��  ]    getMetadata(_paths)   ^ �__ *     g e t M e t a d a t a ( _ p a t h s )\ `a` l     ��bc��  b    getPaths( items )   c �dd &     g e t P a t h s (   i t e m s   )a efe l     ��gh��  g    getHFS( items )   h �ii "     g e t H F S (   i t e m s   )f jkj l     ��lm��  l    getItems( items )   m �nn &     g e t I t e m s (   i t e m s   )k opo l     ��������  ��  ��  p qrq l     ��st��  s 0 *  onlyTheseExtensions( items, extensions )   t �uu T     o n l y T h e s e E x t e n s i o n s (   i t e m s ,   e x t e n s i o n s   )r vwv l     ��xy��  x    onlyFiles( items )   y �zz (     o n l y F i l e s (   i t e m s   )w {|{ l     ��}~��  } $   onlyFoldersAndLinks( items )   ~ � <     o n l y F o l d e r s A n d L i n k s (   i t e m s   )| ��� l     ������  �    onlyFolders( items )   � ��� ,     o n l y F o l d e r s (   i t e m s   )� ��� l     ��~�}�  �~  �}  � ��� l     �|���|  � ( "  asItem( path ), asItems( paths )   � ��� D     a s I t e m (   p a t h   ) ,   a s I t e m s (   p a t h s   )� ��� l     �{���{  �    asPath( item )   � ���       a s P a t h (   i t e m   )� ��� l     �z���z  �    asPathQ( item )   � ��� "     a s P a t h Q (   i t e m   )� ��� l     �y���y  � * $  asPaths( items ), asPOSIX( items )   � ��� H     a s P a t h s (   i t e m s   ) ,   a s P O S I X (   i t e m s   )� ��� l     �x���x  � , &  asPathsQ( items ), asPOSIXQ( items )   � ��� L     a s P a t h s Q (   i t e m s   ) ,   a s P O S I X Q (   i t e m s   )� ��� l     �w���w  �    asHFS( items )   � ���       a s H F S (   i t e m s   )� ��� l     �v�u�t�v  �u  �t  � ��� l     �s���s  � * $  toggleExtensionVisibility( input )   � ��� H     t o g g l e E x t e n s i o n V i s i b i l i t y (   i n p u t   )� ��� l     �r���r  � #   makeFoldersFromClipboard( )   � ��� :     m a k e F o l d e r s F r o m C l i p b o a r d (   )� ��� l     �q���q  � 1 +  generateUniqueFilepath( path, extension )   � ��� V     g e n e r a t e U n i q u e F i l e p a t h (   p a t h ,   e x t e n s i o n   )� ��� l     �p���p  � + %  removeTrailingSlashes( path/paths )   � ��� J     r e m o v e T r a i l i n g S l a s h e s (   p a t h / p a t h s   )� ��� l     �o���o  � #   removeTrailingSlash( path )   � ��� :     r e m o v e T r a i l i n g S l a s h (   p a t h   )� ��� l     �n���n  �     addTrailingSlash( path )   � ��� 4     a d d T r a i l i n g S l a s h (   p a t h   )� ��� l     �m�l�k�m  �l  �k  � ��� l     �j�i�h�j  �i  �h  � ��� l     �g���g  �       � ���     � ��� l     �f���f  �    run handler   � ���      r u n   h a n d l e r� ��� l     �e���e  �       � ���     � ��� l     �d���d  � R L  Runs when this script is called directly (instead of loaded as a library).   � ��� �     R u n s   w h e n   t h i s   s c r i p t   i s   c a l l e d   d i r e c t l y   ( i n s t e a d   o f   l o a d e d   a s   a   l i b r a r y ) .� ��� l     �c���c  �       � ���     � ��� i   8 ;��� I     �b�a�`
�b .aevtoappnull  �   � ****�a  �`  � Z     7���_�^� l    ��]�\� o     �[�[ 0 
debug_mode 
DEBUG_MODE�]  �\  � k    3�� ��� r    ��� n   ��� I   	 �Z�Y�X�Z 0 getselection getSelection�Y  �X  �  f    	� o      �W�W 0 _sel  � ��� r    ��� n   ��� I    �V��U�V 0 aspaths asPaths� ��T� o    �S�S 0 _sel  �T  �U  �  f    � o      �R�R 
0 _paths  � ��� r    !��� n   ��� I    �Q��P�Q 0 getdirs getDirs� ��O� o    �N�N 
0 _paths  �O  �P  �  f    � o      �M�M 0 	_dirnames  �    r   " * n  " ( I   # (�L�K�L 0 getbasenames getBasenames �J o   # $�I�I 
0 _paths  �J  �K    f   " # o      �H�H 0 
_allbutext 
_allButExt �G r   + 3	
	 n  + 1 I   , 1�F�E�F 0 getsizes getSizes �D o   , -�C�C 
0 _paths  �D  �E    f   + ,
 o      �B�B 
0 _sizes  �G  �_  �^  �  l     �A�@�?�A  �@  �?    l     �>�=�<�>  �=  �<    l     �;�;   
 --      �  - -      l     �:�:      setMyPath()    �      s e t M y P a t h ( )  l     �9 �9           �!!      "#" l     �8$%�8  $ r l  For overriding MY_PATH when called as loaded library. Loading this library requires telling it explicitly    % �&& �     F o r   o v e r r i d i n g   M Y _ P A T H   w h e n   c a l l e d   a s   l o a d e d   l i b r a r y .   L o a d i n g   t h i s   l i b r a r y   r e q u i r e s   t e l l i n g   i t   e x p l i c i t l y  # '(' l     �7)*�7  ) h b  where it is since, once loaded, `path to me`, points to the script that loads it, not this file.   * �++ �     w h e r e   i t   i s   s i n c e ,   o n c e   l o a d e d ,   ` p a t h   t o   m e ` ,   p o i n t s   t o   t h e   s c r i p t   t h a t   l o a d s   i t ,   n o t   t h i s   f i l e .( ,-, l     �6./�6  .       / �00     - 121 l     �534�5  3 e _  @param 	_myPath 		<text> 		POSIX path of this library; Simply pass in same path used to load.   4 �55 �     @ p a r a m   	 _ m y P a t h   	 	 < t e x t >   	 	 P O S I X   p a t h   o f   t h i s   l i b r a r y ;   S i m p l y   p a s s   i n   s a m e   p a t h   u s e d   t o   l o a d .2 676 l     �489�4  8 f `  @return 	_myPath 		<text> 		POSIX path of this library as read from this library's properties.   9 �:: �     @ r e t u r n   	 _ m y P a t h   	 	 < t e x t >   	 	 P O S I X   p a t h   o f   t h i s   l i b r a r y   a s   r e a d   f r o m   t h i s   l i b r a r y ' s   p r o p e r t i e s .7 ;<; l     �3=>�3  =       > �??     < @A@ i   < ?BCB I      �2D�1�2 0 	setmypath 	setMyPathD E�0E o      �/�/ 0 _mypath _myPath�0  �1  C k     FF GHG Z     IJ�.�-I l    K�,�+K >    LML o     �*�* 0 _mypath _myPathM m    NN �OO  �,  �+  J r    PQP o    �)�) 0 _mypath _myPathQ o      �(�( 0 my_path MY_PATH�.  �-  H RSR r    TUT o    �'�' 0 my_path MY_PATHU o      �&�& 0 _mypath _myPathS VWV l   �%�$�#�%  �$  �#  W X�"X L    YY o    �!�! 0 _mypath _myPath�"  A Z[Z l     � ���   �  �  [ \]\ l     ����  �  �  ] ^_^ l     �`a�  ` 
 --     a �bb  - -    _ cdc l     �ef�  e    getProperties()   f �gg "     g e t P r o p e r t i e s ( )d hih l     �jk�  j       k �ll     i mnm l     �op�  o f `  Gets all properties: AppleScript properties, Finder properties, and this library's properties.   p �qq �     G e t s   a l l   p r o p e r t i e s :   A p p l e S c r i p t   p r o p e r t i e s ,   F i n d e r   p r o p e r t i e s ,   a n d   t h i s   l i b r a r y ' s   p r o p e r t i e s .n rsr l     �tu�  t       u �vv     s wxw l     �yz�  y    @param 	<void>   z �{{       @ p a r a m   	 < v o i d >x |}| l     �~�  ~ M G  @return 	<record> 	List of various properties of this script library.    ��� �     @ r e t u r n   	 < r e c o r d >   	 L i s t   o f   v a r i o u s   p r o p e r t i e s   o f   t h i s   s c r i p t   l i b r a r y .} ��� l     ����  �  �  � ��� l     ����  � = 7  @uses 		getLibraryProperties(), getFinderProperties()   � ��� n     @ u s e s   	 	 g e t L i b r a r y P r o p e r t i e s ( ) ,   g e t F i n d e r P r o p e r t i e s ( )� ��� l     ����  �       � ���     � ��� i   @ C��� I      ���� 0 getproperties getProperties�  �  � L     �� K     �� ���� 0 asprops asProps� n   ��� 1    �

�
 
pALL� 1    �	
�	 
ascr� ���� 0 libprops libProps� n   ��� I    ���� ,0 getlibraryproperties getLibraryProperties�  �  �  f    � ���� 0 finderprops finderProps� n   ��� I    ��� � *0 getfinderproperties getFinderProperties�  �   �  f    �  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    getLibraryProperties()   � ��� 0     g e t L i b r a r y P r o p e r t i e s ( )� ��� l     ������  �       � ���     � ��� l     ������  � 7 1  Gets various properties of this script library.   � ��� b     G e t s   v a r i o u s   p r o p e r t i e s   o f   t h i s   s c r i p t   l i b r a r y .� ��� l     ������  �       � ���     � ��� l     ������  �    @param 	<void>   � ���       @ p a r a m   	 < v o i d >� ��� l     ������  � L F  @return 	<list> 		List of various properties of this script library.   � ��� �     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   v a r i o u s   p r o p e r t i e s   o f   t h i s   s c r i p t   l i b r a r y .� ��� l     ������  �       � ���     � ��� i   D G��� I      �������� ,0 getlibraryproperties getLibraryProperties��  ��  � k     �� ��� r     ��� o     ���� 0 my_path MY_PATH� o      ���� 0 _mypath _myPath� ��� r    ��� o    ���� 0 my_name MY_NAME� o      ���� 0 _myname _myName� ��� r    ��� n   ��� 1    ��
�� 
pALL�  f    � o      ���� 0 _myprops _myProps� ��� l   ��������  ��  ��  � ���� L    �� J    �� ��� o    ���� 0 _myname _myName� ��� o    ���� 0 _mypath _myPath� ���� o    ���� 0 _myprops _myProps��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    getFinderProperties( )   � ��� 0     g e t F i n d e r P r o p e r t i e s (   )� ��� l     ������  �       � ���     � ��� l     ������  �    @param 	<void>   � ���       @ p a r a m   	 < v o i d >� � � l     ����   4 .  @return 	<list> 		List of Finder properties.    � \     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   p r o p e r t i e s .   l     ����          �      	
	 i   H K I      �������� *0 getfinderproperties getFinderProperties��  ��   k     T  q       ���� 
0 _props   ���� (0 _insertionlocation _insertionLocation ���� 0 _folder   ���� 	0 _path   ���� 0 _hfs   ������  0 _allproperties _allProperties��    l     ��������  ��  ��    O     Q Q    P r    <  b    :!"! b    3#$# b    '%&% b    '(' l 	  )����) K    ** ��+���� (0 _insertionlocation _insertionLocation+ l   ,����, 1    ��
�� 
pins��  ��  ��  ��  ��  ( l 	  -����- K    .. ��/���� 0 _folder  / l   0����0 c    121 l   3����3 n    454 1    ��
�� 
fvtg5 4    ��6
�� 
cwin6 m    ���� ��  ��  2 m    ��
�� 
alis��  ��  ��  ��  ��  & l 	  &7����7 K    &88 ��9���� 	0 _path  9 l   $:����: n    $;<; 1   " $��
�� 
psxp< l   "=����= c    ">?> n     @A@ 1     ��
�� 
fvtgA 4    ��B
�� 
cwinB m    ���� ? m     !��
�� 
alis��  ��  ��  ��  ��  ��  ��  $ l 	 ' 2C����C K   ' 2DD ��E���� 0 _hfs  E l  ( 0F����F c   ( 0GHG n   ( .IJI 1   , .��
�� 
fvtgJ 4   ( ,��K
�� 
cwinK m   * +���� H m   . /��
�� 
TEXT��  ��  ��  ��  ��  " l 	 3 9L����L K   3 9MM ��N����  0 _allproperties _allPropertiesN l  4 7O����O n   4 7PQP 1   5 7��
�� 
pALLQ m   4 5RR�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��  ��  ��    o      ���� 
0 _props   R      ��ST
�� .ascrerr ****      � ****S o      ���� 0 errmsg errMsgT ��U��
�� 
errnU o      ���� 0 errnum errNum��   r   D PVWV J   D NXX YZY b   D G[\[ m   D E]] �^^  E r r o r   M e s s a g e :  \ o   E F���� 0 errmsg errMsgZ _��_ b   G L`a` m   G Jbb �cc  E r r o r   N u m b e r :  a o   J K���� 0 errnum errNum��  W o      ���� 
0 _props   m     dd�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   efe l  R R��������  ��  ��  f g��g L   R Thh o   R S���� 
0 _props  ��  
 iji l     ��������  ��  ��  j klk l     ��������  ��  ��  l mnm l     ��op��  o 
 --     p �qq  - -    n rsr l     ��tu��  t    getInsertionLocation( )   u �vv 2     g e t I n s e r t i o n L o c a t i o n (   )s wxw l     �yz�  y       z �{{     x |}| l     �~~�~  ~ D >  Gets Finder's current insertion location as a Finder object.    ��� |     G e t s   F i n d e r ' s   c u r r e n t   i n s e r t i o n   l o c a t i o n   a s   a   F i n d e r   o b j e c t .} ��� l     �}���}  �       � ���     � ��� l     �|���|  �    @param 						<void>   � ��� *     @ p a r a m   	 	 	 	 	 	 < v o i d >� ��� l     �{���{  � X R  @return 	_insertionLocation 	<reference> 	Object specifier for the front window.   � ��� �     @ r e t u r n   	 _ i n s e r t i o n L o c a t i o n   	 < r e f e r e n c e >   	 O b j e c t   s p e c i f i e r   f o r   t h e   f r o n t   w i n d o w .� ��� l     �z���z  �       � ���     � ��� i   L O��� I      �y�x�w�y ,0 getinsertionlocation getInsertionLocation�x  �w  � k     0�� ��� O     -��� Q    ,���� r    ��� n    ��� 1    �v
�v 
fvtg� 4   �u�
�u 
cwin� m   	 
�t�t � o      �s�s (0 _insertionlocation _insertionLocation� R      �r�q�p
�r .ascrerr ****      � ****�q  �p  � Q    ,���� r    ��� 1    �o
�o 
pins� o      �n�n (0 _insertionlocation _insertionLocation� R      �m�l�k
�m .ascrerr ****      � ****�l  �k  � r   ' ,��� 1   ' *�j
�j 
desk� o      �i�i (0 _insertionlocation _insertionLocation� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  . .�h�g�f�h  �g  �f  � ��e� L   . 0�� o   . /�d�d (0 _insertionlocation _insertionLocation�e  � ��� l     �c�b�a�c  �b  �a  � ��� l     �`�_�^�`  �_  �^  � ��� l     �]���]  � 
 --     � ���  - -    � ��� l     �\���\  �    getCurrentFolder( )   � ��� *     g e t C u r r e n t F o l d e r (   )� ��� l     �[���[  �       � ���     � ��� l     �Z���Z  � e _  Alias of getInsertionLocation(); Gets Finder's current insertion location as a Finder object.   � ��� �     A l i a s   o f   g e t I n s e r t i o n L o c a t i o n ( ) ;   G e t s   F i n d e r ' s   c u r r e n t   i n s e r t i o n   l o c a t i o n   a s   a   F i n d e r   o b j e c t .� ��� l     �Y���Y  �       � ���     � ��� l     �X���X  �    @param 						<void>   � ��� *     @ p a r a m   	 	 	 	 	 	 < v o i d >� ��� l     �W���W  � X R  @return 	_insertionLocation 	<reference> 	Object specifier for the front window.   � ��� �     @ r e t u r n   	 _ i n s e r t i o n L o c a t i o n   	 < r e f e r e n c e >   	 O b j e c t   s p e c i f i e r   f o r   t h e   f r o n t   w i n d o w .� ��� l     �V���V  �       � ���     � ��� i   P S��� I      �U�T�S�U $0 getcurrentfolder getCurrentFolder�T  �S  � L     �� n    ��� I    �R�Q�P�R ,0 getinsertionlocation getInsertionLocation�Q  �P  �  f     � ��� l     �O�N�M�O  �N  �M  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  � 
 --     � ���  - -    � ��� l     �H���H  �    getCurrentPath( )   � ��� &     g e t C u r r e n t P a t h (   )� ��� l     �G���G  �       � ���     � ��� l     �F���F  � $   Get the current Finder path.   � ��� <     G e t   t h e   c u r r e n t   F i n d e r   p a t h .� ��� l     �E� �E  �         �     �  l     �D�D      @param 			<void>    � $     @ p a r a m   	 	 	 < v o i d >  l     �C	
�C  	 , &  @return 	_path 	<text> 		POSIX path.   
 � L     @ r e t u r n   	 _ p a t h   	 < t e x t >   	 	 P O S I X   p a t h .  l     �B�B          �       i   T W I      �A�@�?�A  0 getcurrentpath getCurrentPath�@  �?   k     {  l     �>�=�<�>  �=  �<    l     �;�;     Trailing slash    �    T r a i l i n g   s l a s h  r       m     �:
�: boovtrue  o      �9�9 ,0 _removetrailingslash _removeTrailingSlash !"! Q    #$%# r    &'& o    �8�8 .0 remove_trailing_slash REMOVE_TRAILING_SLASH' o      �7�7 ,0 _removetrailingslash _removeTrailingSlash$ R      �6()
�6 .ascrerr ****      � ****( o      �5�5 0 errmsg errMsg) �4*�3
�4 
errn* o      �2�2 0 errnum errNum�3  % l   �1+,�1  + ( " Fallback to local value set above   , �-- D   F a l l b a c k   t o   l o c a l   v a l u e   s e t   a b o v e" ./. l   �0�/�.�0  �/  �.  / 010 O    S232 Q    R4564 r    +787 l   )9�-�,9 n    ):;: 1   ' )�+
�+ 
psxp; l   '<�*�)< c    '=>= n    %?@? 1   # %�(
�( 
fvtg@ 4   #�'A
�' 
cwinA m   ! "�&�& > m   % &�%
�% 
alis�*  �)  �-  �,  8 o      �$�$ 	0 _path  5 R      �#�"�!
�# .ascrerr ****      � ****�"  �!  6 Q   3 RBCDB r   6 ?EFE l  6 =G� �G n   6 =HIH 1   ; =�
� 
psxpI l  6 ;J��J c   6 ;KLK 1   6 9�
� 
pinsL m   9 :�
� 
alis�  �  �   �  F o      �� 	0 _path  C R      ���
� .ascrerr ****      � ****�  �  D r   G RMNM l  G PO��O n   G PPQP 1   N P�
� 
psxpQ l  G NR��R I  G N�S�
� .earsffdralis        afdrS 1   G J�
� 
desk�  �  �  �  �  N o      �� 	0 _path  3 m    TT�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  1 UVU l  T T���
�  �  �
  V WXW Z   T xYZ�	�Y F   T `[\[ l  T U]��] o   T U�� ,0 _removetrailingslash _removeTrailingSlash�  �  \ l  X ^^��^ =  X ^_`_ n   X \aba 4   Y \�c
� 
cha c m   Z [����b o   X Y� �  	0 _path  ` m   \ ]dd �ee  /�  �  Z r   c tfgf c   c rhih l  c nj����j n   c nklk 7 d n��mn
�� 
cha m m   h j���� n m   k m������l o   c d���� 	0 _path  ��  ��  i m   n q��
�� 
ctxtg o      ���� 	0 _path  �	  �  X opo l  y y��������  ��  ��  p q��q L   y {rr o   y z���� 	0 _path  ��   sts l     ��������  ��  ��  t uvu l     ��������  ��  ��  v wxw l     ��yz��  y 
 --     z �{{  - -    x |}| l     ��~��  ~    getCurrentPathQ( )    ��� (     g e t C u r r e n t P a t h Q (   )} ��� l     ������  �       � ���     � ��� l     ������  � 7 1  Get the quoted form of the current Finder path.   � ��� b     G e t   t h e   q u o t e d   f o r m   o f   t h e   c u r r e n t   F i n d e r   p a t h .� ��� l     ������  �       � ���     � ��� l     ������  �    @param 				<void>   � ��� &     @ p a r a m   	 	 	 	 < v o i d >� ��� l     ������  � 4 .  @return 	_pathQ 	<text> 		Quoted POSIX path.   � ��� \     @ r e t u r n   	 _ p a t h Q   	 < t e x t >   	 	 Q u o t e d   P O S I X   p a t h .� ��� l     ��������  ��  ��  � ��� l     ������  �     @uses 		getCurrentPath()   � ��� 4     @ u s e s   	 	 g e t C u r r e n t P a t h ( )� ��� l     ������  �       � ���     � ��� i   X [��� I      �������� "0 getcurrentpathq getCurrentPathQ��  ��  � k     M�� ��� r     ��� n    ��� I    ��������  0 getcurrentpath getCurrentPath��  ��  �  f     � o      ���� 	0 _path  � ��� l   ��������  ��  ��  � ��� l   ������  �   Trailing slash   � ���    T r a i l i n g   s l a s h� ��� r    ��� m    	��
�� boovtrue� o      ���� ,0 _removetrailingslash _removeTrailingSlash� ��� Q    ���� r    ��� o    ���� .0 remove_trailing_slash REMOVE_TRAILING_SLASH� o      ���� ,0 _removetrailingslash _removeTrailingSlash� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � l   ������  � ( " Fallback to local value set above   � ��� D   F a l l b a c k   t o   l o c a l   v a l u e   s e t   a b o v e� ��� l     ��������  ��  ��  � ��� Z     J������ F     .��� l    !������ o     !���� ,0 _removetrailingslash _removeTrailingSlash��  ��  � l  $ ,������ =  $ ,��� n   $ *��� 4   ' *���
�� 
cha � m   ( )������� l  $ '������ c   $ '��� o   $ %���� 	0 _path  � m   % &��
�� 
ctxt��  ��  � m   * +�� ���  /��  ��  � r   1 B��� n   1 @��� 1   > @��
�� 
strq� l  1 >������ c   1 >��� l  1 <������ n   1 <��� 7 2 <����
�� 
cha � m   6 8���� � m   9 ;������� o   1 2���� 	0 _path  ��  ��  � m   < =��
�� 
ctxt��  ��  � o      ���� 0 _pathq _pathQ��  � r   E J��� n   E H��� 1   F H��
�� 
strq� o   E F���� 	0 _path  � o      ���� 0 _pathq _pathQ� ��� l  K K��������  ��  ��  � ���� L   K M�� o   K L���� 0 _pathq _pathQ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    getSelection( )   � ��� "     g e t S e l e c t i o n (   )�    l     ����          �       l     ����   &    Get the selected Finder items.    �		 @     G e t   t h e   s e l e c t e d   F i n d e r   i t e m s . 

 l     ����          �       l     ����      @param 	<void>    �       @ p a r a m   	 < v o i d >  l     ����   9 3  @return 	<list> 		List of Finder item references.    � f     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .  l     ����          �       i   \ _ !  I      �������� 0 getselection getSelection��  ��  ! O     "#" L    $$ l   %����% n    &'& 2    
��
�� 
cobj' l   (����( e    )) 1    ��
�� 
sele��  ��  ��  ��  # m     **�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l     ��12��  1 
 --     2 �33  - -    0 454 l     ��67��  6    getCurrentSelection( )   7 �88 0     g e t C u r r e n t S e l e c t i o n (   )5 9:9 l     ��;<��  ;       < �==     : >?> l     ��@A��  @ @ :  Alias of getSelection( ); Get the selected Finder items.   A �BB t     A l i a s   o f   g e t S e l e c t i o n (   ) ;   G e t   t h e   s e l e c t e d   F i n d e r   i t e m s .? CDC l     ��EF��  E       F �GG     D HIH l     ��JK��  J    @param 	<void>   K �LL       @ p a r a m   	 < v o i d >I MNM l     ��OP��  O 9 3  @return 	<list> 		List of Finder item references.   P �QQ f     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .N RSR l     ��TU��  T       U �VV     S WXW i   ` cYZY I      �������� *0 getcurrentselection getCurrentSelection��  ��  Z L     [[ n    \]\ I    ������� 0 getselection getSelection��  �  ]  f     X ^_^ l     �~�}�|�~  �}  �|  _ `a` l     �{�z�y�{  �z  �y  a bcb l     �xde�x  d 
 --     e �ff  - -    c ghg l     �wij�w  i    getSel( )   j �kk      g e t S e l (   )h lml l     �vno�v  n       o �pp     m qrq l     �ust�u  s @ :  Alias of getSelection( ); Get the selected Finder items.   t �uu t     A l i a s   o f   g e t S e l e c t i o n (   ) ;   G e t   t h e   s e l e c t e d   F i n d e r   i t e m s .r vwv l     �txy�t  x       y �zz     w {|{ l     �s}~�s  }    @param 	<void>   ~ �       @ p a r a m   	 < v o i d >| ��� l     �r���r  � 9 3  @return 	<list> 		List of Finder item references.   � ��� f     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     �q���q  �       � ���     � ��� i   d g��� I      �p�o�n�p 0 getsel getSel�o  �n  � L     �� n    ��� I    �m�l�k�m 0 getselection getSelection�l  �k  �  f     � ��� l     �j�i�h�j  �i  �h  � ��� l     �g�f�e�g  �f  �e  � ��� l     �d���d  � 
 --     � ���  - -    � ��� l     �c���c  �    getPath( )   � ���      g e t P a t h (   )� ��� l     �b���b  �       � ���     � ��� l     �a���a  �    @param 	<void>   � ���       @ p a r a m   	 < v o i d >� ��� l     �`���`  � 4 .  @return 	<list> 		List of Finder item paths.   � ��� \     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   p a t h s .� ��� l     �_���_  �       � ���     � ��� i   h k��� I      �^�]�\�^ 0 getpath getPath�]  �\  � L     �� n    ��� I    �[��Z�[ 0 getposixpaths getPOSIXPaths� ��Y� m    �X
�X boovfals�Y  �Z  �  f     � ��� l     �W�V�U�W  �V  �U  � ��� l     �T�S�R�T  �S  �R  � ��� l     �Q���Q  � 
 --     � ���  - -    � ��� l     �P���P  �    getPaths( )   � ���      g e t P a t h s (   )� ��� l     �O���O  �       � ���     � ��� l     �N���N  �    @param 	<void>   � ���       @ p a r a m   	 < v o i d >� ��� l     �M���M  � 4 .  @return 	<list> 		List of Finder item paths.   � ��� \     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   p a t h s .� ��� l     �L���L  �       � ���     � ��� i   l o��� I      �K�J�I�K 0 getpaths getPaths�J  �I  � L     �� n    ��� I    �H��G�H 0 getposixpaths getPOSIXPaths� ��F� m    �E
�E boovfals�F  �G  �  f     � ��� l     �D�C�B�D  �C  �B  � ��� l     �A�@�?�A  �@  �?  � ��� l     �>���>  � 
 --     � ���  - -    � ��� l     �=���=  �    getPathsQ( )   � ���      g e t P a t h s Q (   )� ��� l     �<���<  �       � ���     � ��� l     �;���;  �    @param 	<void>   � ���       @ p a r a m   	 < v o i d >� � � l     �:�:   4 .  @return 	<list> 		List of Finder item paths.    � \     @ r e t u r n   	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   p a t h s .   l     �9�9          �      	
	 i   p s I      �8�7�6�8 0 	getpathsq 	getPathsQ�7  �6   L      n     I    �5�4�5 0 getposixpaths getPOSIXPaths �3 m    �2
�2 boovtrue�3  �4    f     
  l     �1�0�/�1  �0  �/    l     �.�-�,�.  �-  �,    l     �+�+   
 --      �  - -      l     �*�*      getPOSIXPaths( quoted )    � 2     g e t P O S I X P a t h s (   q u o t e d   )  !  l     �)"#�)  "       # �$$     ! %&% l     �('(�(  ' E ?  @param 	_quoted 	<bool>		True for quoted; False for unquoted.   ( �)) ~     @ p a r a m   	 _ q u o t e d   	 < b o o l > 	 	 T r u e   f o r   q u o t e d ;   F a l s e   f o r   u n q u o t e d .& *+* l     �',-�'  , = 7  @return 	_paths 		<list> 		List of Finder item paths.   - �.. n     @ r e t u r n   	 _ p a t h s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   p a t h s .+ /0/ l     �&12�&  1       2 �33     0 454 i   t w676 I      �%8�$�% 0 getposixpaths getPOSIXPaths8 9�#9 o      �"�" 0 _quoted  �#  �$  7 k     �:: ;<; q      == �!>�! 	0 _item  > � ?�  0 	_isscalar 	_isScalar? �@� 
0 _paths  @ �A� 	0 _path  A ��� 0 _sel  �  < BCB r     DED m     �
� boovfalsE o      �� 0 	_isscalar 	_isScalarC FGF r    HIH J    ��  I o      �� 
0 _paths  G JKJ l  	 	�LM�  L p j set _quoted to true -- Change to adjust for quoted paths (Could be made an arg, but too hard to remember)   M �NN �   s e t   _ q u o t e d   t o   t r u e   - -   C h a n g e   t o   a d j u s t   f o r   q u o t e d   p a t h s   ( C o u l d   b e   m a d e   a n   a r g ,   b u t   t o o   h a r d   t o   r e m e m b e r )K OPO l  	 	�QR�  Q   set _quoted to false    R �SS ,   s e t   _ q u o t e d   t o   f a l s e  P TUT l  	 	����  �  �  U VWV l  	 	�XY�  X . ( Localize property in case not available   Y �ZZ P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l eW [\[ r   	 ]^] m   	 
�
� boovfals^ o      �� &0 _alwaysreturnlist _alwaysReturnList\ _`_ Q     abca r    ded o    �� (0 always_return_list ALWAYS_RETURN_LISTe o      �� &0 _alwaysreturnlist _alwaysReturnListb R      �fg
� .ascrerr ****      � ****f o      �� 0 errmsg errMsgg �h�

� 
errnh o      �	�	 0 errnum errNum�
  c l   �ij�  i   (use _alwaysReturnList)   j �kk 0   ( u s e   _ a l w a y s R e t u r n L i s t )` lml l  ! !����  �  �  m non O   ! spqp k   % rrr sts r   % *uvu 1   % (�
� 
selev o      �� 0 _sel  t wxw l  + +��� �  �  �   x yzy Z   + <{|����{ A  + 2}~} l  + 0���� I  + 0�����
�� .corecnte****       ****� o   + ,���� 0 _sel  ��  ��  ��  ~ m   0 1���� | r   5 8��� m   5 6��
�� boovtrue� o      ���� 0 	_isscalar 	_isScalar��  ��  z ��� l  = =��������  ��  ��  � ���� X   = r����� k   O m�� ��� Z   O h������ =  O R��� o   O P���� 0 _quoted  � m   P Q��
�� boovtrue� r   U ^��� n   U \��� 1   Z \��
�� 
strq� l  U Z������ n   U Z��� 1   X Z��
�� 
psxp� l  U X������ c   U X��� o   U V���� 	0 _item  � m   V W��
�� 
alis��  ��  ��  ��  � o      ���� 	0 _path  ��  � r   a h��� l  a f������ n   a f��� 1   d f��
�� 
psxp� l  a d������ c   a d��� o   a b���� 	0 _item  � m   b c��
�� 
alis��  ��  ��  ��  � o      ���� 	0 _path  � ���� r   i m��� o   i j���� 	0 _path  � n      ���  ;   k l� o   j k���� 
0 _paths  ��  �� 	0 _item  � n  @ C��� 2   A C��
�� 
cobj� o   @ A���� 0 _sel  ��  q m   ! "���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  o ��� l  t t��������  ��  ��  � ��� Z  t �������� F   t |��� l  t u������ o   t u���� 0 	_isscalar 	_isScalar��  ��  � l  x z������ H   x z�� o   x y���� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r    ���� n    ���� 4   � ����
�� 
cobj� m   � ����� � o    ����� 
0 _paths  � o      ���� 
0 _paths  ��  ��  � ��� L   � ��� o   � ����� 
0 _paths  � ���� l  � ���������  ��  ��  ��  5 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  � ' !  getBasenameAndExtension( item )   � ��� B     g e t B a s e n a m e A n d E x t e n s i o n (   i t e m   )� ��� l     ������  �       � ���     � ��� l     ������  � 4 .  Get name and file extension of a Finder item   � ��� \     G e t   n a m e   a n d   f i l e   e x t e n s i o n   o f   a   F i n d e r   i t e m� ��� l     ������  �       � ���     � ��� l     ������  � < 6  @param 	_item 			<reference> 	Finder item reference.   � ��� l     @ p a r a m   	 _ i t e m   	 	 	 < r e f e r e n c e >   	 F i n d e r   i t e m   r e f e r e n c e .� ��� l     ������  � 9 3  @return 	_name_ext 	<list> 			Name and extension.   � ��� f     @ r e t u r n   	 _ n a m e _ e x t   	 < l i s t >   	 	 	 N a m e   a n d   e x t e n s i o n .� ��� l     ������  �       � ���     � ��� i   x {��� I      ������� 20 getbasenameandextension getBasenameAndExtension� ���� o      ���� 	0 _item  ��  ��  � k     v�� ��� r     ��� l    ������ n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr��  ��  � o      ���� 0 
_delimsold 
_delimsOld� ��� r    	��� l   ������ m    �� ���  ��  ��  � o      ���� 0 
_delimsnew 
_delimsNew� � � r   
  l  
 ���� o   
 ���� 0 
_delimsnew 
_delimsNew��  ��   n      1    ��
�� 
txdl 1    ��
�� 
ascr   l   ��������  ��  ��   	 O    ^

 k    ]  r     l   ���� n     1    ��
�� 
pnam o    ���� 	0 _item  ��  ��   o      ���� 	0 _name    r     l   ���� n     1    ��
�� 
leng o    ���� 	0 _name  ��  ��   o      ���� 0 _namelength _nameLength  r     % l    #���� n     # !  1   ! #��
�� 
nmxt! o     !���� 	0 _item  ��  ��   o      ���� 0 _ext   "#" r   & +$%$ l  & )&����& n   & )'(' 1   ' )��
�� 
leng( o   & '���� 0 _ext  ��  ��  % o      ���� 0 
_extlength 
_extLength# )��) Z   , ]*+��,* >  , /-.- o   , -���� 0 
_extlength 
_extLength. m   - .����  + k   2 M// 010 r   2 9232 l  2 74����4 \   2 7565 o   2 3���� 0 _namelength _nameLength6 l  3 67����7 [   3 6898 o   3 4���� 0 
_extlength 
_extLength9 m   4 5���� ��  ��  ��  ��  3 o      ���� "0 _basenamelength _basenameLength1 :;: r   : G<=< l  : E>����> n   : E?@? l  ; EA��~A 7  ; E�}BC
�} 
citmB m   ? A�|�| C o   B D�{�{ "0 _basenamelength _basenameLength�  �~  @ o   : ;�z�z 	0 _name  ��  ��  = o      �y�y 0 	_basename  ; D�xD r   H MEFE l  H KG�w�vG c   H KHIH o   H I�u�u 0 	_basename  I m   I J�t
�t 
TEXT�w  �v  F o      �s�s 0 	_basename  �x  ��  , k   P ]JJ KLK r   P SMNM l  P QO�r�qO m   P QPP �QQ  �r  �q  N o      �p�p 0 _ext  L RSR r   T WTUT l  T UV�o�nV m   T U�m�m  �o  �n  U o      �l�l 0 
_extlength 
_extLengthS W�kW r   X ]XYX l  X [Z�j�iZ c   X [[\[ o   X Y�h�h 	0 _name  \ m   Y Z�g
�g 
TEXT�j  �i  Y o      �f�f 0 	_basename  �k  ��   m    ]]�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  	 ^_^ l  _ _�e�d�c�e  �d  �c  _ `a` r   _ bbcb o   _ `�b�b 0 _ext  c o      �a�a 0 
_extension  a ded r   c ffgf o   c d�`�` 0 	_basename  g o      �_�_ 0 	_basename  e hih r   g mjkj J   g kll mnm o   g h�^�^ 0 	_basename  n o�]o o   h i�\�\ 0 
_extension  �]  k o      �[�[ 0 	_name_ext  i pqp r   n srsr o   n o�Z�Z 0 
_delimsold 
_delimsOlds n     tut 1   p r�Y
�Y 
txdlu 1   o p�X
�X 
ascrq vwv l  t t�W�V�U�W  �V  �U  w x�Tx L   t vyy o   t u�S�S 0 	_name_ext  �T  � z{z l     �R�Q�P�R  �Q  �P  { |}| l     �O�N�M�O  �N  �M  } ~~ l     �L���L  � 
 --     � ���  - -     ��� l     �K���K  � #   getNameAndExtension( item )   � ��� :     g e t N a m e A n d E x t e n s i o n (   i t e m   )� ��� l     �J���J  �       � ���     � ��� l     �I���I  � X R  Alias of getBasenameAndExtension(); Get name and file extension of a Finder item   � ��� �     A l i a s   o f   g e t B a s e n a m e A n d E x t e n s i o n ( ) ;   G e t   n a m e   a n d   f i l e   e x t e n s i o n   o f   a   F i n d e r   i t e m� ��� l     �H���H  �       � ���     � ��� l     �G���G  � < 6  @param 	_item 			<reference> 	Finder item reference.   � ��� l     @ p a r a m   	 _ i t e m   	 	 	 < r e f e r e n c e >   	 F i n d e r   i t e m   r e f e r e n c e .� ��� l     �F���F  � 9 3  @return 	_name_ext 	<list> 			Name and extension.   � ��� f     @ r e t u r n   	 _ n a m e _ e x t   	 < l i s t >   	 	 	 N a m e   a n d   e x t e n s i o n .� ��� l     �E���E  �       � ���     � ��� i   | ��� I      �D��C�D *0 getnameandextension getNameAndExtension� ��B� o      �A�A 	0 _item  �B  �C  � L     �� n    ��� I    �@��?�@ 20 getbasenameandextension getBasenameAndExtension� ��>� o    �=�= 	0 _item  �>  �?  �  f     � ��� l     �<�;�:�<  �;  �:  � ��� l     �9�8�7�9  �8  �7  � ��� l     �6���6  � 
 --     � ���  - -    � ��� l     �5���5  � + %  getBasenameAndFullExtension( item )   � ��� J     g e t B a s e n a m e A n d F u l l E x t e n s i o n (   i t e m   )� ��� l     �4���4  �       � ���     � ��� l     �3���3  � G A  Get name and file extension (including period) of a Finder item   � ��� �     G e t   n a m e   a n d   f i l e   e x t e n s i o n   ( i n c l u d i n g   p e r i o d )   o f   a   F i n d e r   i t e m� ��� l     �2���2  �       � ���     � ��� l     �1���1  � > 8  @param 	_item 				<reference> 		Finder item reference.   � ��� p     @ p a r a m   	 _ i t e m   	 	 	 	 < r e f e r e n c e >   	 	 F i n d e r   i t e m   r e f e r e n c e .� ��� l     �0���0  � ? 9  @return 	_name_fullext 		<list> 				Name and extension.   � ��� r     @ r e t u r n   	 _ n a m e _ f u l l e x t   	 	 < l i s t >   	 	 	 	 N a m e   a n d   e x t e n s i o n .� ��� l     �/���/  �       � ���     � ��� i   � ���� I      �.��-�. :0 getbasenameandfullextension getBasenameAndFullExtension� ��,� o      �+�+ 	0 _item  �,  �-  � k     |�� ��� r     ��� l    ��*�)� n    ��� 1    �(
�( 
txdl� 1     �'
�' 
ascr�*  �)  � o      �&�& 0 
_delimsold 
_delimsOld� ��� r    	��� l   ��%�$� m    �� ���  �%  �$  � o      �#�# 0 
_delimsnew 
_delimsNew� ��� r   
 ��� l  
 ��"�!� o   
 � �  0 
_delimsnew 
_delimsNew�"  �!  � n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ��� l   ����  �  �  � ��� O    d��� k    c��    r     l   �� n     1    �
� 
pnam o    �� 	0 _item  �  �   o      �� 	0 _name    r    	
	 l   �� n     1    �
� 
leng o    �� 	0 _name  �  �  
 o      �� 0 _namelength _nameLength  r     % l    #�� n     # 1   ! #�
� 
nmxt o     !�� 	0 _item  �  �   o      �� 0 _fullext    r   & + l  & )��
 n   & ) 1   ' )�	
�	 
leng o   & '�� 0 _fullext  �  �
   o      ��  0 _fullextlength _fullextLength � Z   , c� >  , / !  o   , -��  0 _fullextlength _fullextLength! m   - .��   k   2 S"" #$# r   2 9%&% l  2 7'��' \   2 7()( o   2 3� �  0 _namelength _nameLength) l  3 6*����* [   3 6+,+ o   3 4����  0 _fullextlength _fullextLength, m   4 5���� ��  ��  �  �  & o      ���� "0 _basenamelength _basenameLength$ -.- r   : G/0/ l  : E1����1 n   : E232 l  ; E4����4 7  ; E��56
�� 
citm5 m   ? A���� 6 o   B D���� "0 _basenamelength _basenameLength��  ��  3 o   : ;���� 	0 _name  ��  ��  0 o      ���� 0 	_basename  . 787 r   H M9:9 l  H K;����; c   H K<=< o   H I���� 0 	_basename  = m   I J��
�� 
TEXT��  ��  : o      ���� 0 	_basename  8 >��> r   N S?@? b   N QABA m   N OCC �DD  .B o   O P���� 0 _fullext  @ o      ���� 0 _fullext  ��  �   k   V cEE FGF r   V YHIH l  V WJ����J m   V WKK �LL  ��  ��  I o      ���� 0 _fullext  G MNM r   Z ]OPO l  Z [Q����Q m   Z [����  ��  ��  P o      ����  0 _fullextlength _fullextLengthN R��R r   ^ cSTS l  ^ aU����U c   ^ aVWV o   ^ _���� 	0 _name  W m   _ `��
�� 
TEXT��  ��  T o      ���� 0 	_basename  ��  �  � m    XX�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � YZY l  e e��������  ��  ��  Z [\[ r   e h]^] o   e f���� 0 _fullext  ^ o      ���� 0 
_extension  \ _`_ r   i laba o   i j���� 0 	_basename  b o      ���� 0 	_basename  ` cdc r   m sefe J   m qgg hih o   m n���� 0 	_basename  i j��j o   n o���� 0 
_extension  ��  f o      ���� 0 _name_fullext  d klk r   t ymnm o   t u���� 0 
_delimsold 
_delimsOldn n     opo 1   v x��
�� 
txdlp 1   u v��
�� 
ascrl q��q L   z |rr o   z {���� 0 _name_fullext  ��  � sts l     ��������  ��  ��  t uvu l     ��������  ��  ��  v wxw l     ��yz��  y 
 --     z �{{  - -    x |}| l     ��~��  ~ ' !  getNameAndFullExtension( item )    ��� B     g e t N a m e A n d F u l l E x t e n s i o n (   i t e m   )} ��� l     ������  �       � ���     � ��� l     ������  � \ V  Alias of getBasenameAndFullExtension(); Get name and file extension of a Finder item   � ��� �     A l i a s   o f   g e t B a s e n a m e A n d F u l l E x t e n s i o n ( ) ;   G e t   n a m e   a n d   f i l e   e x t e n s i o n   o f   a   F i n d e r   i t e m� ��� l     ������  �       � ���     � ��� l     ������  � < 6  @param 	_item 			<reference> 	Finder item reference.   � ��� l     @ p a r a m   	 _ i t e m   	 	 	 < r e f e r e n c e >   	 F i n d e r   i t e m   r e f e r e n c e .� ��� l     ������  � 9 3  @return 	_name_ext 	<list> 			Name and extension.   � ��� f     @ r e t u r n   	 _ n a m e _ e x t   	 < l i s t >   	 	 	 N a m e   a n d   e x t e n s i o n .� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� 20 getnameandfullextension getNameAndFullExtension� ���� o      ���� 	0 _item  ��  ��  � L     �� n    ��� I    ������� :0 getbasenameandfullextension getBasenameAndFullExtension� ���� o    ���� 	0 _item  ��  ��  �  f     � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    getNames( items )   � ��� &     g e t N a m e s (   i t e m s   )� ��� l     ������  �       � ���     � ��� l     ������  � ( "  Get full names of Finder items.    � ��� D     G e t   f u l l   n a m e s   o f   F i n d e r   i t e m s .  � ��� l     ������  �       � ���     � ��� l     ������  � J D  @param		_items 		<list/reference> 	List of Finder item references.   � ��� �     @ p a r a m 	 	 _ i t e m s   	 	 < l i s t / r e f e r e n c e >   	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     ������  � G A  @return		_names 	<list/text> 			List of Finder item references.   � ��� �     @ r e t u r n 	 	 _ n a m e s   	 < l i s t / t e x t >   	 	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     ��������  ��  ��  � ��� l     ������  �     @uses  		getBasenames( )   � ��� 4     @ u s e s     	 	 g e t B a s e n a m e s (   )� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� 0 getnames getNames� ���� o      ���� 
0 _items  ��  ��  � k     r�� ��� q      �� ����� 	0 _item  � ����� 
0 _names  � ������ 0 	_isscalar 	_isScalar��  � ��� r     ��� J     ����  � o      ���� 
0 _names  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 	_isscalar 	_isScalar� ��� l  	 	��������  ��  ��  � ��� l  	 	������  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   	 ��� m   	 
��
�� boovfals� o      ���� &0 _alwaysreturnlist _alwaysReturnList� ��� Q     ��	 � r    			 o    ���� (0 always_return_list ALWAYS_RETURN_LIST	 o      ���� &0 _alwaysreturnlist _alwaysReturnList� R      ��		
�� .ascrerr ****      � ****	 o      ���� 0 errmsg errMsg	 ��	��
�� 
errn	 o      ���� 0 errnum errNum��  	  l   ��		��  	   (use _alwaysReturnList)   	 �		 0   ( u s e   _ a l w a y s R e t u r n L i s t )� 			
		 l  ! !��������  ��  ��  	
 			 Z   ! 6		����	 >  ! &			 n   ! $			 m   " $��
�� 
pcls	 o   ! "���� 
0 _items  	 m   $ %��
�� 
list	 k   ) 2		 			 r   ) .			 c   ) ,			 o   ) *���� 
0 _items  	 m   * +��
�� 
list	 o      ���� 
0 _items  	 	�	 r   / 2			 m   / 0�~
�~ boovtrue	 o      �}�} 0 	_isscalar 	_isScalar�  ��  ��  	 			 l  7 7�|�{�z�|  �{  �z  	 		 	 O   7 Y	!	"	! X   ; X	#�y	$	# r   K S	%	&	% l  K P	'�x�w	' c   K P	(	)	( n  K N	*	+	* 1   L N�v
�v 
pnam	+ o   K L�u�u 	0 _item  	) m   N O�t
�t 
ctxt�x  �w  	& n      	,	-	,  ;   Q R	- o   P Q�s�s 
0 _names  �y 	0 _item  	$ o   > ?�r�r 
0 _items  	" m   7 8	.	.�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  	  	/	0	/ l  Z Z�q�p�o�q  �p  �o  	0 	1	2	1 Z  Z o	3	4�n�m	3 F   Z b	5	6	5 l  Z [	7�l�k	7 o   Z [�j�j 0 	_isscalar 	_isScalar�l  �k  	6 l  ^ `	8�i�h	8 H   ^ `	9	9 o   ^ _�g�g &0 _alwaysreturnlist _alwaysReturnList�i  �h  	4 r   e k	:	;	: n   e i	<	=	< 4   f i�f	>
�f 
cobj	> m   g h�e�e 	= o   e f�d�d 
0 _names  	; o      �c�c 
0 _names  �n  �m  	2 	?�b	? L   p r	@	@ o   p q�a�a 
0 _names  �b  � 	A	B	A l     �`�_�^�`  �_  �^  	B 	C	D	C l     �]�\�[�]  �\  �[  	D 	E	F	E l     �Z	G	H�Z  	G 
 --     	H �	I	I  - -    	F 	J	K	J l     �Y	L	M�Y  	L    getDirs( items )   	M �	N	N $     g e t D i r s (   i t e m s   )	K 	O	P	O l     �X	Q	R�X  	Q       	R �	S	S     	P 	T	U	T l     �W	V	W�W  	V 7 1  Get paths of the folders names of Finder items.   	W �	X	X b     G e t   p a t h s   o f   t h e   f o l d e r s   n a m e s   o f   F i n d e r   i t e m s .	U 	Y	Z	Y l     �V	[	\�V  	[       	\ �	]	]     	Z 	^	_	^ l     �U	`	a�U  	` l f  @param 	_items 			<list/text/reference> 		List of Finder item references, POSIX paths, or HFS paths.   	a �	b	b �     @ p a r a m   	 _ i t e m s   	 	 	 < l i s t / t e x t / r e f e r e n c e >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s ,   P O S I X   p a t h s ,   o r   H F S   p a t h s .	_ 	c	d	c l     �T	e	f�T  	e Y S  @return 	_dirnames 		<list/text> 					List of Finder item parent directory paths.   	f �	g	g �     @ r e t u r n   	 _ d i r n a m e s   	 	 < l i s t / t e x t >   	 	 	 	 	 L i s t   o f   F i n d e r   i t e m   p a r e n t   d i r e c t o r y   p a t h s .	d 	h	i	h l     �S	j	k�S  	j       	k �	l	l     	i 	m	n	m i   � �	o	p	o I      �R	q�Q�R 0 getdirs getDirs	q 	r�P	r o      �O�O 
0 _items  �P  �Q  	p k     �	s	s 	t	u	t q      	v	v �N	w�N 
0 _items  	w �M	x�M 	0 _item  	x �L	y�L 0 	_dirnames  	y �K	z�K 0 	_isscalar 	_isScalar	z �J�I�J 0 
_container  �I  	u 	{	|	{ r     	}	~	} J     �H�H  	~ o      �G�G 0 	_dirnames  	| 		�	 r    	�	�	� m    �F
�F boovfals	� o      �E�E 0 	_isscalar 	_isScalar	� 	�	�	� l  	 	�D�C�B�D  �C  �B  	� 	�	�	� l  	 	�A	�	��A  	� . ( Localize property in case not available   	� �	�	� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e	� 	�	�	� r   	 	�	�	� m   	 
�@
�@ boovfals	� o      �?�? &0 _alwaysreturnlist _alwaysReturnList	� 	�	�	� Q     	�	�	�	� r    	�	�	� o    �>�> (0 always_return_list ALWAYS_RETURN_LIST	� o      �=�= &0 _alwaysreturnlist _alwaysReturnList	� R      �<	�	�
�< .ascrerr ****      � ****	� o      �;�; 0 errmsg errMsg	� �:	��9
�: 
errn	� o      �8�8 0 errnum errNum�9  	� l   �7	�	��7  	�   (use _alwaysReturnList)   	� �	�	� 0   ( u s e   _ a l w a y s R e t u r n L i s t )	� 	�	�	� l  ! !�6�5�4�6  �5  �4  	� 	�	�	� Z   ! 6	�	��3�2	� >  ! &	�	�	� n   ! $	�	�	� m   " $�1
�1 
pcls	� o   ! "�0�0 
0 _items  	� m   $ %�/
�/ 
list	� k   ) 2	�	� 	�	�	� r   ) .	�	�	� c   ) ,	�	�	� o   ) *�.�. 
0 _items  	� m   * +�-
�- 
list	� o      �,�, 
0 _items  	� 	��+	� r   / 2	�	�	� m   / 0�*
�* boovtrue	� o      �)�) 0 	_isscalar 	_isScalar�+  �3  �2  	� 	�	�	� l  7 7�(�'�&�(  �'  �&  	� 	�	�	� O   7 �	�	�	� X   ; �	��%	�	� k   K �	�	� 	�	�	� Z   K y	�	��$�#	� =  K P	�	�	� n   K N	�	�	� m   L N�"
�" 
pcls	� o   K L�!�! 	0 _item  	� m   N O� 
�  
ctxt	� l  S u	�	�	�	� k   S u	�	� 	�	�	� r   S X	�	�	� n   S V	�	�	� 2  T V�
� 
citm	� o   S T�� 	0 _item  	� o      �� 
0 _chars  	� 	��	� Z   Y u	�	��	�	� E   Y \	�	�	� o   Y Z�� 
0 _chars  	� m   Z [	�	� �	�	�  :	� l  _ e	�	�	�	� r   _ e	�	�	� 4   _ c�	�
� 
cobj	� l  a b	���	� o   a b�� 	0 _item  �  �  	� o      �� 	0 _item  	� #   assume _item is an HFS path   	� �	�	� :     a s s u m e   _ i t e m   i s   a n   H F S   p a t h�  	� l  h u	�	�	�	� r   h u	�	�	� 4   h s�	�
� 
cobj	� l  j r	���	� c   j r	�	�	� l  j p	���	� 4   j p�	�
� 
psxf	� l  l o	���	� c   l o	�	�	� o   l m�� 	0 _item  	� m   m n�
� 
ctxt�  �  �  �  	� m   p q�

�
 
alis�  �  	� o      �	�	 	0 _item  	� $   assume _item is a POSIX path   	� �	�	� <     a s s u m e   _ i t e m   i s   a   P O S I X   p a t h�  	� / )  assume item is a posix path or hfs path   	� �	�	� R     a s s u m e   i t e m   i s   a   p o s i x   p a t h   o r   h f s   p a t h�$  �#  	� 	��	� r   z �	�	�	� n   z �	�	�	� 1    ��
� 
psxp	� l  z 	���	� c   z 	�	�	� l  z }	���	� n   z }	�	�	� m   { }�
� 
ctnr	� o   z {�� 	0 _item  �  �  	� m   } ~� 
�  
alis�  �  	� n      	�	�	�  ;   � �	� o   � ����� 0 	_dirnames  �  �% 	0 _item  	� o   > ?���� 
0 _items  	� m   7 8	�	��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  	� 	�	�	� l  � ���������  ��  ��  	� 	�	�	� Z  � �	�	�����	� F   � �	�	�	� l  � �
 ����
  o   � ����� 0 	_isscalar 	_isScalar��  ��  	� l  � �
����
 H   � �

 o   � ����� &0 _alwaysreturnlist _alwaysReturnList��  ��  	� r   � �


 n   � �


 4   � ���

�� 
cobj
 m   � ����� 
 o   � ����� 0 	_dirnames  
 o      ���� 0 	_dirnames  ��  ��  	� 
��
 L   � �
	
	 o   � ����� 0 	_dirnames  ��  	n 




 l     ��������  ��  ��  
 


 l     ��������  ��  ��  
 


 l     ��

��  
 
 --     
 �

  - -    
 


 l     ��

��  
    getParents( items )   
 �

 *     g e t P a r e n t s (   i t e m s   )
 


 l     ��

��  
       
 �

     
 


 l     ��

 ��  
 K E  Alias of getDirs(); Get paths of the folders names of Finder items.   
  �
!
! �     A l i a s   o f   g e t D i r s ( ) ;   G e t   p a t h s   o f   t h e   f o l d e r s   n a m e s   o f   F i n d e r   i t e m s .
 
"
#
" l     ��
$
%��  
$       
% �
&
&     
# 
'
(
' l     ��
)
*��  
) l f  @param 	_items 			<list/text/reference>  	List of Finder item references, POSIX paths, or HFS paths.   
* �
+
+ �     @ p a r a m   	 _ i t e m s   	 	 	 < l i s t / t e x t / r e f e r e n c e >     	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s ,   P O S I X   p a t h s ,   o r   H F S   p a t h s .
( 
,
-
, l     ��
.
/��  
. X R  @return 	_dirnames 		<list/text>  			List of Finder item parent directory paths.   
/ �
0
0 �     @ r e t u r n   	 _ d i r n a m e s   	 	 < l i s t / t e x t >     	 	 	 L i s t   o f   F i n d e r   i t e m   p a r e n t   d i r e c t o r y   p a t h s .
- 
1
2
1 l     ��
3
4��  
3       
4 �
5
5     
2 
6
7
6 i   � �
8
9
8 I      ��
:���� 0 
getparents 
getParents
: 
;��
; o      ���� 
0 _items  ��  ��  
9 L     
<
< n    
=
>
= I    ��
?���� 0 getdirs getDirs
? 
@��
@ o    ���� 
0 _items  ��  ��  
>  f     
7 
A
B
A l     ��������  ��  ��  
B 
C
D
C l     ��������  ��  ��  
D 
E
F
E l     ��
G
H��  
G 
 --     
H �
I
I  - -    
F 
J
K
J l     ��
L
M��  
L    getSizes( paths )   
M �
N
N &     g e t S i z e s (   p a t h s   )
K 
O
P
O l     ��
Q
R��  
Q       
R �
S
S     
P 
T
U
T l     ��
V
W��  
V 1 +  Gets the file size per one or more paths.   
W �
X
X V     G e t s   t h e   f i l e   s i z e   p e r   o n e   o r   m o r e   p a t h s .
U 
Y
Z
Y l     ��
[
\��  
[       
\ �
]
]     
Z 
^
_
^ l     ��
`
a��  
` G A  @param 	_paths 		<list/text> 		List of one or more POSIX paths.   
a �
b
b �     @ p a r a m   	 _ p a t h s   	 	 < l i s t / t e x t >   	 	 L i s t   o f   o n e   o r   m o r e   P O S I X   p a t h s .
_ 
c
d
c l     ��
e
f��  
e : 4  @return 	_sizes 		<list/int> 		List of file sizes.   
f �
g
g h     @ r e t u r n   	 _ s i z e s   	 	 < l i s t / i n t >   	 	 L i s t   o f   f i l e   s i z e s .
d 
h
i
h l     ��
j
k��  
j       
k �
l
l     
i 
m
n
m i   � �
o
p
o I      ��
q���� 0 getsizes getSizes
q 
r��
r o      ���� 
0 _paths  ��  ��  
p k     d
s
s 
t
u
t r     
v
w
v J     ����  
w o      ���� 
0 _sizes  
u 
x
y
x r    
z
{
z m    ��
�� boovfals
{ o      ���� 0 	_isscalar 	_isScalar
y 
|
}
| l  	 	��������  ��  ��  
} 
~

~ Z   	 
�
�����
� >  	 
�
�
� n   	 
�
�
� m   
 ��
�� 
pcls
� o   	 
���� 
0 _paths  
� m    ��
�� 
list
� k    
�
� 
�
�
� r    
�
�
� c    
�
�
� o    ���� 
0 _paths  
� m    ��
�� 
list
� o      ���� 
0 _paths  
� 
���
� r    
�
�
� m    ��
�� boovtrue
� o      ���� 0 	_isscalar 	_isScalar��  ��  ��  
 
�
�
� l   ��������  ��  ��  
� 
�
�
� O    R
�
�
� X   # Q
���
�
� k   3 L
�
� 
�
�
� r   3 =
�
�
� l  3 ;
�����
� c   3 ;
�
�
� l  3 9
�����
� 4   3 9��
�
�� 
psxf
� l  5 8
�����
� c   5 8
�
�
� o   5 6���� 	0 _path  
� m   6 7��
�� 
TEXT��  ��  ��  ��  
� m   9 :��
�� 
alis��  ��  
� o      ���� 
0 _alias  
� 
���
� r   > L
�
�
� c   > I
�
�
� ^   > G
�
�
� l  > E
�����
� n   > E
�
�
� 1   C E��
�� 
ptsz
� l  > C
�����
� I  > C��
���
�� .sysonfo4asfe        file
� o   > ?���� 
0 _alias  ��  ��  ��  ��  ��  
� m   E F���� 
� m   G H��
�� 
long
� n      
�
�
�  ;   J K
� o   I J���� 
0 _sizes  ��  �� 	0 _path  
� o   & '���� 
0 _paths  
� m     
�
��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  
� 
�
�
� l  S S��������  ��  ��  
� 
�
�
� Z  S a
�
�����
� l  S T
�����
� o   S T���� 0 	_isscalar 	_isScalar��  ��  
� r   W ]
�
�
� n   W [
�
�
� 4   X [��
�
�� 
cobj
� m   Y Z���� 
� o   W X���� 
0 _sizes  
� o      ���� 
0 _sizes  ��  ��  
� 
���
� L   b d
�
� o   b c���� 
0 _sizes  ��  
n 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��������  ��  ��  
� 
�
�
� l     ��
�
���  
� 
 --     
� �
�
�  - -    
� 
�
�
� l     ��
�
���  
�    getBasenames( inputs )   
� �
�
� 0     g e t B a s e n a m e s (   i n p u t s   )
� 
�
�
� l     ��
�
���  
�       
� �
�
�     
� 
�
�
� l     �
�
��  
� n h  The the full path of every given Finder item without the file extension portion (if the item has one).   
� �
�
� �     T h e   t h e   f u l l   p a t h   o f   e v e r y   g i v e n   F i n d e r   i t e m   w i t h o u t   t h e   f i l e   e x t e n s i o n   p o r t i o n   ( i f   t h e   i t e m   h a s   o n e ) .
� 
�
�
� l     �~
�
��~  
�       
� �
�
�     
� 
�
�
� l     �}
�
��}  
� l f  @param 	_inputs 			<list/text/reference> 	List of Finder item references, POSIX paths, or HFS paths.   
� �
�
� �     @ p a r a m   	 _ i n p u t s   	 	 	 < l i s t / t e x t / r e f e r e n c e >   	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s ,   P O S I X   p a t h s ,   o r   H F S   p a t h s .
� 
�
�
� l     �|
�
��|  
� [ U  @return 	_basenames 		<list/text> 				List of Finder item paths without extensions.   
� �
�
� �     @ r e t u r n   	 _ b a s e n a m e s   	 	 < l i s t / t e x t >   	 	 	 	 L i s t   o f   F i n d e r   i t e m   p a t h s   w i t h o u t   e x t e n s i o n s .
� 
�
�
� l     �{
�
��{  
�       
� �
�
�     
� 
�
�
� i   � �
�
�
� I      �z
��y�z 0 getbasenames getBasenames
� 
��x
� o      �w�w 0 _inputs  �x  �y  
� k     �
�
� 
�
�
� l     �v�u�t�v  �u  �t  
� 
�
�
� q      
�
� �s
��s 0 _inputs  
� �r
��r 	0 _item  
� �q
��q 0 
_basenames  
� �p
��p 0 	_isscalar 	_isScalar
� �o�n�o 0 
_container  �n  
� 
�
�
� l     �m�l�k�m  �l  �k  
�    r      J     �j�j   o      �i�i 0 
_basenames    r     m    �h
�h boovfals o      �g�g 0 	_isscalar 	_isScalar 	 l  	 	�f�e�d�f  �e  �d  	 

 l  	 	�c�c   , & Basename behavior property safety net    � L   B a s e n a m e   b e h a v i o r   p r o p e r t y   s a f e t y   n e t  Q   	  r     o    �b�b 0 unix_basename UNIX_BASENAME o      �a�a 0 _unixbasename _unixBasename R      �`
�` .ascrerr ****      � **** o      �_�_ 0 errmsg errMsg �^�]
�^ 
errn o      �\�\ 0 errnum errNum�]   k      l   �[�[   9 3 UNIX_BASENAME might not be available, use override    � f   U N I X _ B A S E N A M E   m i g h t   n o t   b e   a v a i l a b l e ,   u s e   o v e r r i d e �Z r     !  m    �Y
�Y boovfals! o      �X�X 0 _unixbasename _unixBasename�Z   "#" l   �W�V�U�W  �V  �U  # $%$ l   �T&'�T  & / ) List return behavior property safety net   ' �(( R   L i s t   r e t u r n   b e h a v i o r   p r o p e r t y   s a f e t y   n e t% )*) Q    4+,-+ r   " )./. o   " '�S�S (0 always_return_list ALWAYS_RETURN_LIST/ o      �R�R &0 _alwaysreturnlist _alwaysReturnList, R      �Q01
�Q .ascrerr ****      � ****0 o      �P�P 0 errmsg errMsg1 �O2�N
�O 
errn2 o      �M�M 0 errnum errNum�N  - k   1 433 454 l  1 1�L67�L  6 > 8 ALWAYS_RETURN_LIST might not be available, use override   7 �88 p   A L W A Y S _ R E T U R N _ L I S T   m i g h t   n o t   b e   a v a i l a b l e ,   u s e   o v e r r i d e5 9�K9 r   1 4:;: m   1 2�J
�J boovfals; o      �I�I &0 _alwaysreturnlist _alwaysReturnList�K  * <=< l  5 5�H�G�F�H  �G  �F  = >?> l  5 5�E�D�C�E  �D  �C  ? @A@ Z   5 JBC�B�AB >  5 :DED n   5 8FGF m   6 8�@
�@ 
pclsG o   5 6�?�? 0 _inputs  E m   8 9�>
�> 
listC k   = FHH IJI r   = BKLK c   = @MNM o   = >�=�= 0 _inputs  N m   > ?�<
�< 
listL o      �;�; 0 _inputs  J O�:O r   C FPQP m   C D�9
�9 boovtrueQ o      �8�8 0 	_isscalar 	_isScalar�:  �B  �A  A RSR l  K K�7�6�5�7  �6  �5  S TUT O   K �VWV X   O �X�4YX k   _ �ZZ [\[ l  _ _�3�2�1�3  �2  �1  \ ]^] l  _ _�0_`�0  _ V P If path, convert to Finder object so we can convert it to POSIX predictably.			   ` �aa �   I f   p a t h ,   c o n v e r t   t o   F i n d e r   o b j e c t   s o   w e   c a n   c o n v e r t   i t   t o   P O S I X   p r e d i c t a b l y . 	 	 	^ bcb Z   _ �de�/�.d =  _ dfgf n   _ bhih m   ` b�-
�- 
pclsi o   _ `�,�, 
0 _input  g m   b c�+
�+ 
ctxte Z   g �jk�*lj E   g lmnm l  g jo�)�(o n   g jpqp 2  h j�'
�' 
citmq o   g h�&�& 
0 _input  �)  �(  n m   j krr �ss  :k l  o utuvt r   o uwxw 4   o s�%y
�% 
cobjy l  q rz�$�#z o   q r�"�" 
0 _input  �$  �#  x o      �!�! 
0 _input  u   is HFS path   v �{{    i s   H F S   p a t h�*  l l  x �|}~| r   x �� 4   x �� �
�  
cobj� l  z ����� c   z ���� l  z ����� 4   z ���
� 
psxf� l  | ���� c   | ��� o   | }�� 
0 _input  � m   } ~�
� 
ctxt�  �  �  �  � m   � ��
� 
alis�  �  � o      �� 
0 _input  }   is POSIX path   ~ ���    i s   P O S I X   p a t h�/  �.  c ��� l  � �����  �  �  � ��� l  � �����  � * $ Convert Finder object to POSIX path   � ��� H   C o n v e r t   F i n d e r   o b j e c t   t o   P O S I X   p a t h� ��� r   � ���� l  � ����� n   � ���� 1   � ��
� 
psxp� l  � ����� c   � ���� o   � ��� 
0 _input  � m   � ��

�
 
alis�  �  �  �  � o      �	�	 	0 _path  � ��� l  � �����  �  �  � ��� l  � �����  � %  Add basename to basenames list   � ��� >   A d d   b a s e n a m e   t o   b a s e n a m e s   l i s t� ��� Z   � ������ l  � ����� o   � ��� 0 _unixbasename _unixBasename�  �  � l  � ����� r   � ���� I  � �� ���
�  .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ���  _ p a t h = "� o   � ����� 	0 _path  � m   � ��� ��� B " ;   e c h o   $ ( b a s e n a m e   - -   " $ { _ p a t h } " )��  � n      ���  ;   � �� o   � ����� 0 
_basenames  � 8 2> behave like UNIX `basename` (include extensions)   � ��� d >   b e h a v e   l i k e   U N I X   ` b a s e n a m e `   ( i n c l u d e   e x t e n s i o n s )�  � l  � ����� r   � ���� I  � ������
�� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� m   � ��� ���  _ p a t h = "� o   � ����� 	0 _path  � m   � ��� ��� H " ;   e c h o   $ ( b a s e n a m e   - -   " $ { _ p a t h % . * } " )��  � n      ���  ;   � �� o   � ����� 0 
_basenames  � E ?> treat basename as name without extension (exclude extensions)   � ��� ~ >   t r e a t   b a s e n a m e   a s   n a m e   w i t h o u t   e x t e n s i o n   ( e x c l u d e   e x t e n s i o n s )� ���� l  � ���������  ��  ��  ��  �4 
0 _input  Y o   R S���� 0 _inputs  W m   K L���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  U ��� l  � ���������  ��  ��  � ��� Z  � �������� F   � ���� l  � ������� o   � ����� 0 	_isscalar 	_isScalar��  ��  � l  � ������� H   � ��� o   � ����� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 
_basenames  � o      ���� 0 
_basenames  ��  ��  � ���� L   � ��� o   � ����� 0 
_basenames  ��  
� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  � "   getFullExtensions( items )   � ��� 8     g e t F u l l E x t e n s i o n s (   i t e m s   )� ��� l     ������  �       � ���     � ��� l     ������  � H B  Get file extensions of the given Finder items including periods.   � ��� �     G e t   f i l e   e x t e n s i o n s   o f   t h e   g i v e n   F i n d e r   i t e m s   i n c l u d i n g   p e r i o d s .� ��� l     ������  �       � ���     � ��� l     ������  � K E  @param 	_items 			<list/reference> 	List of Finder item references.   � �   �     @ p a r a m   	 _ i t e m s   	 	 	 < l i s t / r e f e r e n c e >   	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .�  l     ����   Z T  @return 	_extensions 	<list/text> 			List of Finder item extensions (with period).    � �     @ r e t u r n   	 _ e x t e n s i o n s   	 < l i s t / t e x t >   	 	 	 L i s t   o f   F i n d e r   i t e m   e x t e n s i o n s   ( w i t h   p e r i o d ) .  l     ��	��         	 �

       i   � � I      ������ &0 getfullextensions getFullExtensions �� o      ���� 
0 _items  ��  ��   k     �  q       ���� 
0 _items   ���� 	0 _item   ���� 0 _extensions   ������ 0 	_isscalar 	_isScalar��    l     ��������  ��  ��    r      J     ����   o      ���� 0 _extensions    r     !  m    ��
�� boovfals! o      ���� 0 	_isscalar 	_isScalar "#" l  	 	��������  ��  ��  # $%$ l  	 	��&'��  & . ( Localize property in case not available   ' �(( P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e% )*) r   	 +,+ m   	 
��
�� boovfals, o      ���� &0 _alwaysreturnlist _alwaysReturnList* -.- Q     /01/ r    232 o    ���� (0 always_return_list ALWAYS_RETURN_LIST3 o      ���� &0 _alwaysreturnlist _alwaysReturnList0 R      ��45
�� .ascrerr ****      � ****4 o      ���� 0 errmsg errMsg5 ��6��
�� 
errn6 o      ���� 0 errnum errNum��  1 l   ��78��  7   (use _alwaysReturnList)   8 �99 0   ( u s e   _ a l w a y s R e t u r n L i s t ). :;: l  ! !��������  ��  ��  ; <=< Z   ! 6>?����> >  ! &@A@ n   ! $BCB m   " $��
�� 
pclsC o   ! "���� 
0 _items  A m   $ %��
�� 
list? k   ) 2DD EFE r   ) .GHG c   ) ,IJI o   ) *���� 
0 _items  J m   * +��
�� 
listH o      ���� 
0 _items  F K��K r   / 2LML m   / 0��
�� boovtrueM o      ���� 0 	_isscalar 	_isScalar��  ��  ��  = NON l  7 7��������  ��  ��  O PQP O   7 vRSR X   ; uT��UT Z   K pVW��XV >  K PYZY n  K N[\[ 1   L N��
�� 
nmxt\ o   K L���� 	0 _item  Z m   N O]] �^^  W r   S ]_`_ l  S Za����a c   S Zbcb b   S Xded m   S Tff �gg  .e n  T Whih 1   U W��
�� 
nmxti o   T U���� 	0 _item  c m   X Y��
�� 
ctxt��  ��  ` n      jkj  ;   [ \k o   Z [���� 0 _extensions  ��  X k   ` pll mnm l  ` `��op��  o Y S  If settings dictate it, include empty strings to keep total item count consistent   p �qq �     I f   s e t t i n g s   d i c t a t e   i t ,   i n c l u d e   e m p t y   s t r i n g s   t o   k e e p   t o t a l   i t e m   c o u n t   c o n s i s t e n tn r��r Z  ` pst����s l  ` eu����u o   ` e���� >0 use_empty_strings_for_missing USE_EMPTY_STRINGS_FOR_MISSING��  ��  t r   h lvwv l  h ix����x m   h iyy �zz  ��  ��  w n      {|{  ;   j k| o   i j���� 0 _extensions  ��  ��  ��  �� 	0 _item  U o   > ?���� 
0 _items  S m   7 8}}�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  Q ~~ l  w w��������  ��  ��   ��� Z  w �������� F   w ��� l  w x������ o   w x���� 0 	_isscalar 	_isScalar��  ��  � l  { }������ H   { }�� o   { |���� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 _extensions  � o      ���� 0 _extensions  ��  ��  � ��� L   � ��� o   � ����� 0 _extensions  � ���� l  � ���~�}�  �~  �}  ��   ��� l     �|�{�z�|  �{  �z  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  � 
 --     � ���  - -    � ��� l     �u���u  �    getFullExts( items )   � ��� ,     g e t F u l l E x t s (   i t e m s   )� ��� l     �t���t  �       � ���     � ��� l     �s���s  � f `  Alias of getFullExtensions(); Get file extensions of the given Finder items including periods.   � ��� �     A l i a s   o f   g e t F u l l E x t e n s i o n s ( ) ;   G e t   f i l e   e x t e n s i o n s   o f   t h e   g i v e n   F i n d e r   i t e m s   i n c l u d i n g   p e r i o d s .� ��� l     �r���r  �       � ���     � ��� l     �q���q  � K E  @param 	_items 			<list/reference> 	List of Finder item references.   � ��� �     @ p a r a m   	 _ i t e m s   	 	 	 < l i s t / r e f e r e n c e >   	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     �p���p  � Z T  @return 	_extensions 	<list/text> 			List of Finder item extensions (with period).   � ��� �     @ r e t u r n   	 _ e x t e n s i o n s   	 < l i s t / t e x t >   	 	 	 L i s t   o f   F i n d e r   i t e m   e x t e n s i o n s   ( w i t h   p e r i o d ) .� ��� l     �o���o  �       � ���     � ��� i   � ���� I      �n��m�n 0 getfullexts getFullExts� ��l� o      �k�k 
0 _items  �l  �m  � L     �� n    ��� I    �j��i�j &0 getfullextensions getFullExtensions� ��h� o    �g�g 
0 _items  �h  �i  �  f     � ��� l     �f�e�d�f  �e  �d  � ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � 
 --     � ���  - -    � ��� l     �_���_  �    getExtensions( items )   � ��� 0     g e t E x t e n s i o n s (   i t e m s   )� ��� l     �^���^  �       � ���     � ��� l     �]���]  � 6 0  Get file extensions of the given Finder items.   � ��� `     G e t   f i l e   e x t e n s i o n s   o f   t h e   g i v e n   F i n d e r   i t e m s .� ��� l     �\���\  �       � ���     � ��� l     �[���[  � K E  @param 	_items 			<list/reference> 	List of Finder item references.   � ��� �     @ p a r a m   	 _ i t e m s   	 	 	 < l i s t / r e f e r e n c e >   	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     �Z���Z  � L F  @return 	_extensions 	<list/text> 			List of Finder item extensions.   � ��� �     @ r e t u r n   	 _ e x t e n s i o n s   	 < l i s t / t e x t >   	 	 	 L i s t   o f   F i n d e r   i t e m   e x t e n s i o n s .� ��� l     �Y���Y  �       � ���     � ��� i   � ���� I      �X��W�X 0 getextensions getExtensions� ��V� o      �U�U 
0 _items  �V  �W  � k     ��� ��� q      �� �T��T 
0 _items  � �S �S 	0 _item    �R�R 0 _extensions   �Q�P�Q 0 	_isscalar 	_isScalar�P  �  l     �O�N�M�O  �N  �M    r      J     �L�L   o      �K�K 0 _extensions   	 r    

 m    �J
�J boovfals o      �I�I 0 	_isscalar 	_isScalar	  l  	 	�H�G�F�H  �G  �F    l  	 	�E�E   . ( Localize property in case not available    � P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e  r   	  m   	 
�D
�D boovtrue o      �C�C 80 _useemptystringsformissing _useEmptyStringsForMissing  Q      r     o    �B�B >0 use_empty_strings_for_missing USE_EMPTY_STRINGS_FOR_MISSING o      �A�A 80 _useemptystringsformissing _useEmptyStringsForMissing R      �@
�@ .ascrerr ****      � **** o      �?�? 0 errmsg errMsg �> �=
�> 
errn  o      �<�< 0 errnum errNum�=   l   �;!"�;  ! ' ! (use _useEmptyStringsForMissing)   " �## B   ( u s e   _ u s e E m p t y S t r i n g s F o r M i s s i n g ) $%$ l  ! !�:�9�8�:  �9  �8  % &'& l  ! !�7()�7  ( . ( Localize property in case not available   ) �** P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e' +,+ r   ! $-.- m   ! "�6
�6 boovfals. o      �5�5 &0 _alwaysreturnlist _alwaysReturnList, /0/ Q   % 81231 r   ( /454 o   ( -�4�4 (0 always_return_list ALWAYS_RETURN_LIST5 o      �3�3 &0 _alwaysreturnlist _alwaysReturnList2 R      �267
�2 .ascrerr ****      � ****6 o      �1�1 0 errmsg errMsg7 �08�/
�0 
errn8 o      �.�. 0 errnum errNum�/  3 l  7 7�-9:�-  9   (use _alwaysReturnList)   : �;; 0   ( u s e   _ a l w a y s R e t u r n L i s t )0 <=< l  9 9�,�+�*�,  �+  �*  = >?> l  9 9�)�(�'�)  �(  �'  ? @A@ Z   9 NBC�&�%B >  9 >DED n   9 <FGF m   : <�$
�$ 
pclsG o   9 :�#�# 
0 _items  E m   < =�"
�" 
listC k   A JHH IJI r   A FKLK c   A DMNM o   A B�!�! 
0 _items  N m   B C� 
�  
listL o      �� 
0 _items  J O�O r   G JPQP m   G H�
� boovtrueQ o      �� 0 	_isscalar 	_isScalar�  �&  �%  A RSR l  O O����  �  �  S TUT O   O �VWV X   S �X�YX Z   c �Z[�\Z >  c h]^] n  c f_`_ 1   d f�
� 
nmxt` o   c d�� 	0 _item  ^ m   f gaa �bb  [ r   k scdc l  k pe��e c   k pfgf n  k nhih 1   l n�
� 
nmxti o   k l�� 	0 _item  g m   n o�
� 
ctxt�  �  d n      jkj  ;   q rk o   p q�� 0 _extensions  �  \ k   v �ll mnm l  v v�op�  o Y S  If settings dictate it, include empty strings to keep total item count consistent   p �qq �     I f   s e t t i n g s   d i c t a t e   i t ,   i n c l u d e   e m p t y   s t r i n g s   t o   k e e p   t o t a l   i t e m   c o u n t   c o n s i s t e n tn r�r Z  v �st��s l  v wu�
�	u o   v w�� 80 _useemptystringsformissing _useEmptyStringsForMissing�
  �	  t r   z ~vwv l  z {x��x m   z {yy �zz  �  �  w n      {|{  ;   | }| o   { |�� 0 _extensions  �  �  �  � 	0 _item  Y o   V W�� 
0 _items  W m   O P}}�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  U ~~ l  � �����  �  �   ��� Z  � ���� ��� F   � ���� l  � ������� o   � ����� 0 	_isscalar 	_isScalar��  ��  � l  � ������� H   � ��� o   � ����� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 _extensions  � o      ���� 0 _extensions  �   ��  � ���� L   � ��� o   � ����� 0 _extensions  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    getMetadata(_paths)   � ��� *     g e t M e t a d a t a ( _ p a t h s )� ��� l     ������  �       � ���     � ��� l     ������  � N H  Gets the metadata of the Finder item referenced by each path in _paths   � ��� �     G e t s   t h e   m e t a d a t a   o f   t h e   F i n d e r   i t e m   r e f e r e n c e d   b y   e a c h   p a t h   i n   _ p a t h s� ��� l     ������  �       � ���     � ��� l     ������  � X R  @param 	_paths 			<list/text> 		POSIX path (or list of paths) of Finder item(s).   � ��� �     @ p a r a m   	 _ p a t h s   	 	 	 < l i s t / t e x t >   	 	 P O S I X   p a t h   ( o r   l i s t   o f   p a t h s )   o f   F i n d e r   i t e m ( s ) .� ��� l     ������  � _ Y  @return 	_metadata 		<list/text> 		Metadata of the item referenced by each POSIX paths.   � ��� �     @ r e t u r n   	 _ m e t a d a t a   	 	 < l i s t / t e x t >   	 	 M e t a d a t a   o f   t h e   i t e m   r e f e r e n c e d   b y   e a c h   P O S I X   p a t h s .� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� 0 getmetadata getMetadata� ���� o      ���� 
0 _paths  ��  ��  � k     w�� ��� q      �� ����� 	0 _path  � ����� 
0 _paths  � ����� 0 	_metadata  � ������ 0 	_isscalar 	_isScalar��  � ��� l     ��������  ��  ��  � ��� r     ��� J     ����  � o      ���� 0 	_metadata  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 	_isscalar 	_isScalar� ��� l  	 	��������  ��  ��  � ��� l  	 	������  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   	 ��� m   	 
��
�� boovfals� o      ���� &0 _alwaysreturnlist _alwaysReturnList� ��� Q     ���� r    ��� o    ���� (0 always_return_list ALWAYS_RETURN_LIST� o      ���� &0 _alwaysreturnlist _alwaysReturnList� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � l   ������  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  ! !��������  ��  ��  � ��� Z   ! 6������� l  ! &������ >  ! &��� n   ! $��� m   " $��
�� 
pcls� o   ! "���� 
0 _paths  � m   $ %��
�� 
list��  ��  � k   ) 2�� ��� r   ) ,��� m   ) *��
�� boovtrue� o      ���� 0 	_isscalar 	_isScalar� ���� r   - 2��� c   - 0��� o   - .���� 
0 _paths  � m   . /��
�� 
list� o      ���� 
0 _paths  ��  ��  ��  �    l  7 7��������  ��  ��    X   7 ^�� k   G Y  r   G L	
	 n   G J 1   H J��
�� 
strq o   G H���� 	0 _path  
 o      ���� 	0 _path   �� r   M Y l  M V���� c   M V l  M T���� I  M T����
�� .sysoexecTEXT���     TEXT b   M P m   M N �  / u s r / b i n / m d l s   o   N O���� 	0 _path  ��  ��  ��   m   T U��
�� 
ctxt��  ��   n        ;   W X o   V W���� 0 	_metadata  ��  �� 	0 _path   o   : ;���� 
0 _paths    l  _ _��������  ��  ��    Z  _ t ���� F   _ g!"! l  _ `#����# o   _ `���� 0 	_isscalar 	_isScalar��  ��  " l  c e$����$ H   c e%% o   c d���� &0 _alwaysreturnlist _alwaysReturnList��  ��    r   j p&'& n   j n()( 4   k n��*
�� 
cobj* m   l m���� ) o   j k���� 0 	_metadata  ' o      ���� 0 	_metadata  ��  ��   +��+ L   u w,, o   u v���� 0 	_metadata  ��  � -.- l     ��������  ��  ��  . /0/ l     ��������  ��  ��  0 121 l     ��34��  3 
 --     4 �55  - -    2 676 l     ��89��  8 0 *  onlyTheseExtensions( items, extensions )   9 �:: T     o n l y T h e s e E x t e n s i o n s (   i t e m s ,   e x t e n s i o n s   )7 ;<; l     ��=>��  =       > �??     < @A@ l     ��BC��  B L F  Removes from _items any Finder item whose extension is not in _exts.   C �DD �     R e m o v e s   f r o m   _ i t e m s   a n y   F i n d e r   i t e m   w h o s e   e x t e n s i o n   i s   n o t   i n   _ e x t s .A EFE l     ��GH��  G       H �II     F JKJ l     ��LM��  L A ;  @param 	_items 		<list> 		List of Finder item references.   M �NN v     @ p a r a m   	 _ i t e m s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .K OPO l     ��QR��  Q D >  @param 	_exts 		<list> 		List of acceptable file extensions.   R �SS |     @ p a r a m   	 _ e x t s   	 	 < l i s t >   	 	 L i s t   o f   a c c e p t a b l e   f i l e   e x t e n s i o n s .P TUT l     ��VW��  V B <  @return 	_files 		<list> 		List of Finder item references.   W �XX x     @ r e t u r n   	 _ f i l e s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .U YZY l     ��[\��  [       \ �]]     Z ^_^ i   � �`a` I      ��b���� *0 onlytheseextensions onlyTheseExtensionsb cdc o      ���� 
0 _items  d e��e o      ���� 	0 _exts  ��  ��  a k     �ff ghg q      ii �j� 
0 _items  j �~k�~ 	0 _exts  k �}�|�} 0 	_isscalar 	_isScalar�|  h lml l     �{�z�y�{  �z  �y  m non r     pqp J     �x�x  q o      �w�w 
0 _files  o rsr r    tut m    �v
�v boovfalsu o      �u�u 0 	_isscalar 	_isScalars vwv l  	 	�t�s�r�t  �s  �r  w xyx l  	 	�qz{�q  z . ( Localize property in case not available   { �|| P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l ey }~} r   	 � m   	 
�p
�p boovfals� o      �o�o &0 _alwaysreturnlist _alwaysReturnList~ ��� Q     ���� r    ��� o    �n�n (0 always_return_list ALWAYS_RETURN_LIST� o      �m�m &0 _alwaysreturnlist _alwaysReturnList� R      �l��
�l .ascrerr ****      � ****� o      �k�k 0 errmsg errMsg� �j��i
�j 
errn� o      �h�h 0 errnum errNum�i  � l   �g���g  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  ! !�f�e�d�f  �e  �d  � ��� l  ! !�c�b�a�c  �b  �a  � ��� Z   ! 6���`�_� >  ! &��� n   ! $��� m   " $�^
�^ 
pcls� o   ! "�]�] 
0 _items  � m   $ %�\
�\ 
list� k   ) 2�� ��� r   ) .��� c   ) ,��� o   ) *�[�[ 
0 _items  � m   * +�Z
�Z 
list� o      �Y�Y 
0 _items  � ��X� r   / 2��� m   / 0�W
�W boovtrue� o      �V�V 0 	_isscalar 	_isScalar�X  �`  �_  � ��� l  7 7�U�T�S�U  �T  �S  � ��� Z  7 H���R�Q� >  7 <��� n   7 :��� m   8 :�P
�P 
pcls� o   7 8�O�O 	0 _exts  � m   : ;�N
�N 
list� r   ? D��� c   ? B��� o   ? @�M�M 	0 _exts  � m   @ A�L
�L 
list� o      �K�K 	0 _exts  �R  �Q  � ��� l  I I�J�I�H�J  �I  �H  � ��� O   I ���� X   M ���G�� k   ] ��� ��� Z   ] q���F�E� =  ] b��� n   ] `��� m   ^ `�D
�D 
pcls� o   ] ^�C�C 	0 _item  � m   ` a�B
�B 
ctxt� r   e m��� n  e k��� I   f k�A��@�A 0 asitems asItems� ��?� o   f g�>�> 	0 _item  �?  �@  �  f   e f� o      �=�= 	0 _item  �F  �E  � ��<� Z   r ����;�:� E   r w��� o   r s�9�9 	0 _exts  � l  s v��8�7� n   s v��� 1   t v�6
�6 
nmxt� o   s t�5�5 	0 _item  �8  �7  � r   z ~��� o   z {�4�4 	0 _item  � n      ���  ;   | }� o   { |�3�3 
0 _files  �;  �:  �<  �G 	0 _item  � o   P Q�2�2 
0 _items  � m   I J���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  � ��1�0�/�1  �0  �/  � ��� Z  � ����.�-� F   � ���� l  � ���,�+� o   � ��*�* 0 	_isscalar 	_isScalar�,  �+  � l  � ���)�(� H   � ��� o   � ��'�' &0 _alwaysreturnlist _alwaysReturnList�)  �(  � r   � ���� n   � ���� 4   � ��&�
�& 
cobj� m   � ��%�% � o   � ��$�$ 
0 _files  � o      �#�# 
0 _files  �.  �-  � ��"� L   � ��� o   � ��!�! 
0 _files  �"  _ ��� l     � ���   �  �  � ��� l     ����  �  �  � ��� l     ����  � 
 --     � ���  - -    � ��� l     ����  �    onlyFiles( items )   � ��� (     o n l y F i l e s (   i t e m s   )� ��� l     ����  �       � ���     � ��� l     ����  � d ^  Removes from _items any Finder item that isn't a file (i.e. removes folders, aliases, etc.).   � ��� �     R e m o v e s   f r o m   _ i t e m s   a n y   F i n d e r   i t e m   t h a t   i s n ' t   a   f i l e   ( i . e .   r e m o v e s   f o l d e r s ,   a l i a s e s ,   e t c . ) .�    l     ��          �       l     ��   A ;  @param 	_items 		<list> 		List of Finder item references.    �		 v     @ p a r a m   	 _ i t e m s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s . 

 l     ��   J D  @return 	_fileItems 	<list> 		List of Finder file item references.    � �     @ r e t u r n   	 _ f i l e I t e m s   	 < l i s t >   	 	 L i s t   o f   F i n d e r   f i l e   i t e m   r e f e r e n c e s .  l     ��          �       i   � � I      ��� 0 	onlyfiles 	onlyFiles � o      �� 
0 _items  �  �   k     }  q       �� 
0 _items   ��� 0 	_isscalar 	_isScalar�     l     ��
�	�  �
  �	    !"! r     #$# J     ��  $ o      �� 0 
_fileitems 
_fileItems" %&% r    '(' m    �
� boovfals( o      �� 0 	_isscalar 	_isScalar& )*) l  	 	����  �  �  * +,+ l  	 	�-.�  - . ( Localize property in case not available   . �// P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e, 010 r   	 232 m   	 
� 
�  boovfals3 o      ���� &0 _alwaysreturnlist _alwaysReturnList1 454 Q     6786 r    9:9 o    ���� (0 always_return_list ALWAYS_RETURN_LIST: o      ���� &0 _alwaysreturnlist _alwaysReturnList7 R      ��;<
�� .ascrerr ****      � ****; o      ���� 0 errmsg errMsg< ��=��
�� 
errn= o      ���� 0 errnum errNum��  8 l   ��>?��  >   (use _alwaysReturnList)   ? �@@ 0   ( u s e   _ a l w a y s R e t u r n L i s t )5 ABA l  ! !��������  ��  ��  B CDC l  ! !��������  ��  ��  D EFE Z   ! 6GH����G >  ! &IJI n   ! $KLK m   " $��
�� 
pclsL o   ! "���� 
0 _items  J m   $ %��
�� 
listH k   ) 2MM NON r   ) .PQP c   ) ,RSR o   ) *���� 
0 _items  S m   * +��
�� 
listQ o      ���� 
0 _items  O T��T r   / 2UVU m   / 0��
�� boovtrueV o      ���� 0 	_isscalar 	_isScalar��  ��  ��  F WXW l  7 7��������  ��  ��  X YZY O   7 d[\[ X   ; c]��^] Z  K ^_`����_ >  K Saba n   K Qcdc 4   N Q��e
�� 
cha e m   O P������d l  K Nf����f c   K Nghg o   K L���� 	0 _item  h m   L M��
�� 
TEXT��  ��  b m   Q Rii �jj  :` r   V Zklk o   V W���� 	0 _item  l n      mnm  ;   X Yn o   W X���� 0 
_fileitems 
_fileItems��  ��  �� 	0 _item  ^ o   > ?���� 
0 _items  \ m   7 8oo�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  Z pqp l  e e��������  ��  ��  q rsr Z  e ztu����t F   e mvwv l  e fx����x o   e f���� 0 	_isscalar 	_isScalar��  ��  w l  i ky����y H   i kzz o   i j���� &0 _alwaysreturnlist _alwaysReturnList��  ��  u r   p v{|{ n   p t}~} 4   q t��
�� 
cobj m   r s���� ~ o   p q���� 0 
_fileitems 
_fileItems| o      ���� 0 
_fileitems 
_fileItems��  ��  s ���� L   { }�� o   { |���� 0 
_fileitems 
_fileItems��   ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  � $   onlyFoldersAndLinks( items )   � ��� <     o n l y F o l d e r s A n d L i n k s (   i t e m s   )� ��� l     ������  �       � ���     � ��� l     ������  � I C  Removes from _items any Finder item that isn't a folder or alias.   � ��� �     R e m o v e s   f r o m   _ i t e m s   a n y   F i n d e r   i t e m   t h a t   i s n ' t   a   f o l d e r   o r   a l i a s .� ��� l     ������  �       � ���     � ��� l     ������  � A ;  @param 	_items 		<list> 		List of Finder item references.   � ��� v     @ p a r a m   	 _ i t e m s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     ������  � e _  @return 	_dirItems 	<list> 		List of Finder folder or link (aliases and symlinks) references.   � ��� �     @ r e t u r n   	 _ d i r I t e m s   	 < l i s t >   	 	 L i s t   o f   F i n d e r   f o l d e r   o r   l i n k   ( a l i a s e s   a n d   s y m l i n k s )   r e f e r e n c e s .� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� *0 onlyfoldersandlinks onlyFoldersAndLinks� ���� o      ���� 
0 _items  ��  ��  � k     }�� ��� q      �� ����� 
0 _items  � ����� 0 	_diritems 	_dirItems� ������ 0 	_isscalar 	_isScalar��  � ��� l     ��������  ��  ��  � ��� r     ��� J     ����  � o      ���� 0 	_diritems 	_dirItems� ��� r    ��� m    ��
�� boovfals� o      ���� 0 	_isscalar 	_isScalar� ��� l  	 	��������  ��  ��  � ��� l  	 	������  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   	 ��� m   	 
��
�� boovfals� o      ���� &0 _alwaysreturnlist _alwaysReturnList� ��� Q     ���� r    ��� o    ���� (0 always_return_list ALWAYS_RETURN_LIST� o      ���� &0 _alwaysreturnlist _alwaysReturnList� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � l   ������  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  ! !��������  ��  ��  � ��� Z   ! 6������� >  ! &��� n   ! $��� m   " $��
�� 
pcls� o   ! "���� 
0 _items  � m   $ %��
�� 
list� k   ) 2�� ��� r   ) .��� c   ) ,��� o   ) *���� 
0 _items  � m   * +��
�� 
list� o      ���� 
0 _items  � ���� r   / 2��� m   / 0��
�� boovtrue� o      ���� 0 	_isscalar 	_isScalar��  ��  ��  � ��� l  7 7��������  ��  ��  � ��� O   7 d��� X   ; c����� Z  K ^������� >  K S��� n   K Q��� 4   N Q���
�� 
cha � m   O P������� l  K N������ c   K N   o   K L���� 	0 _item   m   L M��
�� 
TEXT��  ��  � m   Q R �  :� r   V Z o   V W���� 	0 _item   n        ;   X Y o   W X�� 0 	_diritems 	_dirItems��  ��  �� 	0 _item  � o   > ?�~�~ 
0 _items  � m   7 8�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � 	
	 l  e e�}�|�{�}  �|  �{  
  Z  e z�z�y F   e m l  e f�x�w o   e f�v�v 0 	_isscalar 	_isScalar�x  �w   l  i k�u�t H   i k o   i j�s�s &0 _alwaysreturnlist _alwaysReturnList�u  �t   r   p v n   p t 4   q t�r
�r 
cobj m   r s�q�q  o   p q�p�p 0 	_diritems 	_dirItems o      �o�o 0 	_diritems 	_dirItems�z  �y   �n L   { } o   { |�m�m 0 	_diritems 	_dirItems�n  �  l     �l�k�j�l  �k  �j    l     �i�h�g�i  �h  �g     l     �f!"�f  ! 
 --     " �##  - -      $%$ l     �e&'�e  &    onlyFolders( items )   ' �(( ,     o n l y F o l d e r s (   i t e m s   )% )*) l     �d+,�d  +       , �--     * ./. l     �c01�c  0 E ?  Removes from _items any Finder item that isn't a folder item.   1 �22 ~     R e m o v e s   f r o m   _ i t e m s   a n y   F i n d e r   i t e m   t h a t   i s n ' t   a   f o l d e r   i t e m ./ 343 l     �b56�b  5       6 �77     4 898 l     �a:;�a  : A ;  @param 	_items 		<list> 		List of Finder item references.   ; �<< v     @ p a r a m   	 _ i t e m s   	 	 < l i s t >   	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s .9 =>= l     �`?@�`  ? J D  @return 	_folders 	<list> 		List of Finder folder item references.   @ �AA �     @ r e t u r n   	 _ f o l d e r s   	 < l i s t >   	 	 L i s t   o f   F i n d e r   f o l d e r   i t e m   r e f e r e n c e s .> BCB l     �_DE�_  D       E �FF     C GHG i   � �IJI I      �^K�]�^ 0 onlyfolders onlyFoldersK L�\L o      �[�[ 
0 _items  �\  �]  J k     �MM NON q      PP �ZQ�Z 
0 _items  Q �YR�Y 0 _folders  R �X�W�X 0 	_isscalar 	_isScalar�W  O STS l     �V�U�T�V  �U  �T  T UVU r     WXW J     �S�S  X o      �R�R 0 _folders  V YZY r    [\[ m    �Q
�Q boovfals\ o      �P�P 0 	_isscalar 	_isScalarZ ]^] l  	 	�O�N�M�O  �N  �M  ^ _`_ l  	 	�Lab�L  a . ( Localize property in case not available   b �cc P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e` ded r   	 fgf m   	 
�K
�K boovfalsg o      �J�J *0 _soundalertonerrors _soundAlertOnErrorse hih Q     jklj r    mnm o    �I�I .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORSn o      �H�H *0 _soundalertonerrors _soundAlertOnErrorsk R      �Gop
�G .ascrerr ****      � ****o o      �F�F 0 errmsg errMsgp �Eq�D
�E 
errnq o      �C�C 0 errnum errNum�D  l l   �Brs�B  r    (use _soundAlertOnErrors)   s �tt 4   ( u s e   _ s o u n d A l e r t O n E r r o r s )i uvu l  ! !�A�@�?�A  �@  �?  v wxw l  ! !�>yz�>  y . ( Localize property in case not available   z �{{ P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l ex |}| r   ! $~~ m   ! "�=
�= boovfals o      �<�< &0 _displayallerrors _displayAllErrors} ��� Q   % 8���� r   ( /��� o   ( -�;�; (0 display_all_errors DISPLAY_ALL_ERRORS� o      �:�: &0 _displayallerrors _displayAllErrors� R      �9��
�9 .ascrerr ****      � ****� o      �8�8 0 errmsg errMsg� �7��6
�7 
errn� o      �5�5 0 errnum errNum�6  � l  7 7�4���4  �   (use _displayAllErrors)   � ��� 0   ( u s e   _ d i s p l a y A l l E r r o r s )� ��� l  9 9�3�2�1�3  �2  �1  � ��� l  9 9�0���0  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   9 <��� m   9 :�/
�/ boovfals� o      �.�. &0 _alwaysreturnlist _alwaysReturnList� ��� Q   = P���� r   @ G��� o   @ E�-�- (0 always_return_list ALWAYS_RETURN_LIST� o      �,�, &0 _alwaysreturnlist _alwaysReturnList� R      �+��
�+ .ascrerr ****      � ****� o      �*�* 0 errmsg errMsg� �)��(
�) 
errn� o      �'�' 0 errnum errNum�(  � l  O O�&���&  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  Q Q�%�$�#�%  �$  �#  � ��� Z   Q f���"�!� >  Q V��� n   Q T��� m   R T� 
�  
pcls� o   Q R�� 
0 _items  � m   T U�
� 
list� k   Y b�� ��� r   Y ^��� c   Y \��� o   Y Z�� 
0 _items  � m   Z [�
� 
list� o      �� 
0 _items  � ��� r   _ b��� m   _ `�
� boovtrue� o      �� 0 	_isscalar 	_isScalar�  �"  �!  � ��� l  g g����  �  �  � ��� O   g ���� Q   k ����� k   n ��� ��� X   n ����� Z   ~ ������ F   ~ ���� l 	 ~ ����� l  ~ ����� >  ~ ���� n   ~ ���� 4   � ���
� 
cha � m   � ������ l  ~ ����
� c   ~ ���� o   ~ �	�	 	0 _item  � m    ��
� 
TEXT�  �
  � m   � ��� ���  :�  �  �  �  � l 	 � ����� l  � ����� =  � ���� n   � ���� 1   � ��
� 
kind� o   � ��� 	0 _item  � m   � ��� ���  F o l d e r�  �  �  �  � r   � ���� o   � ��� 	0 _item  � n      ���  ;   � �� o   � �� �  0 _folders  �  �  � 	0 _item  � o   q r���� 
0 _items  � ���� l  � ���������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � O   � ���� k   � ��� ��� Z  � �������� l  � ������� o   � ����� *0 _soundalertonerrors _soundAlertOnErrors��  ��  � I  � �������
�� .sysobeepnull��� ��� long��  ��  ��  ��  � ���� Z  � �������� l  � ������� o   � ����� &0 _displayallerrors _displayAllErrors��  ��  � l 	 � ������� I  � ������
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� m   � ��� ��� N E r r o r :   C a n ' t   i n c l u d e   o n l y   f o l d e r   i t e m s .� J   � ��� ���� o   � ���
�� 
ret ��  � o   � ����� 0 errmsg errMsg� o   � ����� 0 errnum errNum��  ��  ��  ��  ��  ��  � m   � ����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � m   g h  �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  l  � ���������  ��  ��    Z  � ����� F   � � l  � �	����	 o   � ����� 0 	_isscalar 	_isScalar��  ��   l  � �
����
 H   � � o   � ����� &0 _alwaysreturnlist _alwaysReturnList��  ��   r   � � n   � � 4   � ���
�� 
cobj m   � �����  o   � ����� 0 _folder   o      ���� 0 _folders  ��  ��   �� L   � � o   � ����� 0 _folders  ��  H  l     ��������  ��  ��    l     ��������  ��  ��    l     ����   
 --      �  - -      l     ����      asItem( path )    �         a s I t e m (   p a t h   ) !"! l     ��#$��  #       $ �%%     " &'& l     ��()��  ( d ^  Alias of asItems(); Converts a one or more POSIX and/or HFS paths to a their Finder objects.   ) �** �     A l i a s   o f   a s I t e m s ( ) ;   C o n v e r t s   a   o n e   o r   m o r e   P O S I X   a n d / o r   H F S   p a t h s   t o   a   t h e i r   F i n d e r   o b j e c t s .' +,+ l     ��-.��  -       . �//     , 010 l     ��23��  2 ` Z  @param 	_paths 		<list/text/reference> 		POSIX path, HFS path, or a list either or both.   3 �44 �     @ p a r a m   	 _ p a t h s   	 	 < l i s t / t e x t / r e f e r e n c e >   	 	 P O S I X   p a t h ,   H F S   p a t h ,   o r   a   l i s t   e i t h e r   o r   b o t h .1 565 l     ��78��  7 p j  @return 	_items 		<list/reference> 			Item or items (depending on input) and any non-converted input(s).   8 �99 �     @ r e t u r n   	 _ i t e m s   	 	 < l i s t / r e f e r e n c e >   	 	 	 I t e m   o r   i t e m s   ( d e p e n d i n g   o n   i n p u t )   a n d   a n y   n o n - c o n v e r t e d   i n p u t ( s ) .6 :;: l     ��������  ��  ��  ; <=< l     ��>?��  >    @uses 		asItems( path )   ? �@@ 2     @ u s e s   	 	 a s I t e m s (   p a t h   )= ABA l     ��CD��  C       D �EE     B FGF i   � �HIH I      ��J���� 0 asitem asItemJ K��K o      ���� 	0 _path  ��  ��  I L     LL n    MNM I    ��O���� 0 asitems asItemsO P��P o    ���� 	0 _path  ��  ��  N  f     G QRQ l     ��������  ��  ��  R STS l     ��������  ��  ��  T UVU l     ��WX��  W  --   X �YY  - -V Z[Z l     ��\]��  \    asItems( paths )   ] �^^ $     a s I t e m s (   p a t h s   )[ _`_ l     ��ab��  a       b �cc     ` ded l     ��fg��  f P J  Converts a one or more POSIX and/or HFS paths to a their Finder objects.   g �hh �     C o n v e r t s   a   o n e   o r   m o r e   P O S I X   a n d / o r   H F S   p a t h s   t o   a   t h e i r   F i n d e r   o b j e c t s .e iji l     ��kl��  k       l �mm     j non l     ��pq��  p _ Y  @param 	_paths 		<list/text/reference> 	POSIX path, HFS path, or a list either or both.   q �rr �     @ p a r a m   	 _ p a t h s   	 	 < l i s t / t e x t / r e f e r e n c e >   	 P O S I X   p a t h ,   H F S   p a t h ,   o r   a   l i s t   e i t h e r   o r   b o t h .o sts l     ��uv��  u o i  @return 	_items 		<list/reference> 		Item or items (depending on input) and any non-converted input(s).   v �ww �     @ r e t u r n   	 _ i t e m s   	 	 < l i s t / r e f e r e n c e >   	 	 I t e m   o r   i t e m s   ( d e p e n d i n g   o n   i n p u t )   a n d   a n y   n o n - c o n v e r t e d   i n p u t ( s ) .t xyx l     ��z{��  z       { �||     y }~} i   � �� I      ������� 0 asitems asItems� ���� o      ���� 
0 _paths  ��  ��  � k    q�� ��� q      �� ����� 
0 _paths  � ����� 	0 _path  � ����� 0 _result  � ����� 	0 _item  � ����� 0 	_isscalar 	_isScalar� ������ 
0 _chars  ��  � ��� r     ��� J     ����  � o      ���� 0 _result  � ��� r    ��� m    ��
�� boovfals� o      ���� 0 	_isscalar 	_isScalar� ��� l  	 	��������  ��  ��  � ��� l  	 	������  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   	 ��� m   	 
��
�� boovfals� o      ���� *0 _soundalertonerrors _soundAlertOnErrors� ��� Q     ���� r    ��� o    ���� .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS� o      ���� *0 _soundalertonerrors _soundAlertOnErrors� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � l   ������  �    (use _soundAlertOnErrors)   � ��� 4   ( u s e   _ s o u n d A l e r t O n E r r o r s )� ��� l  ! !��������  ��  ��  � ��� l  ! !������  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   ! $��� m   ! "��
�� boovfals� o      ���� &0 _displayallerrors _displayAllErrors� ��� Q   % 8���� r   ( /��� o   ( -���� (0 display_all_errors DISPLAY_ALL_ERRORS� o      ���� &0 _displayallerrors _displayAllErrors� R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� ���~
� 
errn� o      �}�} 0 errnum errNum�~  � l  7 7�|���|  �   (use _displayAllErrors)   � ��� 0   ( u s e   _ d i s p l a y A l l E r r o r s )� ��� l  9 9�{�z�y�{  �z  �y  � ��� l  9 9�x���x  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   9 <��� m   9 :�w
�w boovfals� o      �v�v &0 _alwaysreturnlist _alwaysReturnList� ��� Q   = P���� r   @ G��� o   @ E�u�u (0 always_return_list ALWAYS_RETURN_LIST� o      �t�t &0 _alwaysreturnlist _alwaysReturnList� R      �s��
�s .ascrerr ****      � ****� o      �r�r 0 errmsg errMsg� �q��p
�q 
errn� o      �o�o 0 errnum errNum�p  � l  O O�n���n  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  Q Q�m�l�k�m  �l  �k  � ��� Z   Q f���j�i� l  Q V��h�g� >  Q V��� n   Q T��� m   R T�f
�f 
pcls� o   Q R�e�e 
0 _paths  � m   T U�d
�d 
list�h  �g  � k   Y b�� ��� r   Y ^��� c   Y \��� o   Y Z�c�c 
0 _paths  � m   Z [�b
�b 
list� o      �a�a 
0 _paths  � ��`� r   _ b��� m   _ `�_
�_ boovtrue� o      �^�^ 0 	_isscalar 	_isScalar�`  �j  �i  � ��� l  g g�]�\�[�]  �\  �[  � ��� O   gV��� Q   kU���� k   n!�� ��� X   n��Z�� Z   ~� �Y� =  ~ � n   ~ � m    ��X
�X 
pcls o   ~ �W�W 	0 _path   m   � ��V
�V 
ctxt  l  � k   �		 

 r   � � n   � � 2  � ��U
�U 
citm o   � ��T�T 	0 _path   o      �S�S 
0 _chars    l  � ��R�Q�P�R  �Q  �P    l  � ��O�O     unquote    �    u n q u o t e  r   � � I  � ��N�M
�N .corecnte****       **** o   � ��L�L 
0 _chars  �M   o      �K�K 0 _c    r   � � n  � � !  J   � �"" #$# 4   � ��J%
�J 
cha % m   � ��I�I $ &�H& 4   � ��G'
�G 
cha ' o   � ��F�F 0 _c  �H  ! o   � ��E�E 	0 _path   J      (( )*) o      �D�D 0 
_firstchar 
_firstChar* +�C+ o      �B�B 0 	_lastchar 	_lastChar�C   ,-, r   � �./. J   � �00 121 m   � �33 �44  2 565 m   � �77 �88  6 9:9 m   � �;; �<<  : =>= m   � �?? �@@  > ABA m   � �CC �DD  'B EFE m   � �GG �HH  `F I�AI m   � �JJ �KK  "�A  / o      �@�@ 0 _quotes  - LML Z   � �NO�?�>N F   � �PQP l  � �R�=�<R E   � �STS o   � ��;�; 0 _quotes  T o   � ��:�: 0 
_firstchar 
_firstChar�=  �<  Q l  � �U�9�8U E   � �VWV o   � ��7�7 0 _quotes  W o   � ��6�6 0 	_lastchar 	_lastChar�9  �8  O r   � �XYX l  � �Z�5�4Z c   � �[\[ n  � �]^] l  � �_�3�2_ 7  � ��1`a
�1 
cha ` l  � �b�0�/b [   � �cdc m   � ��.�. d m   � ��-�- �0  �/  a l  � �e�,�+e \   � �fgf o   � ��*�* 0 _c  g m   � ��)�) �,  �+  �3  �2  ^ o   � ��(�( 	0 _path  \ m   � ��'
�' 
ctxt�5  �4  Y o      �&�& 	0 _path  �?  �>  M hih l  � ��%�$�#�%  �$  �#  i jkj l  � ��"lm�"  l   handle path types   m �nn $   h a n d l e   p a t h   t y p e sk opo Z   �qr�!sq E   � �tut o   � �� �  
0 _chars  u m   � �vv �ww  :r l  � �xyzx r   � �{|{ 4   � ��}
� 
cobj} l  � �~��~ o   � ��� 	0 _path  �  �  | o      �� 	0 _item  y #   assume _path is an HFS path   z � :     a s s u m e   _ p a t h   i s   a n   H F S   p a t h�!  s l  ����� r   ���� 4   ���
� 
cobj� l  ����� c   ���� l  ����� 4   ���
� 
psxf� l ���� c  ��� o  �� 	0 _path  � m  �
� 
ctxt�  �  �  �  � m  
�
� 
alis�  �  � o      �� 	0 _item  � $   assume _path is a POSIX path   � ��� <     a s s u m e   _ p a t h   i s   a   P O S I X   p a t hp ��� r  ��� o  �� 	0 _item  � n      ���  ;  � o  �� 0 _result  �   / )  assume item is a posix path or hfs path    ��� R     a s s u m e   i t e m   i s   a   p o s i x   p a t h   o r   h f s   p a t h�Y   r  ��� o  �� 	0 _path  � n      ���  ;  � o  �
�
 0 _result  �Z 	0 _path  � o   q r�	�	 
0 _paths  � ��� l   ����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      � �  0 errnum errNum�  � O  )U��� k  /T�� ��� Z /<������� l /0������ o  /0���� *0 _soundalertonerrors _soundAlertOnErrors��  ��  � I 38������
�� .sysobeepnull��� ��� long��  ��  ��  ��  � ��� Z =P������� l =>������ o  =>���� &0 _displayallerrors _displayAllErrors��  ��  � I AL�����
�� .sysodlogaskr        TEXT� b  AH��� b  AF��� m  AD�� ���  E r r o r :  � o  DE���� 0 errmsg errMsg� o  FG���� 0 errnum errNum��  ��  ��  � ���� r  QT��� o  QR���� 
0 _paths  � o      ���� 0 _result  ��  � m  ),���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � m   g h���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l WW��������  ��  ��  � ��� l WW������  � : 4if (_isScalar) then set _result to item 1 of _result   � ��� h i f   ( _ i s S c a l a r )   t h e n   s e t   _ r e s u l t   t o   i t e m   1   o f   _ r e s u l t� ��� Z Wn������� F  Wa��� l WX������ o  WX���� 0 	_isscalar 	_isScalar��  ��  � l []������ H  []�� o  [\���� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r  dj��� n  dh��� 4  eh���
�� 
cobj� m  fg���� � o  de���� 0 _result  � o      ���� 0 _result  ��  ��  � ���� L  oq�� o  op���� 0 _result  ��  ~ ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 
 --     � ���  - -    � ��� l     ������  �    asPath( item )   � ���       a s P a t h (   i t e m   )� ��� l     ������  �       � ���     � ��� l     ������  � A ;  Scalar; Converts a Finder item reference to a POSIX path.   � ��� v     S c a l a r ;   C o n v e r t s   a   F i n d e r   i t e m   r e f e r e n c e   t o   a   P O S I X   p a t h .� ��� l     ������  �       � ���     � ��� l     ������  � < 6  @param 	_item 		<reference> 	Finder item references.   � ��� l     @ p a r a m   	 _ i t e m   	 	 < r e f e r e n c e >   	 F i n d e r   i t e m   r e f e r e n c e s .� ��� l     ������  � G A  @return 	_path 		<text> 			Finder item POSIX path (POSIX file).   � ��� �     @ r e t u r n   	 _ p a t h   	 	 < t e x t >   	 	 	 F i n d e r   i t e m   P O S I X   p a t h   ( P O S I X   f i l e ) .� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� 0 aspath asPath� ���� o      ���� 	0 _item  ��  ��  � k     ��    q       ���� 	0 _item   ������ 	0 _path  ��    l     ��������  ��  ��    O     	 Z    
��
 >   	 n     m    ��
�� 
pcls o    ���� 	0 _item   m    ��
�� 
ctxt r     n     1    ��
�� 
psxp l   ���� c     o    ���� 	0 _item   m    ��
�� 
alis��  ��   o      ���� 	0 _path  ��   r     o    ���� 	0 _item   o      ���� 	0 _path  	 m     �                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��    l   ��������  ��  ��   �� L     o    ���� 	0 _path  ��  �   l     ��������  ��  ��    !"! l     ��������  ��  ��  " #$# l     ��������  ��  ��  $ %&% l     ��'(��  ' 
 --     ( �))  - -    & *+* l     ��,-��  ,    asPathQ( item )   - �.. "     a s P a t h Q (   i t e m   )+ /0/ l     ��12��  1       2 �33     0 454 l     ��67��  6 H B  Scalar; Converts a Finder item reference to a quoted POSIX path.   7 �88 �     S c a l a r ;   C o n v e r t s   a   F i n d e r   i t e m   r e f e r e n c e   t o   a   q u o t e d   P O S I X   p a t h .5 9:9 l     ��;<��  ;       < �==     : >?> l     ��@A��  @ < 6  @param 	_item 		<reference> 	Finder item references.   A �BB l     @ p a r a m   	 _ i t e m   	 	 < r e f e r e n c e >   	 F i n d e r   i t e m   r e f e r e n c e s .? CDC l     ��EF��  E N H  @return 	_path 		<text> 			Finder item quoted POSIX path (POSIX file).   F �GG �     @ r e t u r n   	 _ p a t h   	 	 < t e x t >   	 	 	 F i n d e r   i t e m   q u o t e d   P O S I X   p a t h   ( P O S I X   f i l e ) .D HIH l     ��JK��  J       K �LL     I MNM i   � �OPO I      ��Q���� 0 aspathq asPathQQ R��R o      ���� 	0 _item  ��  ��  P k     !SS TUT q      VV ��W�� 	0 _item  W ������ 	0 _path  ��  U XYX l     ��������  ��  ��  Y Z[Z O     \]\ Z    ^_��`^ >   	aba n    cdc m    ��
�� 
pclsd o    ���� 	0 _item  b m    ��
�� 
ctxt_ r    efe n    ghg 1    ��
�� 
strqh n    iji 1    ��
�� 
psxpj l   k����k c    lml o    ���� 	0 _item  m m    ��
�� 
alis��  ��  f o      ���� 	0 _path  ��  ` r    non n    pqp 1    ��
�� 
strqq o    ���� 	0 _item  o o      ���� 	0 _path  ] m     rr�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  [ sts l   ��������  ��  ��  t u��u L    !vv o     ���� 	0 _path  ��  N wxw l     ��������  ��  ��  x yzy l     ��~�}�  �~  �}  z {|{ l     �|}~�|  } 
 --     ~ �  - -    | ��� l     �{���{  �    asPaths( items )   � ��� $     a s P a t h s (   i t e m s   )� ��� l     �z���z  �       � ���     � ��� l     �y���y  � Q K  Converts a list of Finder item references to a list of their POSIX paths.   � ��� �     C o n v e r t s   a   l i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   t o   a   l i s t   o f   t h e i r   P O S I X   p a t h s .� ��� l     �x���x  �       � ���     � ��� l     �w���w  � a [  @param 	_items 		<reference/list of references> 		List or text of Finder item references.   � ��� �     @ p a r a m   	 _ i t e m s   	 	 < r e f e r e n c e / l i s t   o f   r e f e r e n c e s >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     �v���v  � ^ X  @return 	_paths 		<POSIX file/list of POSIX file> 		List or text of Finder item paths.   � ��� �     @ r e t u r n   	 _ p a t h s   	 	 < P O S I X   f i l e / l i s t   o f   P O S I X   f i l e >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   p a t h s .� ��� l     �u���u  �       � ���     � ��� i   � ���� I      �t��s�t 0 aspaths asPaths� ��r� o      �q�q 
0 _items  �r  �s  � k     ��� ��� q      �� �p��p 
0 _items  � �o��o 	0 _item  � �n��n 
0 _paths  � �m�l�m 0 	_isscalar 	_isScalar�l  � ��� l     �k�j�i�k  �j  �i  � ��� r     ��� J     �h�h  � o      �g�g 
0 _paths  � ��� r    ��� m    �f
�f boovfals� o      �e�e 0 	_isscalar 	_isScalar� ��� l  	 	�d�c�b�d  �c  �b  � ��� l  	 	�a���a  � . ( Localize property in case not available   � ��� P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e� ��� r   	 ��� m   	 
�`
�` boovfals� o      �_�_ &0 _alwaysreturnlist _alwaysReturnList� ��� Q     ���� r    ��� o    �^�^ (0 always_return_list ALWAYS_RETURN_LIST� o      �]�] &0 _alwaysreturnlist _alwaysReturnList� R      �\��
�\ .ascrerr ****      � ****� o      �[�[ 0 errmsg errMsg� �Z��Y
�Z 
errn� o      �X�X 0 errnum errNum�Y  � l   �W���W  �   (use _alwaysReturnList)   � ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )� ��� l  ! !�V�U�T�V  �U  �T  � ��� Z   ! 6���S�R� >  ! &��� n   ! $��� m   " $�Q
�Q 
pcls� o   ! "�P�P 
0 _items  � m   $ %�O
�O 
list� k   ) 2�� ��� r   ) .��� c   ) ,��� o   ) *�N�N 
0 _items  � m   * +�M
�M 
list� o      �L�L 
0 _items  � ��K� r   / 2��� m   / 0�J
�J boovtrue� o      �I�I 0 	_isscalar 	_isScalar�K  �S  �R  � ��� l  7 7�H�G�F�H  �G  �F  � ��� O   7 h��� X   ; g��E�� Z   K b���D�� >  K P��� n   K N��� m   L N�C
�C 
pcls� o   K L�B�B 	0 _item  � m   N O�A
�A 
ctxt� r   S [��� n   S X��� 1   V X�@
�@ 
psxp� l  S V��?�>� c   S V��� o   S T�=�= 	0 _item  � m   T U�<
�< 
alis�?  �>  � n      ���  ;   Y Z� o   X Y�;�; 
0 _paths  �D  � r   ^ b��� o   ^ _�:�: 	0 _item  � n          ;   ` a o   _ `�9�9 
0 _paths  �E 	0 _item  � o   > ?�8�8 
0 _items  � m   7 8�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  l  i i�7�6�5�7  �6  �5    Z  i ~�4�3 F   i q	
	 l  i j�2�1 o   i j�0�0 0 	_isscalar 	_isScalar�2  �1  
 l  m o�/�. H   m o o   m n�-�- &0 _alwaysreturnlist _alwaysReturnList�/  �.   r   t z n   t x 4   u x�,
�, 
cobj m   v w�+�+  o   t u�*�* 
0 _paths   o      �)�) 
0 _paths  �4  �3   �( L    � o    ��'�' 
0 _paths  �(  �  l     �&�%�$�&  �%  �$    l     �#�"�!�#  �"  �!    l     � �    
 --      �  - -      l     � !�       asPathsQ( items )   ! �"" &     a s P a t h s Q (   i t e m s   ) #$# l     �%&�  %       & �''     $ ()( l     �*+�  * X R  Converts a list of Finder item references to a list of their quoted POSIX paths.   + �,, �     C o n v e r t s   a   l i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   t o   a   l i s t   o f   t h e i r   q u o t e d   P O S I X   p a t h s .) -.- l     �/0�  /       0 �11     . 232 l     �45�  4 a [  @param 	_items 		<reference/list of references> 		List or text of Finder item references.   5 �66 �     @ p a r a m   	 _ i t e m s   	 	 < r e f e r e n c e / l i s t   o f   r e f e r e n c e s >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   r e f e r e n c e s .3 787 l     �9:�  9 e _  @return 	_paths 		<POSIX file/list of POSIX file> 		List or text of quoted Finder item paths.   : �;; �     @ r e t u r n   	 _ p a t h s   	 	 < P O S I X   f i l e / l i s t   o f   P O S I X   f i l e >   	 	 L i s t   o r   t e x t   o f   q u o t e d   F i n d e r   i t e m   p a t h s .8 <=< l     �>?�  >       ? �@@     = ABA i   � �CDC I      �E�� 0 aspathsq asPathsQE F�F o      �� 
0 _items  �  �  D k     �GG HIH q      JJ �K� 
0 _items  K �L� 	0 _item  L �M� 
0 _paths  M ��� 0 	_isscalar 	_isScalar�  I NON l     ����  �  �  O PQP r     RSR J     ��  S o      �� 
0 _paths  Q TUT r    VWV m    �

�
 boovfalsW o      �	�	 0 	_isscalar 	_isScalarU XYX l  	 	����  �  �  Y Z[Z l  	 	�\]�  \ . ( Localize property in case not available   ] �^^ P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l e[ _`_ r   	 aba m   	 
�
� boovfalsb o      �� &0 _alwaysreturnlist _alwaysReturnList` cdc Q     efge r    hih o    �� (0 always_return_list ALWAYS_RETURN_LISTi o      �� &0 _alwaysreturnlist _alwaysReturnListf R      � jk
�  .ascrerr ****      � ****j o      ���� 0 errmsg errMsgk ��l��
�� 
errnl o      ���� 0 errnum errNum��  g l   ��mn��  m   (use _alwaysReturnList)   n �oo 0   ( u s e   _ a l w a y s R e t u r n L i s t )d pqp l  ! !��������  ��  ��  q rsr Z   ! 6tu����t >  ! &vwv n   ! $xyx m   " $��
�� 
pclsy o   ! "���� 
0 _items  w m   $ %��
�� 
listu k   ) 2zz {|{ r   ) .}~} c   ) ,� o   ) *���� 
0 _items  � m   * +��
�� 
list~ o      ���� 
0 _items  | ���� r   / 2��� m   / 0��
�� boovtrue� o      ���� 0 	_isscalar 	_isScalar��  ��  ��  s ��� l  7 7��������  ��  ��  � ��� O   7 l��� X   ; k����� Z   K f������ >  K P��� n   K N��� m   L N��
�� 
pcls� o   K L���� 	0 _item  � m   N O��
�� 
ctxt� r   S ]��� n   S Z��� 1   X Z��
�� 
strq� n   S X��� 1   V X��
�� 
psxp� l  S V������ c   S V��� o   S T���� 	0 _item  � m   T U��
�� 
alis��  ��  � n      ���  ;   [ \� o   Z [���� 
0 _paths  ��  � r   ` f��� n   ` c��� 1   a c��
�� 
strq� o   ` a���� 	0 _item  � n      ���  ;   d e� o   c d���� 
0 _paths  �� 	0 _item  � o   > ?���� 
0 _items  � m   7 8���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  m m��������  ��  ��  � ��� Z  m �������� F   m u��� l  m n������ o   m n���� 0 	_isscalar 	_isScalar��  ��  � l  q s������ H   q s�� o   q r���� &0 _alwaysreturnlist _alwaysReturnList��  ��  � r   x ~��� n   x |��� 4   y |���
�� 
cobj� m   z {���� � o   x y���� 
0 _paths  � o      ���� 
0 _paths  ��  ��  � ���� L   � ��� o   � ����� 
0 _paths  ��  B ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  --   � ���  - -� ��� l     ������  �    asPOSIX( items )   � ��� $     a s P O S I X (   i t e m s   )� ��� l     ������  �       � ���     � ��� l     ������  � e _  Alias of asPaths(); Converts a list of Finder item references to a list of their POSIX paths.   � ��� �     A l i a s   o f   a s P a t h s ( ) ;   C o n v e r t s   a   l i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   t o   a   l i s t   o f   t h e i r   P O S I X   p a t h s .� ��� l     ������  �       � ���     � ��� l     ������  � N H  @param 	_items 		<list/text> 		List or text of Finder item references.   � ��� �     @ p a r a m   	 _ i t e m s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   r e f e r e n c e s .� ��� l     ������  � J D  @return 	_paths 		<list/text> 		List or text of Finder item paths.   � ��� �     @ r e t u r n   	 _ p a t h s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   p a t h s .� ��� l     ������  �       � ���     � ��� i   � ���� I      ������� 0 asposix asPOSIX� ���� o      ���� 
0 _items  ��  ��  � L     �� n    ��� I    ������� 0 aspaths asPaths� ���� o    ���� 
0 _items  ��  ��  �  f     � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  --   � ���  - -� ��� l     ������  �    asPOSIXQ( items )   � ��� &     a s P O S I X Q (   i t e m s   )� ��� l     ������  �       � �       �  l     ����   m g  Alias of asPathsQ(); Converts a list of Finder item references to a list of their quoted POSIX paths.    � �     A l i a s   o f   a s P a t h s Q ( ) ;   C o n v e r t s   a   l i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   t o   a   l i s t   o f   t h e i r   q u o t e d   P O S I X   p a t h s .  l     ��	��         	 �

       l     ����   N H  @param 	_items 		<list/text> 		List or text of Finder item references.    � �     @ p a r a m   	 _ i t e m s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   r e f e r e n c e s .  l     ����   Q K  @return 	_paths 		<list/text> 		List or text of quoted Finder item paths.    � �     @ r e t u r n   	 _ p a t h s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   q u o t e d   F i n d e r   i t e m   p a t h s .  l     ����          �       i   � � I      ������ 0 asposixq asPOSIXQ �� o      ���� 
0 _items  ��  ��   L        n    !"! I    ��#���� 0 aspathsq asPathsQ# $��$ o    ���� 
0 _items  ��  ��  "  f      %&% l     ��������  ��  ��  & '(' l     ��������  ��  ��  ( )*) l     ��+,��  + 
 --     , �--  - -    * ./. l     ��01��  0    asHFS( items )   1 �22       a s H F S (   i t e m s   )/ 343 l     ��56��  5       6 �77     4 898 l     ��:;��  : O I  Converts a list of Finder item references to a list of their HFS paths.   ; �<< �     C o n v e r t s   a   l i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   t o   a   l i s t   o f   t h e i r   H F S   p a t h s .9 =>= l     ��?@��  ?       @ �AA     > BCB l     ��DE��  D N H  @param 	_items 		<list/text> 		List or text of Finder item references.   E �FF �     @ p a r a m   	 _ i t e m s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   r e f e r e n c e s .C GHG l     ��IJ��  I N H  @return 	_paths 		<list/text> 		List or text of Finder item HFS paths.   J �KK �     @ r e t u r n   	 _ p a t h s   	 	 < l i s t / t e x t >   	 	 L i s t   o r   t e x t   o f   F i n d e r   i t e m   H F S   p a t h s .H LML l     �NO�  N       O �PP     M QRQ i   � �STS I      �U�� 0 ashfs asHFSU V�V o      �� 
0 _items  �  �  T k     �WW XYX q      ZZ �[� 
0 _items  [ �\� 	0 _item  \ �]� 
0 _paths  ] �^� 
0 _chars  ^ ��� 0 	_isscalar 	_isScalar�  Y _`_ l     ����  �  �  ` aba r     cdc J     ��  d o      �� 
0 _paths  b efe r    ghg m    �
� boovfalsh o      �~�~ 0 	_isscalar 	_isScalarf iji l  	 	�}�|�{�}  �|  �{  j klk l  	 	�zmn�z  m . ( Localize property in case not available   n �oo P   L o c a l i z e   p r o p e r t y   i n   c a s e   n o t   a v a i l a b l el pqp r   	 rsr m   	 
�y
�y boovfalss o      �x�x &0 _alwaysreturnlist _alwaysReturnListq tut Q     vwxv r    yzy o    �w�w (0 always_return_list ALWAYS_RETURN_LISTz o      �v�v &0 _alwaysreturnlist _alwaysReturnListw R      �u{|
�u .ascrerr ****      � ****{ o      �t�t 0 errmsg errMsg| �s}�r
�s 
errn} o      �q�q 0 errnum errNum�r  x l   �p~�p  ~   (use _alwaysReturnList)    ��� 0   ( u s e   _ a l w a y s R e t u r n L i s t )u ��� l  ! !�o�n�m�o  �n  �m  � ��� Z   ! 6���l�k� >  ! &��� n   ! $��� m   " $�j
�j 
pcls� o   ! "�i�i 
0 _items  � m   $ %�h
�h 
list� k   ) 2�� ��� r   ) .��� c   ) ,��� o   ) *�g�g 
0 _items  � m   * +�f
�f 
list� o      �e�e 
0 _items  � ��d� r   / 2��� m   / 0�c
�c boovtrue� o      �b�b 0 	_isscalar 	_isScalar�d  �l  �k  � ��� l  7 7�a�`�_�a  �`  �_  � ��� O   7 ���� X   ; ���^�� Z   K ����]�� >  K P��� n   K N��� m   L N�\
�\ 
pcls� o   K L�[�[ 	0 _item  � m   N O�Z
�Z 
ctxt� r   S [��� n   S X��� 1   V X�Y
�Y 
FTPc� l  S V��X�W� c   S V��� o   S T�V�V 	0 _item  � m   T U�U
�U 
alis�X  �W  � n      ���  ;   Y Z� o   X Y�T�T 
0 _paths  �]  � k   ^ ��� ��� r   ^ c��� n   ^ a��� 2  _ a�S
�S 
citm� o   ^ _�R�R 	0 _item  � o      �Q�Q 
0 _chars  � ��� Z   d }���P�� E   d g��� o   d e�O�O 
0 _chars  � m   e f�� ���  :� l  j p���� r   j p��� 4   j n�N�
�N 
cobj� l  l m��M�L� o   l m�K�K 	0 _item  �M  �L  � o      �J�J 	0 _path  � #   assume _item is an HFS path   � ��� :     a s s u m e   _ i t e m   i s   a n   H F S   p a t h�P  � l  s }���� r   s }��� l  s {��I�H� c   s {��� l  s y��G�F� 4   s y�E�
�E 
psxf� l  u x��D�C� c   u x��� o   u v�B�B 	0 _item  � m   v w�A
�A 
TEXT�D  �C  �G  �F  � m   y z�@
�@ 
TEXT�I  �H  � o      �?�? 	0 _path  � $   assume _item is a POSIX path   � ��� <     a s s u m e   _ i t e m   i s   a   P O S I X   p a t h� ��>� r   ~ ���� o   ~ �=�= 	0 _path  � n      ���  ;   � �� o    ��<�< 
0 _paths  �>  �^ 	0 _item  � o   > ?�;�; 
0 _items  � m   7 8���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l  � ��:�9�8�:  �9  �8  � ��� Z  � ����7�6� F   � ���� l  � ���5�4� o   � ��3�3 0 	_isscalar 	_isScalar�5  �4  � l  � ���2�1� H   � ��� o   � ��0�0 &0 _alwaysreturnlist _alwaysReturnList�2  �1  � r   � ���� n   � ���� 4   � ��/�
�/ 
cobj� m   � ��.�. � o   � ��-�- 
0 _paths  � o      �,�, 
0 _paths  �7  �6  � ��+� L   � ��� o   � ��*�* 
0 _paths  �+  R ��� l     �)�(�'�)  �(  �'  � ��� l     �&�%�$�&  �%  �$  � ��� l     �#���#  �  --   � ���  - -� ��� l     �"���"  � * $  toggleExtensionVisibility( input )   � ��� H     t o g g l e E x t e n s i o n V i s i b i l i t y (   i n p u t   )� ��� l     �!���!  �       � ���     � ��� l     �  �     W Q  Takes a path, list of paths, item, or list of items and hides their extensions.    � �     T a k e s   a   p a t h ,   l i s t   o f   p a t h s ,   i t e m ,   o r   l i s t   o f   i t e m s   a n d   h i d e s   t h e i r   e x t e n s i o n s .�  l     ��          �      	 l     �
�  
 y s  @param 	_input 		<list/text/reference> 	Reference, references, POSIX, list of POSIX, HFS path, list of HFS paths.    � �     @ p a r a m   	 _ i n p u t   	 	 < l i s t / t e x t / r e f e r e n c e >   	 R e f e r e n c e ,   r e f e r e n c e s ,   P O S I X ,   l i s t   o f   P O S I X ,   H F S   p a t h ,   l i s t   o f   H F S   p a t h s .	  l     ��   E ?  @return 				<void> 				Visibility of file extensions toggled.    � ~     @ r e t u r n   	 	 	 	 < v o i d >   	 	 	 	 V i s i b i l i t y   o f   f i l e   e x t e n s i o n s   t o g g l e d .  l     ��          �       i   � � I      ��� 60 toggleextensionvisibility toggleExtensionVisibility � o      �� 
0 _input  �  �   k     7  q         �!� 
0 _input  ! ��� 	0 _item  �   "#" l     ����  �  �  # $%$ Z    &'��& l    (��( >    )*) n     +,+ m    �
� 
pcls, o     �� 
0 _input  * m    �
� 
list�  �  ' r    -.- c    /0/ o    	�
�
 
0 _input  0 m   	 
�	
�	 
list. o      �� 
0 _input  �  �  % 121 l   ����  �  �  2 343 O    4565 X    37�87 k   & .99 :;: l  & &�<=�  < N H set _item to my asItem(_item) # For some reason, this breaks the script   = �>> �   s e t   _ i t e m   t o   m y   a s I t e m ( _ i t e m )   #   F o r   s o m e   r e a s o n ,   t h i s   b r e a k s   t h e   s c r i p t; ?�? r   & .@A@ H   & *BB n   & )CDC 1   ' )�
� 
hidxD o   & '� �  	0 _item  A n      EFE 1   + -��
�� 
hidxF o   * +���� 	0 _item  �  � 	0 _item  8 l   G����G o    ���� 
0 _input  ��  ��  6 m    HH�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  4 IJI l  5 5��������  ��  ��  J K��K L   5 7����  ��   LML l     ��������  ��  ��  M NON l     ��������  ��  ��  O PQP l     ��RS��  R  --   S �TT  - -Q UVU l     ��WX��  W #   makeFoldersFromClipboard( )   X �YY :     m a k e F o l d e r s F r o m C l i p b o a r d (   )V Z[Z l     ��\]��  \       ] �^^     [ _`_ l     ��ab��  a T N  Creates, in the current folder, names using the paragraphs on the clipboard.   b �cc �     C r e a t e s ,   i n   t h e   c u r r e n t   f o l d e r ,   n a m e s   u s i n g   t h e   p a r a g r a p h s   o n   t h e   c l i p b o a r d .` ded l     ��fg��  f       g �hh     e iji l     ��kl��  k    @param 	<void>   l �mm       @ p a r a m   	 < v o i d >j non l     ��pq��  p E ?  @return 	<void> 	Folders created from paragraphs on clipboard   q �rr ~     @ r e t u r n   	 < v o i d >   	 F o l d e r s   c r e a t e d   f r o m   p a r a g r a p h s   o n   c l i p b o a r do sts l     ��uv��  u       v �ww     t xyx i   � �z{z I      �������� 40 makefoldersfromclipboard makeFoldersFromClipboard��  ��  { k     M|| }~} O     
� r    	��� 1    ��
�� 
pins� o      ����  0 _currentfolder _currentFolder� m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ~ ��� l   ��������  ��  ��  � ��� r    ��� I   �����
�� .JonsgClp****    ��� null��  � �����
�� 
rtyp� m    ��
�� 
ctxt��  � o      ���� 	0 _clip  � ��� r    ��� n    ��� 2   ��
�� 
cpar� o    ���� 	0 _clip  � o      ���� 
0 _names  � ��� l   ��������  ��  ��  � ���� Z    M������� >   ��� o    ���� 	0 _clip  � m    �� ���  � O   ! I��� X   % H����� I  5 C�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   7 8��
�� 
cfol� ����
�� 
insh� o   9 :����  0 _currentfolder _currentFolder� �����
�� 
prdt� K   ; ?�� �����
�� 
pnam� o   < =���� 	0 _name  ��  ��  �� 	0 _name  � o   ( )���� 
0 _names  � m   ! "���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��  y ��� l     ��������  ��  ��  � ��� l     ����  �  �  � ��� l     ����  �  --   � ���  - -� ��� l     ����  � 1 +  generateUniqueFilepath( path, extension )   � ��� V     g e n e r a t e U n i q u e F i l e p a t h (   p a t h ,   e x t e n s i o n   )� ��� l     ����  �  �  � ��� l     ����  � i c  Takes a filepath and extension and generates a new, unique filepath (using a "00" serial counter)   � ��� �     T a k e s   a   f i l e p a t h   a n d   e x t e n s i o n   a n d   g e n e r a t e s   a   n e w ,   u n i q u e   f i l e p a t h   ( u s i n g   a   " 0 0 "   s e r i a l   c o u n t e r )� ��� l     ����  � v p  at the same location.  The filename is inferred from the path provided. If the `extension` argument is empty,    � ��� �     a t   t h e   s a m e   l o c a t i o n .     T h e   f i l e n a m e   i s   i n f e r r e d   f r o m   t h e   p a t h   p r o v i d e d .   I f   t h e   ` e x t e n s i o n `   a r g u m e n t   i s   e m p t y ,  � ��� l     ����  � 8 2  the extension inferred from `path` will be used.   � ��� d     t h e   e x t e n s i o n   i n f e r r e d   f r o m   ` p a t h `   w i l l   b e   u s e d .� ��� l     ����  �  �  � ��� l     ����  �    @uses  asItems   � ���       @ u s e s     a s I t e m s� ��� l     ����  � 1 +  @param 	_path 	<text> 		Source flle path.   � ��� V     @ p a r a m   	 _ p a t h   	 < t e x t >   	 	 S o u r c e   f l l e   p a t h .� ��� l     ����  � p j  @param 	_ext 	<text> 		Desired extension; Can be empty quotes; If empty, the existing extension is used.   � ��� �     @ p a r a m   	 _ e x t   	 < t e x t >   	 	 D e s i r e d   e x t e n s i o n ;   C a n   b e   e m p t y   q u o t e s ;   I f   e m p t y ,   t h e   e x i s t i n g   e x t e n s i o n   i s   u s e d .� ��� l     ����  � 7 1  @return 	_path 	<text> 		Destination file path.   � ��� b     @ r e t u r n   	 _ p a t h   	 < t e x t >   	 	 D e s t i n a t i o n   f i l e   p a t h .� ��� l     ����  �  �  � ��� i   � ���� I      ���� 00 generateuniquefilepath generateUniqueFilepath� ��� o      �� 	0 _path  � ��� o      �� 0 _ext  �  �  � O     ���� k    ��� ��� l   ����  �  �  � ��� l   ����  � Z T Get basic info (these can be accomplished with FINDER_LIB's `asItem` and `pathinfo`   � ��� �   G e t   b a s i c   i n f o   ( t h e s e   c a n   b e   a c c o m p l i s h e d   w i t h   F I N D E R _ L I B ' s   ` a s I t e m `   a n d   ` p a t h i n f o `� ��� r    ��� n   
��� I    
���� 0 asitems asItems� ��� o    �� 	0 _path  �  �  �  f    � o      �� 	0 _item  � ��� r    ��� l   ���� n    ��� 1    �
� 
pnam� o    �� 	0 _item  �  �  � o      �� 0 	_fullname  �    r     l   �� n     m    �
� 
ctnr o    �� 	0 _item  �  �   o      �� 0 
_container    r    	
	 l   �� c     o    �� 0 
_container   m    �
� 
ctxt�  �  
 o      �� 0 _folder    r    B n   @ l    @�� 7    @�
� 
ctxt m   $ &��  l  ' ?�� \   ' ? d   ( = l  ( <�� I  ( <� z��
� .sysooffslong    ��� null
� misccura�   �
� 
psof m   . /   �!!  . �"�
� 
psin" l  0 7#��~# c   0 7$%$ l  0 5&�}�|& n   0 5'(' 1   3 5�{
�{ 
rvse( n   0 3)*) 2  1 3�z
�z 
citm* o   0 1�y�y 0 	_fullname  �}  �|  % m   5 6�x
�x 
ctxt�  �~  �  �  �   m   = >�w�w �  �  �  �   o     �v�v 0 	_fullname   o      �u�u 0 	_basename   +,+ Z  C R-.�t�s- =  C F/0/ o   C D�r�r 0 _ext  0 m   D E11 �22  . r   I N343 n  I L565 1   J L�q
�q 
nmxt6 o   I J�p�p 	0 _item  4 o      �o�o 0 _ext  �t  �s  , 787 l  S S�n�m�l�n  �m  �l  8 9:9 l  S S�k;<�k  ;   Padded serial suffix   < �== *   P a d d e d   s e r i a l   s u f f i x: >?> r   S V@A@ m   S TBB �CC  -A o      �j�j 0 _prefix  ? DED r   W \FGF m   W ZHH �II  0 0G o      �i�i 0 _startserial _startSerialE JKJ r   ] dLML c   ] bNON o   ] ^�h�h 0 _startserial _startSerialO m   ^ a�g
�g 
nmbrM o      �f�f 0 _currentcount _currentCountK PQP r   e tRSR l  e rT�e�dT c   e rUVU l  e pW�c�bW b   e pXYX b   e nZ[Z b   e j\]\ b   e h^_^ o   e f�a�a 0 	_basename  _ o   f g�`�` 0 _prefix  ] o   h i�_�_ 0 _startserial _startSerial[ m   j m`` �aa  .Y o   n o�^�^ 0 _ext  �c  �b  V m   p q�]
�] 
ctxt�e  �d  S o      �\�\ 	0 _name  Q bcb l  u u�[�Z�Y�[  �Z  �Y  c ded V   u �fgf k   � �hh iji r   � �klk l  � �m�X�Wm [   � �non o   � ��V�V 0 _currentcount _currentCounto m   � ��U�U �X  �W  l o      �T�T 0 _currentcount _currentCountj pqp Z   � �rs�Str A   � �uvu o   � ��R�R 0 _currentcount _currentCountv m   � ��Q�Q 
s k   � �ww xyx s   � �z{z o   � ��P�P 0 _currentcount _currentCount{ o      �O�O 0 _currentint _currentInty |�N| r   � �}~} l  � ��M�L b   � ���� m   � ��� ���  0� l  � ���K�J� c   � ���� o   � ��I�I 0 _currentint _currentInt� m   � ��H
�H 
ctxt�K  �J  �M  �L  ~ o      �G�G 0 _serial  �N  �S  t k   � ��� ��� s   � ���� o   � ��F�F 0 _currentcount _currentCount� o      �E�E 0 _currentint _currentInt� ��D� r   � ���� l  � ���C�B� c   � ���� o   � ��A�A 0 _currentint _currentInt� m   � ��@
�@ 
ctxt�C  �B  � o      �?�? 0 _serial  �D  q ��>� r   � ���� l  � ���=�<� c   � ���� l  � ���;�:� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��9�9 0 	_basename  � o   � ��8�8 0 _prefix  � o   � ��7�7 0 _serial  � m   � ��� ���  .� o   � ��6�6 0 _ext  �;  �:  � m   � ��5
�5 
ctxt�=  �<  � o      �4�4 	0 _name  �>  g I  y ��3��2
�3 .coredoexnull���     obj � n   y ��� 4   z �1�
�1 
file� o   } ~�0�0 	0 _name  � o   y z�/�/ 0 
_container  �2  e ��� l  � ��.�-�,�.  �-  �,  � ��� r   � ���� c   � ���� b   � ���� o   � ��+�+ 0 _folder  � o   � ��*�* 	0 _name  � m   � ��)
�) 
ctxt� o      �(�( 0 _filehfs _fileHFS� ��� r   � ���� n   � ���� 1   � ��'
�' 
psxp� l  � ���&�%� o   � ��$�$ 0 _filehfs _fileHFS�&  �%  � o      �#�# 	0 _path  � ��� L   � ��� o   � ��"�" 	0 _path  � ��!� l  � �� ���   �  �  �!  � m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  --   � ���  - -� ��� l     ����  � &    removeTrailingSlashes( paths )   � ��� @     r e m o v e T r a i l i n g S l a s h e s (   p a t h s   )� ��� l     ����  �  �  � ��� l     ����  � 8 2  Takes a filepath and removes any trailing slash.   � ��� d     T a k e s   a   f i l e p a t h   a n d   r e m o v e s   a n y   t r a i l i n g   s l a s h .� ��� l     ����  �  �  � ��� l     ����  � N H  @param 	_paths 		<list/text> 		POSIX file path or list of POSIX paths.   � ��� �     @ p a r a m   	 _ p a t h s   	 	 < l i s t / t e x t >   	 	 P O S I X   f i l e   p a t h   o r   l i s t   o f   P O S I X   p a t h s .� ��� l     ����  � _ Y  @return 	_paths 		<text> 			POSIX file path or list of POSIX paths, depending on input.   � ��� �     @ r e t u r n   	 _ p a t h s   	 	 < t e x t >   	 	 	 P O S I X   f i l e   p a t h   o r   l i s t   o f   P O S I X   p a t h s ,   d e p e n d i n g   o n   i n p u t .� ��� l     ���
�  �  �
  � ��� l     �	���	  � [ U  @todo 		Account for quoted paths; {"\"", "\""}; {"'", "'"}; {"�", "�"}; {"�", "�"}.   � ��� �     @ t o d o   	 	 A c c o u n t   f o r   q u o t e d   p a t h s ;   { " \ " " ,   " \ " " } ;   { " ' " ,   " ' " } ;   { "  " ,   "  " } ;   { "  " ,   "  " } .� ��� l     ����  �  �  � ��� l     ����  � m g  @see 		/Users/Ian/Dropbox/Development/Code/AppleScript/~Add Trailing Slash - Quoted and Unquoted.scpt   � ��� �     @ s e e   	 	 / U s e r s / I a n / D r o p b o x / D e v e l o p m e n t / C o d e / A p p l e S c r i p t / ~ A d d   T r a i l i n g   S l a s h   -   Q u o t e d   a n d   U n q u o t e d . s c p t� ��� l     ����  �    @eg   � ��� 
     @ e g� ��� l     ����  � - '  				set _sel to FINDER_LIB's getSel()   � ��� N     	 	 	 	 s e t   _ s e l   t o   F I N D E R _ L I B ' s   g e t S e l ( )� ��� l     ����  � 4 .  				set _paths to FINDER_LIB's asPaths(_sel)   � ��� \     	 	 	 	 s e t   _ p a t h s   t o   F I N D E R _ L I B ' s   a s P a t h s ( _ s e l )� ��� l     ����  � : 4  				set _paths to my removeTrailingSlashes(_paths)   � ��� h     	 	 	 	 s e t   _ p a t h s   t o   m y   r e m o v e T r a i l i n g S l a s h e s ( _ p a t h s )�    l     � �����   ��  ��    i   � � I      ������ .0 removetrailingslashes removeTrailingSlashes �� o      ���� 
0 _paths  ��  ��   k     � 	
	 l     ��������  ��  ��  
  r      m     ��
�� boovfals o      ���� 0 	_isscalar 	_isScalar  r     J    ����   o      ���� "0 _pathsdeslashed _pathsDeslashed  l  	 	��������  ��  ��    l  	 	����   c ] Adapt "Always Return List" in case the global property `ALWAYS_RETURN_LIST` is not available    � �   A d a p t   " A l w a y s   R e t u r n   L i s t "   i n   c a s e   t h e   g l o b a l   p r o p e r t y   ` A L W A Y S _ R E T U R N _ L I S T `   i s   n o t   a v a i l a b l e  r   	  m   	 
��
�� boovfals o      ���� &0 _alwaysreturnlist _alwaysReturnList  Q      !"  r    #$# o    ���� (0 always_return_list ALWAYS_RETURN_LIST$ o      ���� &0 _alwaysreturnlist _alwaysReturnList! R      ��%&
�� .ascrerr ****      � ****% o      ���� 0 errmsg errMsg& ��'��
�� 
errn' o      ���� 0 errnum errNum��  " l   ��()��  ( 1 + (default to local var `_alwaysReturnList`)   ) �** V   ( d e f a u l t   t o   l o c a l   v a r   ` _ a l w a y s R e t u r n L i s t ` ) +,+ l  ! !��������  ��  ��  , -.- Z   ! 6/0����/ >  ! &121 n   ! $343 m   " $��
�� 
pcls4 o   ! "���� 
0 _paths  2 m   $ %��
�� 
list0 k   ) 255 676 r   ) .898 c   ) ,:;: o   ) *���� 
0 _paths  ; m   * +��
�� 
list9 o      ���� 
0 _paths  7 <��< r   / 2=>= m   / 0��
�� boovtrue> o      ���� 0 	_isscalar 	_isScalar��  ��  ��  . ?@? l  7 7��������  ��  ��  @ ABA O   7 ~CDC X   ; }E��FE k   K xGG HIH Z   K sJK����J =  K PLML n   K NNON m   L N��
�� 
pclsO o   K L���� 0 _p  M m   N O��
�� 
ctxtK Z   S oPQ����P l  S YR����R =   S YSTS n   S WUVU 4   T W��W
�� 
cha W m   U V������V o   S T���� 0 _p  T m   W XXX �YY  /��  ��  Q k   \ kZZ [\[ l  \ \��]^��  ] : 4 regular files with no end slash are not operated on   ^ �__ h   r e g u l a r   f i l e s   w i t h   n o   e n d   s l a s h   a r e   n o t   o p e r a t e d   o n\ `��` r   \ kaba c   \ icdc l  \ ge����e n   \ gfgf 7  ] g��hi
�� 
cha h m   a c���� i m   d f������g o   \ ]�� 0 _p  ��  ��  d m   g h�
� 
ctxtb o      �� 0 _p  ��  ��  ��  ��  ��  I j�j r   t xklk o   t u�� 0 _p  l n      mnm  ;   v wn o   u v�� "0 _pathsdeslashed _pathsDeslashed�  �� 0 _p  F l  > ?o��o o   > ?�� 
0 _paths  �  �  D m   7 8pp�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  B qrq l   ����  �  �  r sts Z   �uv��u F    �wxw l   �y��y o    ��� 0 	_isscalar 	_isScalar�  �  x l  � �z��z H   � �{{ o   � ��� &0 _alwaysreturnlist _alwaysReturnList�  �  v r   � �|}| n   � �~~ 4   � ���
� 
cobj� m   � ���  o   � ��� "0 _pathsdeslashed _pathsDeslashed} o      �� "0 _pathsdeslashed _pathsDeslashed�  �  t ��� r   � ���� o   � ��� "0 _pathsdeslashed _pathsDeslashed� o      �� 
0 _paths  � ��� L   � ��� o   � ��� 
0 _paths  � ��� l  � �����  �  �  �   ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  �  --   � ���  - -� ��� l     ����  � #   removeTrailingSlash( path )   � ��� :     r e m o v e T r a i l i n g S l a s h (   p a t h   )� ��� l     ����  �  �  � ��� l     ����  � 8 2  Takes a filepath and removes any trailing slash.   � ��� d     T a k e s   a   f i l e p a t h   a n d   r e m o v e s   a n y   t r a i l i n g   s l a s h .� ��� l     ����  �  �  � ��� l     ����  � 0 *  @param 	_path 	<text> 		POSIX file path.   � ��� T     @ p a r a m   	 _ p a t h   	 < t e x t >   	 	 P O S I X   f i l e   p a t h .� ��� l     ����  � 1 +  @return 	_path 	<text> 		POSIX file path.   � ��� V     @ r e t u r n   	 _ p a t h   	 < t e x t >   	 	 P O S I X   f i l e   p a t h .� ��� l     ����  �  �  � ��� l     ����  � ) #  @todo 		Account for quoted paths.   � ��� F     @ t o d o   	 	 A c c o u n t   f o r   q u o t e d   p a t h s .� ��� l     ����  � m g  @see 		/Users/Ian/Dropbox/Development/Code/AppleScript/~Add Trailing Slash - Quoted and Unquoted.scpt   � ��� �     @ s e e   	 	 / U s e r s / I a n / D r o p b o x / D e v e l o p m e n t / C o d e / A p p l e S c r i p t / ~ A d d   T r a i l i n g   S l a s h   -   Q u o t e d   a n d   U n q u o t e d . s c p t� ��� l     ����  �  �  � ��� i   � ���� I      ���� *0 removetrailingslash removeTrailingSlash� ��� o      �� 	0 _path  �  �  � k     0�� ��� O     -��� Q    ,���� Z    #����� l   ���� =    ��� n    ��� 4    ��
� 
cha � m   	 
�~�~��� o    �}�} 	0 _path  � m    �� ���  /�  �  � r    ��� c    ��� l   ��|�{� n    ��� 7   �z��
�z 
cha � m    �y�y � m    �x�x��� o    �w�w 	0 _path  �|  �{  � m    �v
�v 
ctxt� o      �u�u 	0 _path  �  �  � R      �t��
�t .ascrerr ****      � ****� o      �s�s 0 errmsg errMsg� �r��q
�r 
errn� o      �p�p 0 errnum errNum�q  � l  + +�o���o  �   do nothing   � ���    d o   n o t h i n g� m     ���                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  . .�n�m�l�n  �m  �l  � ��k� L   . 0�� o   . /�j�j 	0 _path  �k  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f�e�d�f  �e  �d  � ��� l     �c���c  �  --   � ���  - -� ��� l     �b���b  �     addTrailingSlash( path )   � ��� 4     a d d T r a i l i n g S l a s h (   p a t h   )� ��� l     �a�`�_�a  �`  �_  � ��� l     �^���^  � l f  Takes a filepath and adds a trailing colon if it doesn't exist. Note that if the path is to a file,    � ��� �     T a k e s   a   f i l e p a t h   a n d   a d d s   a   t r a i l i n g   c o l o n   i f   i t   d o e s n ' t   e x i s t .   N o t e   t h a t   i f   t h e   p a t h   i s   t o   a   f i l e ,  � ��� l     �]���]  � b \  this will still add a trailing slash, so be careful! This subroutine does not discriminate   � ��� �     t h i s   w i l l   s t i l l   a d d   a   t r a i l i n g   s l a s h ,   s o   b e   c a r e f u l !   T h i s   s u b r o u t i n e   d o e s   n o t   d i s c r i m i n a t e� ��� l     �\ �\    $   between types of input path.    � <     b e t w e e n   t y p e s   o f   i n p u t   p a t h .�  l     �[�Z�Y�[  �Z  �Y    l     �X�X   0 *  @param 	_path 	<text>  	POSIX file path.    �		 T     @ p a r a m   	 _ p a t h   	 < t e x t >     	 P O S I X   f i l e   p a t h . 

 l     �W�W   1 +  @return 	_path 	<text>  	POSIX file path.    � V     @ r e t u r n   	 _ p a t h   	 < t e x t >     	 P O S I X   f i l e   p a t h .  l     �V�U�T�V  �U  �T    l     �S�S   ) #  @todo 		Account for quoted paths.    � F     @ t o d o   	 	 A c c o u n t   f o r   q u o t e d   p a t h s .  l     �R�R   m g  @see 		/Users/Ian/Dropbox/Development/Code/AppleScript/~Add Trailing Slash - Quoted and Unquoted.scpt    � �     @ s e e   	 	 / U s e r s / I a n / D r o p b o x / D e v e l o p m e n t / C o d e / A p p l e S c r i p t / ~ A d d   T r a i l i n g   S l a s h   -   Q u o t e d   a n d   U n q u o t e d . s c p t  l     �Q�P�O�Q  �P  �O    i   � �  I      �N!�M�N $0 addtrailingslash addTrailingSlash! "�L" o      �K�K 	0 _path  �L  �M    k     &## $%$ O     #&'& Q    "()*( Z    +,�J�I+ l   -�H�G- >   ./. n    010 4    �F2
�F 
cha 2 m   	 
�E�E��1 o    �D�D 	0 _path  / m    33 �44  /�H  �G  , r    565 b    787 o    �C�C 	0 _path  8 m    99 �::  /6 o      �B�B 	0 _path  �J  �I  ) R      �A;<
�A .ascrerr ****      � ****; o      �@�@ 0 errmsg errMsg< �?=�>
�? 
errn= o      �=�= 0 errnum errNum�>  * l  ! !�<>?�<  >   do nothing   ? �@@    d o   n o t h i n g' m     AA�                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  % BCB l  $ $�;�:�9�;  �:  �9  C D�8D L   $ &EE o   $ %�7�7 	0 _path  �8   FGF l     �6�5�4�6  �5  �4  G HIH l     �3�2�1�3  �2  �1  I J�0J l     �/�.�-�/  �.  �-  �0       =�,KL �M�+�*�)�(�'�&�%�$NOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}�,  K ;�#�"�!� ����������������������
�	��������� ����������������������������������������������
�# 
pimr�" 0 my_name MY_NAME�! 0 my_path MY_PATH�  0 my_init MY_INIT� 0 unix_basename UNIX_BASENAME� (0 always_return_list ALWAYS_RETURN_LIST� >0 use_empty_strings_for_missing USE_EMPTY_STRINGS_FOR_MISSING� .0 remove_trailing_slash REMOVE_TRAILING_SLASH� .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS� (0 display_all_errors DISPLAY_ALL_ERRORS� 0 
debug_mode 
DEBUG_MODE
� .aevtoappnull  �   � ****� 0 	setmypath 	setMyPath� 0 getproperties getProperties� ,0 getlibraryproperties getLibraryProperties� *0 getfinderproperties getFinderProperties� ,0 getinsertionlocation getInsertionLocation� $0 getcurrentfolder getCurrentFolder�  0 getcurrentpath getCurrentPath� "0 getcurrentpathq getCurrentPathQ� 0 getselection getSelection� *0 getcurrentselection getCurrentSelection� 0 getsel getSel� 0 getpath getPath� 0 getpaths getPaths�
 0 	getpathsq 	getPathsQ�	 0 getposixpaths getPOSIXPaths� 20 getbasenameandextension getBasenameAndExtension� *0 getnameandextension getNameAndExtension� :0 getbasenameandfullextension getBasenameAndFullExtension� 20 getnameandfullextension getNameAndFullExtension� 0 getnames getNames� 0 getdirs getDirs� 0 
getparents 
getParents� 0 getsizes getSizes�  0 getbasenames getBasenames�� &0 getfullextensions getFullExtensions�� 0 getfullexts getFullExts�� 0 getextensions getExtensions�� 0 getmetadata getMetadata�� *0 onlytheseextensions onlyTheseExtensions�� 0 	onlyfiles 	onlyFiles�� *0 onlyfoldersandlinks onlyFoldersAndLinks�� 0 onlyfolders onlyFolders�� 0 asitem asItem�� 0 asitems asItems�� 0 aspath asPath�� 0 aspathq asPathQ�� 0 aspaths asPaths�� 0 aspathsq asPathsQ�� 0 asposix asPOSIX�� 0 asposixq asPOSIXQ�� 0 ashfs asHFS�� 60 toggleextensionvisibility toggleExtensionVisibility�� 40 makefoldersfromclipboard makeFoldersFromClipboard�� 00 generateuniquefilepath generateUniqueFilepath�� .0 removetrailingslashes removeTrailingSlashes�� *0 removetrailingslash removeTrailingSlash�� $0 addtrailingslash addTrailingSlashL ��~�� ~  � �� m��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  M ��� D / A p p l i c a t i o n s / S c r i p t   D e b u g g e r . a p p /
�+ boovfals
�* boovfals
�) boovfals
�( boovtrue
�' boovtrue
�& boovfals
�% boovfals
�$ boovtrueN �����������
�� .aevtoappnull  �   � ****��  ��  �  � 
���������������������� 0 getselection getSelection�� 0 _sel  �� 0 aspaths asPaths�� 
0 _paths  �� 0 getdirs getDirs�� 0 	_dirnames  �� 0 getbasenames getBasenames�� 0 
_allbutext 
_allButExt�� 0 getsizes getSizes�� 
0 _sizes  �� 8b  
 0)j+  E�O)�k+ E�O)�k+ E�O)�k+ E�O)�k+ E�Y hO ��C���������� 0 	setmypath 	setMyPath�� ����� �  ���� 0 _mypath _myPath��  � ���� 0 _mypath _myPath� N�� �� �Ec  Y hOb  E�O�P ������������� 0 getproperties getProperties��  ��  �  � ������������������ 0 asprops asProps
�� 
ascr
�� 
pALL�� 0 libprops libProps�� ,0 getlibraryproperties getLibraryProperties�� 0 finderprops finderProps�� *0 getfinderproperties getFinderProperties�� �� ���,E�)j+ �)j+ �Q ����������� ,0 getlibraryproperties getLibraryProperties��  �  � ���� 0 _mypath _myPath� 0 _myname _myName� 0 _myprops _myProps� �
� 
pALL� b  E�Ob  E�O)�,E�O���mvR ������� *0 getfinderproperties getFinderProperties�  �  � ��������� 
0 _props  � (0 _insertionlocation _insertionLocation� 0 _folder  � 	0 _path  � 0 _hfs  �  0 _allproperties _allProperties� 0 errmsg errMsg� 0 errnum errNum� d��������������]b� (0 _insertionlocation _insertionLocation
� 
pins� 0 _folder  
� 
cwin
� 
fvtg
� 
alis� 	0 _path  
� 
psxp� 0 _hfs  
� 
TEXT�  0 _allproperties _allProperties
� 
pALL� 0 errmsg errMsg� ���
� 
errn� 0 errnum errNum�  � U� N :�*�,l�*�k/�,�&l%�*�k/�,�&�,l%�*�k/�,�&l%���,l%E�W X  �%a �%lvE�UO�S �������� ,0 getinsertionlocation getInsertionLocation�  �  � �� (0 _insertionlocation _insertionLocation� �������
� 
cwin
� 
fvtg�  �  
� 
pins
� 
desk� 1� * *�k/�,E�W X   
*�,E�W X  *�,E�UO�T �������� $0 getcurrentfolder getCurrentFolder�  �  �  � �� ,0 getinsertionlocation getInsertionLocation� )j+  U �������  0 getcurrentpath getCurrentPath�  �  � ����� ,0 _removetrailingslash _removeTrailingSlash� 0 errmsg errMsg� 0 errnum errNum� 	0 _path  � ��T�������~�}�|�{d�z�y�x� 0 errmsg errMsg� �w�v�u
�w 
errn�v 0 errnum errNum�u  
� 
cwin
� 
fvtg
� 
alis
� 
psxp�  �  
�~ 
pins
�} 
desk
�| .earsffdralis        afdr
�{ 
cha 
�z 
bool�y��
�x 
ctxt� |eE�O b  E�W X   hO� 8 *�k/�,�&�,E�W &X   *�,�&�,E�W X  *�,j �,E�UO�	 
��i/� �& �[�\[Zk\Z�2a &E�Y hO�V �t��s�r���q�t "0 getcurrentpathq getCurrentPathQ�s  �r  � �p�o�n�m�l�p 	0 _path  �o ,0 _removetrailingslash _removeTrailingSlash�n 0 errmsg errMsg�m 0 errnum errNum�l 0 _pathq _pathQ� 	�k�j��i�h��g�f�e�k  0 getcurrentpath getCurrentPath�j 0 errmsg errMsg� �d�c�b
�d 
errn�c 0 errnum errNum�b  
�i 
ctxt
�h 
cha 
�g 
bool�f��
�e 
strq�q N)j+  E�OeE�O b  E�W X  hO�	 ��&�i/� �& �[�\[Zk\Z�2�&�,E�Y ��,E�O�W �a!�`�_���^�a 0 getselection getSelection�`  �_  �  � *�]�\
�] 
sele
�\ 
cobj�^ � 
*�,E�-EUX �[Z�Z�Y���X�[ *0 getcurrentselection getCurrentSelection�Z  �Y  �  � �W�W 0 getselection getSelection�X )j+  Y �V��U�T���S�V 0 getsel getSel�U  �T  �  � �R�R 0 getselection getSelection�S )j+  Z �Q��P�O���N�Q 0 getpath getPath�P  �O  �  � �M�M 0 getposixpaths getPOSIXPaths�N )fk+  [ �L��K�J���I�L 0 getpaths getPaths�K  �J  �  � �H�H 0 getposixpaths getPOSIXPaths�I )fk+  \ �G�F�E���D�G 0 	getpathsq 	getPathsQ�F  �E  �  � �C�C 0 getposixpaths getPOSIXPaths�D )ek+  ] �B7�A�@���?�B 0 getposixpaths getPOSIXPaths�A �>��> �  �=�= 0 _quoted  �@  � 	�<�;�:�9�8�7�6�5�4�< 0 _quoted  �; 	0 _item  �: 0 	_isscalar 	_isScalar�9 
0 _paths  �8 	0 _path  �7 0 _sel  �6 &0 _alwaysreturnlist _alwaysReturnList�5 0 errmsg errMsg�4 0 errnum errNum� �3���2�1�0�/�.�-�,�+�3 0 errmsg errMsg� �*�)�(
�* 
errn�) 0 errnum errNum�(  
�2 
sele
�1 .corecnte****       ****
�0 
cobj
�/ 
kocl
�. 
alis
�- 
psxp
�, 
strq
�+ 
bool�? �fE�OjvE�OfE�O b  E�W X   hO� O*�,E�O�j k eE�Y hO 4��-[��l kh �e  ��&�,�,E�Y 	��&�,E�O��6F[OY��UO�	 ��& ��k/E�Y hO�OP^ �'��&�%���$�' 20 getbasenameandextension getBasenameAndExtension�& �#��# �  �"�" 	0 _item  �%  � �!� ����������! 	0 _item  �  0 
_delimsold 
_delimsOld� 0 
_delimsnew 
_delimsNew� 	0 _name  � 0 _namelength _nameLength� 0 _ext  � 0 
_extlength 
_extLength� "0 _basenamelength _basenameLength� 0 	_basename  � 0 
_extension  � 0 	_name_ext  � 
���]�����P
� 
ascr
� 
txdl
� 
pnam
� 
leng
� 
nmxt
� 
citm
� 
TEXT�$ w��,E�O�E�O���,FO� K��,E�O��,E�O��,E�O��,E�O�j  ��kE�O�[�\[Zk\Z�2E�O��&E�Y �E�OjE�O��&E�UO�E�O�E�O��lvE�O���,FO�_ �������� *0 getnameandextension getNameAndExtension� ��� �  �
�
 	0 _item  �  � �	�	 	0 _item  � �� 20 getbasenameandextension getBasenameAndExtension� )�k+  ` �������� :0 getbasenameandfullextension getBasenameAndFullExtension� ��� �  �� 	0 _item  �  � �� ������������������� 	0 _item  �  0 
_delimsold 
_delimsOld�� 0 
_delimsnew 
_delimsNew�� 	0 _name  �� 0 _namelength _nameLength�� 0 _fullext  ��  0 _fullextlength _fullextLength�� "0 _basenamelength _basenameLength�� 0 	_basename  �� 0 
_extension  �� 0 _name_fullext  � �����X����������CK
�� 
ascr
�� 
txdl
�� 
pnam
�� 
leng
�� 
nmxt
�� 
citm
�� 
TEXT� }��,E�O�E�O���,FO� Q��,E�O��,E�O��,E�O��,E�O�j &��kE�O�[�\[Zk\Z�2E�O��&E�O�%E�Y �E�OjE�O��&E�UO�E�O�E�O��lvE�O���,FO�a ������������� 20 getnameandfullextension getNameAndFullExtension�� ����� �  ���� 	0 _item  ��  � ���� 	0 _item  � ���� :0 getbasenameandfullextension getBasenameAndFullExtension�� )�k+  b ������������� 0 getnames getNames�� ����� �  ���� 
0 _items  ��  � ���������������� 
0 _items  �� 	0 _item  �� 
0 _names  �� 0 	_isscalar 	_isScalar�� &0 _alwaysreturnlist _alwaysReturnList�� 0 errmsg errMsg�� 0 errnum errNum� �������	.�������������� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
ctxt
�� 
bool�� sjvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO�  �[��l kh ��,�&�6F[OY��UO�	 ��& ��k/E�Y hO�c ��	p���������� 0 getdirs getDirs�� ����� �  ���� 
0 _items  ��  � 	�������������������� 
0 _items  �� 	0 _item  �� 0 	_dirnames  �� 0 	_isscalar 	_isScalar�� 0 
_container  �� &0 _alwaysreturnlist _alwaysReturnList�� 0 errmsg errMsg�� 0 errnum errNum�� 
0 _chars  � ����	������	������� 0 errmsg errMsg� ���
� 
errn� 0 errnum errNum�  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctxt
� 
citm
� 
psxf
� 
alis
� 
ctnr
� 
psxp
� 
bool�� �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� P M�[��l kh ��,�  '��-E�O�� *�/E�Y *�*��&/�&/E�Y hO��,�&�,�6F[OY��UO�	 ��& ��k/E�Y hO�d �
9������ 0 
getparents 
getParents� ��� �  �� 
0 _items  �  � �� 
0 _items  � �� 0 getdirs getDirs� )�k+  e �
p������ 0 getsizes getSizes� ��� �  �� 
0 _paths  �  � ������ 
0 _paths  � 
0 _sizes  � 0 	_isscalar 	_isScalar� 	0 _path  � 
0 _alias  � ��
�����������
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
psxf
� 
TEXT
� 
alis
� .sysonfo4asfe        file
� 
ptsz� 
� 
long� ejvE�OfE�O��,� ��&E�OeE�Y hO� 0 -�[��l kh *��&/�&E�O�j 	�,�!�&�6F[OY��UO� ��k/E�Y hO�f �
���������� 0 getbasenames getBasenames�� ����� �  ���� 0 _inputs  ��  � ������������������������ 0 _inputs  �� 	0 _item  �� 0 
_basenames  �� 0 	_isscalar 	_isScalar�� 0 
_container  �� 0 _unixbasename _unixBasename�� 0 errmsg errMsg�� 0 errnum errNum�� &0 _alwaysreturnlist _alwaysReturnList�� 
0 _input  �� 	0 _path  � ���~�}��|�{�z�y�xr�w�v�u���t���s� 0 errmsg errMsg� �r�q�p
�r 
errn�q 0 errnum errNum�p  
�~ 
pcls
�} 
list
�| 
kocl
�{ 
cobj
�z .corecnte****       ****
�y 
ctxt
�x 
citm
�w 
psxf
�v 
alis
�u 
psxp
�t .sysoexecTEXT���     TEXT
�s 
bool�� �jvE�OfE�O b  E�W 
X   fE�O b  E�W 
X   fE�O��,� ��&E�OeE�Y hO� o l�[��l kh 	��,�  #��-� *�/E�Y *�*��&/�&/E�Y hO��&�,E�O� �%�%j �6FY a �%a %j �6FOP[OY��UO�	 �a & ��k/E�Y hO�g �o�n�m���l�o &0 getfullextensions getFullExtensions�n �k��k �  �j�j 
0 _items  �m  � �i�h�g�f�e�d�c�i 
0 _items  �h 	0 _item  �g 0 _extensions  �f 0 	_isscalar 	_isScalar�e &0 _alwaysreturnlist _alwaysReturnList�d 0 errmsg errMsg�c 0 errnum errNum� �b��a�`}�_�^�]�\]f�[y�Z�b 0 errmsg errMsg� �Y�X�W
�Y 
errn�X 0 errnum errNum�W  
�a 
pcls
�` 
list
�_ 
kocl
�^ 
cobj
�] .corecnte****       ****
�\ 
nmxt
�[ 
ctxt
�Z 
bool�l �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� < 9�[��l kh ��,� ��,%�&�6FY b   	�6FY h[OY��UO�	 ��& ��k/E�Y hO�OPh �V��U�T���S�V 0 getfullexts getFullExts�U �R��R �  �Q�Q 
0 _items  �T  � �P�P 
0 _items  � �O�O &0 getfullextensions getFullExtensions�S )�k+  i �N��M�L���K�N 0 getextensions getExtensions�M �J��J �  �I�I 
0 _items  �L  � �H�G�F�E�D�C�B�A�H 
0 _items  �G 	0 _item  �F 0 _extensions  �E 0 	_isscalar 	_isScalar�D 80 _useemptystringsformissing _useEmptyStringsForMissing�C 0 errmsg errMsg�B 0 errnum errNum�A &0 _alwaysreturnlist _alwaysReturnList� �@��?�>}�=�<�;�:a�9y�8�@ 0 errmsg errMsg� �7�6�5
�7 
errn�6 0 errnum errNum�5  
�? 
pcls
�> 
list
�= 
kocl
�< 
cobj
�; .corecnte****       ****
�: 
nmxt
�9 
ctxt
�8 
bool�K �jvE�OfE�OeE�O b  E�W X   hOfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� 6 3�[��l kh ��,� ��,�&�6FY � 	�6FY h[OY��UO�	 ��& ��k/E�Y hO�j �4��3�2���1�4 0 getmetadata getMetadata�3 �0��0 �  �/�/ 
0 _paths  �2  � �.�-�,�+�*�)�(�. 
0 _paths  �- 	0 _path  �, 0 	_metadata  �+ 0 	_isscalar 	_isScalar�* &0 _alwaysreturnlist _alwaysReturnList�) 0 errmsg errMsg�( 0 errnum errNum� �'��&�%�$�#�"�!� ���' 0 errmsg errMsg� ���
� 
errn� 0 errnum errNum�  
�& 
pcls
�% 
list
�$ 
kocl
�# 
cobj
�" .corecnte****       ****
�! 
strq
�  .sysoexecTEXT���     TEXT
� 
ctxt
� 
bool�1 xjvE�OfE�OfE�O b  E�W X   hO��,� eE�O��&E�Y hO &�[��l kh ��,E�O�%j 	�&�6F[OY��O�	 ��& ��k/E�Y hO�k �a������ *0 onlytheseextensions onlyTheseExtensions� ��� �  ��� 
0 _items  � 	0 _exts  �  � ��������� 
0 _items  � 	0 _exts  � 0 	_isscalar 	_isScalar� 
0 _files  � &0 _alwaysreturnlist _alwaysReturnList� 0 errmsg errMsg� 0 errnum errNum� 	0 _item  � ���
�	��������� 0 errmsg errMsg� �� ��
� 
errn�  0 errnum errNum��  
�
 
pcls
�	 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctxt� 0 asitems asItems
� 
nmxt
� 
bool� �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO��,� 
��&E�Y hO� < 9�[��l kh ��,�  )�k+ 	E�Y hO���, 	��6FY h[OY��UO�	 ��& ��k/E�Y hO�l ������������ 0 	onlyfiles 	onlyFiles�� ����� �  ���� 
0 _items  ��  � ���������������� 
0 _items  �� 0 	_isscalar 	_isScalar�� 0 
_fileitems 
_fileItems�� &0 _alwaysreturnlist _alwaysReturnList�� 0 errmsg errMsg�� 0 errnum errNum�� 	0 _item  � �������o����������i���� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT
�� 
cha 
�� 
bool�� ~jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� * '�[��l kh ��&�i/� 	��6FY h[OY��UO�	 ��& ��k/E�Y hO�m ������������� *0 onlyfoldersandlinks onlyFoldersAndLinks�� ����� �  ���� 
0 _items  ��  � ���������������� 
0 _items  �� 0 	_diritems 	_dirItems�� 0 	_isscalar 	_isScalar�� &0 _alwaysreturnlist _alwaysReturnList�� 0 errmsg errMsg�� 0 errnum errNum�� 	0 _item  � ��������������������� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT
�� 
cha 
�� 
bool�� ~jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� * '�[��l kh ��&�i/� 	��6FY h[OY��UO�	 ��& ��k/E�Y hO�n ��J���������� 0 onlyfolders onlyFolders�� ����� �  ���� 
0 _items  ��  � 
������������������� 
0 _items  �� 0 _folders  �� 0 	_isscalar 	_isScalar�� *0 _soundalertonerrors _soundAlertOnErrors�� 0 errmsg errMsg�� 0 errnum errNum�� &0 _displayallerrors _displayAllErrors� &0 _alwaysreturnlist _alwaysReturnList� 	0 _item  � 0 _folder  � ���� ��������������� 0 errmsg errMsg� ���
� 
errn� 0 errnum errNum�  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
cha 
� 
kind
� 
bool
� .sysobeepnull��� ��� long
� 
ret 
� .sysodlogaskr        TEXT�� �jvE�OfE�OfE�O b  E�W X   hOfE�O b  	E�W X   hOfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� m 9 1�[��l kh ��&�i/�	 	��,� �& 	��6FY h[OY��OPW 3X   � )� 
*j Y hO� a _ kv%�%�%j Y hUUO�	 ��& ��k/E�Y hO�o �I������ 0 asitem asItem� ��� �  �� 	0 _path  �  � �� 	0 _path  � �� 0 asitems asItems� )�k+  p �������� 0 asitems asItems� ��� �  �� 
0 _paths  �  � ���������������� 
0 _paths  � 	0 _path  � 0 _result  � 	0 _item  � 0 	_isscalar 	_isScalar� 
0 _chars  � *0 _soundalertonerrors _soundAlertOnErrors� 0 errmsg errMsg� 0 errnum errNum� &0 _displayallerrors _displayAllErrors� &0 _alwaysreturnlist _alwaysReturnList� 0 _c  � 0 
_firstchar 
_firstChar� 0 	_lastchar 	_lastChar� 0 _quotes  � �����������37;?CGJ��v������� 0 errmsg errMsg� ���~
� 
errn� 0 errnum errNum�~  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctxt
� 
citm
� 
cha � 
� 
bool
� 
psxf
� 
alis
� .sysobeepnull��� ��� long
� .sysodlogaskr        TEXT�rjvE�OfE�OfE�O b  E�W X   hOfE�O b  	E�W X   hOfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� � � ��[��l kh ��,�  ���-E�O�j E�O�[�k/\[�/\ZlvE[�k/E�Z[�l/E�ZO�����a a a vE�O��	 	��a & �[�\[Zkk\Z�k2�&E�Y hO�a  *�/E�Y *�*a ��&/a &/E�O��6FY ��6F[OY�^OPW 3X   a  '� 
*j Y hO� a �%�%j Y hO�E�UUO�	 �a & ��k/E�Y hO�q �}��|�{���z�} 0 aspath asPath�| �y��y �  �x�x 	0 _item  �{  � �w�v�w 	0 _item  �v 	0 _path  � �u�t�s�r
�u 
pcls
�t 
ctxt
�s 
alis
�r 
psxp�z � ��,� ��&�,E�Y �E�UO�r �qP�p�o���n�q 0 aspathq asPathQ�p �m��m �  �l�l 	0 _item  �o  � �k�j�k 	0 _item  �j 	0 _path  � r�i�h�g�f�e
�i 
pcls
�h 
ctxt
�g 
alis
�f 
psxp
�e 
strq�n "� ��,� ��&�,�,E�Y ��,E�UO�s �d��c�b���a�d 0 aspaths asPaths�c �`��` �  �_�_ 
0 _items  �b  � �^�]�\�[�Z�Y�X�^ 
0 _items  �] 	0 _item  �\ 
0 _paths  �[ 0 	_isscalar 	_isScalar�Z &0 _alwaysreturnlist _alwaysReturnList�Y 0 errmsg errMsg�X 0 errnum errNum� �W��V�U�T�S�R�Q�P�O�N�W 0 errmsg errMsg� �M�L�K
�M 
errn�L 0 errnum errNum�K  
�V 
pcls
�U 
list
�T 
kocl
�S 
cobj
�R .corecnte****       ****
�Q 
ctxt
�P 
alis
�O 
psxp
�N 
bool�a �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� . +�[��l kh ��,� ��&�,�6FY ��6F[OY��UO�	 ��& ��k/E�Y hO�t �JD�I�H���G�J 0 aspathsq asPathsQ�I �F��F �  �E�E 
0 _items  �H  � �D�C�B�A�@�?�>�D 
0 _items  �C 	0 _item  �B 
0 _paths  �A 0 	_isscalar 	_isScalar�@ &0 _alwaysreturnlist _alwaysReturnList�? 0 errmsg errMsg�> 0 errnum errNum� �=��<�;��:�9�8�7�6�5�4�3�= 0 errmsg errMsg� �2�1�0
�2 
errn�1 0 errnum errNum�0  
�< 
pcls
�; 
list
�: 
kocl
�9 
cobj
�8 .corecnte****       ****
�7 
ctxt
�6 
alis
�5 
psxp
�4 
strq
�3 
bool�G �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� 2 /�[��l kh ��,� ��&�,�,�6FY ��,�6F[OY��UO�	 ��& ��k/E�Y hO�u �/��.�-���,�/ 0 asposix asPOSIX�. �+��+ �  �*�* 
0 _items  �-  � �)�) 
0 _items  � �(�( 0 aspaths asPaths�, )�k+  v �'�&�%� �$�' 0 asposixq asPOSIXQ�& �#�#   �"�" 
0 _items  �%  � �!�! 
0 _items    � �  0 aspathsq asPathsQ�$ )�k+  w �T���� 0 ashfs asHFS� ��   �� 
0 _items  �   	���������� 
0 _items  � 	0 _item  � 
0 _paths  � 
0 _chars  � 0 	_isscalar 	_isScalar� &0 _alwaysreturnlist _alwaysReturnList� 0 errmsg errMsg� 0 errnum errNum� 	0 _path   ��������
�	������� 0 errmsg errMsg ���
� 
errn� 0 errnum errNum�  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
�
 
ctxt
�	 
alis
� 
FTPc
� 
citm
� 
psxf
� 
TEXT
� 
bool� �jvE�OfE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� N K�[��l kh ��,� ��&�,�6FY &��-E�O�� *�/E�Y *���&/�&E�O��6F[OY��UO�	 ��& ��k/E�Y hO�x � �������  60 toggleextensionvisibility toggleExtensionVisibility�� ����   ���� 
0 _input  ��   ������ 
0 _input  �� 	0 _item   ����H��������
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
hidx�� 8��,� 
��&E�Y hO�  �[��l kh ��,��,F[OY��UOhy ��{����	
���� 40 makefoldersfromclipboard makeFoldersFromClipboard��  ��  	 ����������  0 _currentfolder _currentFolder�� 	0 _clip  �� 
0 _names  �� 	0 _name  
 ������������������������������
�� 
pins
�� 
rtyp
�� 
ctxt
�� .JonsgClp****    ��� null
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cfol
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null�� N� *�,E�UO*��l E�O��-E�O�� -� % "�[��l 	kh *������l� [OY��UY hz ����������� 00 generateuniquefilepath generateUniqueFilepath�� ����   ������ 	0 _path  �� 0 _ext  ��   ������������������������������ 	0 _path  �� 0 _ext  �� 	0 _item  �� 0 	_fullname  �� 0 
_container  �� 0 _folder  �� 0 	_basename  �� 0 _prefix  �� 0 _startserial _startSerial�� 0 _currentcount _currentCount�� 	0 _name  �� 0 _currentint _currentInt�� 0 _serial  �� 0 _filehfs _fileHFS ������������� �������1�BH�`�������� 0 asitems asItems
�� 
pnam
�� 
ctnr
�� 
ctxt
�� misccura
�� 
psof
�� 
psin
�� 
citm
� 
rvse� 
� .sysooffslong    ��� null
� 
nmxt
� 
nmbr
� 
file
� .coredoexnull���     obj � 

� 
psxp�� �� �)�k+ E�O��,E�O��,E�O��&E�O�[�\[Zk\Z� *����-�,�&� U'k2E�O��  
��,E�Y hO�E�Oa E�O�a &E�O��%�%a %�%�&E�O Lh�a �/j �kE�O�a  �EQ�Oa ��&%E�Y �EQ�O��&E�O��%�%a %�%�&E�[OY��O��%�&E�O�a ,E�O�OPU{ ����� .0 removetrailingslashes removeTrailingSlashes� ��   �� 
0 _paths  �   �������� 
0 _paths  � 0 	_isscalar 	_isScalar� "0 _pathsdeslashed _pathsDeslashed� &0 _alwaysreturnlist _alwaysReturnList� 0 errmsg errMsg� 0 errnum errNum� 0 _p   ���p�����X��� 0 errmsg errMsg ���
� 
errn� 0 errnum errNum�  
� 
pcls
� 
list
� 
kocl
� 
cobj
� .corecnte****       ****
� 
ctxt
� 
cha ���
� 
bool� �fE�OjvE�OfE�O b  E�W X   hO��,� ��&E�OeE�Y hO� D A�[��l kh ��,�  !��i/�  �[�\[Zk\Z�2�&E�Y hY hO��6F[OY��UO�	 ��& ��k/E�Y hO�E�O�OP| ������ *0 removetrailingslash removeTrailingSlash� ��   �� 	0 _path  �   ���� 	0 _path  � 0 errmsg errMsg� 0 errnum errNum ������
� 
cha ���
� 
ctxt� 0 errmsg errMsg ���
� 
errn� 0 errnum errNum�  � 1� * !��i/�  �[�\[Zk\Z�2�&E�Y hW X  hUO�} � ���� $0 addtrailingslash addTrailingSlash� ��   �� 	0 _path  �   ���� 	0 _path  � 0 errmsg errMsg� 0 errnum errNum A�39�
� 
cha � 0 errmsg errMsg ���
� 
errn� 0 errnum errNum�  � '�   ��i/� 
��%E�Y hW X  hUO�ascr  ��ޭ