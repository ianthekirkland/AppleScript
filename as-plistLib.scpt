FasdUAS 1.101.10   ��   ��    k             l      ��  ��   	�	�-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----c-                                                                               PROPERTY LIST LIBRARY-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----d-- Last modification date:                                                              25.06.2011


Create, read from, write to and add keys to property list files.

--m-- http://applescript.bratis-lover.net/library/plist/

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----c-                                                                                                   COPYRIGHT-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

COPYRIGHT (c) 2009 ljr (http://applescript.bratis-lover.net) 
                                [ all handlers ]
Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in the 
Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON 
INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS 
BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN 
ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --     � 	 	  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - - c -                                                                                                                                                               P R O P E R T Y   L I S T   L I B R A R Y  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - d - -   L a s t   m o d i f i c a t i o n   d a t e :                                                                                                                             2 5 . 0 6 . 2 0 1 1  
 
 
 C r e a t e ,   r e a d   f r o m ,   w r i t e   t o   a n d   a d d   k e y s   t o   p r o p e r t y   l i s t   f i l e s . 
 
  - - m - -   h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / 
 
  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - - c -                                                                                                                                                                                                       C O P Y R I G H T  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 
 
 C O P Y R I G H T   ( c )   2 0 0 9   l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t )   
                                                                 [   a l l   h a n d l e r s   ] 
  P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y   o f   
 t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l   i n   t h e   
 S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y , 
 m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e , 
 a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e 
 f o l l o w i n g   c o n d i t i o n s :   T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n   a l l   
 c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e .   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D , 
 E X P R E S S   O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   
 M E R C H A N T A B I L I T Y ,   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N   
 I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   
 B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R   L I A B I L I T Y ,   W H E T H E R   I N   A N   
 A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M ,   O U T   O F   O R   I N   
 C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N   T H E 
 S O F T W A R E . 
 
 
 - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 
 - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -     
  
 l     ��������  ��  ��        l     ��  ��    l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --     �   �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -      l     ��  ��    s mc-                                                                                                 PROPERTIES     �   � c -                                                                                                                                                                                                   P R O P E R T I E S      l     ��  ��    l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --     �   �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -      l     ��������  ��  ��        l     ��������  ��  ��         l     �� ! "��   !  c--   property myName    " � # # * c - -       p r o p e r t y   m y N a m e    $ % $ l     �� & '��   & ? 9d--   Name that should be used when loading this library.    ' � ( ( r d - -       N a m e   t h a t   s h o u l d   b e   u s e d   w h e n   l o a d i n g   t h i s   l i b r a r y . %  ) * ) j     �� +�� 0 myname myName + m      , , � - -  _ p l i s t L i b *  . / . l     ��������  ��  ��   /  0 1 0 l     ��������  ��  ��   1  2 3 2 l     �� 4 5��   4 l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    5 � 6 6 �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 3  7 8 7 l     �� 9 :��   9 t nc-                                                                                                   READ KEYS    : � ; ; � c -                                                                                                                                                                                                       R E A D   K E Y S 8  < = < l     �� > ?��   > l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    ? � @ @ �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - =  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E ' !c--   readKey(posixPath, keyname)    F � G G B c - -       r e a d K e y ( p o s i x P a t h ,   k e y n a m e ) D  H I H l     �� J K��   J 9 3d--   Read value of existing key in existing plist.    K � L L f d - -       R e a d   v a l u e   o f   e x i s t i n g   k e y   i n   e x i s t i n g   p l i s t . I  M N M l     �� O P��   O 5 /a--   posixPath : string -- posix path to plist    P � Q Q ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s t N  R S R l     �� T U��   T A ;a--   keyname : string -- name of property (case-sensitive)    U � V V v a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   p r o p e r t y   ( c a s e - s e n s i t i v e ) S  W X W l     �� Y Z��   Y % r--    anything -- value of key    Z � [ [ > r - -         a n y t h i n g   - -   v a l u e   o f   k e y X  \ ] \ l     �� ^ _��   ^ I Cx--   readKey(thePListPath, "User Email") --> value of key in plist    _ � ` ` � x - -       r e a d K e y ( t h e P L i s t P a t h ,   " U s e r   E m a i l " )   - - >   v a l u e   o f   k e y   i n   p l i s t ]  a b a l     �� c d��   c D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)    d � e e | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / ) b  f g f i     h i h I      �� j���� 0 readkey readKey j  k l k o      ���� 0 	posixpath 	posixPath l  m�� m o      ���� 0 keyname  ��  ��   i k     2 n n  o p o q       q q �� r�� 0 	posixpath 	posixPath r �� s�� 0 keyname   s ������ 0 val  ��   p  t�� t Q     2 u v w u k    " x x  y z y O     { | { O     } ~ } O      �  r     � � � n     � � � 1    ��
�� 
valL � 4    �� �
�� 
plii � o    ���� 0 keyname   � o      ���� 0 val   � 1    ��
�� 
pcnt ~ 4    �� �
�� 
plif � o   	 
���� 0 	posixpath 	posixPath | m     � ��                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   z  ��� � L     " � � o     !���� 0 val  ��   v R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 emsg eMsg � �� ���
�� 
errn � o      ���� 0 enum eNum��   w R   * 2�� � �
�� .ascrerr ****      � **** � b   . 1 � � � m   . / � � � � �  C a n ' t   r e a d K e y :   � o   / 0���� 0 emsg eMsg � �� ���
�� 
errn � o   , -���� 0 enum eNum��  ��   g  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 6 0c--   readSubKey(posixPath, keyname, subKeyName)    � � � � ` c - -       r e a d S u b K e y ( p o s i x P a t h ,   k e y n a m e ,   s u b K e y N a m e ) �  � � � l     �� � ���   � O Id--   Read sub-value of existing value of existing key in existing plist.    � � � � � d - -       R e a d   s u b - v a l u e   o f   e x i s t i n g   v a l u e   o f   e x i s t i n g   k e y   i n   e x i s t i n g   p l i s t . �  � � � l     �� � ���   � 5 /a--   posixPath : string -- posix path to plist    � � � � ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s t �  � � � l     �� � ���   � A ;a--   keyname : string -- name of property (case-sensitive)    � � � � v a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   p r o p e r t y   ( c a s e - s e n s i t i v e ) �  � � � l     �� � ���   � 3 -a--   subKeyName : string -- (case-sensitive)    � � � � Z a - -       s u b K e y N a m e   :   s t r i n g   - -   ( c a s e - s e n s i t i v e ) �  � � � l     �� � ���   � ) #r--    anything -- value of sub-key    � � � � F r - -         a n y t h i n g   - -   v a l u e   o f   s u b - k e y �  � � � l     �� � ���   � V Px--   readSubKey(posixPath, "Rec", "Icecream") --> sub-key value of key in plist    � � � � � x - -       r e a d S u b K e y ( p o s i x P a t h ,   " R e c " ,   " I c e c r e a m " )   - - >   s u b - k e y   v a l u e   o f   k e y   i n   p l i s t �  � � � l     �� � ���   � D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)    � � � � | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / ) �  � � � i    
 � � � I      �� ����� 0 
readsubkey 
readSubKey �  � � � o      ���� 0 	posixpath 	posixPath �  � � � o      ���� 0 keyname   �  ��� � o      ���� 0 
subkeyname 
subKeyName��  ��   � k     7 � �  � � � q       � � �� ��� 0 	posixpath 	posixPath � �� ��� 0 keyname   � �� ��� 0 
subkeyname 
subKeyName � ������ 0 val  ��   �  ��� � Q     7 � � � � k    % � �  � � � O    " � � � O    ! � � � O      � � � r     � � � n     � � � 1    ��
�� 
valL � n     � � � 4    �� �
�� 
plii � l 
   ����� � o    ���� 0 
subkeyname 
subKeyName��  ��   � 4    �� �
�� 
plii � o    ���� 0 keyname   � o      ���� 0 val   � 1    ��
�� 
pcnt � 4    �� �
�� 
plif � o   	 
���� 0 	posixpath 	posixPath � m     � ��                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��� � L   # % � � o   # $���� 0 val  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 emsg eMsg � �� ���
�� 
errn � o      ���� 0 enum eNum��   � R   - 7�� � �
�� .ascrerr ****      � **** � b   1 6 � � � b   1 4 � � � m   1 2 � � � � � $ C a n ' t   r e a d S u b K e y :   � o   2 3���� 0 emsg eMsg � o   4 5���� 0 enum eNum � �� ���
�� 
errn � o   / 0���� 0 enum eNum��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    � � � � �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - �  � � � l     �� � ���   � s mc-                                                                                                 WRITE KEYS    � �   � c -                                                                                                                                                                                                   W R I T E   K E Y S �  l     ����   l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    � �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  l     ��������  ��  ��   	 l     ��
��  
 0 *c--   setKey(posixPath, keyname, keyValue)    � T c - -       s e t K e y ( p o s i x P a t h ,   k e y n a m e ,   k e y V a l u e )	  l     ����   8 2d--   Set value of existing key in existing plist.    � d d - -       S e t   v a l u e   o f   e x i s t i n g   k e y   i n   e x i s t i n g   p l i s t .  l     ����   5 /a--   posixPath : string -- posix path to plist    � ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s t  l     ����   A ;a--   keyname : string -- name of property (case-sensitive)    � v a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   p r o p e r t y   ( c a s e - s e n s i t i v e )  l     ����    a--   keyValue : anything    �   2 a - -       k e y V a l u e   :   a n y t h i n g !"! l     ��#$��  #  r--    nothing   $ �%%  r - -         n o t h i n g" &'& l     ��()��  ( Y Sx--   setKey(thePListPath, "Rec", {|IceCream|:true}) --> key value in plist changed   ) �** � x - -       s e t K e y ( t h e P L i s t P a t h ,   " R e c " ,   { | I c e C r e a m | : t r u e } )   - - >   k e y   v a l u e   i n   p l i s t   c h a n g e d' +,+ l     �-.�  - D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)   . �// | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / ), 010 i    232 I      �~4�}�~ 0 setkey setKey4 565 o      �|�| 0 	posixpath 	posixPath6 787 o      �{�{ 0 keyname  8 9�z9 o      �y�y 0 keyvalue keyValue�z  �}  3 k     1:: ;<; q      == �x>�x 0 	posixpath 	posixPath> �w?�w 0 keyname  ? �v�u�v 0 keyvalue keyValue�u  < @�t@ Q     1ABCA O    DED O    FGF O    HIH r    JKJ o    �s�s 0 keyvalue keyValueK n      LML 1    �r
�r 
valLM 4    �qN
�q 
pliiN o    �p�p 0 keyname  I 1    �o
�o 
pcntG 4    �nO
�n 
plifO o   	 
�m�m 0 	posixpath 	posixPathE m    PP�                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  B R      �lQR
�l .ascrerr ****      � ****Q o      �k�k 0 emsg eMsgR �jS�i
�j 
errnS o      �h�h 0 enum eNum�i  C R   ' 1�gTU
�g .ascrerr ****      � ****T b   + 0VWV b   + .XYX m   + ,ZZ �[[  C a n ' t   s e t K e y :  Y o   , -�f�f 0 emsg eMsgW o   . /�e�e 0 enum eNumU �d\�c
�d 
errn\ o   ) *�b�b 0 enum eNum�c  �t  1 ]^] l     �a�`�_�a  �`  �_  ^ _`_ l     �^ab�^  a B <c--   setSubKey(posixPath, keyname, subKeyName, subKeyValue)   b �cc x c - -       s e t S u b K e y ( p o s i x P a t h ,   k e y n a m e ,   s u b K e y N a m e ,   s u b K e y V a l u e )` ded l     �]fg�]  f N Hd--   Set sub-value of existing value of existing key in existing plist.   g �hh � d - -       S e t   s u b - v a l u e   o f   e x i s t i n g   v a l u e   o f   e x i s t i n g   k e y   i n   e x i s t i n g   p l i s t .e iji l     �\kl�\  k 5 /a--   posixPath : string -- posix path to plist   l �mm ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s tj non l     �[pq�[  p A ;a--   keyname : string -- name of property (case-sensitive)   q �rr v a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   p r o p e r t y   ( c a s e - s e n s i t i v e )o sts l     �Zuv�Z  u 3 -a--   subKeyName : string -- (case-sensitive)   v �ww Z a - -       s u b K e y N a m e   :   s t r i n g   - -   ( c a s e - s e n s i t i v e )t xyx l     �Yz{�Y  z " a--   subKeyValue : anything   { �|| 8 a - -       s u b K e y V a l u e   :   a n y t h i n gy }~} l     �X��X    r--    nothing   � ���  r - -         n o t h i n g~ ��� l     �W���W  � c ]x--   setSubKey(posixPath, "Rec", "IceCream", false)--> sub-key value in key in plist changed   � ��� � x - -       s e t S u b K e y ( p o s i x P a t h ,   " R e c " ,   " I c e C r e a m " ,   f a l s e ) - - >   s u b - k e y   v a l u e   i n   k e y   i n   p l i s t   c h a n g e d� ��� l     �V���V  � D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)   � ��� | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / )� ��� i    ��� I      �U��T�U 0 	setsubkey 	setSubKey� ��� o      �S�S 0 	posixpath 	posixPath� ��� o      �R�R 0 keyname  � ��� o      �Q�Q 0 
subkeyname 
subKeyName� ��P� o      �O�O 0 subkeyvalue subKeyValue�P  �T  � k     2�� ��� q      �� �N��N 0 	posixpath 	posixPath� �M��M 0 keyname  � �L��L 0 subkeyvalue subKeyValue� �K�J�K 0 
subkeyname 
subKeyName�J  � ��I� Q     2���� O    "��� O    !��� O     ��� r    ��� o    �H�H 0 subkeyvalue subKeyValue� n      ��� 1    �G
�G 
valL� n    ��� 4    �F�
�F 
plii� l 
  ��E�D� o    �C�C 0 
subkeyname 
subKeyName�E  �D  � 4    �B�
�B 
plii� o    �A�A 0 keyname  � 1    �@
�@ 
pcnt� 4    �?�
�? 
plif� o   	 
�>�> 0 	posixpath 	posixPath� m    ���                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � R      �=��
�= .ascrerr ****      � ****� o      �<�< 0 emsg eMsg� �;��:
�; 
errn� o      �9�9 0 enum eNum�:  � R   * 2�8��
�8 .ascrerr ****      � ****� b   . 1��� m   . /�� ��� " C a n ' t   s e t S u b K e y :  � o   / 0�7�7 0 emsg eMsg� �6��5
�6 
errn� o   , -�4�4 0 enum eNum�5  �I  � ��� l     �3�2�1�3  �2  �1  � ��� l     �0���0  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��� l     �/���/  � u oc-                                                                                                     ADD KEYS   � ��� � c -                                                                                                                                                                                                           A D D   K E Y S� ��� l     �.���.  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��� l     �-�,�+�-  �,  �+  � ��� l     �*���*  � 0 *c--   addKey(posixPath, keyname, keyValue)   � ��� T c - -       a d d K e y ( p o s i x P a t h ,   k e y n a m e ,   k e y V a l u e )� ��� l     �)���)  � P Jd--   Add property item to existing plist. Case of key name is preserved.    � ��� � d - -       A d d   p r o p e r t y   i t e m   t o   e x i s t i n g   p l i s t .   C a s e   o f   k e y   n a m e   i s   p r e s e r v e d .  � ��� l     �(���(  � O Id--   Case is not preserved for subkeys in records unless properly piped.   � ��� � d - -       C a s e   i s   n o t   p r e s e r v e d   f o r   s u b k e y s   i n   r e c o r d s   u n l e s s   p r o p e r l y   p i p e d .� ��� l     �'���'  � - 'd--   (Consider using addKey2 instead!)   � ��� N d - -       ( C o n s i d e r   u s i n g   a d d K e y 2   i n s t e a d ! )� ��� l     �&���&  � 5 /a--   posixPath : string -- posix path to plist   � ��� ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s t� ��� l     �%���%  � 4 .a--   keyname : string -- name of new property   � ��� \ a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   n e w   p r o p e r t y� ��� l     �$���$  �  a--   keyValue : anything   � ��� 2 a - -       k e y V a l u e   :   a n y t h i n g� ��� l     �#���#  �  r--    nothing   � ���  r - -         n o t h i n g� ��� l     �"���"  � | vx--   addKey(POSIX path of (path to desktop as string) & "newPlist.plist", "NewKey", {"ABC", 33}) --> new key in plist   � ��� � x - -       a d d K e y ( P O S I X   p a t h   o f   ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " n e w P l i s t . p l i s t " ,   " N e w K e y " ,   { " A B C " ,   3 3 } )   - - >   n e w   k e y   i n   p l i s t� ��� l     �! �!    D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)    � | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / )�  i     I      � ��  0 addkey addKey 	 o      �� 0 	posixpath 	posixPath	 

 o      �� 0 keyname   � o      �� 0 keyvalue keyValue�  �   k     �  q       �� 0 	posixpath 	posixPath �� 0 keyname   ��� 0 keyvalue keyValue�    q       �� 0 newstr newStr �� 	0 chars   �� 0 lst   �� 0 scpt   �� 0 oldstr oldStr ��� 0 astid ASTID�    r      n      1    �
� 
txdl  1     �
� 
ascr o      �� 0 astid ASTID !�! Q    �"#$" k   	 �%% &'& l  	 	�()�  ( : 4escape backslashes and pipes in the identifier-to-be   ) �** h e s c a p e   b a c k s l a s h e s   a n d   p i p e s   i n   t h e   i d e n t i f i e r - t o - b e' +,+ r   	 -.- c   	 /0/ o   	 
�
�
 0 keyname  0 m   
 �	
�	 
TEXT. o      �� 0 keyname  , 121 X    _3�43 k   ( Z55 676 r   ( 8898 o   ( )�� 	0 chars  9 J      :: ;<; o      �� 0 oldstr oldStr< =�= o      �� 0 newstr newStr�  7 >�> Z   9 Z?@�� ? E  9 <ABA o   9 :���� 0 keyname  B o   : ;���� 0 oldstr oldStr@ k   ? VCC DED r   ? DFGF o   ? @���� 0 oldstr oldStrG n     HIH 1   A C��
�� 
txdlI 1   @ A��
�� 
ascrE JKJ r   E JLML n  E HNON 2  F H��
�� 
citmO o   E F���� 0 keyname  M o      ���� 0 lst  K PQP r   K PRSR o   K L���� 0 newstr newStrS n     TUT 1   M O��
�� 
txdlU 1   L M��
�� 
ascrQ V��V r   Q VWXW c   Q TYZY o   Q R���� 0 lst  Z m   R S��
�� 
TEXTX o      ���� 0 keyname  ��  �  �   �  � 	0 chars  4 J    [[ \]\ J    ^^ _`_ m    aa �bb  \` c��c m    dd �ee  \ \��  ] f��f J    gg hih m    jj �kk  |i l��l m    mm �nn  \ |��  ��  2 opo r   ` gqrq b   ` ests b   ` cuvu m   ` aww �xx  |v o   a b���� 0 keyname  t m   c dyy �zz  |r o      ���� 0 keyname  p {|{ r   h m}~} o   h i���� 0 astid ASTID~ n     � 1   j l��
�� 
txdl� 1   i j��
�� 
ascr| ��� r   n ���� b   n ���� b   n ���� b   n }��� b   n {��� b   n w��� b   n s��� b   n q��� m   n o�� ��� j s c r i p t  	 o n   f n ( p o s i x P a t h , k e y V a l u e )  	 	 t e l l   a p p l i c a t i o n  � l 	 o p������ m   o p�� ���   " S y s t e m   E v e n t s " ��  ��  � m   q r�� ��� J 	 	 	 t e l l   p r o p e r t y   l i s t   f i l e   p o s i x P a t h � l 	 s v������ m   s v�� ��� h 	 	 	 	 t e l l   c o n t e n t s  	 	 	 	 	 s e t   p r e v i o u s V a l u e   t o   v a l u e  	 	��  ��  � l 	 w z������ m   w z�� ��� D 	 	 	 s e t   v a l u e   t o   ( p r e v i o u s V a l u e   &   {��  ��  � o   { |���� 0 keyname  � l 	 } ������� m   } ��� ��� h : k e y V a l u e } )  	 	 	 	 e n d   t e l l  	 	 	 e n d   t e l l  	 	 e n d   t e l l  	 e n d��  ��  � l 	 � ������� m   � ��� ���    f n 	  e n d   s c r i p t��  ��  � o      ���� 0 scpt  � ���� n   � ���� I   � �������� 0 fn  � ��� o   � ����� 0 	posixpath 	posixPath� ���� o   � ����� 0 keyvalue keyValue��  ��  � l  � ������� I  � ������
�� .sysodsct****        scpt� o   � ����� 0 scpt  ��  ��  ��  ��  # R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  $ k   � ��� ��� r   � ���� o   � ����� 0 astid ASTID� n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ���� R   � �����
�� .ascrerr ****      � ****� b   � ���� m   � ��� ���  C a n ' t   a d d K e y :  � o   � ����� 0 emsg eMsg� �����
�� 
errn� o   � ����� 0 enum eNum��  ��  �   ��� l     ��������  ��  ��  � ��� l     ������  � : 4c--   addKey2(posixPath, keyname, keyValue, keyType)   � ��� h c - -       a d d K e y 2 ( p o s i x P a t h ,   k e y n a m e ,   k e y V a l u e ,   k e y T y p e )� ��� l     ������  � P Jd--   Add property item to existing plist. Case of key name is preserved.    � ��� � d - -       A d d   p r o p e r t y   i t e m   t o   e x i s t i n g   p l i s t .   C a s e   o f   k e y   n a m e   i s   p r e s e r v e d .  � ��� l     ������  � > 8d--   Case of subkey names in records is also preserved.   � ��� p d - -       C a s e   o f   s u b k e y   n a m e s   i n   r e c o r d s   i s   a l s o   p r e s e r v e d .� ��� l     ������  � 5 /a--   posixPath : string -- posix path to plist   � ��� ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s t� ��� l     ������  � 4 .a--   keyname : string -- name of new property   � ��� \ a - -       k e y n a m e   :   s t r i n g   - -   n a m e   o f   n e w   p r o p e r t y� ��� l     ������  �  a--   keyValue : anything   � ��� 2 a - -       k e y V a l u e   :   a n y t h i n g� ��� l     ������  � : 4a--   keyType : AppleScript class supported by plist   � ��� h a - -       k e y T y p e   :   A p p l e S c r i p t   c l a s s   s u p p o r t e d   b y   p l i s t� ��� l     ������  �  r--    nothing   � ���  r - -         n o t h i n g� ��� l     ������  � O Ix--   addKey2(plistPath, "NewKey", {"ABC", 33},list) --> new key in plist   � ��� � x - -       a d d K e y 2 ( p l i s t P a t h ,   " N e w K e y " ,   { " A B C " ,   3 3 } , l i s t )   - - >   n e w   k e y   i n   p l i s t� ��� l     ������  � D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)   � ��� | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / )� ��� i    ��� I      ������� 0 addkey2 addKey2� ��� o      ���� 0 	posixpath 	posixPath� ��� o      ���� 0 keyname  � ��� o      ���� 0 keyvalue keyValue�  ��  o      ���� 0 keytype keyType��  ��  � k     6  q       ���� 0 	posixpath 	posixPath ���� 0 keyname   ���� 0 keyvalue keyValue ������ 0 	plistfile 	plistFile��   	 q      

 ������ 0 keytype keyType��  	 �� Q     6 O    & k    %  r     4    ��
�� 
plif o   	 
���� 0 	posixpath 	posixPath o      ���� 0 	plistfile 	plistFile �� I   %����
�� .corecrel****      � null��   ��
�� 
kocl m    ��
�� 
plii ��
�� 
insh n      ;     n      l 
  !����! 2   ��
�� 
plii��  ��    n    "#" 1    ��
�� 
pcnt# o    ���� 0 	plistfile 	plistFile ��$��
�� 
prdt$ l 	  !%����% K    !&& ��'(
�� 
kind' o    ���� 0 keytype keyType( ��)*
�� 
pnam) o    ���� 0 keyname  * ��+��
�� 
valL+ o    ���� 0 keyvalue keyValue��  ��  ��  ��  ��   m    ,,�                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   R      ��-.
�� .ascrerr ****      � ****- o      ���� 0 emsg eMsg. ��/��
�� 
errn/ o      ���� 0 enum eNum��   R   . 6��01
�� .ascrerr ****      � ****0 b   2 5232 m   2 344 �55  C a n ' t   a d d K e y 2 :  3 o   3 4���� 0 emsg eMsg1 ��6��
�� 
errn6 o   0 1���� 0 enum eNum��  ��  � 787 l     ��������  ��  ��  8 9:9 l     �������  ��  �  : ;<; l     �~=>�~  = l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   > �?? �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -< @A@ l     �}BC�}  B t nc-                                                                                                   NEW PLIST   C �DD � c -                                                                                                                                                                                                       N E W   P L I S TA EFE l     �|GH�|  G l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   H �II �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -F JKJ l     �{�z�y�{  �z  �y  K LML l     �xNO�x  N  c--   newPlist(posixPath)   O �PP 2 c - -       n e w P l i s t ( p o s i x P a t h )M QRQ l     �wST�w  S : 4d--   Create a new plist. Overwrites existing files.   T �UU h d - -       C r e a t e   a   n e w   p l i s t .   O v e r w r i t e s   e x i s t i n g   f i l e s .R VWV l     �vXY�v  X 5 /a--   posixPath : string -- posix path to plist   Y �ZZ ^ a - -       p o s i x P a t h   :   s t r i n g   - -   p o s i x   p a t h   t o   p l i s tW [\[ l     �u]^�u  ]  r--    nothing   ^ �__  r - -         n o t h i n g\ `a` l     �tbc�t  b ` Zx--   newPlist(POSIX path of (path to desktop as string) & "newPlist.plist") --> new plist   c �dd � x - -       n e w P l i s t ( P O S I X   p a t h   o f   ( p a t h   t o   d e s k t o p   a s   s t r i n g )   &   " n e w P l i s t . p l i s t " )   - - >   n e w   p l i s ta efe l     �sgh�s  g D >u --  ljr (http://applescript.bratis-lover.net/library/plist/)   h �ii | u   - -     l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / p l i s t / )f jkj i    lml I      �rn�q�r 0 newplist newPlistn o�po o      �o�o 0 	posixpath 	posixPath�p  �q  m k     ;pp qrq q      ss �nt�n 0 thetext theTextt �mu�m 0 thefile theFileu �lv�l 0 otf  v �k�j�k 0 	posixpath 	posixPath�j  r w�iw Q     ;xyzx k    +{{ |}| l   �h~�h  ~ M Ghttp://www.macosxautomation.com/applescript/features/propertylists.html    ��� � h t t p : / / w w w . m a c o s x a u t o m a t i o n . c o m / a p p l e s c r i p t / f e a t u r e s / p r o p e r t y l i s t s . h t m l} ��g� O    +��� k    *�� ��� l   �f���f  � 4 . create an empty property list dictionary item   � ��� \   c r e a t e   a n   e m p t y   p r o p e r t y   l i s t   d i c t i o n a r y   i t e m� ��� r    ��� l 	  ��e�d� I   �c�b�
�c .corecrel****      � null�b  � �a��
�a 
kocl� m   	 
�`
�` 
plii� �_��^
�_ 
prdt� K    �� �]��\
�] 
kind� m    �[
�[ 
reco�\  �^  �e  �d  � o      �Z�Z $0 parentdictionary parentDictionary� ��� l   �Y���Y  � @ : create new property list file using the empty dictionary    � ��� t   c r e a t e   n e w   p r o p e r t y   l i s t   f i l e   u s i n g   t h e   e m p t y   d i c t i o n a r y  � ��� l   �X���X  �   list item as contents   � ��� ,   l i s t   i t e m   a s   c o n t e n t s� ��� r    ��� o    �W�W 0 	posixpath 	posixPath� o      �V�V 0 plistfile_path  � ��U� r    *��� l 	  (��T�S� I   (�R�Q�
�R .corecrel****      � null�Q  � �P��
�P 
kocl� m    �O
�O 
plif� �N��M
�N 
prdt� l 	  $��L�K� K    $�� �J��
�J 
pcnt� o     �I�I 0 parent_dictionary  � �H��G
�H 
pnam� o   ! "�F�F 0 plistfile_path  �G  �L  �K  �M  �T  �S  � o      �E�E 0 this_plistfile  �U  � m    ���                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+     2System Events.app                                               ��4�M        ����  	                CoreServices    Љ�J      �5"�       2   &   %  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �g  y R      �D��
�D .ascrerr ****      � ****� o      �C�C 0 emsg eMsg� �B��A
�B 
errn� o      �@�@ 0 enum eNum�A  z R   3 ;�?��
�? .ascrerr ****      � ****� b   7 :��� m   7 8�� ���   C a n ' t   n e w P l i s t :  � o   8 9�>�> 0 emsg eMsg� �=��<
�= 
errn� o   5 6�;�; 0 enum eNum�<  �i  k ��� l     �:�9�8�:  �9  �8  � ��� l     �7�6�5�7  �6  �5  � ��� l     �4�3�2�4  �3  �2  � ��� l     �1�0�/�1  �0  �/  � ��� l     �.���.  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��� l     �-���-  � z t                                                                                                                 EOF   � ��� �                                                                                                                                                                                                                                   E O F� ��� l     �,���,  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��+� l     �*�)�(�*  �)  �(  �+       
�'� ,��������'  � �&�%�$�#�"�!� ��& 0 myname myName�% 0 readkey readKey�$ 0 
readsubkey 
readSubKey�# 0 setkey setKey�" 0 	setsubkey 	setSubKey�! 0 addkey addKey�  0 addkey2 addKey2� 0 newplist newPlist� � i������ 0 readkey readKey� ��� �  ��� 0 	posixpath 	posixPath� 0 keyname  �  � ������ 0 	posixpath 	posixPath� 0 keyname  � 0 val  � 0 emsg eMsg� 0 enum eNum� 	 �������� �
� 
plif
� 
pcnt
� 
plii
� 
valL� 0 emsg eMsg� ���

� 
errn� 0 enum eNum�
  
� 
errn� 3 $� *�/ *�, 
*�/�,E�UUUO�W X  )�l�%� �	 �������	 0 
readsubkey 
readSubKey� ��� �  ���� 0 	posixpath 	posixPath� 0 keyname  � 0 
subkeyname 
subKeyName�  � �� ��������� 0 	posixpath 	posixPath�  0 keyname  �� 0 
subkeyname 
subKeyName�� 0 val  �� 0 emsg eMsg�� 0 enum eNum� 	 �������������� �
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn� 8 '� *�/ *�, *�/�/�,E�UUUO�W X  )�l�%�%� ��3���������� 0 setkey setKey�� ����� �  �������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue��  � ������������ 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue�� 0 emsg eMsg�� 0 enum eNum� 	P�������������Z
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� 2 !� *�/ *�, 
�*�/�,FUUUW X  )�l�%�%� ������������� 0 	setsubkey 	setSubKey�� ����� �  ���������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 
subkeyname 
subKeyName�� 0 subkeyvalue subKeyValue��  � �������������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 
subkeyname 
subKeyName�� 0 subkeyvalue subKeyValue�� 0 emsg eMsg�� 0 enum eNum� 	���������������
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� 3 $� *�/ *�, �*�/�/�,FUUUW X  )�l�%� ������������ 0 addkey addKey�� ����� �  �������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue��  � ������������������������ 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue�� 0 newstr newStr�� 	0 chars  �� 0 lst  �� 0 scpt  �� 0 oldstr oldStr�� 0 astid ASTID�� 0 emsg eMsg�� 0 enum eNum� ������adjm��������wy�����������������
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
citm
�� .sysodsct****        scpt�� 0 fn  �� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� ���,E�O ���&E�O O��lv��lvlv[��l 	kh �E[�k/E�Z[�l/E�ZO�� ���,FO��-E�O���,FO��&E�Y h[OY��O�%�%E�O���,FO��%�%a %a %�%a %a %E�O�j ��l+ W X  ���,FO)a �la �%� ������������� 0 addkey2 addKey2�� ����� �  ���������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue�� 0 keytype keyType��  � ���������������� 0 	posixpath 	posixPath�� 0 keyname  �� 0 keyvalue keyValue�� 0 keytype keyType�� 0 	plistfile 	plistFile�� 0 emsg eMsg�� 0 enum eNum� ,���������������������������4
�� 
plif
�� 
kocl
�� 
plii
�� 
insh
�� 
pcnt
�� 
prdt
�� 
kind
�� 
pnam
�� 
valL�� 
�� .corecrel****      � null�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� 7 (�  *�/E�O*����,�-6������ UW X  )�l�%� ��m���������� 0 newplist newPlist�� ��� �  �~�~ 0 	posixpath 	posixPath��  � 
�}�|�{�z�y�x�w�v�u�t�} 0 	posixpath 	posixPath�| 0 thetext theText�{ 0 thefile theFile�z 0 otf  �y $0 parentdictionary parentDictionary�x 0 plistfile_path  �w 0 parent_dictionary  �v 0 this_plistfile  �u 0 emsg eMsg�t 0 enum eNum� ��s�r�q�p�o�n�m�l�k�j�i��h�
�s 
kocl
�r 
plii
�q 
prdt
�p 
kind
�o 
reco�n 
�m .corecrel****      � null
�l 
plif
�k 
pcnt
�j 
pnam�i 0 emsg eMsg� �g�f�e
�g 
errn�f 0 enum eNum�e  
�h 
errn�� < -� %*�����l� E�O�E�O*������� E�UW X  )��l�% ascr  ��ޭ