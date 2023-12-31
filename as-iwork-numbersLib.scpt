FasdUAS 1.101.10   ��   ��    k             l      ��  ��   	�	�-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----c-                                                                                       NUMBERS LIBRARY-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ---- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----d-- Last modification date:                                                             2011-06-23


Some handlers to facilitate scripting iWork Numbers. AppleScript execution in 
Numbers is not very fast, but for some tasks it is certainly usefull.


--m-- http://applescript.bratis-lover.net/library/numbers/

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- ----c-                                                                                                   COPYRIGHT-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

COPYRIGHT (c) 2011 ljr (http://applescript.bratis-lover.net) 
                                [ all handlers ]Permission is hereby granted, free of charge, to any person obtaining a copy of thissoftware and associated documentation files (the "Software"), to deal in the Softwarewithout restriction, including without limitation the rights to use, copy, modify, merge,publish, distribute, sublicense, and/or sell copies of the Software, and to permit personsto whom the Software is furnished to do so, subject to the following conditions:The above copyright notice and this permission notice shall be included in all copiesor substantial portions of the Software.THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESSOR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALLTHE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHERLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS INTHE SOFTWARE.

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

     � 	 	�  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - - c -                                                                                                                                                                               N U M B E R S   L I B R A R Y  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - d - -   L a s t   m o d i f i c a t i o n   d a t e :                                                                                                                           2 0 1 1 - 0 6 - 2 3  
 
  
 S o m e   h a n d l e r s   t o   f a c i l i t a t e   s c r i p t i n g   i W o r k   N u m b e r s .   A p p l e S c r i p t   e x e c u t i o n   i n   
 N u m b e r s   i s   n o t   v e r y   f a s t ,   b u t   f o r   s o m e   t a s k s   i t   i s   c e r t a i n l y   u s e f u l l . 
 
 
 - - m - -   h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / 
 
 - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -  - - c -                                                                                                                                                                                                       C O P Y R I G H T  - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 
  
 C O P Y R I G H T   ( c )   2 0 1 1   l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t )   
                                                                 [   a l l   h a n d l e r s   ]   P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y   o f   t h i s  s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l   i n   t h e   S o f t w a r e  w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s   t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,  p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l   c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s  t o   w h o m   t h e   S o f t w a r e   i s   f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s :   T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n   a l l   c o p i e s  o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e .   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S  O R   I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y ,  F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N   I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L  T H E   A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R  L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M ,  O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N  T H E   S O F T W A R E . 
 
 - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 
 - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 
 
   
  
 l     ��������  ��  ��        l     ��  ��    l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --     �   �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -      l     ��  ��    s mc-                                                                                                 PROPERTIES     �   � c -                                                                                                                                                                                                   P R O P E R T I E S      l     ��  ��    l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --     �   �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -      l     ��������  ��  ��        l     ��������  ��  ��         l     �� ! "��   !  c--   property myName    " � # # * c - -       p r o p e r t y   m y N a m e    $ % $ l     �� & '��   & ? 9d--   Name that should be used when loading this library.    ' � ( ( r d - -       N a m e   t h a t   s h o u l d   b e   u s e d   w h e n   l o a d i n g   t h i s   l i b r a r y . %  ) * ) j     �� +�� 0 myname myName + m      , , � - - " _ i w o r k - n u m b e r s L i b *  . / . l     ��������  ��  ��   /  0 1 0 l     ��������  ��  ��   1  2 3 2 l     ��������  ��  ��   3  4 5 4 l     �� 6 7��   6 l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    7 � 8 8 �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - 5  9 : 9 l     �� ; <��   ; d ^c-                                                                CELL ACCESS AND MANIPULATION    < � = = � c -                                                                                                                                 C E L L   A C C E S S   A N D   M A N I P U L A T I O N :  > ? > l     �� @ A��   @ l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --    A � B B �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - - ?  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I C =c--   valueOfCell(sheetName, tableName, rowNumber, colNumber)    J � K K z c - -       v a l u e O f C e l l ( s h e e t N a m e ,   t a b l e N a m e ,   r o w N u m b e r ,   c o l N u m b e r ) H  L M L l     �� N O��   N ? 9d--   Get the value of a cell in Numbers' front document.    O � P P r d - -       G e t   t h e   v a l u e   o f   a   c e l l   i n   N u m b e r s '   f r o n t   d o c u m e n t . M  Q R Q l     �� S T��   S N Ha--   sheetName : string or integer -- name or index of the target sheet    T � U U � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t R  V W V l     �� X Y��   X N Ha--   tableName : string or integer -- name or index of the target table    Y � Z Z � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e W  [ \ [ l     �� ] ^��   ] @ :a--   rowNumber : integer -- row number of the target cell    ^ � _ _ t a - -       r o w N u m b e r   :   i n t e g e r   - -   r o w   n u m b e r   o f   t h e   t a r g e t   c e l l \  ` a ` l     �� b c��   b C =a--   colNumber : integer -- column number of the target cell    c � d d z a - -       c o l N u m b e r   :   i n t e g e r   - -   c o l u m n   n u m b e r   o f   t h e   t a r g e t   c e l l a  e f e l     �� g h��   g 2 ,r--   anything -- text, real, date, boolean     h � i i X r - -       a n y t h i n g   - -   t e x t ,   r e a l ,   d a t e ,   b o o l e a n   f  j k j l     �� l m��   l B <x--   valueOfCell(1, 1, 2, 2) --> "AAA", true or whatever...    m � n n x x - -       v a l u e O f C e l l ( 1 ,   1 ,   2 ,   2 )   - - >   " A A A " ,   t r u e   o r   w h a t e v e r . . . k  o p o l     �� q r��   q F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)    r � s s � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / ) p  t u t i     v w v I      �� x���� 0 valueofcell valueOfCell x  y z y o      ���� 0 	sheetname 	sheetName z  { | { o      ���� 0 	tablename 	tableName |  } ~ } o      ���� 0 	rownumber 	rowNumber ~  ��  o      ���� 0 	colnumber 	colNumber��  ��   w k     C � �  � � � q       � � �� ��� 0 	sheetname 	sheetName � �� ��� 0 	tablename 	tableName � �� ��� 0 	rownumber 	rowNumber � �� ��� 0 	colnumber 	colNumber � ������ 0 res  ��   �  ��� � Q     C � � � � k    3 � �  � � � O    0 � � � O    / � � � O    . � � � O    - � � � O    , � � � r   & + � � � 1   & )��
�� 
NMCv � o      ���� 0 res   � n    # � � � 4     #�� �
�� 
NmCl � o   ! "���� 0 	colnumber 	colNumber � 4     �� �
�� 
NMRw � o    ���� 0 	rownumber 	rowNumber � 4    �� �
�� 
NmTb � o    ���� 0 	tablename 	tableName � 4    �� �
�� 
NmSh � o    ���� 0 	sheetname 	sheetName � 4    �� �
�� 
docu � m   	 
����  � m     � ��                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   �  ��� � L   1 3 � � o   1 2���� 0 res  ��   � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 emsg eMsg � �� ���
�� 
errn � o      ���� 0 enum eNum��   � R   ; C�� � �
�� .ascrerr ****      � **** � b   ? B � � � m   ? @ � � � � � & C a n ' t   v a l u e O f C e l l :   � o   @ A���� 0 emsg eMsg � �� ���
�� 
errn � o   = >���� 0 enum eNum��  ��   u  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � Q Kc--   setValueOfCell(cellValue, sheetName, tableName, rowNumber, colNumber)    � � � � � c - -       s e t V a l u e O f C e l l ( c e l l V a l u e ,   s h e e t N a m e ,   t a b l e N a m e ,   r o w N u m b e r ,   c o l N u m b e r ) �  � � � l     �� � ���   � ? 9d--   Set the value of a cell in Numbers' front document.    � � � � r d - -       S e t   t h e   v a l u e   o f   a   c e l l   i n   N u m b e r s '   f r o n t   d o c u m e n t . �  � � � l     �� � ���   � R La--   cellValue : anything -- cell value, using text is strongly recommended    � � � � � a - -       c e l l V a l u e   :   a n y t h i n g   - -   c e l l   v a l u e ,   u s i n g   t e x t   i s   s t r o n g l y   r e c o m m e n d e d �  � � � l     �� � ���   � N Ha--   sheetName : string or integer -- name or index of the target sheet    � � � � � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t �  � � � l     �� � ���   � N Ha--   tableName : string or integer -- name or index of the target table    � � � � � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e �  � � � l     �� � ���   � @ :a--   rowNumber : integer -- row number of the target cell    � � � � t a - -       r o w N u m b e r   :   i n t e g e r   - -   r o w   n u m b e r   o f   t h e   t a r g e t   c e l l �  � � � l     �� � ���   � C =a--   colNumber : integer -- column number of the target cell    � � � � z a - -       c o l N u m b e r   :   i n t e g e r   - -   c o l u m n   n u m b e r   o f   t h e   t a r g e t   c e l l �  � � � l     �� � ���   � ( "r--   nothing -- error if problems    � � � � D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m s �  � � � l     �� � ���   � U Ox--   setValueOfCell("AAA", 1, 1, 2, 2) --> cell in front document set to "AAA"    � � � � � x - -       s e t V a l u e O f C e l l ( " A A A " ,   1 ,   1 ,   2 ,   2 )   - - >   c e l l   i n   f r o n t   d o c u m e n t   s e t   t o   " A A A " �  � � � l     �� � ���   � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)    � � � � � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / ) �  � � � i    
 � � � I      �� �����  0 setvalueofcell setValueOfCell �  � � � o      ���� 0 	cellvalue 	cellValue �  � � � o      ���� 0 	sheetname 	sheetName �  � � � o      ���� 0 	tablename 	tableName �  � � � o      ���� 0 	rownumber 	rowNumber �  ��� � o      ���� 0 	colnumber 	colNumber��  ��   � k     @ � �  � � � q       � � �� ��� 0 	sheetname 	sheetName � �� ��� 0 	tablename 	tableName � �� ��� 0 	rownumber 	rowNumber � �� ��� 0 	colnumber 	colNumber � ������ 0 	cellvalue 	cellValue��   �  ��� � Q     @ � � � � O    0 �  � O    / O    . O    - O    , r   & +	
	 o   & '���� 0 	cellvalue 	cellValue
 1   ' *��
�� 
NMCv n    # 4     #��
�� 
NmCl o   ! "���� 0 	colnumber 	colNumber 4     ��
�� 
NMRw o    ���� 0 	rownumber 	rowNumber 4    ��
�� 
NmTb o    ���� 0 	tablename 	tableName 4    ��
�� 
NmSh o    ���� 0 	sheetname 	sheetName 4    ��
�� 
docu m   	 
����   m    �                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   � R      ��
�� .ascrerr ****      � **** o      ���� 0 emsg eMsg ���
�� 
errn o      �~�~ 0 enum eNum�   � R   8 @�}
�} .ascrerr ****      � **** b   < ? m   < = � , C a n ' t   s e t V a l u e O f C e l l :   o   = >�|�| 0 emsg eMsg �{�z
�{ 
errn o   : ;�y�y 0 enum eNum�z  ��   �  l     �x�w�v�x  �w  �v     l     �u�t�s�u  �t  �s    !"! l     �r#$�r  # L Fc--   setCheckbox(cbValue, sheetName, tableName, rowNumber, colNumber)   $ �%% � c - -       s e t C h e c k b o x ( c b V a l u e ,   s h e e t N a m e ,   t a b l e N a m e ,   r o w N u m b e r ,   c o l N u m b e r )" &'& l     �q()�q  ( Q Kd--   Check/uncheck a checkbox in Numbers' front document. Checkboxes can't   ) �** � d - -       C h e c k / u n c h e c k   a   c h e c k b o x   i n   N u m b e r s '   f r o n t   d o c u m e n t .   C h e c k b o x e s   c a n ' t' +,+ l     �p-.�p  - F @d--   be set directly but a little workaround will do the trick.   . �// � d - -       b e   s e t   d i r e c t l y   b u t   a   l i t t l e   w o r k a r o u n d   w i l l   d o   t h e   t r i c k ., 010 l     �o23�o  2 M Ga--   cbValue : boolean or integer -- true/1 = check, false/0 = uncheck   3 �44 � a - -       c b V a l u e   :   b o o l e a n   o r   i n t e g e r   - -   t r u e / 1   =   c h e c k ,   f a l s e / 0   =   u n c h e c k1 565 l     �n78�n  7 N Ha--   sheetName : string or integer -- name or index of the target sheet   8 �99 � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t6 :;: l     �m<=�m  < N Ha--   tableName : string or integer -- name or index of the target table   = �>> � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e; ?@? l     �lAB�l  A @ :a--   rowNumber : integer -- row number of the target cell   B �CC t a - -       r o w N u m b e r   :   i n t e g e r   - -   r o w   n u m b e r   o f   t h e   t a r g e t   c e l l@ DED l     �kFG�k  F C =a--   colNumber : integer -- column number of the target cell   G �HH z a - -       c o l N u m b e r   :   i n t e g e r   - -   c o l u m n   n u m b e r   o f   t h e   t a r g e t   c e l lE IJI l     �jKL�j  K ( "r--   nothing -- error if problems   L �MM D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m sJ NON l     �iPQ�i  P F @x--   setCheckbox(true, 1, 1, 1, 1) --> checkbox will be checked   Q �RR � x - -       s e t C h e c k b o x ( t r u e ,   1 ,   1 ,   1 ,   1 )   - - >   c h e c k b o x   w i l l   b e   c h e c k e dO STS l     �hUV�h  U F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   V �WW � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )T XYX i    Z[Z I      �g\�f�g 0 setcheckbox setCheckbox\ ]^] o      �e�e 0 cbvalue cbValue^ _`_ o      �d�d 0 	sheetname 	sheetName` aba o      �c�c 0 	tablename 	tableNameb cdc o      �b�b 0 	rownumber 	rowNumberd e�ae o      �`�` 0 	colnumber 	colNumber�a  �f  [ k     cff ghg q      ii �_j�_ 0 	sheetname 	sheetNamej �^k�^ 0 	tablename 	tableNamek �]l�] 0 	rownumber 	rowNumberl �\m�\ 0 	colnumber 	colNumberm �[n�[ 0 cbvalue cbValuen �Z�Y�Z 0 cbvalint cbValInt�Y  h o�Xo Q     cpqrp O    Ssts O    Ruvu O    Qwxw O    Pyzy k    O{{ |}| r    '~~ m    �W
�W NMCTfaut n      ��� 1   $ &�V
�V 
NMCT� n    $��� 4   ! $�U�
�U 
NmCl� o   " #�T�T 0 	colnumber 	colNumber� 4    !�S�
�S 
NMRw� o     �R�R 0 	rownumber 	rowNumber} ��� r   ( +��� m   ( )�Q�Q  � o      �P�P 0 cbvalint cbValInt� ��� Z  , 7���O�N� o   , -�M�M 0 cbvalue cbValue� r   0 3��� m   0 1�L�L � o      �K�K 0 cbvalint cbValInt�O  �N  � ��� r   8 C��� o   8 9�J�J 0 cbvalint cbValInt� n      ��� 1   @ B�I
�I 
NMCv� n   9 @��� 4   = @�H�
�H 
NmCl� o   > ?�G�G 0 	colnumber 	colNumber� 4   9 =�F�
�F 
NMRw� o   ; <�E�E 0 	rownumber 	rowNumber� ��D� r   D O��� m   D E�C
�C NMCTfcch� n      ��� 1   L N�B
�B 
NMCT� n   E L��� 4   I L�A�
�A 
NmCl� o   J K�@�@ 0 	colnumber 	colNumber� 4   E I�?�
�? 
NMRw� o   G H�>�> 0 	rownumber 	rowNumber�D  z 4    �=�
�= 
NmTb� o    �<�< 0 	tablename 	tableNamex 4    �;�
�; 
NmSh� o    �:�: 0 	sheetname 	sheetNamev 4    �9�
�9 
docu� m   	 
�8�8 t m    ���                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  q R      �7��
�7 .ascrerr ****      � ****� o      �6�6 0 emsg eMsg� �5��4
�5 
errn� o      �3�3 0 enum eNum�4  r R   [ c�2��
�2 .ascrerr ****      � ****� b   _ b��� m   _ `�� ��� 8 C a n ' t   s e t C h e c k b o x I n N u m b e r s :  � o   ` a�1�1 0 emsg eMsg� �0��/
�0 
errn� o   ] ^�.�. 0 enum eNum�/  �X  Y ��� l     �-�,�+�-  �,  �+  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'���'  � J Dc--   nextEmptyCellInRow(sheetName, tableName, rowNumber, compValue)   � ��� � c - -       n e x t E m p t y C e l l I n R o w ( s h e e t N a m e ,   t a b l e N a m e ,   r o w N u m b e r ,   c o m p V a l u e )� ��� l     �&���&  � T Nd--   Find the next empty cell in a row of a table in Numbers' front document    � ��� � d - -       F i n d   t h e   n e x t   e m p t y   c e l l   i n   a   r o w   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t  � ��� l     �%���%  � % d--   (starting from the left).   � ��� > d - -       ( s t a r t i n g   f r o m   t h e   l e f t ) .� ��� l     �$���$  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     �#���#  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e� ��� l     �"���"  � 8 2a--   rowNumber : integer -- row number to inspect   � ��� d a - -       r o w N u m b e r   :   i n t e g e r   - -   r o w   n u m b e r   t o   i n s p e c t� ��� l     �!���!  � r la--   compValue : integer or text -- compare value indicating that a cell is empty (usually 0, sometimes "")   � ��� � a - -       c o m p V a l u e   :   i n t e g e r   o r   t e x t   - -   c o m p a r e   v a l u e   i n d i c a t i n g   t h a t   a   c e l l   i s   e m p t y   ( u s u a l l y   0 ,   s o m e t i m e s   " " )� ��� l     � ���   � 7 1r--   integer -- column number of next empty cell   � ��� b r - -       i n t e g e r   - -   c o l u m n   n u m b e r   o f   n e x t   e m p t y   c e l l� ��� l     ����  � X Rx--   nextEmptyCellInRow(1, 1, 1, 0) --> column number of next empty cell in row 1   � ��� � x - -       n e x t E m p t y C e l l I n R o w ( 1 ,   1 ,   1 ,   0 )   - - >   c o l u m n   n u m b e r   o f   n e x t   e m p t y   c e l l   i n   r o w   1� ��� l     ����  � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   � ��� � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )� ��� i    ��� I      ���� (0 nextemptycellinrow nextEmptyCellInRow� ��� o      �� 0 	sheetname 	sheetName� ��� o      �� 0 	tablename 	tableName� ��� o      �� 0 	rownumber 	rowNumber� ��� o      �� 0 	compvalue 	compValue�  �  � k     x�� ��� q      �� ��� 0 	sheetname 	sheetName� ��� 0 	tablename 	tableName� ��� 0 	rownumber 	rowNumber� ��� 0 res  � ��� 0 i  � ��� 0 len  �  � ��� Q     x���� k    h    O    e O    d O    c O    b	
	 k    a  r    ! 1    �
� 
NmTc o      �� 0 len    r   " % m   " #��   o      �� 0 res    Y   & L�
�	 Z   0 G�� =   0 ; l  0 9�� n   0 9 1   7 9�
� 
NMCv n   0 7 !  4   4 7�"
� 
NmCl" o   5 6�� 0 i  ! 4   0 4�#
� 
NMRw# o   2 3� �  0 	rownumber 	rowNumber�  �   o   9 :���� 0 	compvalue 	compValue k   > C$$ %&% r   > A'(' o   > ?���� 0 i  ( o      ���� 0 res  & )��)  S   B C��  �  �  �
 0 i   m   ) *����  o   * +���� 0 len  �	   *��* Z   M a+,����+ =   M P-.- o   M N���� 0 res  . m   N O����  , R   S ]��/0
�� .ascrerr ****      � ****/ b   W \121 b   W Z343 m   W X55 �66 2 N o   e m p t y   c o l u m n   i n   t a b l e  4 o   X Y���� 0 	tablename 	tableName2 m   Z [77 �88  !0 ��9��
�� 
errn9 m   U V���� o��  ��  ��  ��  
 4    ��:
�� 
NmTb: o    ���� 0 	tablename 	tableName 4    ��;
�� 
NmSh; o    ���� 0 	sheetname 	sheetName 4    ��<
�� 
docu< m   	 
����  m    ==�                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   >��> L   f h?? o   f g���� 0 res  ��  � R      ��@A
�� .ascrerr ****      � ****@ o      ���� 0 emsg eMsgA ��B��
�� 
errnB o      ���� 0 enum eNum��  � R   p x��CD
�� .ascrerr ****      � ****C b   t wEFE m   t uGG �HH : C a n ' t   n e x t E m p t y C e l l I n C o l u m n :  F o   u v���� 0 emsg eMsgD ��I��
�� 
errnI o   r s���� 0 enum eNum��  �  � JKJ l     ��������  ��  ��  K LML l     ��������  ��  ��  M NON l     ��PQ��  P M Gc--   nextEmptyCellInColumn(sheetName, tableName, colNumber, compValue)   Q �RR � c - -       n e x t E m p t y C e l l I n C o l u m n ( s h e e t N a m e ,   t a b l e N a m e ,   c o l N u m b e r ,   c o m p V a l u e )O STS l     ��UV��  U W Qd--   Find the next empty cell in a column of a table in Numbers' front document    V �WW � d - -       F i n d   t h e   n e x t   e m p t y   c e l l   i n   a   c o l u m n   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t  T XYX l     ��Z[��  Z $ d--   (starting from the top).   [ �\\ < d - -       ( s t a r t i n g   f r o m   t h e   t o p ) .Y ]^] l     ��_`��  _ N Ha--   sheetName : string or integer -- name or index of the target sheet   ` �aa � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t^ bcb l     ��de��  d N Ha--   tableName : string or integer -- name or index of the target table   e �ff � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l ec ghg l     ��ij��  i ; 5a--   colNumber : integer -- column number to inspect   j �kk j a - -       c o l N u m b e r   :   i n t e g e r   - -   c o l u m n   n u m b e r   t o   i n s p e c th lml l     ��no��  n r la--   compValue : integer or text -- compare value indicating that a cell is empty (usually 0, sometimes "")   o �pp � a - -       c o m p V a l u e   :   i n t e g e r   o r   t e x t   - -   c o m p a r e   v a l u e   i n d i c a t i n g   t h a t   a   c e l l   i s   e m p t y   ( u s u a l l y   0 ,   s o m e t i m e s   " " )m qrq l     ��st��  s 4 .r--   integer -- row number of next empty cell   t �uu \ r - -       i n t e g e r   - -   r o w   n u m b e r   o f   n e x t   e m p t y   c e l lr vwv l     ��xy��  x [ Ux--   nextEmptyCellInColumn(1, 1, 1, 0) --> row number of next empty cell in column 1   y �zz � x - -       n e x t E m p t y C e l l I n C o l u m n ( 1 ,   1 ,   1 ,   0 )   - - >   r o w   n u m b e r   o f   n e x t   e m p t y   c e l l   i n   c o l u m n   1w {|{ l     ��}~��  } F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   ~ � � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )| ��� i    ��� I      ������� .0 nextemptycellincolumn nextEmptyCellInColumn� ��� o      ���� 0 	sheetname 	sheetName� ��� o      ���� 0 	tablename 	tableName� ��� o      ���� 0 	colnumber 	colNumber� ���� o      ���� 0 	compvalue 	compValue��  ��  � k     x�� ��� q      �� ����� 0 	sheetname 	sheetName� ����� 0 	tablename 	tableName� ����� 0 	colnumber 	colNumber� ����� 0 res  � ����� 0 i  � ������ 0 len  ��  � ���� Q     x���� k    h�� ��� O    e��� O    d��� O    c��� O    b��� k    a�� ��� r    !��� 1    ��
�� 
NmTr� o      ���� 0 len  � ��� r   " %��� m   " #����  � o      ���� 0 res  � ��� Y   & L�������� Z   0 G������� =   0 ;��� l  0 9������ n   0 9��� 1   7 9��
�� 
NMCv� n   0 7��� 4   4 7���
�� 
NmCl� o   5 6���� 0 	colnumber 	colNumber� 4   0 4���
�� 
NMRw� o   2 3���� 0 i  ��  ��  � o   9 :���� 0 	compvalue 	compValue� k   > C�� ��� r   > A��� o   > ?���� 0 i  � o      ���� 0 res  � ����  S   B C��  ��  ��  �� 0 i  � m   ) *���� � o   * +���� 0 len  ��  � ���� Z   M a������� =   M P��� o   M N���� 0 res  � m   N O����  � R   S ]����
�� .ascrerr ****      � ****� b   W \��� b   W Z��� m   W X�� ��� , N o   e m p t y   r o w   i n   t a b l e  � o   X Y���� 0 	tablename 	tableName� m   Z [�� ���  !� �����
�� 
errn� m   U V���� o��  ��  ��  ��  � 4    ���
�� 
NmTb� o    ���� 0 	tablename 	tableName� 4    ���
�� 
NmSh� o    ���� 0 	sheetname 	sheetName� 4    ���
�� 
docu� m   	 
���� � m    ���                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  � ���� L   f h�� o   f g���� 0 res  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  � R   p x����
�� .ascrerr ****      � ****� b   t w��� m   t u�� ��� : C a n ' t   n e x t E m p t y C e l l I n C o l u m n :  � o   u v���� 0 emsg eMsg� �����
�� 
errn� o   r s���� 0 enum eNum��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � P Jc--   clearRange(sheetName, tableName, startRow, startCol, endRow, endCol)   � ��� � c - -       c l e a r R a n g e ( s h e e t N a m e ,   t a b l e N a m e ,   s t a r t R o w ,   s t a r t C o l ,   e n d R o w ,   e n d C o l )� ��� l     ������  � R Ld--   Clear a given range of a table in Numbers' front document maintaining.   � ��� � d - -       C l e a r   a   g i v e n   r a n g e   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t   m a i n t a i n i n g .� ��� l     ������  � T Nd--   Slower than the built in command, but it maintains formatting and style.   � ��� � d - -       S l o w e r   t h a n   t h e   b u i l t   i n   c o m m a n d ,   b u t   i t   m a i n t a i n s   f o r m a t t i n g   a n d   s t y l e .� ��� l     ������  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     ������  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e�    l     ����   4 .a--   startRow : integer -- first row to clear    � \ a - -       s t a r t R o w   :   i n t e g e r   - -   f i r s t   r o w   t o   c l e a r  l     ����   7 1a--   startCol : integer -- first column to clear    �		 b a - -       s t a r t C o l   :   i n t e g e r   - -   f i r s t   c o l u m n   t o   c l e a r 

 l     ����   0 *a--   endRow : integer -- las row to clear    � T a - -       e n d R o w   :   i n t e g e r   - -   l a s   r o w   t o   c l e a r  l     ��   4 .a--   endCol : integer -- last column to clear    � \ a - -       e n d C o l   :   i n t e g e r   - -   l a s t   c o l u m n   t o   c l e a r  l     �~�~   - 'r--   nothing -- given range is cleared    � N r - -       n o t h i n g   - -   g i v e n   r a n g e   i s   c l e a r e d  l     �}�}   C =x--   clearRange(1, 1, 1, 1, 10, 10) --> range A1:J10 cleared    � z x - -       c l e a r R a n g e ( 1 ,   1 ,   1 ,   1 ,   1 0 ,   1 0 )   - - >   r a n g e   A 1 : J 1 0   c l e a r e d  l     �| !�|    F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   ! �"" � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / ) #$# i    %&% I      �{'�z�{ 0 
clearrange 
clearRange' ()( o      �y�y 0 	sheetname 	sheetName) *+* o      �x�x 0 	tablename 	tableName+ ,-, o      �w�w 0 startrow startRow- ./. o      �v�v 0 startcol startCol/ 010 o      �u�u 0 endrow endRow1 2�t2 o      �s�s 0 endcol endCol�t  �z  & k     Y33 454 q      66 �r7�r 0 	sheetname 	sheetName7 �q8�q 0 	tablename 	tableName8 �p9�p 0 startrow startRow9 �o�n�o 0 startcol startCol�n  5 :;: q      << �m=�m 0 endrow endRow= �l�k�l 0 endcolnumber endColNumber�k  ; >�j> Q     Y?@A? O    IBCB O    HDED O    GFGF O    FHIH Y    EJ�iKL�hJ Y   & @M�gNO�fM r   0 ;PQP m   0 1RR �SS  Q n      TUT 1   8 :�e
�e 
NMCvU n   1 8VWV 4   5 8�dX
�d 
NmClX o   6 7�c�c 0 j  W 4   1 5�bY
�b 
NMRwY o   3 4�a�a 0 i  �g 0 j  N o   ) *�`�` 0 startcol startColO o   * +�_�_ 0 endcol endCol�f  �i 0 i  K o     �^�^ 0 startrow startRowL o     !�]�] 0 endrow endRow�h  I 4    �\Z
�\ 
NmTbZ o    �[�[ 0 	tablename 	tableNameG 4    �Z[
�Z 
NmSh[ o    �Y�Y 0 	sheetname 	sheetNameE 4    �X\
�X 
docu\ m   	 
�W�W C m    ]]�                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  @ R      �V^_
�V .ascrerr ****      � ****^ o      �U�U 0 emsg eMsg_ �T`�S
�T 
errn` o      �R�R 0 enum eNum�S  A R   Q Y�Qab
�Q .ascrerr ****      � ****a b   U Xcdc m   U Vee �ff $ C a n ' t   c l e a r R a n g e :  d o   V W�P�P 0 emsg eMsgb �Og�N
�O 
errng o   S T�M�M 0 enum eNum�N  �j  $ hih l     �L�K�J�L  �K  �J  i jkj l     �I�H�G�I  �H  �G  k lml l     �F�E�D�F  �E  �D  m non l     �Cpq�C  p l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   q �rr �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -o sts l     �Buv�B  u l fc-                                                                                  TABLE MANIPULATION   v �ww � c -                                                                                                                                                                     T A B L E   M A N I P U L A T I O Nt xyx l     �Az{�A  z l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   { �|| �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -y }~} l     �@�?�>�@  �?  �>  ~ � l     �=�<�;�=  �<  �;  � ��� l     �:���:  � 1 +c--   rowCountOfTable(sheetName, tableName)   � ��� V c - -       r o w C o u n t O f T a b l e ( s h e e t N a m e ,   t a b l e N a m e )� ��� l     �9���9  � D >d--   Get the row count of a table in Numbers' front document.   � ��� | d - -       G e t   t h e   r o w   c o u n t   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .� ��� l     �8���8  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     �7���7  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e� ��� l     �6���6  � % r--   integer -- number of rows   � ��� > r - -       i n t e g e r   - -   n u m b e r   o f   r o w s� ��� l     �5���5  � ( "x--   rowCountOfTable(1, 1) --> 45   � ��� D x - -       r o w C o u n t O f T a b l e ( 1 ,   1 )   - - >   4 5� ��� l     �4���4  � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   � ��� � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )� ��� i    ��� I      �3��2�3 "0 rowcountoftable rowCountOfTable� ��� o      �1�1 0 	sheetname 	sheetName� ��0� o      �/�/ 0 	tablename 	tableName�0  �2  � k     8�� ��� q      �� �.��. 0 	sheetname 	sheetName� �-��- 0 	tablename 	tableName� �,�+�, 0 res  �+  � ��*� Q     8���� k    (�� ��� O    %��� O    $��� O    #��� O    "��� r    !��� 1    �)
�) 
NmTr� o      �(�( 0 res  � 4    �'�
�' 
NmTb� o    �&�& 0 	tablename 	tableName� 4    �%�
�% 
NmSh� o    �$�$ 0 	sheetname 	sheetName� 4    �#�
�# 
docu� m   	 
�"�" � m    ���                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  � ��!� L   & (�� o   & '� �  0 res  �!  � R      ���
� .ascrerr ****      � ****� o      �� 0 emsg eMsg� ���
� 
errn� o      �� 0 enum eNum�  � R   0 8���
� .ascrerr ****      � ****� b   4 7��� m   4 5�� ��� . C a n ' t   r o w C o u n t O f T a b l e :  � o   5 6�� 0 emsg eMsg� ���
� 
errn� o   2 3�� 0 enum eNum�  �*  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l     ����  � > 8c--   setRowCountOfTable(rowCount, sheetName, tableName)   � ��� p c - -       s e t R o w C o u n t O f T a b l e ( r o w C o u n t ,   s h e e t N a m e ,   t a b l e N a m e )� ��� l     ����  � D >d--   Set the row count of a table in Numbers' front document.   � ��� | d - -       S e t   t h e   r o w   c o u n t   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .� ��� l     ����  � 0 *a--   rowCount : integer -- number of rows   � ��� T a - -       r o w C o u n t   :   i n t e g e r   - -   n u m b e r   o f   r o w s� ��� l     ����  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     ����  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e� ��� l     �
���
  � ( "r--   nothing -- error if problems   � ��� D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m s� ��� l     �	���	  � G Ax--   setRowCountOfTable(10, 1, 1) --> row count of table changed   � ��� � x - -       s e t R o w C o u n t O f T a b l e ( 1 0 ,   1 ,   1 )   - - >   r o w   c o u n t   o f   t a b l e   c h a n g e d� ��� l     ����  � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   � ��� � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )� � � i    " I      ��� (0 setrowcountoftable setRowCountOfTable  o      �� 0 rowcount rowCount  o      �� 0 	sheetname 	sheetName � o      �� 0 	tablename 	tableName�  �   k     5		 

 q       �� 0 	sheetname 	sheetName � �  0 	tablename 	tableName ������ 0 rowcount rowCount��   �� Q     5 O    % O    $ O    # O    " r    ! o    ���� 0 rowcount rowCount 1     ��
�� 
NmTr 4    ��
�� 
NmTb o    ���� 0 	tablename 	tableName 4    ��
�� 
NmSh o    ���� 0 	sheetname 	sheetName 4    ��
�� 
docu m   	 
����  m      �                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   R      ��!"
�� .ascrerr ****      � ****! o      ���� 0 emsg eMsg" ��#��
�� 
errn# o      ���� 0 enum eNum��   R   - 5��$%
�� .ascrerr ****      � ****$ b   1 4&'& m   1 2(( �)) 4 C a n ' t   s e t R o w C o u n t O f T a b l e :  ' o   2 3���� 0 emsg eMsg% ��*��
�� 
errn* o   / 0���� 0 enum eNum��  ��    +,+ l     ��������  ��  ��  , -.- l     ��������  ��  ��  . /0/ l     ��12��  1 4 .c--   columnCountOfTable(sheetName, tableName)   2 �33 \ c - -       c o l u m n C o u n t O f T a b l e ( s h e e t N a m e ,   t a b l e N a m e )0 454 l     ��67��  6 G Ad--   Get the column count of a table in Numbers' front document.   7 �88 � d - -       G e t   t h e   c o l u m n   c o u n t   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .5 9:9 l     ��;<��  ; N Ha--   sheetName : string or integer -- name or index of the target sheet   < �== � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t: >?> l     ��@A��  @ N Ha--   tableName : string or integer -- name or index of the target table   A �BB � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e? CDC l     ��EF��  E ( "r--   integer -- number of columns   F �GG D r - -       i n t e g e r   - -   n u m b e r   o f   c o l u m n sD HIH l     ��JK��  J + %x--   columnCountOfTable(1, 1) --> 11   K �LL J x - -       c o l u m n C o u n t O f T a b l e ( 1 ,   1 )   - - >   1 1I MNM l     ��OP��  O F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   P �QQ � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )N RSR i   # &TUT I      ��V���� (0 columncountoftable columnCountOfTableV WXW o      ���� 0 	sheetname 	sheetNameX Y��Y o      ���� 0 	tablename 	tableName��  ��  U k     8ZZ [\[ q      ]] ��^�� 0 	sheetname 	sheetName^ ��_�� 0 	tablename 	tableName_ ������ 0 res  ��  \ `��` Q     8abca k    (dd efe O    %ghg O    $iji O    #klk O    "mnm r    !opo 1    ��
�� 
NmTcp o      ���� 0 res  n 4    ��q
�� 
NmTbq o    ���� 0 	tablename 	tableNamel 4    ��r
�� 
NmShr o    ���� 0 	sheetname 	sheetNamej 4    ��s
�� 
docus m   	 
���� h m    tt�                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  f u��u L   & (vv o   & '���� 0 res  ��  b R      ��wx
�� .ascrerr ****      � ****w o      ���� 0 emsg eMsgx ��y��
�� 
errny o      ���� 0 enum eNum��  c R   0 8��z{
�� .ascrerr ****      � ****z b   4 7|}| m   4 5~~ � 4 C a n ' t   c o l u m n C o u n t O f T a b l e :  } o   5 6���� 0 emsg eMsg{ �����
�� 
errn� o   2 3���� 0 enum eNum��  ��  S ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � D >c--   setColumnCountOfTable(columnCount, sheetName, tableName)   � ��� | c - -       s e t C o l u m n C o u n t O f T a b l e ( c o l u m n C o u n t ,   s h e e t N a m e ,   t a b l e N a m e )� ��� l     ������  � G Ad--   Set the column count of a table in Numbers' front document.   � ��� � d - -       S e t   t h e   c o l u m n   c o u n t   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .� ��� l     ������  � 5 /a--   columnCount : integer -- number of column   � ��� ^ a - -       c o l u m n C o u n t   :   i n t e g e r   - -   n u m b e r   o f   c o l u m n� ��� l     ������  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     ������  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e� ��� l     ������  � ( "r--   nothing -- error if problems   � ��� D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m s� ��� l     ������  � L Fx--   setColumnCountOfTable(5, 1, 1) --> column count of table changed   � ��� � x - -       s e t C o l u m n C o u n t O f T a b l e ( 5 ,   1 ,   1 )   - - >   c o l u m n   c o u n t   o f   t a b l e   c h a n g e d� ��� l     ������  � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   � ��� � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )� ��� i   ' *��� I      ������� .0 setcolumncountoftable setColumnCountOfTable� ��� o      ���� 0 columncount columnCount� ��� o      ���� 0 	sheetname 	sheetName� ���� o      ���� 0 	tablename 	tableName��  ��  � k     5�� ��� q      �� ����� 0 	sheetname 	sheetName� ����� 0 	tablename 	tableName� ������ 0 columncount columnCount��  � ���� Q     5���� O    %��� O    $��� O    #��� O    "��� r    !��� o    ���� 0 columncount columnCount� 1     ��
�� 
NmTc� 4    ���
�� 
NmTb� o    ���� 0 	tablename 	tableName� 4    ���
�� 
NmSh� o    ���� 0 	sheetname 	sheetName� 4    ���
�� 
docu� m   	 
���� � m    ���                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  � R   - 5����
�� .ascrerr ****      � ****� b   1 4��� m   1 2�� ��� : C a n ' t   s e t C o l u m n C o u n t O f T a b l e :  � o   2 3���� 0 emsg eMsg� �����
�� 
errn� o   / 0���� 0 enum eNum��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � E ?c--   deleteRowsOfTable(startRow, endRow, sheetName, tableName)   � ��� ~ c - -       d e l e t e R o w s O f T a b l e ( s t a r t R o w ,   e n d R o w ,   s h e e t N a m e ,   t a b l e N a m e )� ��� l     ������  � C =d--   Delete some rows of a table in Numbers' front document.   � ��� z d - -       D e l e t e   s o m e   r o w s   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .� ��� l     ������  � 5 /a--   startRow : integer -- first row to delete   � ��� ^ a - -       s t a r t R o w   :   i n t e g e r   - -   f i r s t   r o w   t o   d e l e t e� ��� l     ������  � 2 ,a--   endRow : integer -- last row to delete   � ��� X a - -       e n d R o w   :   i n t e g e r   - -   l a s t   r o w   t o   d e l e t e� ��� l     ������  � N Ha--   sheetName : string or integer -- name or index of the target sheet   � ��� � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e t� ��� l     ������  � N Ha--   tableName : string or integer -- name or index of the target table   � ��� � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l e� ��� l     ������  � ( "r--   nothing -- error if problems   � ��� D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m s�    l     ����   C =x--   deleteRowsOfTable(5, 10, 1, 1) --> rows 5 to 10 deleted    � z x - -       d e l e t e R o w s O f T a b l e ( 5 ,   1 0 ,   1 ,   1 )   - - >   r o w s   5   t o   1 0   d e l e t e d  l     ����   F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)    �		 � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / ) 

 i   + . I      ������ &0 deleterowsoftable deleteRowsOfTable  o      ���� 0 startrow startRow  o      ���� 0 endrow endRow  o      ���� 0 	sheetname 	sheetName �� o      �� 0 	tablename 	tableName��  ��   k     ?  q       �~�~ 0 startrow startRow �}�} 0 endrow endRow �|�| 0 	sheetname 	sheetName �{�z�{ 0 	tablename 	tableName�z   �y Q     ?  O    /!"! O    .#$# O    -%&% O    ,'(' I   +�x)�w
�x .coredelonull���     obj ) l   '*�v�u* 7   '�t+,
�t 
NMRw+ o   ! #�s�s 0 startrow startRow, o   $ &�r�r 0 endrow endRow�v  �u  �w  ( 4    �q-
�q 
NmTb- o    �p�p 0 	tablename 	tableName& 4    �o.
�o 
NmSh. o    �n�n 0 	sheetname 	sheetName$ 4    �m/
�m 
docu/ m   	 
�l�l " m    00�                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��   R      �k12
�k .ascrerr ****      � ****1 o      �j�j 0 emsg eMsg2 �i3�h
�i 
errn3 o      �g�g 0 enum eNum�h    R   7 ?�f45
�f .ascrerr ****      � ****4 b   ; >676 m   ; <88 �99 2 C a n ' t   d e l e t e R o w s O f T a b l e :  7 o   < =�e�e 0 emsg eMsg5 �d:�c
�d 
errn: o   9 :�b�b 0 enum eNum�c  �y   ;<; l     �a�`�_�a  �`  �_  < =>= l     �^�]�\�^  �]  �\  > ?@? l     �[AB�[  A H Bc--   deleteColumnsOfTable(startCol, endCol, sheetName, tableName)   B �CC � c - -       d e l e t e C o l u m n s O f T a b l e ( s t a r t C o l ,   e n d C o l ,   s h e e t N a m e ,   t a b l e N a m e )@ DED l     �ZFG�Z  F F @d--   Delete some columns of a table in Numbers' front document.   G �HH � d - -       D e l e t e   s o m e   c o l u m n s   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t .E IJI l     �YKL�Y  K 8 2a--   startCol : integer -- first column to delete   L �MM d a - -       s t a r t C o l   :   i n t e g e r   - -   f i r s t   c o l u m n   t o   d e l e t eJ NON l     �XPQ�X  P 5 /a--   endCol : integer -- last column to delete   Q �RR ^ a - -       e n d C o l   :   i n t e g e r   - -   l a s t   c o l u m n   t o   d e l e t eO STS l     �WUV�W  U N Ha--   sheetName : string or integer -- name or index of the target sheet   V �WW � a - -       s h e e t N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   s h e e tT XYX l     �VZ[�V  Z N Ha--   tableName : string or integer -- name or index of the target table   [ �\\ � a - -       t a b l e N a m e   :   s t r i n g   o r   i n t e g e r   - -   n a m e   o r   i n d e x   o f   t h e   t a r g e t   t a b l eY ]^] l     �U_`�U  _ ( "r--   nothing -- error if problems   ` �aa D r - -       n o t h i n g   - -   e r r o r   i f   p r o b l e m s^ bcb l     �Tde�T  d I Cx--   deleteColumnsOfTable(5, 10, 1, 1) --> columns 5 to 10 deleted   e �ff � x - -       d e l e t e C o l u m n s O f T a b l e ( 5 ,   1 0 ,   1 ,   1 )   - - >   c o l u m n s   5   t o   1 0   d e l e t e dc ghg l     �Sij�S  i F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   j �kk � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )h lml i   / 2non I      �Rp�Q�R ,0 deletecolumnsoftable deleteColumnsOfTablep qrq o      �P�P 0 startcol startColr sts o      �O�O 0 endcol endColt uvu o      �N�N 0 	sheetname 	sheetNamev w�Mw o      �L�L 0 	tablename 	tableName�M  �Q  o k     ?xx yzy q      {{ �K|�K 0 startcol startCol| �J}�J 0 endcol endCol} �I~�I 0 	sheetname 	sheetName~ �H�G�H 0 	tablename 	tableName�G  z �F Q     ?���� O    /��� O    .��� O    -��� O    ,��� I   +�E��D
�E .coredelonull���     obj � l   '��C�B� 7   '�A��
�A 
NMCo� o   ! #�@�@ 0 startcol startCol� o   $ &�?�? 0 endcol endCol�C  �B  �D  � 4    �>�
�> 
NmTb� o    �=�= 0 	tablename 	tableName� 4    �<�
�< 
NmSh� o    �;�; 0 	sheetname 	sheetName� 4    �:�
�: 
docu� m   	 
�9�9 � m    ���                                                                                  NMBR  alis    P  Macintosh HD               ЉG�H+     �Numbers.app                                                     U��R��        ����  	                Applications    Љ�J      �SBG       �  &Macintosh HD:Applications: Numbers.app    N u m b e r s . a p p    M a c i n t o s h   H D  Applications/Numbers.app  / ��  � R      �8��
�8 .ascrerr ****      � ****� o      �7�7 0 emsg eMsg� �6��5
�6 
errn� o      �4�4 0 enum eNum�5  � R   7 ?�3��
�3 .ascrerr ****      � ****� b   ; >��� m   ; <�� ��� 2 C a n ' t   d e l e t e R o w s O f T a b l e :  � o   < =�2�2 0 emsg eMsg� �1��0
�1 
errn� o   9 :�/�/ 0 enum eNum�0  �F  m ��� l     �.�-�,�.  �-  �,  � ��� l     �+�*�)�+  �*  �)  � ��� l     �(�'�&�(  �'  �&  � ��� l     �%���%  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��� l     �$���$  � g ac-                                                                        CELL ADDRESS CONVERSION   � ��� � c -                                                                                                                                                 C E L L   A D D R E S S   C O N V E R S I O N� ��� l     �#���#  � l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   � ��� �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -� ��� l     �"�!� �"  �!  �   � ��� l     ����  �  �  � ��� l     ����  � 3 -c--   integersToAddress(rowNumber, colNumber)   � ��� Z c - -       i n t e g e r s T o A d d r e s s ( r o w N u m b e r ,   c o l N u m b e r )� ��� l     ����  � K Ed--   Get the address of a cell of a table in Numbers' front document   � ��� � d - -       G e t   t h e   a d d r e s s   o f   a   c e l l   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n t� ��� l     ����  � ) #d--   by its row and column number.   � ��� F d - -       b y   i t s   r o w   a n d   c o l u m n   n u m b e r .� ��� l     ����  � @ :a--   rowNumber : integer -- row number of the target cell   � ��� t a - -       r o w N u m b e r   :   i n t e g e r   - -   r o w   n u m b e r   o f   t h e   t a r g e t   c e l l� ��� l     ����  � C =a--   colNumber : integer -- column number of the target cell   � ��� z a - -       c o l N u m b e r   :   i n t e g e r   - -   c o l u m n   n u m b e r   o f   t h e   t a r g e t   c e l l� ��� l     ����  � % r--   string -- address of cell   � ��� > r - -       s t r i n g   - -   a d d r e s s   o f   c e l l� ��� l     ����  � 0 *x--   integersToAddress(10, 56) --> "BD10"   � ��� T x - -       i n t e g e r s T o A d d r e s s ( 1 0 ,   5 6 )   - - >   " B D 1 0 "� ��� l     ����  � F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   � ��� � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )� ��� i   3 6��� I      ���� &0 integerstoaddress integersToAddress� ��� o      �� 0 	rownumber 	rowNumber� ��� o      �� 0 	colnumber 	colNumber�  �  � k     j�� ��� q      �� ��� 0 	rownumber 	rowNumber� ��� 0 	colnumber 	colNumber� ��� 0 x  � ��� 0 res  � ��
� 0 alphabet  �
  � ��	� Q     j���� k    Z�� ��� r    ��� c    ��� o    �� 0 	rownumber 	rowNumber� m    �
� 
long� o      �� 0 	rownumber 	rowNumber� ��� r   	 ��� c   	 ��� o   	 
�� 0 	colnumber 	colNumber� m   
 �
� 
long� o      �� 0 	colnumber 	colNumber� � � Z    '�� G     ?     o    � �  0 	rownumber 	rowNumber m    ����   �� ?     o    ���� 0 	colnumber 	colNumber m    ����  R    #��	

�� .ascrerr ****      � ****	 m   ! " � P M a x .   n u m b e r   o f   r o w s   o r   c o l u m n s   e x c e e d e d !
 ����
�� 
errn m     ���� o��  �  �     r   ( + m   ( ) � 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z o      ���� 0 alphabet    r   , / m   , - �   o      ���� 0 res    r   0 5 _   0 3 o   0 1���� 0 	colnumber 	colNumber m   1 2����  o      ���� 0 x    !  Z  6 F"#����" ?   6 9$%$ o   6 7���� 0 x  % m   7 8����  # r   < B&'& n  < @()( 4   = @��*
�� 
ctxt* o   > ?���� 0 x  ) o   < =���� 0 alphabet  ' o      ���� 0 res  ��  ��  ! +,+ r   G Q-.- b   G O/0/ o   G H���� 0 res  0 n  H N121 4   I N��3
�� 
ctxt3 l  J M4����4 `   J M565 o   J K���� 0 	colnumber 	colNumber6 m   K L���� ��  ��  2 o   H I���� 0 alphabet  . o      ���� 0 res  , 787 r   R W9:9 b   R U;<; o   R S���� 0 res  < o   S T���� 0 	rownumber 	rowNumber: o      ���� 0 res  8 =��= L   X Z>> o   X Y���� 0 res  ��  � R      ��?@
�� .ascrerr ****      � ****? o      ���� 0 emsg eMsg@ ��A��
�� 
errnA o      ���� 0 enum eNum��  � R   b j��BC
�� .ascrerr ****      � ****B b   f iDED m   f gFF �GG 2 C a n ' t   i n t e g e r s T o A d d r e s s :  E o   g h���� 0 emsg eMsgC ��H��
�� 
errnH o   d e���� 0 enum eNum��  �	  � IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM l     ��OP��  O " c--   addressToIntegers(str)   P �QQ 8 c - -       a d d r e s s T o I n t e g e r s ( s t r )N RSR l     ��TU��  T Y Sd--   Get the row and column number of a cell of a table in Numbers' front document   U �VV � d - -       G e t   t h e   r o w   a n d   c o l u m n   n u m b e r   o f   a   c e l l   o f   a   t a b l e   i n   N u m b e r s '   f r o n t   d o c u m e n tS WXW l     ��YZ��  Y  d--   by its address.   Z �[[ * d - -       b y   i t s   a d d r e s s .X \]\ l     ��^_��  ^ 6 0a--   str : string -- address of the target cell   _ �`` ` a - -       s t r   :   s t r i n g   - -   a d d r e s s   o f   t h e   t a r g e t   c e l l] aba l     ��cd��  c < 6r--   list -- two integers (row number, column number)   d �ee l r - -       l i s t   - -   t w o   i n t e g e r s   ( r o w   n u m b e r ,   c o l u m n   n u m b e r )b fgf l     ��hi��  h 2 ,x--   addressToIntegers("BD10") --> {10, 56}   i �jj X x - -       a d d r e s s T o I n t e g e r s ( " B D 1 0 " )   - - >   { 1 0 ,   5 6 }g klk l     ��mn��  m F @u--   ljr (http://applescript.bratis-lover.net/library/numbers/)   n �oo � u - -       l j r   ( h t t p : / / a p p l e s c r i p t . b r a t i s - l o v e r . n e t / l i b r a r y / n u m b e r s / )l pqp i   7 :rsr I      ��t���� &0 addresstointegers addressToIntegerst u��u o      ���� 0 str  ��  ��  s k     �vv wxw q      yy ��z�� 0 str  z ��{�� 0 astid ASTID{ ��|�� 0 alphabet  | ��}�� 0 	rownumber 	rowNumber} ������ 0 	colnumber 	colNumber��  x ~~ q      �� ����� 0 charone charOne� ����� 0 chartwo charTwo� ����� 0 posone posOne� ������ 0 postwo posTwo��   ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 astid ASTID� ���� Q    ����� k   	 ��� ��� r   	 ��� m   	 
�� ��� 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z� o      ���� 0 alphabet  � ��� r    ��� n   ��� 4    ���
�� 
ctxt� m    ���� � o    ���� 0 str  � o      ���� 0 charone charOne� ��� Z    %������� H    �� E   ��� o    ���� 0 alphabet  � o    ���� 0 charone charOne� R    !����
�� .ascrerr ****      � ****� m     �� ���   I n v a l i d   a d d r e s s !� �����
�� 
errn� m    ���� o��  ��  ��  � ��� r   & ,��� n  & *��� 4   ' *���
�� 
ctxt� m   ( )���� � o   & '���� 0 str  � o      ���� 0 chartwo charTwo� ��� Z   - Y������ H   - 1�� E  - 0��� o   - .���� 0 alphabet  � o   . /���� 0 chartwo charTwo� k   4 I�� ��� r   4 7��� o   4 5���� 0 charone charOne� o      ���� 0 chartwo charTwo� ��� r   8 ;��� m   8 9�� ���  � o      ���� 0 charone charOne� ���� r   < I��� n  < G��� 7  = G����
�� 
ctxt� m   A C���� � m   D F������� o   < =���� 0 str  � o      ���� 0 	rownumber 	rowNumber��  ��  � r   L Y��� n  L W��� 7  M W����
�� 
ctxt� m   Q S���� � m   T V������� o   L M���� 0 str  � o      ���� 0 	rownumber 	rowNumber� ��� Z   Z v������ >   Z ]��� o   Z [���� 0 charone charOne� m   [ \�� ���  � k   ` p�� ��� r   ` e��� o   ` a���� 0 charone charOne� n     ��� 1   b d��
�� 
txdl� 1   a b��
�� 
ascr� ���� r   f p��� [   f n��� l  f l������ n  f l��� 1   j l��
�� 
leng� n  f j��� 4  g j���
�� 
citm� m   h i���� � o   f g���� 0 alphabet  ��  ��  � m   l m���� � o      ���� 0 posone posOne��  ��  � r   s v��� m   s t����  � o      ���� 0 posone posOne� ��� r   w |��� o   w x���� 0 chartwo charTwo� n     ��� 1   y {��
�� 
txdl� 1   x y��
�� 
ascr� ��� r   } ���� [   } ���� l  } ����~� n  } ���� 1   � ��}
�} 
leng� n  } ���� 4  ~ ��|�
�| 
citm� m    ��{�{ � o   } ~�z�z 0 alphabet  �  �~  � m   � ��y�y � o      �x�x 0 postwo posTwo� ��� r   � �   [   � � ]   � � o   � ��w�w 0 posone posOne m   � ��v�v  o   � ��u�u 0 postwo posTwo o      �t�t 0 	colnumber 	colNumber�  r   � �	 c   � �

 o   � ��s�s 0 	rownumber 	rowNumber m   � ��r
�r 
long	 o      �q�q 0 	rownumber 	rowNumber  r   � � o   � ��p�p 0 astid ASTID n      1   � ��o
�o 
txdl 1   � ��n
�n 
ascr �m L   � � J   � �  o   � ��l�l 0 	rownumber 	rowNumber �k o   � ��j�j 0 	colnumber 	colNumber�k  �m  � R      �i
�i .ascrerr ****      � **** o      �h�h 0 emsg eMsg �g�f
�g 
errn o      �e�e 0 enum eNum�f  � R   � ��d
�d .ascrerr ****      � **** b   � � m   � � �   2 C a n ' t   a d d r e s s T o I n t e g e r s :   o   � ��c�c 0 emsg eMsg �b!�a
�b 
errn! o   � ��`�` 0 enum eNum�a  ��  q "#" l     �_�^�]�_  �^  �]  # $%$ l     �\�[�Z�\  �[  �Z  % &'& l     �Y�X�W�Y  �X  �W  ' ()( l     �V*+�V  * l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   + �,, �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -) -.- l     �U/0�U  / z t                                                                                                                 EOF   0 �11 �                                                                                                                                                                                                                                   E O F. 232 l     �T45�T  4 l f -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --   5 �66 �   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -   - -3 7�S7 l     �R�Q�P�R  �Q  �P  �S       �O8 ,9:;<=>?@ABCDEF�O  8 �N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�N 0 myname myName�M 0 valueofcell valueOfCell�L  0 setvalueofcell setValueOfCell�K 0 setcheckbox setCheckbox�J (0 nextemptycellinrow nextEmptyCellInRow�I .0 nextemptycellincolumn nextEmptyCellInColumn�H 0 
clearrange 
clearRange�G "0 rowcountoftable rowCountOfTable�F (0 setrowcountoftable setRowCountOfTable�E (0 columncountoftable columnCountOfTable�D .0 setcolumncountoftable setColumnCountOfTable�C &0 deleterowsoftable deleteRowsOfTable�B ,0 deletecolumnsoftable deleteColumnsOfTable�A &0 integerstoaddress integersToAddress�@ &0 addresstointegers addressToIntegers9 �? w�>�=GH�<�? 0 valueofcell valueOfCell�> �;I�; I  �:�9�8�7�: 0 	sheetname 	sheetName�9 0 	tablename 	tableName�8 0 	rownumber 	rowNumber�7 0 	colnumber 	colNumber�=  G �6�5�4�3�2�1�0�6 0 	sheetname 	sheetName�5 0 	tablename 	tableName�4 0 	rownumber 	rowNumber�3 0 	colnumber 	colNumber�2 0 res  �1 0 emsg eMsg�0 0 enum eNumH  ��/�.�-�,�+�*�)J�( �
�/ 
docu
�. 
NmSh
�- 
NmTb
�, 
NMRw
�+ 
NmCl
�* 
NMCv�) 0 emsg eMsgJ �'�&�%
�' 
errn�& 0 enum eNum�%  
�( 
errn�< D 5� **�k/ "*�/ *�/ *�/�/ *�,E�UUUUUO�W X  )�l�%: �$ ��#�"KL�!�$  0 setvalueofcell setValueOfCell�# � M�  M  ������ 0 	cellvalue 	cellValue� 0 	sheetname 	sheetName� 0 	tablename 	tableName� 0 	rownumber 	rowNumber� 0 	colnumber 	colNumber�"  K �������� 0 	cellvalue 	cellValue� 0 	sheetname 	sheetName� 0 	tablename 	tableName� 0 	rownumber 	rowNumber� 0 	colnumber 	colNumber� 0 emsg eMsg� 0 enum eNumL �������N�
� 
docu
� 
NmSh
� 
NmTb
� 
NMRw
� 
NmCl
� 
NMCv� 0 emsg eMsgN ��
�	
� 
errn�
 0 enum eNum�	  
� 
errn�! A 2� **�k/ "*�/ *�/ *�/�/ �*�,FUUUUUW X  )�l�%; �[��OP�� 0 setcheckbox setCheckbox� �Q� Q  ���� ��� 0 cbvalue cbValue� 0 	sheetname 	sheetName� 0 	tablename 	tableName�  0 	rownumber 	rowNumber�� 0 	colnumber 	colNumber�  O ������������������ 0 cbvalue cbValue�� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 	rownumber 	rowNumber�� 0 	colnumber 	colNumber�� 0 cbvalint cbValInt�� 0 emsg eMsg�� 0 enum eNumP ���������������������R���
�� 
docu
�� 
NmSh
�� 
NmTb
�� NMCTfaut
�� 
NMRw
�� 
NmCl
�� 
NMCT
�� 
NMCv
�� NMCTfcch�� 0 emsg eMsgR ������
�� 
errn�� 0 enum eNum��  
�� 
errn� d U� M*�k/ E*�/ =*�/ 5�*�/�/�,FOjE�O� kE�Y hO�*�/�/�,FO�*�/�/�,FUUUUW X 
 )�l��%< �������ST���� (0 nextemptycellinrow nextEmptyCellInRow�� ��U�� U  ���������� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 	rownumber 	rowNumber�� 0 	compvalue 	compValue��  S 	�������������������� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 	rownumber 	rowNumber�� 0 	compvalue 	compValue�� 0 res  �� 0 i  �� 0 len  �� 0 emsg eMsg�� 0 enum eNumT =������������������57��VG
�� 
docu
�� 
NmSh
�� 
NmTb
�� 
NmTc
�� 
NMRw
�� 
NmCl
�� 
NMCv
�� 
errn�� o�� 0 emsg eMsgV ������
�� 
errn�� 0 enum eNum��  �� y j� _*�k/ W*�/ O*�/ G*�,E�OjE�O %k�kh *�/�/�,�  
�E�OY h[OY��O�j  )��l�%�%Y hUUUUO�W X  )�l�%= �������WX���� .0 nextemptycellincolumn nextEmptyCellInColumn�� ��Y�� Y  ���������� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 	colnumber 	colNumber�� 0 	compvalue 	compValue��  W 	�������������������� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 	colnumber 	colNumber�� 0 	compvalue 	compValue�� 0 res  �� 0 i  �� 0 len  �� 0 emsg eMsg�� 0 enum eNumX �����������������������Z�
�� 
docu
�� 
NmSh
�� 
NmTb
�� 
NmTr
�� 
NMRw
�� 
NmCl
�� 
NMCv
�� 
errn�� o�� 0 emsg eMsgZ ������
�� 
errn�� 0 enum eNum��  �� y j� _*�k/ W*�/ O*�/ G*�,E�OjE�O %k�kh *�/�/�,�  
�E�OY h[OY��O�j  )��l�%�%Y hUUUUO�W X  )�l�%> ��&����[\���� 0 
clearrange 
clearRange�� ��]�� ]  �������������� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 startrow startRow�� 0 startcol startCol�� 0 endrow endRow�� 0 endcol endCol��  [ ������������������������ 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 startrow startRow�� 0 startcol startCol�� 0 endrow endRow�� 0 endcol endCol�� 0 endcolnumber endColNumber�� 0 i  �� 0 j  �� 0 emsg eMsg�� 0 enum eNum\ ]������R��������^��e
�� 
docu
�� 
NmSh
�� 
NmTb
�� 
NMRw
�� 
NmCl
�� 
NMCv�� 0 emsg eMsg^ ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� Z K� C*�k/ ;*�/ 3*�/ + (��kh  ��kh �*�/�/�,F[OY��[OY��UUUUW X  	)�l�%? �������_`���� "0 rowcountoftable rowCountOfTable�� ��a�� a  ������ 0 	sheetname 	sheetName�� 0 	tablename 	tableName��  _ ��������~�� 0 	sheetname 	sheetName�� 0 	tablename 	tableName�� 0 res  � 0 emsg eMsg�~ 0 enum eNum` 	��}�|�{�z�yb�x�
�} 
docu
�| 
NmSh
�{ 
NmTb
�z 
NmTr�y 0 emsg eMsgb �w�v�u
�w 
errn�v 0 enum eNum�u  
�x 
errn�� 9 *� *�k/ *�/ *�/ *�,E�UUUUO�W X  )�l�%@ �t�s�rcd�q�t (0 setrowcountoftable setRowCountOfTable�s �pe�p e  �o�n�m�o 0 rowcount rowCount�n 0 	sheetname 	sheetName�m 0 	tablename 	tableName�r  c �l�k�j�i�h�l 0 rowcount rowCount�k 0 	sheetname 	sheetName�j 0 	tablename 	tableName�i 0 emsg eMsg�h 0 enum eNumd 	 �g�f�e�d�cf�b(
�g 
docu
�f 
NmSh
�e 
NmTb
�d 
NmTr�c 0 emsg eMsgf �a�`�_
�a 
errn�` 0 enum eNum�_  
�b 
errn�q 6 '� *�k/ *�/ *�/ �*�,FUUUUW X  )�l�%A �^U�]�\gh�[�^ (0 columncountoftable columnCountOfTable�] �Zi�Z i  �Y�X�Y 0 	sheetname 	sheetName�X 0 	tablename 	tableName�\  g �W�V�U�T�S�W 0 	sheetname 	sheetName�V 0 	tablename 	tableName�U 0 res  �T 0 emsg eMsg�S 0 enum eNumh 	t�R�Q�P�O�Nj�M~
�R 
docu
�Q 
NmSh
�P 
NmTb
�O 
NmTc�N 0 emsg eMsgj �L�K�J
�L 
errn�K 0 enum eNum�J  
�M 
errn�[ 9 *� *�k/ *�/ *�/ *�,E�UUUUO�W X  )�l�%B �I��H�Gkl�F�I .0 setcolumncountoftable setColumnCountOfTable�H �Em�E m  �D�C�B�D 0 columncount columnCount�C 0 	sheetname 	sheetName�B 0 	tablename 	tableName�G  k �A�@�?�>�=�A 0 columncount columnCount�@ 0 	sheetname 	sheetName�? 0 	tablename 	tableName�> 0 emsg eMsg�= 0 enum eNuml 	��<�;�:�9�8n�7�
�< 
docu
�; 
NmSh
�: 
NmTb
�9 
NmTc�8 0 emsg eMsgn �6�5�4
�6 
errn�5 0 enum eNum�4  
�7 
errn�F 6 '� *�k/ *�/ *�/ �*�,FUUUUW X  )�l�%C �3�2�1op�0�3 &0 deleterowsoftable deleteRowsOfTable�2 �/q�/ q  �.�-�,�+�. 0 startrow startRow�- 0 endrow endRow�, 0 	sheetname 	sheetName�+ 0 	tablename 	tableName�1  o �*�)�(�'�&�%�* 0 startrow startRow�) 0 endrow endRow�( 0 	sheetname 	sheetName�' 0 	tablename 	tableName�& 0 emsg eMsg�% 0 enum eNump 
0�$�#�"�!� �r�8
�$ 
docu
�# 
NmSh
�" 
NmTb
�! 
NMRw
�  .coredelonull���     obj � 0 emsg eMsgr ���
� 
errn� 0 enum eNum�  
� 
errn�0 @ 1� )*�k/ !*�/ *�/ *[�\[Z�\Z�2j UUUUW X  )�l�%D �o��st�� ,0 deletecolumnsoftable deleteColumnsOfTable� �u� u  ����� 0 startcol startCol� 0 endcol endCol� 0 	sheetname 	sheetName� 0 	tablename 	tableName�  s ������� 0 startcol startCol� 0 endcol endCol� 0 	sheetname 	sheetName� 0 	tablename 	tableName� 0 emsg eMsg� 0 enum eNumt 
���
�	���v��
� 
docu
�
 
NmSh
�	 
NmTb
� 
NMCo
� .coredelonull���     obj � 0 emsg eMsgv ���
� 
errn� 0 enum eNum�  
� 
errn� @ 1� )*�k/ !*�/ *�/ *[�\[Z�\Z�2j UUUUW X  )�l�%E ��� ��wx��� &0 integerstoaddress integersToAddress�  ��y�� y  ������ 0 	rownumber 	rowNumber�� 0 	colnumber 	colNumber��  w ���������������� 0 	rownumber 	rowNumber�� 0 	colnumber 	colNumber�� 0 x  �� 0 res  �� 0 alphabet  �� 0 emsg eMsg�� 0 enum eNumx ������������������zF
�� 
long��   ���� 
�� 
bool
�� 
errn�� o�� 
�� 
ctxt�� 0 emsg eMsgz ������
�� 
errn�� 0 enum eNum��  �� k \��&E�O��&E�O��
 ���& )��l�Y hO�E�O�E�O��"E�O�j ��/E�Y hO����#/%E�O��%E�O�W X  )�l��%F ��s����{|���� &0 addresstointegers addressToIntegers�� ��}�� }  ���� 0 str  ��  { ������������������������ 0 str  �� 0 astid ASTID�� 0 alphabet  �� 0 	rownumber 	rowNumber�� 0 	colnumber 	colNumber�� 0 charone charOne�� 0 chartwo charTwo�� 0 posone posOne�� 0 postwo posTwo�� 0 emsg eMsg�� 0 enum eNum| ������������������������~
�� 
ascr
�� 
txdl
�� 
ctxt
�� 
errn�� o
�� 
citm
�� 
leng�� 
�� 
long�� 0 emsg eMsg~ ������
�� 
errn�� 0 enum eNum��  �� ���,E�O ��E�O��k/E�O�� )��l�Y hO��l/E�O�� �E�O�E�O�[�\[Zl\Zi2E�Y �[�\[Zm\Zi2E�O�� ���,FO��k/�,kE�Y jE�O���,FO��k/�,kE�O�� �E�O��&E�O���,FO��lvW X  )�l�%ascr  ��ޭ