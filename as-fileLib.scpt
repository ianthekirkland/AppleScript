FasdUAS 1.101.10   ��   ��    k             l     ��  ��    	 --:     � 	 	  - - :   
  
 l     ��  ��     	FILES & FOLDERS LIBRARY     �   0 	 F I L E S   &   F O L D E R S   L I B R A R Y      l     ��  ��     	     �    	      l     ��  ��    P J	Reading/writing data, renaming files, color labels of files and folders,      �   � 	 R e a d i n g / w r i t i n g   d a t a ,   r e n a m i n g   f i l e s ,   c o l o r   l a b e l s   o f   f i l e s   a n d   f o l d e r s ,        l     ��  ��    0 *	getting information on files and folders.     �   T 	 g e t t i n g   i n f o r m a t i o n   o n   f i l e s   a n d   f o l d e r s .      l     ��   !��            ! � " "        # $ # l     �� % &��   %  	@date		2012-01-14    & � ' ' $ 	 @ d a t e 	 	 2 0 1 2 - 0 1 - 1 4 $  ( ) ( l     �� * +��   * > 8	@see		http://applescript.bratis-lover.net/library/file/    + � , , p 	 @ s e e 	 	 h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )  - . - l     �� / 0��   / F @	@copyright	(c) 2008 ljr (http://applescript.bratis-lover.net) [    0 � 1 1 � 	 @ c o p y r i g h t 	 ( c )   2 0 0 8   l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t )   [ .  2 3 2 l     �� 4 5��   4 L F              		getSizeKB, readFile, readList, readUTF8, writeToFile,     5 � 6 6 �                             	 	 g e t S i z e K B ,   r e a d F i l e ,   r e a d L i s t ,   r e a d U T F 8 ,   w r i t e T o F i l e ,   3  7 8 7 l     �� 9 :��   9 V P              		writeListToFile, writeUTF8ToFile, getColorLabel, setColorLabel,     : � ; ; �                             	 	 w r i t e L i s t T o F i l e ,   w r i t e U T F 8 T o F i l e ,   g e t C o l o r L a b e l ,   s e t C o l o r L a b e l ,   8  < = < l     �� > ?��   > M G              		replaceInFileName, suffixToFileName, prefixToFileName ]    ? � @ @ �                             	 	 r e p l a c e I n F i l e N a m e ,   s u f f i x T o F i l e N a m e ,   p r e f i x T o F i l e N a m e   ] =  A B A l     �� C D��   C        D � E E      B  F G F l     �� H I��   H f `  	@license	Permission is hereby granted, free of charge, to any person obtaining a copy of this    I � J J �     	 @ l i c e n s e 	 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y   o f   t h i s G  K L K l     �� M N��   M k e              		software and associated documentation files (the "Software"), to deal in the Software    N � O O �                             	 	 s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l   i n   t h e   S o f t w a r e L  P Q P l     �� R S��   R o i              		without restriction, including without limitation the rights to use, copy, modify, merge,    S � T T �                             	 	 w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e , Q  U V U l     �� W X��   W p j              		publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons    X � Y Y �                             	 	 p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s V  Z [ Z l     �� \ ]��   \ f `              		to whom the Software is furnished to do so, subject to the following conditions:    ] � ^ ^ �                             	 	 t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : [  _ ` _ l     �� a b��   a                    b � c c                              `  d e d l     �� f g��   f k e              		The above copyright notice and this permission notice shall be included in all copies    g � h h �                             	 	 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n   a l l   c o p i e s e  i j i l     �� k l��   k > 8              		or substantial portions of the Software.    l � m m p                             	 	 o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . j  n o n l     �� p q��   p                    q � r r                              o  s t s l     �� u v��   u ] W              		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS    v � w w �                             	 	 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S t  x y x l     �� z {��   z a [              		OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,    { � | | �                             	 	 O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , y  } ~ } l     ��  ���    ^ X              		FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL    � � � � �                             	 	 F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N - I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L ~  � � � l     �� � ���   � ` Z              		THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER    � � � � �                             	 	 T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R �  � � � l     �� � ���   � c ]              		LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,    � � � � �                             	 	 L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , �  � � � l     �� � ���   � _ Y              		OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN    � � � � �                             	 	 O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N �  � � � l     �� � ���   � #               		THE SOFTWARE.    � � � � :                             	 	 T H E   S O F T W A R E . �  � � � l     �� � ���   �            � � � �              �  � � � l     �� � ���   � Y S  	@copyright	(c) 2008 Skeeve, ShooTerKo (found on http://hohabadu.de/?APPLESCRIPT)    � � � � �     	 @ c o p y r i g h t 	 ( c )   2 0 0 8   S k e e v e ,   S h o o T e r K o   ( f o u n d   o n   h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T ) �  � � � l     �� � ���   � + %              		[ getParent, isBusy ]    � � � � J                             	 	 [   g e t P a r e n t ,   i s B u s y   ] �  � � � l     �� � ���   � V P              		Please refer to the authors' websites for copyright information.    � � � � �                             	 	 P l e a s e   r e f e r   t o   t h e   a u t h o r s '   w e b s i t e s   f o r   c o p y r i g h t   i n f o r m a t i o n . �  � � � l     �� � ���   �        � � � �      �  � � � l     �� � ���   � 7 1  	@copyright	(c) ???? Unknown [ CheckExistence ]    � � � � b     	 @ c o p y r i g h t 	 ( c )   ? ? ? ?   U n k n o w n   [   C h e c k E x i s t e n c e   ] �  � � � l     �� � ���   �        � � � �      �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  -    � � � �  - �  � � � l     �� � ���   � @ :	@var		Name that should be used when loading this library.    � � � � t 	 @ v a r 	 	 N a m e   t h a t   s h o u l d   b e   u s e d   w h e n   l o a d i n g   t h i s   l i b r a r y . �  � � � l     �� � ���   � 	   	    � � � �      	 �  � � � j     �� ��� 0 myname myName � m      � � � � �  _ f i l e L i b �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  -    � � � �  - �  � � � l     �� � ���   � ? 9	@global	Dependencies on other libraries (some handlers).    � � � � r 	 @ g l o b a l 	 D e p e n d e n c i e s   o n   o t h e r   l i b r a r i e s   ( s o m e   h a n d l e r s ) . �  � � � l     �� � ���   � 	   	    � � � �      	 �  � � � p     � � ������ 0 _string  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  	  GENERAL    � � � �      G E N E R A L �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  --    � � � �  - - �  � � � l     �� � ��   �    CheckExistence(path)     � ,     C h e c k E x i s t e n c e ( p a t h ) �  l     ����          �       l     ��	
��  	 ) #  Check if a file or folder exists.   
 � F     C h e c k   i f   a   f i l e   o r   f o l d e r   e x i s t s .  l     ����          �       l     ����   ; 5  @param	path	[string]		Mac-like file or folder path.    � j     @ p a r a m 	 p a t h 	 [ s t r i n g ] 	 	 M a c - l i k e   f i l e   o r   f o l d e r   p a t h .  l     ����   . (  @return 			[boolean]   True if exists.    � P     @ r e t u r n   	 	 	 [ b o o l e a n ]       T r u e   i f   e x i s t s .  l     ����          �       !  l     ��"#��  " F @  @example	CheckExistence("Mac:Users:usrName:Desktop:test.txt")    # �$$ �     @ e x a m p l e 	 C h e c k E x i s t e n c e ( " M a c : U s e r s : u s r N a m e : D e s k t o p : t e s t . t x t " )  ! %&% l     ��'(��  ' ' !              		--> true or false   ( �)) B                             	 	 - - >   t r u e   o r   f a l s e& *+* l     ��,-��  , 	   	   - �..      	+ /0/ i    121 I      ��3����  0 checkexistence CheckExistence3 4��4 1      ��
�� 
ppth��  ��  2 Q     5675 k    88 9:9 4    	��;
�� 
alis; 1    ��
�� 
ppth: <��< L   
 == m   
 ��
�� boovtrue��  6 R      ������
�� .ascrerr ****      � ****��  ��  7 L    >> m    ��
�� boovfals0 ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��EF��  E  --   F �GG  - -D HIH l     ��JK��  J  	getParent(anAlias)   K �LL & 	 g e t P a r e n t ( a n A l i a s )I MNM l     ��OP��  O       P �QQ     N RSR l     ��TU��  T / )  	Get parent folder of a file or folder.   U �VV R     	 G e t   p a r e n t   f o l d e r   o f   a   f i l e   o r   f o l d e r .S WXW l     ��YZ��  Y       Z �[[     X \]\ l     ��^_��  ^ 4 .  	@param	anAlias		[alias]     File or folder.   _ �`` \     	 @ p a r a m 	 a n A l i a s 	 	 [ a l i a s ]           F i l e   o r   f o l d e r .] aba l     ��cd��  c . (  	@return				[alias]     Parent folder.   d �ee P     	 @ r e t u r n 	 	 	 	 [ a l i a s ]           P a r e n t   f o l d e r .b fgf l     ��hi��  h       i �jj     g klk l     ��mn��  m | v  	@link		Skeeve (found on 'hohabadu.de' (http://hohabadu.de/?APPLESCRIPT/Praktische-Handler/Parent-Folder-ermitteln))   n �oo �     	 @ l i n k 	 	 S k e e v e   ( f o u n d   o n   ' h o h a b a d u . d e '   ( h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T / P r a k t i s c h e - H a n d l e r / P a r e n t - F o l d e r - e r m i t t e l n ) )l pqp l     ��rs��  r       s �tt     q uvu l     ��wx��  w S M  	@example	getParent((((path to desktop) as string) & "test.txt") as alias)    x �yy �     	 @ e x a m p l e 	 g e t P a r e n t ( ( ( ( p a t h   t o   d e s k t o p )   a s   s t r i n g )   &   " t e s t . t x t " )   a s   a l i a s )  v z{z l     ��|}��  | 0 *				--> alias "Mac:Users:usrName:Desktop:"   } �~~ T 	 	 	 	 - - >   a l i a s   " M a c : U s e r s : u s r N a m e : D e s k t o p : "{ � l     ������  � 	   	   � ���      	� ��� i    
��� I      ������� 0 	getparent 	getParent� ���� o      ���� 0 analias anAlias��  ��  � Q     ���� L    �� c    ��� 4    ���
�� 
psxf� l   
������ b    
��� l   ������ n    ��� 1    �
� 
psxp� o    �~�~ 0 analias anAlias��  ��  � m    	�� ���  / . .��  ��  � m    �}
�} 
alis� R      �|��
�| .ascrerr ****      � ****� o      �{�{ 0 emsg eMsg� �z��y
�z 
errn� o      �x�x 0 enum eNum�y  � R    �w��
�w .ascrerr ****      � ****� b    ��� m    �� ��� " C a n ' t   g e t P a r e n t :  � o    �v�v 0 emsg eMsg� �u��t
�u 
errn� o    �s�s 0 enum eNum�t  � ��� l     �r�q�p�r  �q  �p  � ��� l     �o�n�m�o  �n  �m  � ��� l     �l���l  �  --   � ���  - -� ��� l     �k���k  �    	getSizeKB(posixPath)   � ��� .     	 g e t S i z e K B ( p o s i x P a t h )� ��� l     �j���j  �       � ���     � ��� l     �i���i  � ' !  	Get file or folder size in KB.   � ��� B     	 G e t   f i l e   o r   f o l d e r   s i z e   i n   K B .� ��� l     �h���h  �       � ���     � ��� l     �g���g  � B <  	@param	posixPath   [string]    File or folder posix path.   � ��� x     	 @ p a r a m 	 p o s i x P a t h       [ s t r i n g ]         F i l e   o r   f o l d e r   p o s i x   p a t h .� ��� l     �f���f  � 2 ,  	@return				[integer]   Size in kilobytes.   � ��� X     	 @ r e t u r n 	 	 	 	 [ i n t e g e r ]       S i z e   i n   k i l o b y t e s .� ��� l     �e���e  �       � ���     � ��� l     �d���d  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     �c���c  �       � ���     � ��� l     �b���b  � "   	@see		du (man1/du.1.html)   � ��� 8     	 @ s e e 	 	 d u   ( m a n 1 / d u . 1 . h t m l )� ��� l     �a���a  �  				awk (man1/awk.1.html)   � ��� 2 	 	 	 	 a w k   ( m a n 1 / a w k . 1 . h t m l )� ��� l     �`���`  �       � ���     � ��� l     �_���_  � = 7  	@example	getSizeKB(POSIX path of (path to desktop))    � ��� n     	 @ e x a m p l e 	 g e t S i z e K B ( P O S I X   p a t h   o f   ( p a t h   t o   d e s k t o p ) )  � ��� l     �^���^  �                 		--> 399068   � ��� 4                             	 	 - - >   3 9 9 0 6 8� ��� l     �]���]  � 	   	   � ���      	� ��� i    ��� I      �\��[�\ 0 	getsizekb 	getSizeKB� ��Z� o      �Y�Y 0 	posixpath 	posixPath�Z  �[  � k     C�� ��� q         �X�X 0 	posixpath 	posixPath �W�V�W 0 
sizefolder 
sizeFolder�V  � �U Q     C k    3  Q    	
	 c     4    
�T
�T 
psxf o    	�S�S 0 	posixpath 	posixPath m   
 �R
�R 
alis
 R      �Q�P�O
�Q .ascrerr ****      � ****�P  �O   R    �N�M
�N .ascrerr ****      � **** b     b     m     �  T h e   f i l e   " o    �L�L 0 	posixpath 	posixPath m     �   "   d o e s n ' t   e x i s t .�M    r    " n      1     �K
�K 
strq o    �J�J 0 	posixpath 	posixPath o      �I�I 0 	posixpath 	posixPath  r   # . !  l 	 # ,"�H�G" l  # ,#�F�E# I  # ,�D$�C
�D .sysoexecTEXT���     TEXT$ b   # (%&% b   # &'(' m   # $)) �**  d u   - s k  ( o   $ %�B�B 0 	posixpath 	posixPath& m   & '++ �,, (   |   a w k   ' { p r i n t   $ 1 } '  �C  �F  �E  �H  �G  ! o      �A�A 0 
sizefolder 
sizeFolder -�@- L   / 3.. c   / 2/0/ o   / 0�?�? 0 
sizefolder 
sizeFolder0 m   0 1�>
�> 
long�@   R      �=12
�= .ascrerr ****      � ****1 o      �<�< 0 emsg eMsg2 �;3�:
�; 
errn3 o      �9�9 0 enum eNum�:   R   ; C�845
�8 .ascrerr ****      � ****4 b   ? B676 m   ? @88 �99 " C a n ' t   g e t S i z e K B :  7 o   @ A�7�7 0 emsg eMsg5 �6:�5
�6 
errn: o   = >�4�4 0 enum eNum�5  �U  � ;<; l     �3�2�1�3  �2  �1  < =>= l     �0�/�.�0  �/  �.  > ?@? l     �-AB�-  A  --   B �CC  - -@ DED l     �,FG�,  F    	getColorLabel(theFile)   G �HH 2     	 g e t C o l o r L a b e l ( t h e F i l e )E IJI l     �+KL�+  K 	   	   L �MM      	J NON l     �*PQ�*  P X R  	Return label index (0-7) representing the current color label of a file/folder.   Q �RR �     	 R e t u r n   l a b e l   i n d e x   ( 0 - 7 )   r e p r e s e n t i n g   t h e   c u r r e n t   c o l o r   l a b e l   o f   a   f i l e / f o l d e r .O STS l     �)UV�)  U 	   	   V �WW      	T XYX l     �(Z[�(  Z I C  	@param	theFile		[alias|string]  	File or folder (Mac-like path).   [ �\\ �     	 @ p a r a m 	 t h e F i l e 	 	 [ a l i a s | s t r i n g ]     	 F i l e   o r   f o l d e r   ( M a c - l i k e   p a t h ) .Y ]^] l     �'_`�'  _ G A  	@return				[integer]       	See definition in 'setColorLabel'.   ` �aa �     	 @ r e t u r n 	 	 	 	 [ i n t e g e r ]               	 S e e   d e f i n i t i o n   i n   ' s e t C o l o r L a b e l ' .^ bcb l     �&de�&  d 	   	   e �ff      	c ghg l     �%ij�%  i M G  	@link       	ljr (http://applescript.bratis-lover.net/library/file/)   j �kk �     	 @ l i n k               	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )h lml l     �$no�$  n 	   	   o �pp      	m qrq l     �#st�#  s 1 +  	@example	getColorLabel(path to desktop)    t �uu V     	 @ e x a m p l e 	 g e t C o l o r L a b e l ( p a t h   t o   d e s k t o p )  r vwv l     �"xy�"  x                		--> 0   y �zz *                             	 	 - - >   0w {|{ l     �!}~�!  } 	   	   ~ �      	| ��� i    ��� I      � ���  0 getcolorlabel getColorLabel� ��� o      �� 0 thefile theFile�  �  � k     &�� ��� q      �� ��� 0 thefile theFile� ��� 0 res  �  � ��� Q     &���� k    �� ��� r    ��� c    ��� o    �� 0 thefile theFile� m    �
� 
alis� o      �� 0 thefile theFile� ��� O  	 ��� r    ��� n    ��� 1    �
� 
labi� o    �� 0 thefile theFile� o      �� 0 res  � m   	 
���                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� L    �� o    �� 0 res  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 emsg eMsg� ���
� 
errn� o      �� 0 enum eNum�  � R    &���
� .ascrerr ****      � ****� b   " %��� m   " #�� ��� * C a n ' t   g e t C o l o r L a b e l :  � o   # $�
�
 0 emsg eMsg� �	��
�	 
errn� o     !�� 0 enum eNum�  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     � ���   �  --   � ���  - -� ��� l     ������  � ) #  	setColorLabel(theFile, theColor)   � ��� F     	 s e t C o l o r L a b e l ( t h e F i l e ,   t h e C o l o r )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � . (  	Set the color label of a file/folder.   � ��� P     	 S e t   t h e   c o l o r   l a b e l   o f   a   f i l e / f o l d e r .� ��� l     ������  � ] W  	0 = none, 1 = orange, 2 = red, 3 = yellow, 4 = blue, 5 = purple, 6 = green, 7 = gray   � ��� �     	 0   =   n o n e ,   1   =   o r a n g e ,   2   =   r e d ,   3   =   y e l l o w ,   4   =   b l u e ,   5   =   p u r p l e ,   6   =   g r e e n ,   7   =   g r a y� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � G A  	@param	theFile		[alias|string]		File or folder (Mac-like path)   � ��� �     	 @ p a r a m 	 t h e F i l e 	 	 [ a l i a s | s t r i n g ] 	 	 F i l e   o r   f o l d e r   ( M a c - l i k e   p a t h )� ��� l     ������  � E ?  	@param	theColor	[integer|string] 	See description or source    � ��� ~     	 @ p a r a m 	 t h e C o l o r 	 [ i n t e g e r | s t r i n g ]   	 S e e   d e s c r i p t i o n   o r   s o u r c e  � ��� l     ������  � \ V  	@return				[void]          		Nothing; Error if file doesn't exist or unknown color.   � ��� �     	 @ r e t u r n 	 	 	 	 [ v o i d ]                     	 	 N o t h i n g ;   E r r o r   i f   f i l e   d o e s n ' t   e x i s t   o r   u n k n o w n   c o l o r .� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � 3 -  	@example	setColorLabel(path to desktop,1)    � ��� Z     	 @ e x a m p l e 	 s e t C o l o r L a b e l ( p a t h   t o   d e s k t o p , 1 )  � ��� l     ������  �  				--> null   � ���  	 	 	 	 - - >   n u l l� ��� l     ������  �       � ���     � ��� i    ��� I      ������� 0 setcolorlabel setColorLabel� � � o      ���� 0 thefile theFile  �� o      ���� 0 thecolor theColor��  ��  � k     �  q       ���� 0 thefile theFile ������ 0 thecolor theColor��   �� Q     �	
 k    �  r     c     o    ���� 0 thefile theFile m    ��
�� 
alis o      ���� 0 thefile theFile  P   	 ��� Z    ��� G     =    o    ���� 0 thecolor theColor m    ����   E    J      !  m    "" �##  n o   c o l o r! $��$ m    %% �&&  n o n e��   o    ���� 0 thecolor theColor r    "'(' m     ����  ( o      ���� 0 thecolor theColor )*) G   % 0+,+ =  % (-.- o   % &���� 0 thecolor theColor. m   & '���� , =  + ./0/ o   + ,���� 0 thecolor theColor0 m   , -11 �22  o r a n g e* 343 r   3 6565 m   3 4���� 6 o      ���� 0 thecolor theColor4 787 G   9 D9:9 =  9 <;<; o   9 :���� 0 thecolor theColor< m   : ;���� : =  ? B=>= o   ? @���� 0 thecolor theColor> m   @ A?? �@@  r e d8 ABA r   G JCDC m   G H���� D o      ���� 0 thecolor theColorB EFE G   M XGHG =  M PIJI o   M N���� 0 thecolor theColorJ m   N O���� H =  S VKLK o   S T���� 0 thecolor theColorL m   T UMM �NN  y e l l o wF OPO r   [ ^QRQ m   [ \���� R o      ���� 0 thecolor theColorP STS G   a lUVU =  a dWXW o   a b���� 0 thecolor theColorX m   b c���� V =  g jYZY o   g h���� 0 thecolor theColorZ m   h i[[ �\\  b l u eT ]^] r   o r_`_ m   o p���� ` o      ���� 0 thecolor theColor^ aba G   u �cdc =  u xefe o   u v���� 0 thecolor theColorf m   v w���� d =  { ~ghg o   { |���� 0 thecolor theColorh m   | }ii �jj  p u r p l eb klk r   � �mnm m   � ����� n o      ���� 0 thecolor theColorl opo G   � �qrq =  � �sts o   � ����� 0 thecolor theColort m   � ����� r =  � �uvu o   � ����� 0 thecolor theColorv m   � �ww �xx 
 g r e e np yzy r   � �{|{ m   � ����� | o      ���� 0 thecolor theColorz }~} G   � �� =  � ���� o   � ����� 0 thecolor theColor� m   � ����� � E  � ���� J   � ��� ��� m   � ��� ���  g r e y� ���� m   � ��� ���  g r a y��  � o   � ����� 0 thecolor theColor~ ���� r   � ���� m   � ����� � o      ���� 0 thecolor theColor��  ��  ��   ����
�� conscase��   ���� O  � ���� r   � ���� o   � ����� 0 thecolor theColor� n      ��� 1   � ���
�� 
labi� o   � ����� 0 thefile theFile� m   � ����                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  	 R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  
 R   � �����
�� .ascrerr ****      � ****� b   � ���� m   � ��� ��� * C a n ' t   s e t C o l o r L a b e l :  � o   � ����� 0 emsg eMsg� �����
�� 
errn� o   � ����� 0 enum eNum��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � 	   	   � ���      	� ��� l     ������  �  	FILES    � ���  	 F I L E S  � ��� l     ������  � 	   	   � ���      	� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  --   � ���  - -� ��� l     ������  �  	isBusy(aFileAlias)   � ��� & 	 i s B u s y ( a F i l e A l i a s )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � ' !  	Check if a file is being busy.   � ��� B     	 C h e c k   i f   a   f i l e   i s   b e i n g   b u s y .� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � _ Y  	@param      aFileAlias  	[alias]     	File (mac-like path as string is also possible).   � ��� �     	 @ p a r a m             a F i l e A l i a s     	 [ a l i a s ]           	 F i l e   ( m a c - l i k e   p a t h   a s   s t r i n g   i s   a l s o   p o s s i b l e ) .� ��� l     ������  � ; 5  	@return                 	[boolean]   True if busy.   � ��� j     	 @ r e t u r n                                   	 [ b o o l e a n ]       T r u e   i f   b u s y .� ��� l     ������  �  	   � ���  	� ��� l     ������  � + %	@see        	lsof (man8/lsof.8.html)   � ��� J 	 @ s e e                 	 l s o f   ( m a n 8 / l s o f . 8 . h t m l )� ��� l     ������  � � z	@link       	ShooTerKo (found on 'hohabadu.de' (http://hohabadu.de/?APPLESCRIPT/Praktische-Handler/Datei-in-Gebrauch%3F))   � ��� � 	 @ l i n k               	 S h o o T e r K o   ( f o u n d   o n   ' h o h a b a d u . d e '   ( h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T / P r a k t i s c h e - H a n d l e r / D a t e i - i n - G e b r a u c h % 3 F ) )� ��� l     ������  �       � ���     � ��� l     ������  � E ?  	@example	isBusy(((path to desktop) as string) & "test.txt")    � ��� ~     	 @ e x a m p l e 	 i s B u s y ( ( ( p a t h   t o   d e s k t o p )   a s   s t r i n g )   &   " t e s t . t x t " )  � ��� l     ������  �                		--> false   � ��� 2                             	 	 - - >   f a l s e� ��� l     ������  �       � ���     � � � i     I      ������ 0 isbusy isBusy �� o      ���� 0 
afilealias 
aFileAlias��  ��   k       Q     	�� k    

  l   ����   V P result of lsof is a list of opened files (--> see also "man lsof" in terminal)     � �   r e s u l t   o f   l s o f   i s   a   l i s t   o f   o p e n e d   f i l e s   ( - - >   s e e   a l s o   " m a n   l s o f "   i n   t e r m i n a l )    I   ����
�� .sysoexecTEXT���     TEXT b    
 m     � 
 l s o f   n    	 1    	��
�� 
strq l   ���� n     1    ��
�� 
psxp o    �� 0 
afilealias 
aFileAlias��  ��  ��   �~ l    L       m    �}
�} boovtrue   if busy    �!!    i f   b u s y�~  	 R      �|�{�z
�| .ascrerr ****      � ****�{  �z  ��   "�y" l   #$%# L    && m    �x
�x boovfals$   if idle   % �''    i f   i d l e�y    ()( l     �w�v�u�w  �v  �u  ) *+* l     �t�s�r�t  �s  �r  + ,-, l     �q./�q  . 	   	   / �00      	- 121 l     �p34�p  3    	FILENAME    4 �55      	 F I L E N A M E  2 676 l     �o89�o  8 	   	   9 �::      	7 ;<; l     �n�m�l�n  �m  �l  < =>= l     �k�j�i�k  �j  �i  > ?@? l     �hAB�h  A  --   B �CC  - -@ DED l     �gFG�g  F , &  	prefixToFileName(posixPath, prefix)   G �HH L     	 p r e f i x T o F i l e N a m e ( p o s i x P a t h ,   p r e f i x )E IJI l     �fKL�f  K 	   	   L �MM      	J NON l     �ePQ�e  P P J  	Add prefix to a file name (doesn't rename the file yet, use e.g. 'mv').   Q �RR �     	 A d d   p r e f i x   t o   a   f i l e   n a m e   ( d o e s n ' t   r e n a m e   t h e   f i l e   y e t ,   u s e   e . g .   ' m v ' ) .O STS l     �dUV�d  U 	   	   V �WW      	T XYX l     �cZ[�c  Z ( "  	@param	posixPath	[posix]		Path.   [ �\\ D     	 @ p a r a m 	 p o s i x P a t h 	 [ p o s i x ] 	 	 P a t h .Y ]^] l     �b_`�b  _ 2 ,  	@param	prefix		[text]		The prefix to add.   ` �aa X     	 @ p a r a m 	 p r e f i x 	 	 [ t e x t ] 	 	 T h e   p r e f i x   t o   a d d .^ bcb l     �ade�a  d    	@return				[text]   e �ff (     	 @ r e t u r n 	 	 	 	 [ t e x t ]c ghg l     �`ij�`  i  	   j �kk  	h lml l     �_no�_  n 9 3  	@example	prefixToFileName("~/test.pdf", "new_")    o �pp f     	 @ e x a m p l e 	 p r e f i x T o F i l e N a m e ( " ~ / t e s t . p d f " ,   " n e w _ " )  m qrq l     �^st�^  s * $              		--> "~/new_test.pdf"   t �uu H                             	 	 - - >   " ~ / n e w _ t e s t . p d f "r vwv l     �]xy�]  x 	   	   y �zz      	w {|{ l     �\}~�\  } 4 .  	@uses       	_string's rightStringFromRight   ~ � \     	 @ u s e s               	 _ s t r i n g ' s   r i g h t S t r i n g F r o m R i g h t| ��� l     �[���[  � M G  	@link       	ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k               	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     �Z���Z  � 	   	   � ���      	� ��� i    ��� I      �Y��X�Y $0 prefixtofilename prefixToFileName� ��� o      �W�W 0 	posixpath 	posixPath� ��V� o      �U�U 
0 prefix  �V  �X  � k     <�� ��� q      �� �T��T 0 	posixpath 	posixPath� �S��S 
0 prefix  � �R�Q�R 0 fn  �Q  � ��P� Q     <���� k    ,�� ��� r    ��� n   
��� I    
�O��N�O ,0 rightstringfromright rightStringFromRight� ��� o    �M�M 0 	posixpath 	posixPath� ��L� m    �� ���  /�L  �N  � o    �K�K 0 _string  � o      �J�J 0 fn  � ��� r    ��� I   �I��H
�I .corecnte****       ****� o    �G�G 0 fn  �H  � o      �F�F 0 len  � ��� r    %��� n   #��� 7   #�E��
�E 
ctxt� m    �D�D � d    "�� l   !��C�B� [    !��� o    �A�A 0 len  � m     �@�@ �C  �B  � o    �?�? 0 	posixpath 	posixPath� o      �>�> 0 	posixpath 	posixPath� ��=� L   & ,�� b   & +��� b   & )��� o   & '�<�< 0 	posixpath 	posixPath� o   ' (�;�; 
0 prefix  � o   ) *�:�: 0 fn  �=  � R      �9��
�9 .ascrerr ****      � ****� o      �8�8 0 emsg eMsg� �7��6
�7 
errn� o      �5�5 0 enum eNum�6  � R   4 <�4��
�4 .ascrerr ****      � ****� b   8 ;��� m   8 9�� ��� 0 C a n ' t   p r e f i x T o F i l e N a m e :  � o   9 :�3�3 0 emsg eMsg� �2��1
�2 
errn� o   6 7�0�0 0 enum eNum�1  �P  � ��� l     �/�.�-�/  �.  �-  � ��� l     �,�+�*�,  �+  �*  � ��� l     �)���)  �  --   � ���  - -� ��� l     �(���(  � , &  	suffixToFileName(posixPath, suffix)   � ��� L     	 s u f f i x T o F i l e N a m e ( p o s i x P a t h ,   s u f f i x )� ��� l     �'���'  � 	   	   � ���      	� ��� l     �&���&  � P J  	Add suffix to a file name (doesn't rename the file yet, use e.g. 'mv').   � ��� �     	 A d d   s u f f i x   t o   a   f i l e   n a m e   ( d o e s n ' t   r e n a m e   t h e   f i l e   y e t ,   u s e   e . g .   ' m v ' ) .� ��� l     �%���%  � 	   	   � ���      	� ��� l     �$���$  � ( "  	@param	posixPath	[posix]		Path.   � ��� D     	 @ p a r a m 	 p o s i x P a t h 	 [ p o s i x ] 	 	 P a t h .� ��� l     �#���#  � 7 1  	@param	suffix      	[text]		The suffix to add.   � ��� b     	 @ p a r a m 	 s u f f i x             	 [ t e x t ] 	 	 T h e   s u f f i x   t o   a d d .� ��� l     �"���"  � 0 *  	@return				[text]		Assembled file name.   � ��� T     	 @ r e t u r n 	 	 	 	 [ t e x t ] 	 	 A s s e m b l e d   f i l e   n a m e .� ��� l     �!���!  �  	   � ���  	� ��� l     � ���   � . (  	@uses		_string's rightStringFromRight   � ��� P     	 @ u s e s 	 	 _ s t r i n g ' s   r i g h t S t r i n g F r o m R i g h t�    l     ��   G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)    � �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )  l     ��    	    �		  	 

 l     ��   9 3  	@example	suffixToFileName("~/test.pdf", "_old")     � f     	 @ e x a m p l e 	 s u f f i x T o F i l e N a m e ( " ~ / t e s t . p d f " ,   " _ o l d " )    l     ��   * $              		--> "~/test_old.pdf"    � H                             	 	 - - >   " ~ / t e s t _ o l d . p d f "  l     ��          �       i    " I      ��� $0 suffixtofilename suffixToFileName  o      �� 0 	posixpath 	posixPath  �  o      �� 
0 suffix  �  �   k     Z!! "#" q      $$ �%� 0 	posixpath 	posixPath% �&� 
0 suffix  & �'� 0 ext  ' ��� 0 fn  �  # (�( Q     Z)*+) k    J,, -.- r    /0/ n   
121 I    
�3�� ,0 rightstringfromright rightStringFromRight3 454 o    �� 0 	posixpath 	posixPath5 6�6 m    77 �88  /�  �  2 o    �� 0 _string  0 o      �
�
 0 fn  . 9:9 r    ;<; m    == �>>  < o      �	�	 0 ext  : ?@? r    ABA m    ��  B o      �� 0 len  @ CDC Z    2EF��E E    GHG o    �� 0 fn  H m    II �JJ  .F k    .KK LML r    &NON b    $PQP m    RR �SS  .Q n   #TUT I    #�V�� ,0 rightstringfromright rightStringFromRightV WXW o    �� 0 fn  X Y� Y m    ZZ �[[  .�   �  U o    ���� 0 _string  O o      ���� 0 ext  M \��\ r   ' .]^] I  ' ,��_��
�� .corecnte****       ****_ o   ' (���� 0 ext  ��  ^ o      ���� 0 len  ��  �  �  D `a` r   3 Cbcb n  3 Aded 7  4 A��fg
�� 
ctxtf m   8 :���� g d   ; @hh l  < ?i����i [   < ?jkj o   < =���� 0 len  k m   = >���� ��  ��  e o   3 4���� 0 	posixpath 	posixPathc o      ���� 0 	posixpath 	posixPatha l��l L   D Jmm b   D Inon b   D Gpqp o   D E���� 0 	posixpath 	posixPathq o   E F���� 
0 suffix  o o   G H���� 0 ext  ��  * R      ��rs
�� .ascrerr ****      � ****r o      ���� 0 emsg eMsgs ��t��
�� 
errnt o      ���� 0 enum eNum��  + R   R Z��uv
�� .ascrerr ****      � ****u b   V Ywxw m   V Wyy �zz 0 C a n ' t   s u f f i x T o F i l e N a m e :  x o   W X���� 0 emsg eMsgv ��{��
�� 
errn{ o   T U���� 0 enum eNum��  �   |}| l     ��������  ��  ��  } ~~ l     ��������  ��  ��   ��� l     ������  �  --   � ���  - -� ��� l     ������  � 5 /  	replaceInFileName(posixPath, oldStr, newStr)   � ��� ^     	 r e p l a c e I n F i l e N a m e ( p o s i x P a t h ,   o l d S t r ,   n e w S t r )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � R L  	Replace text in a file name (doesn't rename the file yet, use e.g. 'mv').   � ��� �     	 R e p l a c e   t e x t   i n   a   f i l e   n a m e   ( d o e s n ' t   r e n a m e   t h e   f i l e   y e t ,   u s e   e . g .   ' m v ' ) .� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � ( "  	@param	posixPath	[posix]		Path.   � ��� D     	 @ p a r a m 	 p o s i x P a t h 	 [ p o s i x ] 	 	 P a t h .� ��� l     ������  � 2 ,  	@param	oldStr		[text]		String to replace.   � ��� X     	 @ p a r a m 	 o l d S t r 	 	 [ t e x t ] 	 	 S t r i n g   t o   r e p l a c e .� ��� l     ������  � 3 -  	@param	newStr		[text]		Replacement string.   � ��� Z     	 @ p a r a m 	 n e w S t r 	 	 [ t e x t ] 	 	 R e p l a c e m e n t   s t r i n g .� ��� l     ������  � ) #  	@return				[text]		New filename.   � ��� F     	 @ r e t u r n 	 	 	 	 [ t e x t ] 	 	 N e w   f i l e n a m e .� ��� l     ������  �  	   � ���  	� ��� l     ������  � , &	@uses		_string's rightStringFromRight   � ��� L 	 @ u s e s 	 	 _ s t r i n g ' s   r i g h t S t r i n g F r o m R i g h t� ��� l     ������  � ! 				_string's replaceString   � ��� 6 	 	 	 	 _ s t r i n g ' s   r e p l a c e S t r i n g� ��� l     ������  �  				_string's explode   � ��� * 	 	 	 	 _ s t r i n g ' s   e x p l o d e� ��� l     ������  �  				_string's implode   � ��� * 	 	 	 	 _ s t r i n g ' s   i m p l o d e� ��� l     ������  � K E	@link       	ljr (http://applescript.bratis-lover.net/library/file/)   � ��� � 	 @ l i n k               	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     ������  �  	   � ���  	� ��� l     ������  � F @  	@example	replaceInFileName("~/test_old.pdf", "_old", "_new")    � ��� �     	 @ e x a m p l e 	 r e p l a c e I n F i l e N a m e ( " ~ / t e s t _ o l d . p d f " ,   " _ o l d " ,   " _ n e w " )  � ��� l     ������  � * $              		--> "~/test_new.pdf"   � ��� H                             	 	 - - >   " ~ / t e s t _ n e w . p d f "� ��� l     ������  �       � ���     � ��� i   # &��� I      ������� &0 replaceinfilename replaceInFileName� ��� o      ���� 0 	posixpath 	posixPath� ��� o      ���� 0 oldstr oldStr� ���� o      ���� 0 newstr newStr��  ��  � k     ��� ��� q      �� ����� 0 	posixpath 	posixPath� ����� 0 oldstr oldStr� ����� 0 newstr newStr� ����� 0 fn  � ������ 0 ext  ��  � ���� Q     ����� k    p�� ��� r    ��� n   
��� I    
������� ,0 rightstringfromright rightStringFromRight� ��� o    ���� 0 	posixpath 	posixPath� ���� m       �  /��  ��  � o    ���� 0 _string  � o      ���� 0 fn  �  r     I   ����
�� .corecnte****       **** o    ���� 0 fn  ��   o      ���� 0 len    r    	
	 m     �  
 o      ���� 0 ext    Z    M���� E     o    ���� 0 fn   m     �  . k    I  r    ( n   & I     &������ 0 explode    m     ! �    . !��! o   ! "���� 0 fn  ��  ��   o     ���� 0 _string   o      ���� 0 fn   "#" r   ) /$%$ n  ) -&'& 4   * -��(
�� 
cobj( m   + ,������' o   ) *���� 0 fn  % o      ���� 0 ext  # )*) r   0 C+,+ n  0 A-.- I   1 A��/���� 0 implode  / 010 m   1 222 �33  .1 4��4 n  2 =565 7  3 =��78
�� 
cobj7 m   7 9���� 8 m   : <������6 o   2 3���� 0 fn  ��  ��  . o   0 1���� 0 _string  , o      ���� 0 fn  * 9��9 r   D I:;: b   D G<=< m   D E>> �??  .= o   E F���� 0 ext  ; o      ���� 0 ext  ��  ��  ��   @A@ r   N XBCB n  N VDED I   O V��F���� 0 replacestring replaceStringF GHG o   O P���� 0 fn  H IJI o   P Q���� 0 oldstr oldStrJ K��K o   Q R���� 0 newstr newStr��  ��  E o   N O���� 0 _string  C o      ���� 0 fn  A LML r   Y iNON n  Y gPQP 7  Z g��RS
�� 
ctxtR m   ^ `���� S d   a fTT l  b eU����U [   b eVWV o   b c���� 0 len  W m   c d���� ��  ��  Q o   Y Z���� 0 	posixpath 	posixPathO o      ���� 0 	posixpath 	posixPathM X��X L   j pYY b   j oZ[Z b   j m\]\ o   j k���� 0 	posixpath 	posixPath] o   k l���� 0 fn  [ o   m n���� 0 ext  ��  � R      ��^_
�� .ascrerr ****      � ****^ o      ���� 0 emsg eMsg_ ��`��
�� 
errn` o      ���� 0 enum eNum��  � R   x ��ab
� .ascrerr ****      � ****a b   ~ �cdc m   ~ �ee �ff 2 C a n ' t   r e p l a c e I n F i l e N a m e :  d o   � ��~�~ 0 emsg eMsgb �}g�|
�} 
errng o   | }�{�{ 0 enum eNum�|  ��  � hih l     �z�y�x�z  �y  �x  i jkj l     �w�v�u�w  �v  �u  k lml l     �tno�t  n       o �pp     m qrq l     �sst�s  s    READ   t �uu      R E A Dr vwv l     �rxy�r  x       y �zz     w {|{ l     �q�p�o�q  �p  �o  | }~} l     �n�m�l�n  �m  �l  ~ � l     �k���k  �  --   � ���  - -� ��� l     �j���j  �    	readFile(theFile)   � ��� (     	 r e a d F i l e ( t h e F i l e )� ��� l     �i���i  � 	   	   � ���      	� ��� l     �h���h  �    	Read data from a file.   � ��� 2     	 R e a d   d a t a   f r o m   a   f i l e .� ��� l     �g���g  � 	   	   � ���      	� ��� l     �f���f  � F @  	@param	theFile		[string|alias]  	The file as string or alias.   � ��� �     	 @ p a r a m 	 t h e F i l e 	 	 [ s t r i n g | a l i a s ]     	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .� ��� l     �e���e  � ( "  	@return                 	[text]   � ��� D     	 @ r e t u r n                                   	 [ t e x t ]� ��� l     �d���d  �  	   � ���  	� ��� l     �c���c  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     �b���b  �  	   � ���  	� ��� l     �a���a  � E ?  	@example	readFile((path to desktop as string) & "test.txt")    � ��� ~     	 @ e x a m p l e 	 r e a d F i l e ( ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . t x t " )  � ��� l     �`���`  � ' !              		--> "test - test"   � ��� B                             	 	 - - >   " t e s t   -   t e s t "� ��� l     �_���_  �       � ���     � ��� i   ' *��� I      �^��]�^ 0 readfile readFile� ��\� o      �[�[ 0 thefile theFile�\  �]  � k     #�� ��� q      �� �Z��Z 0 thefile theFile� �Y�X�Y 0 thetext theText�X  � ��W� Q     #���� k    �� ��� r    ��� c    ��� o    �V�V 0 thefile theFile� m    �U
�U 
alis� o      �T�T 0 thefile theFile� ��� r   	 ��� I  	 �S��R
�S .rdwrread****        ****� o   	 
�Q�Q 0 thefile theFile�R  � o      �P�P 0 thetext theText� ��O� L    �� o    �N�N 0 thetext theText�O  � R      �M��
�M .ascrerr ****      � ****� o      �L�L 0 emsg eMsg� �K��J
�K 
errn� o      �I�I 0 enum eNum�J  � R    #�H��
�H .ascrerr ****      � ****� b    "��� m     �� ���   C a n ' t   r e a d F i l e :  � o     !�G�G 0 emsg eMsg� �F��E
�F 
errn� o    �D�D 0 enum eNum�E  �W  � ��� l     �C�B�A�C  �B  �A  � ��� l     �@�?�>�@  �?  �>  � ��� l     �=���=  �  --   � ���  - -� ��� l     �<���<  �    	readList(theFile)   � ��� (     	 r e a d L i s t ( t h e F i l e )� ��� l     �;���;  � 	   	   � ���      	� ��� l     �:���:  � . (  	Read an AppleScript list from a file.   � ��� P     	 R e a d   a n   A p p l e S c r i p t   l i s t   f r o m   a   f i l e .� � � l     �9�9   	   	    �      	   l     �8�8   D >  	@param	theFile		[string|alias]	The file as string or alias.    � |     	 @ p a r a m 	 t h e F i l e 	 	 [ s t r i n g | a l i a s ] 	 T h e   f i l e   a s   s t r i n g   o r   a l i a s . 	
	 l     �7�7      	@return	list    �      	 @ r e t u r n 	 l i s t
  l     �6�6    	    �  	  l     �5�5   E ?	@link		ljr (http://applescript.bratis-lover.net/library/file/)    � ~ 	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )  l     �4�4    	    �  	  l     �3 �3   F @  	@example	readList((path to desktop as string) & "test.list")      �!! �     	 @ e x a m p l e 	 r e a d L i s t ( ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . l i s t " )   "#" l     �2$%�2  $ #               		--> {1, 2, 3}   % �&& :                             	 	 - - >   { 1 ,   2 ,   3 }# '(' l     �1)*�1  )       * �++     ( ,-, i   + ../. I      �00�/�0 0 readlist readList0 1�.1 o      �-�- 0 thefile theFile�.  �/  / k     %22 343 q      55 �,6�, 0 thefile theFile6 �+�*�+ 0 thelist theList�*  4 7�)7 Q     %89:8 k    ;; <=< r    >?> c    @A@ o    �(�( 0 thefile theFileA m    �'
�' 
alis? o      �&�& 0 thefile theFile= BCB r   	 DED I  	 �%FG
�% .rdwrread****        ****F o   	 
�$�$ 0 thefile theFileG �#H�"
�# 
as  H m    �!
�! 
list�"  E o      � �  0 thelist theListC I�I L    JJ o    �� 0 thelist theList�  9 R      �KL
� .ascrerr ****      � ****K o      �� 0 emsg eMsgL �M�
� 
errnM o      �� 0 enum eNum�  : R    %�NO
� .ascrerr ****      � ****N b   ! $PQP m   ! "RR �SS   C a n ' t   r e a d L i s t :  Q o   " #�� 0 emsg eMsgO �T�
� 
errnT o     �� 0 enum eNum�  �)  - UVU l     ����  �  �  V WXW l     ����  �  �  X YZY l     �[\�  [  --   \ �]]  - -Z ^_^ l     �`a�  `    	readUTF8(theFile)   a �bb (     	 r e a d U T F 8 ( t h e F i l e )_ cdc l     �ef�  e 	   	   f �gg      	d hih l     �
jk�
  j 4 .  	Read text from a file using utf-8 encoding.   k �ll \     	 R e a d   t e x t   f r o m   a   f i l e   u s i n g   u t f - 8   e n c o d i n g .i mnm l     �	op�	  o 	   	   p �qq      	n rsr l     �tu�  t F @  	@param	theFile		[string|alias]  	The file as string or alias.   u �vv �     	 @ p a r a m 	 t h e F i l e 	 	 [ s t r i n g | a l i a s ]     	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .s wxw l     �yz�  y    	@return				[string]   z �{{ ,     	 @ r e t u r n 	 	 	 	 [ s t r i n g ]x |}| l     �~�  ~  	    ���  	} ��� l     ����  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     ����  �  	   � ���  	� ��� l     ����  � E ?  	@example	readUTF8((path to desktop as string) & "test.txt")    � ��� ~     	 @ e x a m p l e 	 r e a d U T F 8 ( ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . t x t " )  � ��� l     ����  � %               		--> "test-test"   � ��� >                             	 	 - - >   " t e s t - t e s t "� ��� l     ����  �       � ���     � ��� i   / 2��� I      � ����  0 readutf8 readUTF8� ���� o      ���� 0 thefile theFile��  ��  � k     %�� ��� q      �� ����� 0 thefile theFile� ������ 0 thetext theText��  � ���� Q     %���� k    �� ��� r    ��� c    ��� o    ���� 0 thefile theFile� m    ��
�� 
alis� o      ���� 0 thefile theFile� ��� r   	 ��� I  	 ����
�� .rdwrread****        ****� o   	 
���� 0 thefile theFile� �����
�� 
as  � m    ��
�� 
utf8��  � o      ���� 0 thetext theText� ���� L    �� o    ���� 0 thetext theText��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  � R    %����
�� .ascrerr ****      � ****� b   ! $��� m   ! "�� ���   C a n ' t   r e a d U T F 8 :  � o   " #���� 0 emsg eMsg� �����
�� 
errn� o     ���� 0 enum eNum��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  --   � ���  - -� ��� l     ������  �  	readWinFile(theFile)   � ��� * 	 r e a d W i n F i l e ( t h e F i l e )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � G A  	Read text from a file using ISO Latin 1 encoding (MS Windows).   � ��� �     	 R e a d   t e x t   f r o m   a   f i l e   u s i n g   I S O   L a t i n   1   e n c o d i n g   ( M S   W i n d o w s ) .� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � A ;  	@param	theFile		[string|alias]	Mac-like string or alias.   � ��� v     	 @ p a r a m 	 t h e F i l e 	 	 [ s t r i n g | a l i a s ] 	 M a c - l i k e   s t r i n g   o r   a l i a s .� ��� l     ������  �    	@return				[string]   � ��� ,     	 @ r e t u r n 	 	 	 	 [ s t r i n g ]� ��� l     ������  �  	   � ���  	� ��� l     ������  � ( "  	@see		iconv (man1/iconv.1.html)   � ��� D     	 @ s e e 	 	 i c o n v   ( m a n 1 / i c o n v . 1 . h t m l )� ��� l     ������  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     ������  �  	   � ���  	� ��� l     �� ��    I C  	@example 	readWinFile((path to desktop as string) & "test.csv")     � �     	 @ e x a m p l e   	 r e a d W i n F i l e ( ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . c s v " )  �  l     ����   , &              		--> "test;test2;test3"    � L                             	 	 - - >   " t e s t ; t e s t 2 ; t e s t 3 " 	 l     ��
��  
        �     	  i   3 6 I      ������ 0 readwinfile readWinFile �� o      ���� 0 thefile theFile��  ��   k     -  q       ���� 0 thefile theFile ������ 0 thetext theText��   �� Q     - k      r      c    !"! o    ���� 0 thefile theFile" m    ��
�� 
alis  o      ���� 0 thefile theFile #$# r   	 %&% n   	 '(' 1    ��
�� 
strq( l  	 )����) n   	 *+* 1   
 ��
�� 
psxp+ o   	 
���� 0 thefile theFile��  ��  & o      ���� 0 thefile theFile$ ,-, r    ./. l   0����0 I   ��1��
�� .sysoexecTEXT���     TEXT1 b    232 m    44 �55 ( i c o n v   - f   L 1   - t   U T F 8  3 o    ���� 0 thefile theFile��  ��  ��  / o      ���� 0 thetext theText- 6��6 L    77 o    ���� 0 thetext theText��   R      ��89
�� .ascrerr ****      � ****8 o      ���� 0 emsg eMsg9 ��:��
�� 
errn: o      ���� 0 enum eNum��   R   % -��;<
�� .ascrerr ****      � ****; b   ) ,=>= m   ) *?? �@@ & C a n ' t   r e a d W i n F i l e :  > o   * +���� 0 emsg eMsg< ��A��
�� 
errnA o   ' (���� 0 enum eNum��  ��   BCB l     ��������  ��  ��  C DED l     ��������  ��  ��  E FGF l     ��������  ��  ��  G HIH l     ��JK��  J  	   K �LL  	I MNM l     ��OP��  O    	WRITE   P �QQ      	 W R I T EN RSR l     ��TU��  T  	   U �VV  	S WXW l     ��������  ��  ��  X YZY l     ��������  ��  ��  Z [\[ l     ��]^��  ] 	 --	   ^ �__  - - 	\ `a` l     ��bc��  b 2 ,  	writeToFile(theText, theFile, boolAppend)   c �dd X     	 w r i t e T o F i l e ( t h e T e x t ,   t h e F i l e ,   b o o l A p p e n d )a efe l     ��gh��  g 	   	   h �ii      	f jkj l     ��lm��  l    	Write text to a file.   m �nn 0     	 W r i t e   t e x t   t o   a   f i l e .k opo l     ��qr��  q 	   	   r �ss      	p tut l     ��vw��  v 7 1  	@param	theText			[string]			The text to write.   w �xx b     	 @ p a r a m 	 t h e T e x t 	 	 	 [ s t r i n g ] 	 	 	 T h e   t e x t   t o   w r i t e .u yzy l     ��{|��  { E ?  	@param	theFile			[string|alias]	The file as string or alias.   | �}} ~     	 @ p a r a m 	 t h e F i l e 	 	 	 [ s t r i n g | a l i a s ] 	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .z ~~ l     ������  � E ?  	@param	boolAppend		[boolean]       	True or false to append?   � ��� ~     	 @ p a r a m 	 b o o l A p p e n d 	 	 [ b o o l e a n ]               	 T r u e   o r   f a l s e   t o   a p p e n d ? ��� l     ������  � V P  	@return                 		[void]          	Nothing; Raises error if problems.   � ��� �     	 @ r e t u r n                                   	 	 [ v o i d ]                     	 N o t h i n g ;   R a i s e s   e r r o r   i f   p r o b l e m s .� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   � ��� �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )� ��� l     ������  � 	   	   � ���      	� ��� l     ������  � ^ X  	@example	writeToFile("test - test", (path to desktop as string) & "test.txt", false)    � ��� �     	 @ e x a m p l e 	 w r i t e T o F i l e ( " t e s t   -   t e s t " ,   ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . t x t " ,   f a l s e )  � ��� l     ������  � + %              		--> error if problems   � ��� J                             	 	 - - >   e r r o r   i f   p r o b l e m s� ��� l     ������  �       � ���     � ��� i   7 :��� I      ������� 0 writetofile writeToFile� ��� o      ���� 0 thetext theText� ��� o      ���� 0 thefile theFile� ���� o      ���� 0 
boolappend 
boolAppend��  ��  � k     `�� ��� q      �� ����� 0 thetext theText� ����� 0 thefile theFile� ����� 0 
boolappend 
boolAppend� ������ 0 otf  ��  � ���� Q     `���� k    7�� ��� r    ��� c    ��� o    �� 0 thefile theFile� m    �~
�~ 
TEXT� o      �}�} 0 thefile theFile� ��� r   	 ��� I  	 �|��
�| .rdwropenshor       file� 4   	 �{�
�{ 
file� o    �z�z 0 thefile theFile� �y��x
�y 
perm� m    �w
�w boovtrue�x  � o      �v�v 0 otf  � ��� Z   '���u�t� =   ��� o    �s�s 0 
boolappend 
boolAppend� m    �r
�r boovfals� I   #�q��
�q .rdwrseofnull���     ****� o    �p�p 0 otf  � �o��n
�o 
set2� m    �m�m  �n  �u  �t  � ��� I  ( 1�l��
�l .rdwrwritnull���     ****� o   ( )�k�k 0 thetext theText� �j��
�j 
refn� o   * +�i�i 0 otf  � �h��g
�h 
wrat� m   , -�f
�f rdwreof �g  � ��e� I  2 7�d��c
�d .rdwrclosnull���     ****� o   2 3�b�b 0 otf  �c  �e  � R      �a��
�a .ascrerr ****      � ****� o      �`�` 0 emsg eMsg� �_��^
�_ 
errn� o      �]�] 0 enum eNum�^  � k   ? `�� ��� Q   ? S���\� I  B J�[��Z
�[ .rdwrclosnull���     ****� 4   B F�Y�
�Y 
file� o   D E�X�X 0 otf  �Z  � R      �W�V�U
�W .ascrerr ****      � ****�V  �U  �\  � ��T� R   T `�S��
�S .ascrerr ****      � ****� b   Z _��� m   Z ]�� ��� & C a n ' t   w r i t e T o F i l e :  � o   ] ^�R�R 0 emsg eMsg� �Q��P
�Q 
errn� o   X Y�O�O 0 enum eNum�P  �T  ��  � ��� l     �N�M�L�N  �M  �L  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H���H  �  --   � ���  - -� ��� l     �G���G  � * $  	writeListToFile(theList, theFile)   � ��� H     	 w r i t e L i s t T o F i l e ( t h e L i s t ,   t h e F i l e )� ��� l     �F���F  � 	   	   � �	 	       	� 			 l     �E		�E  	 - '  	Write an AppleScript list to a file.   	 �		 N     	 W r i t e   a n   A p p l e S c r i p t   l i s t   t o   a   f i l e .	 			 l     �D			�D  	 	   	   		 �	
	
      		 			 l     �C		�C  	 ? 9  	@param	theList		[list]			An AppleScript list to write.   	 �		 r     	 @ p a r a m 	 t h e L i s t 	 	 [ l i s t ] 	 	 	 A n   A p p l e S c r i p t   l i s t   t o   w r i t e .	 			 l     �B		�B  	 F @  	@param	theFile		[string|alias]  	The file as string or alias.   	 �		 �     	 @ p a r a m 	 t h e F i l e 	 	 [ s t r i n g | a l i a s ]     	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .	 			 l     �A		�A  	 G A  	@return				[void]          	Nothing; Raises error if problems.   	 �		 �     	 @ r e t u r n 	 	 	 	 [ v o i d ]                     	 N o t h i n g ;   R a i s e s   e r r o r   i f   p r o b l e m s .	 			 l     �@		�@  	 	   	   	 �		      		 		 	 l     �?	!	"�?  	! M G  	@link       	ljr (http://applescript.bratis-lover.net/library/file/)   	" �	#	# �     	 @ l i n k               	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )	  	$	%	$ l     �>	&	'�>  	& 	   	   	' �	(	(      		% 	)	*	) l     �=	+	,�=  	+ V P  	@example	writeListToFile({1, 2, 3}, (path to desktop as text) & "test.list")    	, �	-	- �     	 @ e x a m p l e 	 w r i t e L i s t T o F i l e ( { 1 ,   2 ,   3 } ,   ( p a t h   t o   d e s k t o p   a s   t e x t )   &   " t e s t . l i s t " )  	* 	.	/	. l     �<	0	1�<  	0 + %              		--> error if problems   	1 �	2	2 J                             	 	 - - >   e r r o r   i f   p r o b l e m s	/ 	3	4	3 l     �;	5	6�;  	5       	6 �	7	7     	4 	8	9	8 i   ; >	:	;	: I      �:	<�9�: "0 writelisttofile writeListToFile	< 	=	>	= o      �8�8 0 thelist theList	> 	?�7	? o      �6�6 0 thefile theFile�7  �9  	; k     U	@	@ 	A	B	A q      	C	C �5	D�5 0 thelist theList	D �4	E�4 0 thefile theFile	E �3�2�3 0 otf  �2  	B 	F�1	F Q     U	G	H	I	G k    /	J	J 	K	L	K r    	M	N	M c    	O	P	O o    �0�0 0 thefile theFile	P m    �/
�/ 
ctxt	N o      �.�. 0 thefile theFile	L 	Q	R	Q r   	 	S	T	S I  	 �-	U	V
�- .rdwropenshor       file	U 4   	 �,	W
�, 
file	W o    �+�+ 0 thefile theFile	V �*	X�)
�* 
perm	X m    �(
�( boovtrue�)  	T o      �'�' 0 otf  	R 	Y	Z	Y I   �&	[	\
�& .rdwrseofnull���     ****	[ o    �%�% 0 otf  	\ �$	]�#
�$ 
set2	] m    �"�"  �#  	Z 	^	_	^ I   )�!	`	a
�! .rdwrwritnull���     ****	` o    � �  0 thelist theList	a �	b	c
� 
refn	b o     !�� 0 otf  	c �	d	e
� 
wrat	d m   " #�
� rdwreof 	e �	f�
� 
as  	f m   $ %�
� 
list�  	_ 	g�	g I  * /�	h�
� .rdwrclosnull���     ****	h o   * +�� 0 otf  �  �  	H R      �	i	j
� .ascrerr ****      � ****	i o      �� 0 emsg eMsg	j �	k�
� 
errn	k o      �� 0 enum eNum�  	I k   7 U	l	l 	m	n	m Q   7 H	o	p�	o I  : ?�	q�
� .rdwrclosnull���     ****	q o   : ;�� 0 otf  �  	p R      ��
�	
� .ascrerr ****      � ****�
  �	  �  	n 	r�	r R   I U�	s	t
� .ascrerr ****      � ****	s b   O T	u	v	u m   O R	w	w �	x	x . C a n ' t   w r i t e L i s t T o F i l e :  	v o   R S�� 0 emsg eMsg	t �	y�
� 
errn	y o   M N�� 0 enum eNum�  �  �1  	9 	z	{	z l     ��� �  �  �   	{ 	|	}	| l     ��������  ��  ��  	} 	~		~ l     ��	�	���  	�  --   	� �	�	�  - -	 	�	�	� l     ��	�	���  	� 6 0  	writeUTF8ToFile(theText, theFile, boolAppend)   	� �	�	� `     	 w r i t e U T F 8 T o F i l e ( t h e T e x t ,   t h e F i l e ,   b o o l A p p e n d )	� 	�	�	� l     ��	�	���  	� 	   	   	� �	�	�      		� 	�	�	� l     ��	�	���  	� 3 -  	Write text to a file using utf-8 encoding.   	� �	�	� Z     	 W r i t e   t e x t   t o   a   f i l e   u s i n g   u t f - 8   e n c o d i n g .	� 	�	�	� l     ��	�	���  	� 	   	   	� �	�	�      		� 	�	�	� l     ��	�	���  	� ; 5  	@param	theText     		[text]          	Text to use.   	� �	�	� j     	 @ p a r a m 	 t h e T e x t           	 	 [ t e x t ]                     	 T e x t   t o   u s e .	� 	�	�	� l     ��	�	���  	� K E  	@param	theFile     		[string|alias]  	The file as string or alias.   	� �	�	� �     	 @ p a r a m 	 t h e F i l e           	 	 [ s t r i n g | a l i a s ]     	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .	� 	�	�	� l     ��	�	���  	� E ?  	@param	boolAppend		[boolean]       	True or false to append?   	� �	�	� ~     	 @ p a r a m 	 b o o l A p p e n d 	 	 [ b o o l e a n ]               	 T r u e   o r   f a l s e   t o   a p p e n d ?	� 	�	�	� l     ��	�	���  	� H B  	@return					[void]          	Nothing; Raises error if problems.   	� �	�	� �     	 @ r e t u r n 	 	 	 	 	 [ v o i d ]                     	 N o t h i n g ;   R a i s e s   e r r o r   i f   p r o b l e m s .	� 	�	�	� l     ��	�	���  	�       	� �	�	�     	� 	�	�	� l     ��	�	���  	� L F  @link       	ljr (http://applescript.bratis-lover.net/library/file/)   	� �	�	� �     @ l i n k               	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )	� 	�	�	� l     ��	�	���  	�       	� �	�	�     	� 	�	�	� l     ��	�	���  	� ^ X  @example	writeUTF8ToFile("test-test", (path to desktop as string) & "test.txt", true)    	� �	�	� �     @ e x a m p l e 	 w r i t e U T F 8 T o F i l e ( " t e s t - t e s t " ,   ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . t x t " ,   t r u e )  	� 	�	�	� l     ��	�	���  	� + %              		--> error if problems   	� �	�	� J                             	 	 - - >   e r r o r   i f   p r o b l e m s	� 	�	�	� l     ��	�	���  	�       	� �	�	�     	� 	�	�	� i   ? B	�	�	� I      ��	����� "0 writeutf8tofile writeUTF8ToFile	� 	�	�	� o      ���� 0 thetext theText	� 	�	�	� o      ���� 0 thefile theFile	� 	���	� o      ���� 0 
boolappend 
boolAppend��  ��  	� k     \	�	� 	�	�	� q      	�	� ��	��� 0 thetext theText	� ��	��� 0 thefile theFile	� ��	��� 0 
boolappend 
boolAppend	� ������ 0 otf  ��  	� 	���	� Q     \	�	�	�	� k    6	�	� 	�	�	� r    	�	�	� c    	�	�	� o    ���� 0 thefile theFile	� m    ��
�� 
TEXT	� o      ���� 0 thefile theFile	� 	�	�	� r   	 	�	�	� I  	 ��	�	�
�� .rdwropenshor       file	� o   	 
���� 0 thefile theFile	� ��	���
�� 
perm	� m    ��
�� boovtrue��  	� o      ���� 0 otf  	� 	�	�	� Z   $	�	�����	� =   	�	�	� o    ���� 0 
boolappend 
boolAppend	� m    ��
�� boovfals	� I    ��	�	�
�� .rdwrseofnull���     ****	� o    ���� 0 otf  	� ��	���
�� 
set2	� m    ����  ��  ��  ��  	� 	�	�	� I  % 0��	�	�
�� .rdwrwritnull���     ****	� l  % &	�����	� o   % &���� 0 thetext theText��  ��  	� ��	�	�
�� 
refn	� o   ' (���� 0 otf  	� ��	�	�
�� 
wrat	� m   ) *��
�� rdwreof 	� ��	���
�� 
as  	� m   + ,��
�� 
utf8��  	� 	���	� I  1 6��
 ��
�� .rdwrclosnull���     ****
  o   1 2���� 0 otf  ��  ��  	� R      ��


�� .ascrerr ****      � ****
 o      ���� 0 emsg eMsg
 ��
��
�� 
errn
 o      ���� 0 enum eNum��  	� k   > \

 


 Q   > O

��
 I  A F��
	��
�� .rdwrclosnull���     ****
	 o   A B���� 0 otf  ��  
 R      ������
�� .ascrerr ****      � ****��  ��  ��  
 

��

 R   P \��


�� .ascrerr ****      � ****
 b   V [


 m   V Y

 �

 . C a n ' t   w r i t e U T F 8 T o F i l e :  
 o   Y Z���� 0 emsg eMsg
 ��
��
�� 
errn
 o   T U���� 0 enum eNum��  ��  ��  	� 


 l     ��������  ��  ��  
 


 l     ��������  ��  ��  
 


 l     ��

��  
  --   
 �

  - -
 


 l     ��

��  
 3 -  	writeWinFile(theText, theFile, boolAppend)   
 �

 Z     	 w r i t e W i n F i l e ( t h e T e x t ,   t h e F i l e ,   b o o l A p p e n d )
 
 
!
  l     ��
"
#��  
" 	   	   
# �
$
$      	
! 
%
&
% l     ��
'
(��  
' ] W  	Write text to a file using ISO Latin-1 encoding and CRLF line endings (MS Windows);    
( �
)
) �     	 W r i t e   t e x t   t o   a   f i l e   u s i n g   I S O   L a t i n - 1   e n c o d i n g   a n d   C R L F   l i n e   e n d i n g s   ( M S   W i n d o w s ) ;  
& 
*
+
* l     ��
,
-��  
, 8 2  	A CRLF is automatically appended to the output.   
- �
.
. d     	 A   C R L F   i s   a u t o m a t i c a l l y   a p p e n d e d   t o   t h e   o u t p u t .
+ 
/
0
/ l     ��
1
2��  
1 	   	   
2 �
3
3      	
0 
4
5
4 l     ��
6
7��  
6 ; 5  	@param	theText     		[text]          	Text to use.   
7 �
8
8 j     	 @ p a r a m 	 t h e T e x t           	 	 [ t e x t ]                     	 T e x t   t o   u s e .
5 
9
:
9 l     ��
;
<��  
; K E  	@param	theFile     		[string|alias]  	The file as string or alias.   
< �
=
= �     	 @ p a r a m 	 t h e F i l e           	 	 [ s t r i n g | a l i a s ]     	 T h e   f i l e   a s   s t r i n g   o r   a l i a s .
: 
>
?
> l     ��
@
A��  
@ F @  	@param	boolAppend  	[boolean]       	True or false to append?   
A �
B
B �     	 @ p a r a m 	 b o o l A p p e n d     	 [ b o o l e a n ]               	 T r u e   o r   f a l s e   t o   a p p e n d ?
? 
C
D
C l     ��
E
F��  
E H B  	@return					[void]          	Nothing; Raises error if problems.   
F �
G
G �     	 @ r e t u r n 	 	 	 	 	 [ v o i d ]                     	 N o t h i n g ;   R a i s e s   e r r o r   i f   p r o b l e m s .
D 
H
I
H l     ��
J
K��  
J       
K �
L
L     
I 
M
N
M l     ��
O
P��  
O - '  	@see        	echo (man1/echo.1.html)   
P �
Q
Q N     	 @ s e e                 	 e c h o   ( m a n 1 / e c h o . 1 . h t m l )
N 
R
S
R l     ��
T
U��  
T / )              		iconv (man1/iconv.1.html)   
U �
V
V R                             	 	 i c o n v   ( m a n 1 / i c o n v . 1 . h t m l )
S 
W
X
W l     ��
Y
Z��  
Y       
Z �
[
[     
X 
\
]
\ l     ��
^
_��  
^ G A  	@link		ljr (http://applescript.bratis-lover.net/library/file/)   
_ �
`
` �     	 @ l i n k 	 	 l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / f i l e / )
] 
a
b
a l     ��
c
d��  
c       
d �
e
e     
b 
f
g
f l     ��
h
i��  
h ] W  	@example	writeWinFile("���\r����", (path to desktop as string) & "test.txt", false)    
i �
j
j �     	 @ e x a m p l e 	 w r i t e W i n F i l e ( " � � � \ r � � � � " ,   ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " t e s t . t x t " ,   f a l s e )  
g 
k
l
k l     ��
m
n��  
m + %              		--> error if problems   
n �
o
o J                             	 	 - - >   e r r o r   i f   p r o b l e m s
l 
p
q
p l     ��
r
s��  
r       
s �
t
t     
q 
u
v
u i   C F
w
x
w I      ��
y���� 0 writewinfile writeWinFile
y 
z
{
z o      ���� 0 thetext theText
{ 
|
}
| o      ���� 0 thefile theFile
} 
~��
~ o      ���� 0 
boolappend 
boolAppend��  ��  
x k     l

 
�
�
� q      
�
� ��
��� 0 thetext theText
� ��
��� 0 thefile theFile
� ��
��� 0 astid ASTID
� ��
��� 0 
boolappend 
boolAppend
� ������ 0 redir reDir��  
� 
�
�
� r     
�
�
� n    
�
�
� 1    ��
�� 
txdl
� 1     ��
�� 
ascr
� o      ���� 0 astid ASTID
� 
���
� Q    l
�
�
�
� k   	 R
�
� 
�
�
� r   	 
�
�
� n   	 
�
�
� 2  
 ��
�� 
cpar
� o   	 
���� 0 thetext theText
� o      ���� 0 thetext theText
� 
�
�
� r    
�
�
� m    
�
� �
�
�  

� n     
�
�
� 1    ��
�� 
txdl
� 1    ��
�� 
ascr
� 
�
�
� l   
�
�
�
� r    
�
�
� b    
�
�
� l   
����
� c    
�
�
� o    �~�~ 0 thetext theText
� m    �}
�} 
ctxt��  �  
� m    
�
� �
�
�  

� o      �|�| 0 thetext theText
�   \n added by shell   
� �
�
� $   \ n   a d d e d   b y   s h e l l
� 
�
�
� r    "
�
�
� o    �{�{ 0 astid ASTID
� n     
�
�
� 1    !�z
�z 
txdl
� 1    �y
�y 
ascr
� 
�
�
� r   # &
�
�
� m   # $
�
� �
�
�  >
� o      �x�x 0 redir reDir
� 
�
�
� Z  ' 2
�
��w�v
� o   ' (�u�u 0 
boolappend 
boolAppend
� r   + .
�
�
� m   + ,
�
� �
�
�  > >
� o      �t�t 0 redir reDir�w  �v  
� 
�
�
� r   3 :
�
�
� n   3 8
�
�
� 1   6 8�s
�s 
strq
� l  3 6
��r�q
� n   3 6
�
�
� 1   4 6�p
�p 
psxp
� o   3 4�o�o 0 thefile theFile�r  �q  
� o      �n�n 0 thefile theFile
� 
�
�
� r   ; @
�
�
� n   ; >
�
�
� 1   < >�m
�m 
strq
� o   ; <�l�l 0 thetext theText
� o      �k�k 0 thetext theText
� 
��j
� I  A R�i
��h
�i .sysoexecTEXT���     TEXT
� b   A N
�
�
� b   A L
�
�
� b   A J
�
�
� b   A H
�
�
� m   A B
�
� �
�
�  / b i n / b a s h   - c  
� n   B G
�
�
� 1   E G�g
�g 
strq
� l  B E
��f�e
� b   B E
�
�
� m   B C
�
� �
�
� 
 e c h o  
� o   C D�d�d 0 thetext theText�f  �e  
� l 	 H I
��c�b
� m   H I
�
� �
�
� ( | i c o n v   - f   U T F 8   - t   L 1�c  �b  
� o   J K�a�a 0 redir reDir
� o   L M�`�` 0 thefile theFile�h  �j  
� R      �_
�
�
�_ .ascrerr ****      � ****
� o      �^�^ 0 emsg eMsg
� �]
��\
�] 
errn
� o      �[�[ 0 enum eNum�\  
� k   Z l
�
� 
�
�
� r   Z _
�
�
� o   Z [�Z�Z 0 astid ASTID
� n     
�
�
� 1   \ ^�Y
�Y 
txdl
� 1   [ \�X
�X 
ascr
� 
��W
� R   ` l�V
�
�
�V .ascrerr ****      � ****
� b   f k
�
�
� m   f i
�
� �
�
� ( C a n ' t   w r i t e W i n F i l e :  
� o   i j�U�U 0 emsg eMsg
� �T
��S
�T 
errn
� o   d e�R�R 0 enum eNum�S  �W  ��  
v 
�
�
� l     �Q�P�O�Q  �P  �O  
� 
��N
� l     �M�L�K�M  �L  �K  �N       �J
� �
�
� 	
�J  
� �I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�I 0 myname myName�H  0 checkexistence CheckExistence�G 0 	getparent 	getParent�F 0 	getsizekb 	getSizeKB�E 0 getcolorlabel getColorLabel�D 0 setcolorlabel setColorLabel�C 0 isbusy isBusy�B $0 prefixtofilename prefixToFileName�A $0 suffixtofilename suffixToFileName�@ &0 replaceinfilename replaceInFileName�? 0 readfile readFile�> 0 readlist readList�= 0 readutf8 readUTF8�< 0 readwinfile readWinFile�; 0 writetofile writeToFile�: "0 writelisttofile writeListToFile�9 "0 writeutf8tofile writeUTF8ToFile�8 0 writewinfile writeWinFile
� �72�6�5�4�7  0 checkexistence CheckExistence�6 �3�3   �2
�2 
ppth�5   �1
�1 
ppth �0�/�.
�0 
alis�/  �.  �4  *�E/EOeW 	X  f
� �-��,�+�*�- 0 	getparent 	getParent�, �)�)   �(�( 0 analias anAlias�+   �'�&�%�' 0 analias anAlias�& 0 emsg eMsg�% 0 enum eNum �$�#��"�!� �
�$ 
psxf
�# 
psxp
�" 
alis�! 0 emsg eMsg ���
� 
errn� 0 enum eNum�  
�  
errn�*  *��,�%/�&W X  )�l�%  ������ 0 	getsizekb 	getSizeKB� ��   �� 0 	posixpath 	posixPath�   ����� 0 	posixpath 	posixPath� 0 
sizefolder 
sizeFolder� 0 emsg eMsg� 0 enum eNum �����)+����
8
� 
psxf
� 
alis�  �  
� 
strq
� .sysoexecTEXT���     TEXT
� 
long� 0 emsg eMsg �	��
�	 
errn� 0 enum eNum�  
�
 
errn� D 5 *�/�&W X  )j�%�%O��,E�O�%�%j 	E�O��&W X  )��l�% ������ 0 getcolorlabel getColorLabel� ��   �� 0 thefile theFile�   � �������  0 thefile theFile�� 0 res  �� 0 emsg eMsg�� 0 enum eNum ����������
�� 
alis
�� 
labi�� 0 emsg eMsg ������
�� 
errn�� 0 enum eNum��  
�� 
errn� ' ��&E�O� ��,E�UO�W X  )�l�% ����������� 0 setcolorlabel setColorLabel�� �� ��    ������ 0 thefile theFile�� 0 thecolor theColor��   ���������� 0 thefile theFile�� 0 thecolor theColor�� 0 emsg eMsg�� 0 enum eNum ��"%��1?M��[��i��w���������!���
�� 
alis
�� 
bool�� �� �� �� 
�� 
labi�� 0 emsg eMsg! ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� � ɠ�&E�Og� ��j 
 
��lv��& jE�Y ��k 
 �� �& kE�Y ��l 
 �� �& lE�Y l�m 
 �� �& mE�Y X�� 
 �� �& �E�Y D�� 
 �� �& �E�Y 0�� 
 �� �& �E�Y �� 
 �a lv��& �E�Y hVOa  	��a ,FUW X  )a �la �% ������"#���� 0 isbusy isBusy�� ��$�� $  ���� 0 
afilealias 
aFileAlias��  " ���� 0 
afilealias 
aFileAlias# ����������
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT��  ��  ��  ��,�,%j OeW X  hOf �������%&���� $0 prefixtofilename prefixToFileName�� ��'�� '  ������ 0 	posixpath 	posixPath�� 
0 prefix  ��  % �������������� 0 	posixpath 	posixPath�� 
0 prefix  �� 0 fn  �� 0 len  �� 0 emsg eMsg�� 0 enum eNum& 	�����������(����� 0 _string  �� ,0 rightstringfromright rightStringFromRight
�� .corecnte****       ****
�� 
ctxt�� 0 emsg eMsg( ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� = .���l+ E�O�j E�O�[�\[Zk\Z�k'2E�O��%�%W X  )�l�% ������)*���� $0 suffixtofilename suffixToFileName�� ��+�� +  ������ 0 	posixpath 	posixPath�� 
0 suffix  ��  ) ���������������� 0 	posixpath 	posixPath�� 
0 suffix  �� 0 ext  �� 0 fn  �� 0 len  �� 0 emsg eMsg�� 0 enum eNum* ��7��=IRZ������,��y�� 0 _string  �� ,0 rightstringfromright rightStringFromRight
�� .corecnte****       ****
�� 
ctxt�� 0 emsg eMsg, ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� [ L���l+ E�O�E�OjE�O�� ����l+ %E�O�j E�Y hO�[�\[Zk\Z�k'2E�O��%�%W X 	 
)�l�% �������-.���� &0 replaceinfilename replaceInFileName�� ��/�� /  �������� 0 	posixpath 	posixPath�� 0 oldstr oldStr�� 0 newstr newStr��  - ������������������ 0 	posixpath 	posixPath�� 0 oldstr oldStr�� 0 newstr newStr�� 0 fn  �� 0 ext  �� 0 len  �� 0 emsg eMsg�� 0 enum eNum. �� ��������2����>������0��e�� 0 _string  �� ,0 rightstringfromright rightStringFromRight
�� .corecnte****       ****�� 0 explode  
�� 
cobj������ 0 implode  �� 0 replacestring replaceString
�� 
ctxt�� 0 emsg eMsg0 ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� � r���l+ E�O�j E�O�E�O�� /��l+ E�O��i/E�O��[�\[Zk\Z�2l+ E�O�%E�Y hO����m+ E�O�[�\[Zk\Z�k'2E�O��%�%W X  )a �la �% �������12���� 0 readfile readFile�� ��3�� 3  ���� 0 thefile theFile��  1 ������~�� 0 thefile theFile�� 0 thetext theText� 0 emsg eMsg�~ 0 enum eNum2 �}�|�{4�z�
�} 
alis
�| .rdwrread****        ****�{ 0 emsg eMsg4 �y�x�w
�y 
errn�x 0 enum eNum�w  
�z 
errn�� $ ��&E�O�j E�O�W X  )�l�% �v/�u�t56�s�v 0 readlist readList�u �r7�r 7  �q�q 0 thefile theFile�t  5 �p�o�n�m�p 0 thefile theFile�o 0 thelist theList�n 0 emsg eMsg�m 0 enum eNum6 �l�k�j�i�h8�gR
�l 
alis
�k 
as  
�j 
list
�i .rdwrread****        ****�h 0 emsg eMsg8 �f�e�d
�f 
errn�e 0 enum eNum�d  
�g 
errn�s & ��&E�O���l E�O�W X  )�l�%	 �c��b�a9:�`�c 0 readutf8 readUTF8�b �_;�_ ;  �^�^ 0 thefile theFile�a  9 �]�\�[�Z�] 0 thefile theFile�\ 0 thetext theText�[ 0 emsg eMsg�Z 0 enum eNum: �Y�X�W�V�U<�T�
�Y 
alis
�X 
as  
�W 
utf8
�V .rdwrread****        ****�U 0 emsg eMsg< �S�R�Q
�S 
errn�R 0 enum eNum�Q  
�T 
errn�` & ��&E�O���l E�O�W X  )�l�%
 �P�O�N=>�M�P 0 readwinfile readWinFile�O �L?�L ?  �K�K 0 thefile theFile�N  = �J�I�H�G�J 0 thefile theFile�I 0 thetext theText�H 0 emsg eMsg�G 0 enum eNum> 	�F�E�D4�C�B@�A?
�F 
alis
�E 
psxp
�D 
strq
�C .sysoexecTEXT���     TEXT�B 0 emsg eMsg@ �@�?�>
�@ 
errn�? 0 enum eNum�>  
�A 
errn�M . ��&E�O��,�,E�O�%j E�O�W X  )�l�% �=��<�;AB�:�= 0 writetofile writeToFile�< �9C�9 C  �8�7�6�8 0 thetext theText�7 0 thefile theFile�6 0 
boolappend 
boolAppend�;  A �5�4�3�2�1�0�5 0 thetext theText�4 0 thefile theFile�3 0 
boolappend 
boolAppend�2 0 otf  �1 0 emsg eMsg�0 0 enum eNumB �/�.�-�,�+�*�)�(�'�&�%�$�#D�"�!� �
�/ 
TEXT
�. 
file
�- 
perm
�, .rdwropenshor       file
�+ 
set2
�* .rdwrseofnull���     ****
�) 
refn
�( 
wrat
�' rdwreof �& 
�% .rdwrwritnull���     ****
�$ .rdwrclosnull���     ****�# 0 emsg eMsgD ���
� 
errn� 0 enum eNum�  �"  �!  
�  
errn�: a 9��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j W (X   *�/j W X  hO)a �la �% �	;��EF�� "0 writelisttofile writeListToFile� �G� G  ��� 0 thelist theList� 0 thefile theFile�  E ������ 0 thelist theList� 0 thefile theFile� 0 otf  � 0 emsg eMsg� 0 enum eNumF �������
�	�������H�� ��	w
� 
ctxt
� 
file
� 
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
�
 
refn
�	 
wrat
� rdwreof 
� 
as  
� 
list� 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� 0 emsg eMsgH ������
�� 
errn�� 0 enum eNum��  �  �   
�� 
errn� V 1��&E�O*�/�el E�O��jl O������� O�j W %X   
�j W X  hO)a �la �% ��	�����IJ���� "0 writeutf8tofile writeUTF8ToFile�� ��K�� K  �������� 0 thetext theText�� 0 thefile theFile�� 0 
boolappend 
boolAppend��  I �������������� 0 thetext theText�� 0 thefile theFile�� 0 
boolappend 
boolAppend�� 0 otf  �� 0 emsg eMsg�� 0 enum eNumJ ����������������������������L������

�� 
TEXT
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof 
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 emsg eMsgL ������
�� 
errn�� 0 enum eNum��  ��  ��  
�� 
errn�� ] 8��&E�O��el E�O�f  ��jl Y hO������� O�j W %X   
�j W X  hO)a �la �% ��
x����MN���� 0 writewinfile writeWinFile�� ��O�� O  �������� 0 thetext theText�� 0 thefile theFile�� 0 
boolappend 
boolAppend��  M ���������������� 0 thetext theText�� 0 thefile theFile�� 0 
boolappend 
boolAppend�� 0 astid ASTID�� 0 redir reDir�� 0 emsg eMsg�� 0 enum eNumN ������
���
�
�
�����
�
�
�����P��
�
�� 
ascr
�� 
txdl
�� 
cpar
�� 
ctxt
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 emsg eMsgP ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� m��,E�O N��-E�O���,FO��&�%E�O���,FO�E�O� �E�Y hO��,�,E�O��,E�O��%�,%�%�%�%j W X  ���,FO)a �la �%ascr  ��ޭ