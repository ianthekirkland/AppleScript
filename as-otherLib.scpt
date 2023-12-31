FasdUAS 1.101.10   ��   ��    k             l     ��  ��    A ;-----------------------------------------------------------     � 	 	 v - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
  
 l          j     �� �� 0 myname myName  m        �    _ o t h e r L i b  # -> (the name of this library)     �   : - >   ( t h e   n a m e   o f   t h i s   l i b r a r y )      l     ��  ��    A ;-----------------------------------------------------------     �   v - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��   !��     . (--- Convert an AS list to a string -----    ! � " " P - - -   C o n v e r t   a n   A S   l i s t   t o   a   s t r i n g   - - - - -   # $ # l     �� % &��   % 2 ,--------------------------------------------    & � ' ' X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - $  ( ) ( l      �� * +��   *��Takes a list of strings (or values that AS can coerce to strings) and turns it into a string, using the supplied list item delimiter.USAGE: set myString to listToString for {"dum", "de", "doo", "dum"} from "-"        --> "dum-de-doo-dum"Input:        someList list - an AS list of items that can be coerced to string        stringDelimiter string - the separator for the list items.Output: string - the list items delimited by stringDelimiter.Error: not ruthlessly tested for non string values    + � , ,�  T a k e s   a   l i s t   o f   s t r i n g s   ( o r   v a l u e s   t h a t   A S   c a n   c o e r c e   t o   s t r i n g s )   a n d   t u r n s   i t   i n t o   a   s t r i n g ,   u s i n g   t h e   s u p p l i e d   l i s t   i t e m   d e l i m i t e r .  U S A G E :   s e t   m y S t r i n g   t o   l i s t T o S t r i n g   f o r   { " d u m " ,   " d e " ,   " d o o " ,   " d u m " }   f r o m   " - "                  - - >   " d u m - d e - d o o - d u m "  I n p u t :                  s o m e L i s t   l i s t   -   a n   A S   l i s t   o f   i t e m s   t h a t   c a n   b e   c o e r c e d   t o   s t r i n g                  s t r i n g D e l i m i t e r   s t r i n g   -   t h e   s e p a r a t o r   f o r   t h e   l i s t   i t e m s .  O u t p u t :   s t r i n g   -   t h e   l i s t   i t e m s   d e l i m i t e d   b y   s t r i n g D e l i m i t e r .  E r r o r :   n o t   r u t h l e s s l y   t e s t e d   f o r   n o n   s t r i n g   v a l u e s  )  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 1 + listToString -- by Richard Morton, 2001 --    2 � 3 3 V   l i s t T o S t r i n g   - -   b y   R i c h a r d   M o r t o n ,   2 0 0 1   - - 0  4 5 4 l     �� 6 7��   6 6 0 Convert list to string using supplied delimiter    7 � 8 8 `   C o n v e r t   l i s t   t o   s t r i n g   u s i n g   s u p p l i e d   d e l i m i t e r 5  9 : 9 l     �� ; <��   ;    Pass a list and delimiter    < � = = 4   P a s s   a   l i s t   a n d   d e l i m i t e r :  > ? > l     ��������  ��  ��   ?  @ A @ i     B C B I      ���� D�� 0 listtostring listToString��   D �� E F
�� 
for  E o      ���� 0 somelist someList F �� G��
�� 
agst G o      ���� "0 stringdelimiter stringDelimiter��   C O     ! H I H k      J J  K L K r    	 M N M 1    ��
�� 
txdl N o      ���� 0 ot oT L  O P O r   
  Q R Q o   
 ���� "0 stringdelimiter stringDelimiter R 1    ��
�� 
txdl P  S T S r     U V U c     W X W l    Y���� Y n     Z [ Z 2   ��
�� 
citm [ o    ���� 0 somelist someList��  ��   X m    ��
�� 
TEXT V o      ���� 0 str   T  \ ] \ r     ^ _ ^ o    ���� 0 ot oT _ 1    ��
�� 
txdl ]  `�� ` L      a a o    ���� 0 str  ��   I 1     ��
�� 
ascr A  b c b l     ��������  ��  ��   c  d e d l     ��������  ��  ��   e  f g f l     ��������  ��  ��   g  h i h l     �� j k��   j 8 2--- Convert a delimited string to an AS list -----    k � l l d - - -   C o n v e r t   a   d e l i m i t e d   s t r i n g   t o   a n   A S   l i s t   - - - - - i  m n m l     �� o p��   o 2 ,--------------------------------------------    p � q q X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - n  r s r l      �� t u��   t��Splits a string into a list using the supplied delimiter.USAGE: set myList to stringToList for "10-20-30-40" from "-"        --> {"10", "20", "30", "40"}Input:        someString list - the text to tokenise        stringDelimiter string - the separator for the list items.Output: list of strings - components of the string, split at stringDelimiter.Error: not ruthlessly tested, but works    u � v v  S p l i t s   a   s t r i n g   i n t o   a   l i s t   u s i n g   t h e   s u p p l i e d   d e l i m i t e r .  U S A G E :   s e t   m y L i s t   t o   s t r i n g T o L i s t   f o r   " 1 0 - 2 0 - 3 0 - 4 0 "   f r o m   " - "                  - - >   { " 1 0 " ,   " 2 0 " ,   " 3 0 " ,   " 4 0 " }  I n p u t :                  s o m e S t r i n g   l i s t   -   t h e   t e x t   t o   t o k e n i s e                  s t r i n g D e l i m i t e r   s t r i n g   -   t h e   s e p a r a t o r   f o r   t h e   l i s t   i t e m s .  O u t p u t :   l i s t   o f   s t r i n g s   -   c o m p o n e n t s   o f   t h e   s t r i n g ,   s p l i t   a t   s t r i n g D e l i m i t e r .  E r r o r :   n o t   r u t h l e s s l y   t e s t e d ,   b u t   w o r k s  s  w x w l     ��������  ��  ��   x  y z y l     �� { |��   { 1 + stringToList -- by Richard Morton, 2001 --    | � } } V   s t r i n g T o L i s t   - -   b y   R i c h a r d   M o r t o n ,   2 0 0 1   - - z  ~  ~ l     �� � ���   � 6 0 Convert string to list using supplied delimiter    � � � � `   C o n v e r t   s t r i n g   t o   l i s t   u s i n g   s u p p l i e d   d e l i m i t e r   � � � l     �� � ���   � "  Pass a string and delimiter    � � � � 8   P a s s   a   s t r i n g   a n d   d e l i m i t e r �  � � � l     ��������  ��  ��   �  � � � i    
 � � � I      ���� ��� 0 stringtolist stringToList��   � �� � �
�� 
for  � o      ���� 0 	thestring 	theString � �� ���
�� 
from � o      ���� "0 stringdelimiter stringDelimiter��   � O      � � � k     � �  � � � r    	 � � � 1    ��
�� 
txdl � o      ���� 0 ot oT �  � � � r   
  � � � o   
 ���� "0 stringdelimiter stringDelimiter � 1    ��
�� 
txdl �  � � � r     � � � n     � � � 2   ��
�� 
citm � o    ���� 0 	thestring 	theString � o      ���� 0 outlist outList �  � � � r     � � � o    ���� 0 ot oT � 1    ��
�� 
txdl �  ��� � L     � � o    ���� 0 outlist outList��   � 1     ��
�� 
ascr �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � E ?--- Convert an AS list to a string that looks like a list -----    � � � � ~ - - -   C o n v e r t   a n   A S   l i s t   t o   a   s t r i n g   t h a t   l o o k s   l i k e   a   l i s t   - - - - - �  � � � l     �� � ���   � < 6------------------------------------------------------    � � � � l - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l      �� � ���   ���Make a string representation of an AS list. Supports strings, numbers, aliases & nested lists.USAGE:set testList to {{1, 2, 3}, {"one", "two", "three"}, alias "Mac HD:"}set myString to literalList from testList         --> "{{1, 2, 3}, {"one", "two", "three"}, alias "Mac HD:"}"Input: list - an AS list of strings, numbers, aliases, or lists thereof.Output: string - a text replicate of the list.Error: error number -1703 if the input is not a list.    � � � ��  M a k e   a   s t r i n g   r e p r e s e n t a t i o n   o f   a n   A S   l i s t .   S u p p o r t s   s t r i n g s ,   n u m b e r s ,   a l i a s e s   &   n e s t e d   l i s t s .  U S A G E :  s e t   t e s t L i s t   t o   { { 1 ,   2 ,   3 } ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   a l i a s   " M a c   H D : " }  s e t   m y S t r i n g   t o   l i t e r a l L i s t   f r o m   t e s t L i s t                    - - >   " { { 1 ,   2 ,   3 } ,   { " o n e " ,   " t w o " ,   " t h r e e " } ,   a l i a s   " M a c   H D : " } "  I n p u t :   l i s t   -   a n   A S   l i s t   o f   s t r i n g s ,   n u m b e r s ,   a l i a s e s ,   o r   l i s t s   t h e r e o f .  O u t p u t :   s t r i n g   -   a   t e x t   r e p l i c a t e   o f   t h e   l i s t .  E r r o r :   e r r o r   n u m b e r   - 1 7 0 3   i f   t h e   i n p u t   i s   n o t   a   l i s t .  �  � � � l     ��������  ��  ��   �  � � � i     � � � I      ���� ��� 0 literallist literalList��   � �� ���
�� 
from � o      ���� 0 somelist someList��   � Z     � � ��� � � >     � � � n      � � � m    ��
�� 
pcls � o     ���� 0 somelist someList � m    ��
�� 
list � R    �� � �
�� .ascrerr ****      � **** � m     � � � � � : ' l i t e r a l L i s t '   r e q u i r e s   a   l i s t � �� ���
�� 
errn � m   
 �����Y��  ��   � k    � � �  � � � r     � � � m     � � � � �  " � o      ���� 0 q   �  � � � r     � � � J     � �  ��� � m     � � � � �  {��   � o      ���� 0 outlist outList �  � � � r      � � � n     � � � 1    ��
�� 
leng � o    ���� 0 somelist someList � o      ���� 0 
listlength 
listLength �  � � � Y   ! � ��� � �� � k   + � � �  � � � r   + 1 � � � n   + / � � � 4   , /�~ �
�~ 
cobj � o   - .�}�} 0 i   � o   + ,�|�| 0 somelist someList � o      �{�{ 0 thisitem thisItem �  � � � r   2 7 � � � n   2 5 � � � m   3 5�z
�z 
pcls � o   2 3�y�y 0 thisitem thisItem � o      �x�x 0 	itemclass 	itemClass �  � � � Z   8 w   =  8 ; o   8 9�w�w 0 	itemclass 	itemClass m   9 :�v
�v 
TEXT r   > F b   > C	 b   > A

 o   > ?�u�u 0 q   o   ? @�t�t 0 thisitem thisItem	 o   A B�s�s 0 q   n        ;   D E o   C D�r�r 0 outlist outList  =  I L o   I J�q�q 0 	itemclass 	itemClass m   J K�p
�p 
alis  r   O [ b   O X b   O V b   O R m   O P �  a l i a s   o   P Q�o�o 0 q   l  R U�n�m c   R U  o   R S�l�l 0 thisitem thisItem  m   S T�k
�k 
TEXT�n  �m   o   V W�j�j 0 q   n      !"!  ;   Y Z" o   X Y�i�i 0 outlist outList #$# =  ^ a%&% o   ^ _�h�h 0 	itemclass 	itemClass& m   _ `�g
�g 
list$ '�f' r   d n()( I  d k�e�d*�e 0 literallist literalList�d  * �c+�b
�c 
from+ o   f g�a�a 0 thisitem thisItem�b  ) n      ,-,  ;   l m- o   k l�`�` 0 outlist outList�f   r   q w./. l  q t0�_�^0 c   q t121 o   q r�]�] 0 thisitem thisItem2 m   r s�\
�\ 
TEXT�_  �^  / n      343  ;   u v4 o   t u�[�[ 0 outlist outList � 5�Z5 Z  x �67�Y�X6 l  x {8�W�V8 A   x {9:9 o   x y�U�U 0 i  : o   y z�T�T 0 
listlength 
listLength�W  �V  7 r   ~ �;<; m   ~ == �>>  ,  < l     ?�S�R? n      @A@  ;   � �A o    ��Q�Q 0 outlist outList�S  �R  �Y  �X  �Z  �� 0 i   � m   $ %�P�P  � o   % &�O�O 0 
listlength 
listLength�   � BCB r   � �DED m   � �FF �GG  }E n      HIH  ;   � �I o   � ��N�N 0 outlist outListC JKJ r   � �LML n  � �NON 1   � ��M
�M 
txdlO 1   � ��L
�L 
ascrM o      �K�K 0 ot oTK PQP r   � �RSR m   � �TT �UU  S n     VWV 1   � ��J
�J 
txdlW 1   � ��I
�I 
ascrQ XYX r   � �Z[Z c   � �\]\ o   � ��H�H 0 outlist outList] m   � ��G
�G 
TEXT[ o      �F�F 0 litlist litListY ^_^ r   � �`a` o   � ��E�E 0 ot oTa n     bcb 1   � ��D
�D 
txdlc 1   � ��C
�C 
ascr_ d�Bd L   � �ee o   � ��A�A 0 litlist litList�B   � fgf l     �@�?�>�@  �?  �>  g hih l     �=�<�;�=  �<  �;  i jkj l     �:�9�8�:  �9  �8  k lml l     �7�6�5�7  �6  �5  m non l     �4pq�4  p ) #--- Multiple Find and replace -----   q �rr F - - -   M u l t i p l e   F i n d   a n d   r e p l a c e   - - - - -o sts l     �3uv�3  u % -------------------------------   v �ww > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -t xyx l      �2z{�2  z��A TIDs based find and replace routine for replacing multiple characters in a string. Reasonably fast unless there are a lot of different characters to replace. WIll probably fail if there are more than about 4000 instances of any 'find' string.USAGE: set newString to findReplace for "this:string:had:colons" from {":", "i", "o"} to {"-", "u", "e"}        --> "thus-strung-had-celens"Input:        inputString string - the text to do the find/replace on.        oldChars list - list of strings to find.        newChar list - list of strings to be substituted.Output: string - inputString with all instances of oldChars replaced with newCharsError: not ruthlessly tested for non string values.   { �|||  A   T I D s   b a s e d   f i n d   a n d   r e p l a c e   r o u t i n e   f o r   r e p l a c i n g   m u l t i p l e   c h a r a c t e r s   i n   a   s t r i n g .   R e a s o n a b l y   f a s t   u n l e s s   t h e r e   a r e   a   l o t   o f   d i f f e r e n t   c h a r a c t e r s   t o   r e p l a c e .   W I l l   p r o b a b l y   f a i l   i f   t h e r e   a r e   m o r e   t h a n   a b o u t   4 0 0 0   i n s t a n c e s   o f   a n y   ' f i n d '   s t r i n g .  U S A G E :   s e t   n e w S t r i n g   t o   f i n d R e p l a c e   f o r   " t h i s : s t r i n g : h a d : c o l o n s "   f r o m   { " : " ,   " i " ,   " o " }   t o   { " - " ,   " u " ,   " e " }                  - - >   " t h u s - s t r u n g - h a d - c e l e n s "  I n p u t :                  i n p u t S t r i n g   s t r i n g   -   t h e   t e x t   t o   d o   t h e   f i n d / r e p l a c e   o n .                  o l d C h a r s   l i s t   -   l i s t   o f   s t r i n g s   t o   f i n d .                  n e w C h a r   l i s t   -   l i s t   o f   s t r i n g s   t o   b e   s u b s t i t u t e d .  O u t p u t :   s t r i n g   -   i n p u t S t r i n g   w i t h   a l l   i n s t a n c e s   o f   o l d C h a r s   r e p l a c e d   w i t h   n e w C h a r s  E r r o r :   n o t   r u t h l e s s l y   t e s t e d   f o r   n o n   s t r i n g   v a l u e s . y }~} l     �1��1   0 * findReplace -- by Richard Morton, 2002 --   � ��� T   f i n d R e p l a c e   - -   b y   R i c h a r d   M o r t o n ,   2 0 0 2   - -~ ��� l     �0���0  �   Multiple find/replace   � ��� ,   M u l t i p l e   f i n d / r e p l a c e� ��� l     �/���/  � N H Pass a string, a list of 'find' strings and a list of 'replace' strings   � ��� �   P a s s   a   s t r i n g ,   a   l i s t   o f   ' f i n d '   s t r i n g s   a n d   a   l i s t   o f   ' r e p l a c e '   s t r i n g s� ��� l     �.�-�,�.  �-  �,  � ��� i   ��� I      �+�*��+ 0 findreplace findReplace�*  � �)��
�) 
for � o      �(�( 0 inputstring inputString� �'��
�' 
from� o      �&�& 0 oldchars oldChars� �%��$
�% 
into� o      �#�# 0 newchars newChars�$  � O     a��� k    `�� ��� r    	��� 1    �"
�" 
txdl� o      �!�! 0 oltids olTids� ��� s   
 ��� o   
 � �  0 inputstring inputString� o      �� 0 tempstr tempStr� ��� Q    ]���� k    I�� ��� Y    C������ k    >�� ��� r    '��� n    #��� 4     #��
� 
cobj� o   ! "�� 0 n  � o     �� 0 oldchars oldChars� 1   # &�
� 
txdl� ��� r   ( -��� n   ( +��� 2  ) +�
� 
citm� o   ( )�� 0 tempstr tempStr� o      �� 0 tmplist tmpList� ��� r   . 6��� n   . 2��� 4   / 2��
� 
cobj� o   0 1�� 0 n  � o   . /�� 0 newchars newChars� 1   2 5�
� 
txdl� ��� r   7 >��� c   7 <��� n   7 :��� 2  8 :�
� 
citm� o   7 8�� 0 tmplist tmpList� m   : ;�
� 
TEXT� o      �� 0 tempstr tempStr�  � 0 n  � m    �� � n    ��� 1    �
� 
leng� o    �
�
 0 oldchars oldChars�  � ��	� r   D I��� o   D E�� 0 oltids olTids� 1   E H�
� 
txdl�	  � R      ���
� .ascrerr ****      � ****� o      �� 0 estr eStr� ���
� 
errn� o      �� 0 enum eNum�  � k   Q ]�� ��� r   Q V��� o   Q R�� 0 oltids olTids� 1   R U� 
�  
txdl� ���� R   W ]����
�� .ascrerr ****      � ****� o   [ \���� 0 estr eStr� �����
�� 
errn� o   Y Z���� 0 enum eNum��  ��  � ���� L   ^ `�� o   ^ _���� 0 tempstr tempStr��  � 1     ��
�� 
ascr� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � - '--- Check for AppleScript version -----   � ��� N - - -   C h e c k   f o r   A p p l e S c r i p t   v e r s i o n   - - - - -� ��� l     ������  � 2 ,--------------------------------------------   � ��� X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l      ������  ���Sometimes it is necessary to check for a particular AS version to determine the existence of certain functionality. This returns a boolean telling you if your minimum AS version requirements are met. It should work under any OS/AS version except AS 1.6 - see the error note.Will compile slightly differently under late AS versions - computer will be replaced by system attribute - where the Finder tell is not required. Removing the Finder tell speeds up the handler considerably and can be done if your script is definitely not going to be running under anything earlier than AS 1.8.3USAGE: set haveAS192 to minASVers at 192        --> true -- if running AS 1.9.2 or higher, otherwise falseInput: integer - three digit number representing the minimum AS version required, e.g. 130 for AS 1.3; 155 for AS 1.5.5Output: boolean - true if the AS version is that or higher, otherwise false.Error: AS 1.6 can be quite problematic to test for. May return error number -1708 under this version.   � ����  S o m e t i m e s   i t   i s   n e c e s s a r y   t o   c h e c k   f o r   a   p a r t i c u l a r   A S   v e r s i o n   t o   d e t e r m i n e   t h e   e x i s t e n c e   o f   c e r t a i n   f u n c t i o n a l i t y .   T h i s   r e t u r n s   a   b o o l e a n   t e l l i n g   y o u   i f   y o u r   m i n i m u m   A S   v e r s i o n   r e q u i r e m e n t s   a r e   m e t .   I t   s h o u l d   w o r k   u n d e r   a n y   O S / A S   v e r s i o n   e x c e p t   A S   1 . 6   -   s e e   t h e   e r r o r   n o t e .  W i l l   c o m p i l e   s l i g h t l y   d i f f e r e n t l y   u n d e r   l a t e   A S   v e r s i o n s   -   c o m p u t e r   w i l l   b e   r e p l a c e d   b y   s y s t e m   a t t r i b u t e   -   w h e r e   t h e   F i n d e r   t e l l   i s   n o t   r e q u i r e d .   R e m o v i n g   t h e   F i n d e r   t e l l   s p e e d s   u p   t h e   h a n d l e r   c o n s i d e r a b l y   a n d   c a n   b e   d o n e   i f   y o u r   s c r i p t   i s   d e f i n i t e l y   n o t   g o i n g   t o   b e   r u n n i n g   u n d e r   a n y t h i n g   e a r l i e r   t h a n   A S   1 . 8 . 3  U S A G E :   s e t   h a v e A S 1 9 2   t o   m i n A S V e r s   a t   1 9 2                  - - >   t r u e   - -   i f   r u n n i n g   A S   1 . 9 . 2   o r   h i g h e r ,   o t h e r w i s e   f a l s e  I n p u t :   i n t e g e r   -   t h r e e   d i g i t   n u m b e r   r e p r e s e n t i n g   t h e   m i n i m u m   A S   v e r s i o n   r e q u i r e d ,   e . g .   1 3 0   f o r   A S   1 . 3 ;   1 5 5   f o r   A S   1 . 5 . 5  O u t p u t :   b o o l e a n   -   t r u e   i f   t h e   A S   v e r s i o n   i s   t h a t   o r   h i g h e r ,   o t h e r w i s e   f a l s e .  E r r o r :   A S   1 . 6   c a n   b e   q u i t e   p r o b l e m a t i c   t o   t e s t   f o r .   M a y   r e t u r n   e r r o r   n u m b e r   - 1 7 0 8   u n d e r   t h i s   v e r s i o n . � ��� l     ��������  ��  ��  � ��� l     ������  � - ' minASVers -- by Richard Morton 2004 --   � ��� N   m i n A S V e r s   - -   b y   R i c h a r d   M o r t o n   2 0 0 4   - -� ��� l     ������  � 0 * Determine if the AS version is sufficient   � ��� T   D e t e r m i n e   i f   t h e   A S   v e r s i o n   i s   s u f f i c i e n t� ��� l     �� ��    J D Pass a 3 digit number corresponding to the minimum version required    � �   P a s s   a   3   d i g i t   n u m b e r   c o r r e s p o n d i n g   t o   t h e   m i n i m u m   v e r s i o n   r e q u i r e d�  l     ��������  ��  ��    i     I      ����	�� 0 	minasvers 	minASVers��  	 ��
��
�� 
at  
 o      ���� 0 reqvers reqVers��   k     G  r     	 n      2   ��
�� 
cha  l    ���� b      m      �  1 1 0 0 l   ���� c     o    ���� 0 reqvers reqVers m    ��
�� 
TEXT��  ��  ��  ��   o      ���� 0 numlist numList  r   
  m   
 ����   o      ���� 0 decnum decNum  X    * ��!  r    %"#" [    #$%$ l   !&����& ]    !'(' m    ���� ( o     ���� 0 decnum decNum��  ��  % o   ! "���� 0 num  # o      ���� 0 decnum decNum�� 0 num  ! o    ���� 0 numlist numList )*) O  + 7+,+ r   / 6-.- l  / 4/����/ I  / 4��0��
�� .fndrgstl****    ��� ****0 m   / 011 �22  a s c v��  ��  ��  . o      ���� 0 ascv  , m   + ,33�                                                                                  MACS  alis    t  Macintosh HD               ЉG�H+     2
Finder.app                                                      W��u�        ����  	                CoreServices    Љ�J      �v,�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  * 454 Z  8 D67����6 A   8 ;898 o   8 9���� 0 ascv  9 o   9 :���� 0 decnum decNum7 L   > @:: m   > ?��
�� boovfals��  ��  5 ;��; L   E G<< m   E F��
�� boovtrue��   =>= l     ��������  ��  ��  > ?@? l     ��������  ��  ��  @ ABA l     ��������  ��  ��  B CDC l     ��EF��  E ( "--- Check for system version -----   F �GG D - - -   C h e c k   f o r   s y s t e m   v e r s i o n   - - - - -D HIH l     ��JK��  J 2 ,--------------------------------------------   K �LL X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -I MNM l      ��OP��  O��Similar to Check for AppleScript version, above. Checks for the minimum required system version. Returns a boolean. Should be compatible with any OS version.Note that if specific AS functionality is required, scripts should explicitly check for the AS version rather than assuming anything from the system version.USAGE: set haveOS1035 to minOSVers at 1035        --> true -- if running OS 10.3.5 or higher, otherwise falseInput: integer - three or four digit number representing the minimum system version required, e.g. 860 for OS 8.6; 1026 for OS 10.2.6Output: boolean - true if the system version is that or higher, otherwise false.Error:   P �QQ  S i m i l a r   t o   C h e c k   f o r   A p p l e S c r i p t   v e r s i o n ,   a b o v e .   C h e c k s   f o r   t h e   m i n i m u m   r e q u i r e d   s y s t e m   v e r s i o n .   R e t u r n s   a   b o o l e a n .   S h o u l d   b e   c o m p a t i b l e   w i t h   a n y   O S   v e r s i o n .  N o t e   t h a t   i f   s p e c i f i c   A S   f u n c t i o n a l i t y   i s   r e q u i r e d ,   s c r i p t s   s h o u l d   e x p l i c i t l y   c h e c k   f o r   t h e   A S   v e r s i o n   r a t h e r   t h a n   a s s u m i n g   a n y t h i n g   f r o m   t h e   s y s t e m   v e r s i o n .  U S A G E :   s e t   h a v e O S 1 0 3 5   t o   m i n O S V e r s   a t   1 0 3 5                  - - >   t r u e   - -   i f   r u n n i n g   O S   1 0 . 3 . 5   o r   h i g h e r ,   o t h e r w i s e   f a l s e  I n p u t :   i n t e g e r   -   t h r e e   o r   f o u r   d i g i t   n u m b e r   r e p r e s e n t i n g   t h e   m i n i m u m   s y s t e m   v e r s i o n   r e q u i r e d ,   e . g .   8 6 0   f o r   O S   8 . 6 ;   1 0 2 6   f o r   O S   1 0 . 2 . 6  O u t p u t :   b o o l e a n   -   t r u e   i f   t h e   s y s t e m   v e r s i o n   i s   t h a t   o r   h i g h e r ,   o t h e r w i s e   f a l s e .  E r r o r : N RSR l     ��TU��  T - ' minOSVers -- by Richard Morton 2004 --   U �VV N   m i n O S V e r s   - -   b y   R i c h a r d   M o r t o n   2 0 0 4   - -S WXW l     ��YZ��  Y 0 * Determine if the OS version is sufficient   Z �[[ T   D e t e r m i n e   i f   t h e   O S   v e r s i o n   i s   s u f f i c i e n tX \]\ l     ��^_��  ^ Z T Pass a 3 or 4 (for OS X) digit number corresponding to the minimum version required   _ �`` �   P a s s   a   3   o r   4   ( f o r   O S   X )   d i g i t   n u m b e r   c o r r e s p o n d i n g   t o   t h e   m i n i m u m   v e r s i o n   r e q u i r e d] aba l     ��������  ��  ��  b cdc i    efe I      ����g�� 0 	minosvers 	minOSVers��  g ��h��
�� 
at  h o      ���� 0 reqvers reqVers��  f k     Eii jkj r     lml n     non 2   ��
�� 
cha o l    p����p c     qrq o     ���� 0 reqvers reqVersr m    ��
�� 
TEXT��  ��  m o      ���� 0 numlist numListk sts r    uvu m    	����  v o      ���� 0 decnum decNumt wxw X    (y��zy r    #{|{ [    !}~} l   ���� ]    ��� m    ���� � o    ���� 0 decnum decNum��  ��  ~ o     ���� 0 num  | o      ���� 0 decnum decNum�� 0 num  z o    ���� 0 numlist numListx ��� O  ) 5��� r   - 4��� l  - 2������ I  - 2�����
�� .fndrgstl****    ��� ****� m   - .�� ���  s y s v��  ��  ��  � o      ���� 0 sysv  � m   ) *���                                                                                  MACS  alis    t  Macintosh HD               ЉG�H+     2
Finder.app                                                      W��u�        ����  	                CoreServices    Љ�J      �v,�       2   &   %  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  � ��� Z  6 B������� A   6 9��� o   6 7���� 0 sysv  � o   7 8���� 0 decnum decNum� L   < >�� m   < =��
�� boovfals��  ��  � ���� L   C E�� m   C D��
�� boovtrue��  d ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � ; 5--- Initialise and set the text item delimiters -----   � ��� j - - -   I n i t i a l i s e   a n d   s e t   t h e   t e x t   i t e m   d e l i m i t e r s   - - - - -� ��� l     ������  � 2 ,--------------------------------------------   � ��� X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l      ������  �yA pair of handlers for changing TIDs. I use TIDs a lot and I use these handlers far more than any others in my toolkit. It may seem silly to create handlers for such things, but these save me a lot of typing and significantly reduce the character count in my libraries. All of my own versions of the handlers on this site use them.initTids sets them to the supplied value, returning the previous one so it can be restored when the processing is complete. Some people see no point in saving and restoring TIDs, but I think it's important and it has very little overhead. Calling this handler adds about as much extra time (over having the code inline) as declaring 2 values on 1 line. In other words, it's pretty fast. The overhead is irrelevant in most cases.USAGE: set oldDelims to initTids for {":"}        --> <previousTidsValue>Input: anything - anything AS will accept as tids. Designed for a single item list of string values. Use other data classes at your own risk.Output: anything - previous tids value. Tids will be set to the supplied value.Error: I haven't found its boundaries - tids seem to take most things as an argument.   � ����  A   p a i r   o f   h a n d l e r s   f o r   c h a n g i n g   T I D s .   I   u s e   T I D s   a   l o t   a n d   I   u s e   t h e s e   h a n d l e r s   f a r   m o r e   t h a n   a n y   o t h e r s   i n   m y   t o o l k i t .   I t   m a y   s e e m   s i l l y   t o   c r e a t e   h a n d l e r s   f o r   s u c h   t h i n g s ,   b u t   t h e s e   s a v e   m e   a   l o t   o f   t y p i n g   a n d   s i g n i f i c a n t l y   r e d u c e   t h e   c h a r a c t e r   c o u n t   i n   m y   l i b r a r i e s .   A l l   o f   m y   o w n   v e r s i o n s   o f   t h e   h a n d l e r s   o n   t h i s   s i t e   u s e   t h e m .  i n i t T i d s   s e t s   t h e m   t o   t h e   s u p p l i e d   v a l u e ,   r e t u r n i n g   t h e   p r e v i o u s   o n e   s o   i t   c a n   b e   r e s t o r e d   w h e n   t h e   p r o c e s s i n g   i s   c o m p l e t e .   S o m e   p e o p l e   s e e   n o   p o i n t   i n   s a v i n g   a n d   r e s t o r i n g   T I D s ,   b u t   I   t h i n k   i t ' s   i m p o r t a n t   a n d   i t   h a s   v e r y   l i t t l e   o v e r h e a d .   C a l l i n g   t h i s   h a n d l e r   a d d s   a b o u t   a s   m u c h   e x t r a   t i m e   ( o v e r   h a v i n g   t h e   c o d e   i n l i n e )   a s   d e c l a r i n g   2   v a l u e s   o n   1   l i n e .   I n   o t h e r   w o r d s ,   i t ' s   p r e t t y   f a s t .   T h e   o v e r h e a d   i s   i r r e l e v a n t   i n   m o s t   c a s e s .  U S A G E :   s e t   o l d D e l i m s   t o   i n i t T i d s   f o r   { " : " }                  - - >   < p r e v i o u s T i d s V a l u e >  I n p u t :   a n y t h i n g   -   a n y t h i n g   A S   w i l l   a c c e p t   a s   t i d s .   D e s i g n e d   f o r   a   s i n g l e   i t e m   l i s t   o f   s t r i n g   v a l u e s .   U s e   o t h e r   d a t a   c l a s s e s   a t   y o u r   o w n   r i s k .  O u t p u t :   a n y t h i n g   -   p r e v i o u s   t i d s   v a l u e .   T i d s   w i l l   b e   s e t   t o   t h e   s u p p l i e d   v a l u e .  E r r o r :   I   h a v e n ' t   f o u n d   i t s   b o u n d a r i e s   -   t i d s   s e e m   t o   t a k e   m o s t   t h i n g s   a s   a n   a r g u m e n t . � ��� l     ����  � - ' initTids -- by Richard Morton, 1999 --   � ��� N   i n i t T i d s   - -   b y   R i c h a r d   M o r t o n ,   1 9 9 9   - -� ��� l     �~���~  � = 7 Set TIDs to the supplied value, returning the previous   � ��� n   S e t   T I D s   t o   t h e   s u p p l i e d   v a l u e ,   r e t u r n i n g   t h e   p r e v i o u s� ��� l     �}���}  �    Pass a value for the TIDs   � ��� 4   P a s s   a   v a l u e   f o r   t h e   T I D s� ��� l     �|�{�z�|  �{  �z  � ��� i    ��� I      �y�x��y 0 inittids initTids�x  � �w��v
�w 
for � o      �u�u 0 	newdelims 	newDelims�v  � k     �� ��� r     ��� n    ��� 1    �t
�t 
txdl� 1     �s
�s 
ascr� o      �r�r 0 ot oT� ��� r    ��� o    �q�q 0 	newdelims 	newDelims� n     ��� 1    
�p
�p 
txdl� 1    �o
�o 
ascr� ��n� L    �� o    �m�m 0 ot oT�n  � ��� l     �l�k�j�l  �k  �j  � ��� l     �i�h�g�i  �h  �g  � ��� l     �f�e�d�f  �e  �d  � ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � \ V--- setTids simply changes them to the supplied value and complements the first. -----   � ��� � - - -   s e t T i d s   s i m p l y   c h a n g e s   t h e m   t o   t h e   s u p p l i e d   v a l u e   a n d   c o m p l e m e n t s   t h e   f i r s t .   - - - - -� ��� l     �_���_  � S M-----------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l      �^���^  � � �USAGE: setTids for {":"}        --> <noResult>Input: anything - See initTids above.Output: No result is returned. Tids will be set to the supplied value.Error: - See initTids above.   � ���v  U S A G E :   s e t T i d s   f o r   { " : " }                  - - >   < n o R e s u l t >  I n p u t :   a n y t h i n g   -   S e e   i n i t T i d s   a b o v e .  O u t p u t :   N o   r e s u l t   i s   r e t u r n e d .   T i d s   w i l l   b e   s e t   t o   t h e   s u p p l i e d   v a l u e .  E r r o r :   -   S e e   i n i t T i d s   a b o v e . � ��� l     �]���]  � , & setTids -- by Richard Morton, 1999 --   � ��� L   s e t T i d s   - -   b y   R i c h a r d   M o r t o n ,   1 9 9 9   - -� ��� l     �\���\  � %  Set TIDs to the supplied value   � ��� >   S e t   T I D s   t o   t h e   s u p p l i e d   v a l u e� ��� l     �[�Z�Y�[  �Z  �Y  � ��� i    "��� I      �X�W��X 0 settids setTids�W  � �V��U
�V 
for � o      �T�T 0 	newdelims 	newDelims�U  � r     ��� o     �S�S 0 	newdelims 	newDelims� n     ��� 1    �R
�R 
txdl� 1    �Q
�Q 
ascr� ��� l     �P�O�N�P  �O  �N  �    l     �M�L�K�M  �L  �K    l     �J�I�H�J  �I  �H   �G l     �F�E�D�F  �E  �D  �G       �C 	
�C   	�B�A�@�?�>�=�<�;�:�B 0 myname myName�A 0 listtostring listToString�@ 0 stringtolist stringToList�? 0 literallist literalList�> 0 findreplace findReplace�= 0 	minasvers 	minASVers�< 0 	minosvers 	minOSVers�; 0 inittids initTids�: 0 settids setTids �9 C�8�7�6�9 0 listtostring listToString�8  �7 �5�4
�5 
for �4 0 somelist someList �3�2�1
�3 
agst�2 "0 stringdelimiter stringDelimiter�1   �0�/�.�-�0 0 somelist someList�/ "0 stringdelimiter stringDelimiter�. 0 ot oT�- 0 str   �,�+�*�)
�, 
ascr
�+ 
txdl
�* 
citm
�) 
TEXT�6 "� *�,E�O�*�,FO��-�&E�O�*�,FO�U �( ��'�&�%�( 0 stringtolist stringToList�'  �& �$�#
�$ 
for �# 0 	thestring 	theString �"�!� 
�" 
from�! "0 stringdelimiter stringDelimiter�    ����� 0 	thestring 	theString� "0 stringdelimiter stringDelimiter� 0 ot oT� 0 outlist outList ���
� 
ascr
� 
txdl
� 
citm�%  � *�,E�O�*�,FO��-E�O�*�,FO�U � ����� 0 literallist literalList�  � ���
� 
from� 0 somelist someList�   	��������
�	� 0 somelist someList� 0 q  � 0 outlist outList� 0 
listlength 
listLength� 0 i  � 0 thisitem thisItem� 0 	itemclass 	itemClass�
 0 ot oT�	 0 litlist litList ���� � � ������ ��=F����T
� 
pcls
� 
list
� 
errn��Y
� 
leng
� 
cobj
� 
TEXT
� 
alis
�  
from�� 0 literallist literalList
�� 
ascr
�� 
txdl� ���,� )��l�Y ��E�O�kvE�O��,E�O ik�kh ��/E�O��,E�O��  ��%�%�6FY 0��  �%��&%�%�6FY ��  *�l �6FY ��&�6FO�� 	�6FY h[OY��O�6FO_ a ,E�Oa _ a ,FO��&E�O�_ a ,FO�	 ����������� 0 findreplace findReplace��  �� ����
�� 
for �� 0 inputstring inputString ����
�� 
from�� 0 oldchars oldChars ������
�� 
into�� 0 newchars newChars��   	�������������������� 0 inputstring inputString�� 0 oldchars oldChars�� 0 newchars newChars�� 0 oltids olTids�� 0 tempstr tempStr�� 0 n  �� 0 tmplist tmpList�� 0 estr eStr�� 0 enum eNum 	����������������
�� 
ascr
�� 
txdl
�� 
leng
�� 
cobj
�� 
citm
�� 
TEXT�� 0 estr eStr ������
�� 
errn�� 0 enum eNum��  
�� 
errn�� b� ^*�,E�O�EQ�O < 0k��,Ekh ��/*�,FO��-E�O��/*�,FO��-�&E�[OY��O�*�,FW X  �*�,FO)�l�O�U
 ���������� 0 	minasvers 	minASVers��  �� ������
�� 
at  �� 0 reqvers reqVers��   ������������ 0 reqvers reqVers�� 0 numlist numList�� 0 decnum decNum�� 0 num  �� 0 ascv   
������������31��
�� 
TEXT
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
�� .fndrgstl****    ��� ****�� H��&%�-E�OjE�O �[��l kh � �E�[OY��O� 	�j 	E�UO�� fY hOe ��f�������� 0 	minosvers 	minOSVers��  �� ������
�� 
at  �� 0 reqvers reqVers��   ������������ 0 reqvers reqVers�� 0 numlist numList�� 0 decnum decNum�� 0 num  �� 0 sysv   	����������������
�� 
TEXT
�� 
cha 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
�� .fndrgstl****    ��� ****�� F��&�-E�OjE�O �[��l kh � �E�[OY��O� 	�j E�UO�� fY hOe ������� ���� 0 inittids initTids��  �� ������
�� 
for �� 0 	newdelims 	newDelims��   ������ 0 	newdelims 	newDelims�� 0 ot oT  ����
�� 
ascr
�� 
txdl�� ��,E�O���,FO� �������!"���� 0 settids setTids��  �� ������
�� 
for �� 0 	newdelims 	newDelims��  ! ���� 0 	newdelims 	newDelims" ����
�� 
ascr
�� 
txdl�� ���,F ascr  ��ޭ