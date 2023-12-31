FasdUAS 1.101.10   ��   ��    k             l     ��  ��    	 --:     � 	 	  - - :   
  
 l     ��  ��       UtilityLib     �        U t i l i t y L i b      l     ��������  ��  ��        l     ��  ��    5 /  @author		Ian Kirkland <ianthekirkland@me.com>     �   ^     @ a u t h o r 	 	 I a n   K i r k l a n d   < i a n t h e k i r k l a n d @ m e . c o m >      l     ��  ��    5 /  @copyright	2017 Kirkland Professional Studios     �   ^     @ c o p y r i g h t 	 2 0 1 7   K i r k l a n d   P r o f e s s i o n a l   S t u d i o s      l     ��  ��       @date		8/23/17     �         @ d a t e 	 	 8 / 2 3 / 1 7     !   l     �� " #��   "    @version	2.0.0    # � $ $       @ v e r s i o n 	 2 . 0 . 0 !  % & % l     �� ' (��   '    @license	MIT    ( � ) )      @ l i c e n s e 	 M I T &  * + * l     �� , -��   , � ~  @link		https://stackoverflow.com/questions/26247926/how-to-solve-usr-bin-env-ruby-executable-hooks-no-such-file-or-directory    - � . . �     @ l i n k 	 	 h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 2 6 2 4 7 9 2 6 / h o w - t o - s o l v e - u s r - b i n - e n v - r u b y - e x e c u t a b l e - h o o k s - n o - s u c h - f i l e - o r - d i r e c t o r y +  / 0 / l     �� 1 2��   1 P J  @note		Requires sass for Node.js; Too install, run `npm install -g sass`    2 � 3 3 �     @ n o t e 	 	 R e q u i r e s   s a s s   f o r   N o d e . j s ;   T o o   i n s t a l l ,   r u n   ` n p m   i n s t a l l   - g   s a s s ` 0  4 5 4 l     �� 6 7��   6 B <  @todo		Move SASS compilation features out of this library.    7 � 8 8 x     @ t o d o 	 	 M o v e   S A S S   c o m p i l a t i o n   f e a t u r e s   o u t   o f   t h i s   l i b r a r y . 5  9 : 9 l     �� ; <��   ; \ V  @example	To use this library's functionality, include following code in your script:    < � = = �     @ e x a m p l e 	 T o   u s e   t h i s   l i b r a r y ' s   f u n c t i o n a l i t y ,   i n c l u d e   f o l l o w i n g   c o d e   i n   y o u r   s c r i p t : :  > ? > l     �� @ A��   @ J D      			set utilityLib to load script "/path/to/as-utilityLib.scpt"    A � B B �             	 	 	 s e t   u t i l i t y L i b   t o   l o a d   s c r i p t   " / p a t h / t o / a s - u t i l i t y L i b . s c p t " ?  C D C l     �� E F��   E H B      			set the result to utilityLib's handlerName( myArguments )    F � G G �             	 	 	 s e t   t h e   r e s u l t   t o   u t i l i t y L i b ' s   h a n d l e r N a m e (   m y A r g u m e n t s   ) D  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L _ Y  @example	You can also load the script as a property, so it's available in subroutines::    M � N N �     @ e x a m p l e 	 Y o u   c a n   a l s o   l o a d   t h e   s c r i p t   a s   a   p r o p e r t y ,   s o   i t ' s   a v a i l a b l e   i n   s u b r o u t i n e s : : K  O P O l     �� Q R��   Q L F      			property finderLib : (load script "/path/to/UtilityLib.scpt")    R � S S �             	 	 	 p r o p e r t y   f i n d e r L i b   :   ( l o a d   s c r i p t   " / p a t h / t o / U t i l i t y L i b . s c p t " ) P  T U T l     �� V W��   V G A      			set the result to finderLib's handlerName( myArguments )    W � X X �             	 	 	 s e t   t h e   r e s u l t   t o   f i n d e r L i b ' s   h a n d l e r N a m e (   m y A r g u m e n t s   ) U  Y Z Y l     �� [ \��   [ 	 --:    \ � ] ]  - - : Z  ^ _ ^ l      ` a b ` x     �� c d��   c 1      ��
�� 
ascr d �� e��
�� 
minv e m       f f � g g  2 . 4��   a    Yosemite (10.10) or later    b � h h 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r _  i j i x    �� k����   k 2  	 ��
�� 
osax��   j  l m l l     ��������  ��  ��   m  n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r l     �� t u��   t    Properties    u � v v      P r o p e r t i e s s  w x w l     �� y z��   y  	    z � { {  	 x  | } | l      ~  � ~ j    �� ��� 0 my_name MY_NAME � m     � � � � �  U t i l i t y L i b  : 4											<text>  	The name of this script library.    � � � � h 	 	 	 	 	 	 	 	 	 	 	 < t e x t >     	 T h e   n a m e   o f   t h i s   s c r i p t   l i b r a r y . }  � � � l      � � � � j    �� ��� 0 my_path MY_PATH � l    ����� � n     � � � 1    ��
�� 
psxp � l    ����� � I   �� ���
�� .earsffdralis        afdr �  f    ��  ��  ��  ��  ��   � | v						<POSIX>  	The path of this script library as defined by self (if run) or caller (if called with POSIX path arg).    � � � � � 	 	 	 	 	 	 < P O S I X >     	 T h e   p a t h   o f   t h i s   s c r i p t   l i b r a r y   a s   d e f i n e d   b y   s e l f   ( i f   r u n )   o r   c a l l e r   ( i f   c a l l e d   w i t h   P O S I X   p a t h   a r g ) . �  � � � l      � � � � j     "�� ��� 0 my_init MY_INIT � m     !��
�� boovfals � \ V												<bool>  	False if this library has not been self initialized via 'on run'.    � � � � � 	 	 	 	 	 	 	 	 	 	 	 	 < b o o l >     	 F a l s e   i f   t h i s   l i b r a r y   h a s   n o t   b e e n   s e l f   i n i t i a l i z e d   v i a   ' o n   r u n ' . �  � � � l      � � � � j   # %�� ��� 0 sass_bin SASS_BIN � m   # $ � � � � � & / u s r / l o c a l / b i n / s a s s � + %								<text>  	Path to SASS binary.    � � � � J 	 	 	 	 	 	 	 	 < t e x t >     	 P a t h   t o   S A S S   b i n a r y . �  � � � l      � � � � j   & /�� ��� "0 sass_extensions SASS_EXTENSIONS � J   & . � �  � � � m   & ' � � � � �  s a s s �  � � � m   ' ( � � � � �  s c s s �  � � � m   ( ) � � � � �  S C S S �  ��� � m   ) * � � � � �  S A S S��   � > 8		<list>  		Contains list of acceptable sass extensions.    � � � � p 	 	 < l i s t >     	 	 C o n t a i n s   l i s t   o f   a c c e p t a b l e   s a s s   e x t e n s i o n s . �  � � � l      � � � � j   0 4�� ��� 0 sass_ext SASS_EXT � m   0 3 � � � � �  s c s s � @ :												<text>  	Desired target SASS / SCSS extension.    � � � � t 	 	 	 	 	 	 	 	 	 	 	 	 < t e x t >     	 D e s i r e d   t a r g e t   S A S S   /   S C S S   e x t e n s i o n . �  � � � l      � � � � j   5 9�� ��� 0 css_ext CSS_EXT � m   5 8 � � � � �  c s s � 8 2												<text>  	Desired target CSS extension.    � � � � d 	 	 	 	 	 	 	 	 	 	 	 	 < t e x t >     	 D e s i r e d   t a r g e t   C S S   e x t e n s i o n . �  � � � l      � � � � j   : <�� ��� (0 always_return_list ALWAYS_RETURN_LIST � m   : ;��
�� boovfals � V P									<bool>  	Results from handlers with variadic input always return lists.    � � � � � 	 	 	 	 	 	 	 	 	 < b o o l >     	 R e s u l t s   f r o m   h a n d l e r s   w i t h   v a r i a d i c   i n p u t   a l w a y s   r e t u r n   l i s t s . �  � � � l      � � � � j   = ?�� ��� .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS � m   = >��
�� boovfals � $ 							<bool>  	Beep on error.    � � � � < 	 	 	 	 	 	 	 < b o o l >     	 B e e p   o n   e r r o r . �  � � � l      � � � � j   @ B�� ��� (0 display_all_errors DISPLAY_ALL_ERRORS � m   @ A��
�� boovfals � = 7									<bool>  	Verbose mode. (Display error alerts).    � � � � n 	 	 	 	 	 	 	 	 	 < b o o l >     	 V e r b o s e   m o d e .   ( D i s p l a y   e r r o r   a l e r t s ) . �  � � � l      � � � � j   C E�� ��� 0 
debug_mode 
DEBUG_MODE � m   C D��
�� boovtrue � \ V											<bool>  	A special hook for partially enabling certain behavior in 'on run'    � � � � � 	 	 	 	 	 	 	 	 	 	 	 < b o o l >     	 A   s p e c i a l   h o o k   f o r   p a r t i a l l y   e n a b l i n g   c e r t a i n   b e h a v i o r   i n   ' o n   r u n ' �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    Functions    � � � �      F u n c t i o n s �  � � � l     �� � ���   �        � � � �      �  � � � l     �� � ���   �    compileSass( items )    � � � � ,     c o m p i l e S a s s (   i t e m s   ) �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  �  � l     ��������  ��  ��     l     ����    --    �  - -  l     ��	��      compileSass( items )   	 �

 ,     c o m p i l e S a s s (   i t e m s   )  l     ��������  ��  ��    l     ����   n h  @param  	sassPaths 	<list/reference>  	List of Finder item references or single Finder item reference.    � �     @ p a r a m     	 s a s s P a t h s   	 < l i s t / r e f e r e n c e >     	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   o r   s i n g l e   F i n d e r   i t e m   r e f e r e n c e .  l     ����   l f  @return  	cssPaths   	<list/text>  		List of Finder item references or single Finder item reference.    � �     @ r e t u r n     	 c s s P a t h s       	 < l i s t / t e x t >     	 	 L i s t   o f   F i n d e r   i t e m   r e f e r e n c e s   o r   s i n g l e   F i n d e r   i t e m   r e f e r e n c e .  l     ����   9 3  @note 		syntax:`sass  [input].scss  [output].css`    � f     @ n o t e   	 	 s y n t a x : ` s a s s     [ i n p u t ] . s c s s     [ o u t p u t ] . c s s `  l     ����    --    �    - - !"! i   F I#$# I      ��%���� 0 compilesass compileSass% &��& o      ���� 0 	sasspaths 	sassPaths��  ��  $ k     �'' ()( l     ��������  ��  ��  ) *+* q      ,, ��-�� 0 	sasspaths 	sassPaths- ��.�� 	0 _path  . ��/�� 0 _extensions  / ������ 0 	_isscalar 	_isScalar��  + 010 l     ��������  ��  ��  1 232 r     454 J     ����  5 o      ���� 0 csspaths cssPaths3 676 r    898 m    ��
�� boovfals9 o      ���� 0 	_isscalar 	_isScalar7 :;: l  	 	��������  ��  ��  ; <=< Z   	 >?����> >  	 @A@ n   	 BCB m   
 ��
�� 
pclsC o   	 
���� 0 	sasspaths 	sassPathsA m    ��
�� 
list? k    DD EFE r    GHG c    IJI o    ���� 0 	sasspaths 	sassPathsJ m    ��
�� 
listH o      ���� 0 	sasspaths 	sassPathsF K��K r    LML m    ��
�� boovtrueM o      �� 0 	_isscalar 	_isScalar��  ��  ��  = NON l   �~�}�|�~  �}  �|  O PQP O    �RSR Q   # �TUVT k   & �WW XYX X   & �Z�{[Z k   6 �\\ ]^] Z   6 Y_`�za_ =  6 ;bcb n   6 9ded m   7 9�y
�y 
pclse o   6 7�x�x 	0 _path  c m   9 :�w
�w 
ctxt` k   > Jff ghg r   > Aiji o   > ?�v�v 	0 _path  j o      �u�u 	0 _path  h k�tk r   B Jlml n  B Hnon I   C H�sp�r�s 0 asitems asItemsp q�qq o   C D�p�p 	0 _path  �q  �r  o  f   B Cm o      �o�o 	0 _item  �t  �z  a l  M Yrstr k   M Yuu vwv r   M Pxyx o   M N�n�n 	0 _path  y o      �m�m 	0 _item  w z�lz r   Q Y{|{ n  Q W}~} I   R W�k�j�k 0 aspaths asPaths ��i� o   R S�h�h 	0 _item  �i  �j  ~  f   Q R| o      �g�g 	0 _path  �l  s 0 * assume _item is a Finder object specifier   t ��� T   a s s u m e   _ i t e m   i s   a   F i n d e r   o b j e c t   s p e c i f i e r^ ��f� Z   Z ����e�d� E   Z c��� o   Z _�c�c "0 sass_extensions SASS_EXTENSIONS� l  _ b��b�a� n   _ b��� 1   ` b�`
�` 
nmxt� o   _ `�_�_ 	0 _item  �b  �a  � k   f ��� ��� r   f k��� l  f i��^�]� n   f i��� 1   g i�\
�\ 
strq� o   f g�[�[ 	0 _path  �^  �]  � o      �Z�Z 0 _srcpath _srcPath� ��� r   l ~��� l  l |��Y�X� n   l |��� 1   z |�W
�W 
strq� l  l z��V�U� b   l z��� b   l t��� n  l r��� I   m r�T��S�T 0 getallbutext getAllButExt� ��R� o   m n�Q�Q 	0 _path  �R  �S  �  f   l m� m   r s�� ���  .� o   t y�P�P 0 css_ext CSS_EXT�V  �U  �Y  �X  � o      �O�O 0 	_destpath 	_destPath� ��� r    ���� l   ���N�M� I   ��L��K
�L .sysoexecTEXT���     TEXT� b    ���� b    ���� b    ���� b    ���� o    ��J�J 0 sass_bin SASS_BIN� m   � ��� ���   � o   � ��I�I 0 _srcpath _srcPath� m   � ��� ���   � o   � ��H�H 0 	_destpath 	_destPath�K  �N  �M  � o      �G�G 	0 _done  � ��F� r   � ���� o   � ��E�E 0 	_destpath 	_destPath� n      ���  ;   � �� o   � ��D�D 0 csspaths cssPaths�F  �e  �d  �f  �{ 	0 _path  [ o   ) *�C�C 0 	sasspaths 	sassPathsY ��B� Z  � ����A�@� F   � ���� l  � ���?�>� o   � ��=�= 0 	_isscalar 	_isScalar�?  �>  � l  � ���<�;� H   � ��� o   � ��:�: (0 always_return_list ALWAYS_RETURN_LIST�<  �;  � r   � ���� l  � ���9�8� n   � ���� 4   � ��7�
�7 
cobj� m   � ��6�6 � o   � ��5�5 0 csspaths cssPaths�9  �8  � o      �4�4 0 csspaths cssPaths�A  �@  �B  U R      �3��
�3 .ascrerr ****      � ****� o      �2�2 0 errmsg errMsg� �1��0
�1 
errn� o      �/�/ 0 errnum errNum�0  V O   � ���� k   � ��� ��� Z  � ����.�-� l  � ���,�+� o   � ��*�* .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS�,  �+  � I  � ��)�(�'
�) .sysobeepnull��� ��� long�(  �'  �.  �-  � ��&� Z  � ����%�$� l  � ���#�"� o   � ��!�! (0 display_all_errors DISPLAY_ALL_ERRORS�#  �"  � I  � �� ��
�  .sysodlogaskr        TEXT� b   � ���� b   � ���� m   � ��� ���  E r r o r :  � o   � ��� 0 errmsg errMsg� o   � ��� 0 errnum errNum�  �%  �$  �&  � m   � ����                                                                                  sevs  alis    \  Macintosh HD                   BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  S m     ���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  Q ��� l  � �����  �  �  � ��� L   � ��� o   � ��� 0 csspaths cssPaths� ��� l  � �����  �  �  �  " ��� l     ����  �  �  � ��� l     ����  �  �  �       ��� ��� �� � ���
�	���  � �������� ����������
� 
pimr� 0 my_name MY_NAME� 0 my_path MY_PATH� 0 my_init MY_INIT� 0 sass_bin SASS_BIN� "0 sass_extensions SASS_EXTENSIONS� 0 sass_ext SASS_EXT�  0 css_ext CSS_EXT�� (0 always_return_list ALWAYS_RETURN_LIST�� .0 sound_alert_on_errors SOUND_ALERT_ON_ERRORS�� (0 display_all_errors DISPLAY_ALL_ERRORS�� 0 
debug_mode 
DEBUG_MODE�� 0 compilesass compileSass� ����� �  ��� �� f��
�� 
vers��  � �����
�� 
cobj� ��   ��
�� 
osax��  � ��� D / A p p l i c a t i o n s / S c r i p t   D e b u g g e r . a p p /
� boovfals� ����� �   � � � �
� boovfals
�
 boovfals
�	 boovfals
� boovtrue� ��$���������� 0 compilesass compileSass�� ����� �  ���� 0 	sasspaths 	sassPaths��  � ������������������������ 0 	sasspaths 	sassPaths�� 	0 _path  �� 0 _extensions  �� 0 	_isscalar 	_isScalar�� 0 csspaths cssPaths�� 	0 _item  �� 0 _srcpath _srcPath�� 0 	_destpath 	_destPath�� 	0 _done  �� 0 errmsg errMsg�� 0 errnum errNum� ���������������������������������������
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
ctxt�� 0 asitems asItems�� 0 aspaths asPaths
�� 
nmxt
�� 
strq�� 0 getallbutext getAllButExt
�� .sysoexecTEXT���     TEXT
�� 
bool�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  
�� .sysobeepnull��� ��� long
�� .sysodlogaskr        TEXT�� �jvE�OfE�O��,� ��&E�OeE�Y hO� � � y�[��l kh ��,�  �E�O)�k+ E�Y �E�O)�k+ E�Ob  ��, 6��,E�O)�k+ �%b  %�,E�Ob  �%�%�%�%j E�O��6FY h[OY��O�	 b  a & ��k/E�Y hW 7X  a  +b  	 
*j Y hOb  
 a �%�%j Y hUUO�OP ascr  ��ޭ