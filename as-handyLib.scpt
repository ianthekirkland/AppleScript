FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Handy functions #     � 	 	 $   H a n d y   f u n c t i o n s   #   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    A ;-----------------------------------------------------------     �   v - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      l          j     �� �� 0 myname myName  m        �    _ h a n d y L i b  # -> (the name of this library)     �   : - >   ( t h e   n a m e   o f   t h i s   l i b r a r y )      l     ��  ��    A ;-----------------------------------------------------------     �     v - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   ! " ! l     ��������  ��  ��   "  # $ # l     �� % &��   % � � The AppleScript language is very limited on data handling. The programmer must build his own tools (functions) to have Python-like functionality to manage strings and lists.    & � ' '\   T h e   A p p l e S c r i p t   l a n g u a g e   i s   v e r y   l i m i t e d   o n   d a t a   h a n d l i n g .   T h e   p r o g r a m m e r   m u s t   b u i l d   h i s   o w n   t o o l s   ( f u n c t i o n s )   t o   h a v e   P y t h o n - l i k e   f u n c t i o n a l i t y   t o   m a n a g e   s t r i n g s   a n d   l i s t s . $  ( ) ( l     ��������  ��  ��   )  * + * l     ,���� , I     ��������  0 countsubstring countSubstring��  ��  ��  ��   +  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 7 1 Counts how many times a string appears in a text    2 � 3 3 b   C o u n t s   h o w   m a n y   t i m e s   a   s t r i n g   a p p e a r s   i n   a   t e x t 0  4 5 4 l     �� 6 7��   6 E ? Note: Its splits the text by the substring and count the items    7 � 8 8 ~   N o t e :   I t s   s p l i t s   t h e   t e x t   b y   t h e   s u b s t r i n g   a n d   c o u n t   t h e   i t e m s 5  9 : 9 l     ��������  ��  ��   :  ; < ; i     = > = I      �� ?����  0 countsubstring countSubstring ?  @ A @ o      ���� 0 thetext theText A  B�� B o      ���� 0 thesubstring theSubstring��  ��   > k      C C  D E D r      F G F o     ���� 0 thesubstring theSubstring G n      H I H 1    ��
�� 
txdl I 1    ��
�� 
ascr E  J K J r     L M L \     N O N l    P���� P I   �� Q��
�� .corecnte****       **** Q n    	 R S R 2    	��
�� 
citm S o    ���� 0 thetext theText��  ��  ��   O m    ����  M o      ���� 0 counter   K  T U T r     V W V m     X X � Y Y   W n      Z [ Z 1    ��
�� 
txdl [ 1    ��
�� 
ascr U  \�� \ L     ] ] o    ���� 0 counter  ��   <  ^ _ ^ l    `���� ` I    �������� 0 lstripstring lstripString��  ��  ��  ��   _  a b a l     ��������  ��  ��   b  c d c l     �� e f��   e : 4 Trims the provided string from the text's beginning    f � g g h   T r i m s   t h e   p r o v i d e d   s t r i n g   f r o m   t h e   t e x t ' s   b e g i n n i n g d  h i h l     ��������  ��  ��   i  j k j i    
 l m l I      �� n���� 0 lstripstring lstripString n  o p o o      ���� 0 thetext theText p  q�� q o      ���� 0 
trimstring 
trimString��  ��   m k     6 r r  s t s r      u v u I    �� w��
�� .corecnte****       **** w o     ���� 0 
trimstring 
trimString��   v o      ���� 0 x   t  x y x Q    3 z { | z V    ) } ~ } r    $  �  c    " � � � n      � � � 7    �� � �
�� 
cha  � l    ����� � [     � � � o    ���� 0 x   � m    ���� ��  ��   � m    ������ � o    ���� 0 thetext theText � m     !��
�� 
ctxt � o      ���� 0 thetext theText ~ C    � � � o    ���� 0 thetext theText � l    ����� � o    ���� 0 
trimstring 
trimString��  ��   { R      ������
�� .ascrerr ****      � ****��  ��   | L   1 3 � � m   1 2 � � � � �   y  ��� � L   4 6 � � o   4 5���� 0 thetext theText��   k  � � � l    ����� � I    �������� 0 rstripstring rstripString��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Trims the provided string from the text's ending    � � � � b   T r i m s   t h e   p r o v i d e d   s t r i n g   f r o m   t h e   t e x t ' s   e n d i n g �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 rstripstring rstripString �  � � � o      ���� 0 thetext theText �  ��� � o      ���� 0 
trimstring 
trimString��  ��   � k     7 � �  � � � r      � � � I    �� ���
�� .corecnte****       **** � o     ���� 0 
trimstring 
trimString��   � o      ���� 0 x   �  � � � Q    4 � � � � V    * � � � r    % � � � c    # � � � n    ! � � � 7   !�� � �
�� 
cha  � m    ����  � d      � � l    ����� � [     � � � o    ���� 0 x   � m    ���� ��  ��   � o    ���� 0 thetext theText � m   ! "��
�� 
ctxt � o      ���� 0 thetext theText � D     � � � o    ���� 0 thetext theText � l    ����� � o    ���� 0 
trimstring 
trimString��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � L   2 4 � � m   2 3 � � � � �   �  ��� � L   5 7 � � o   5 6�� 0 thetext theText��   �  � � � l    ��~�} � I    �|�{�z�| 0 stripstring stripString�{  �z  �~  �}   �  � � � l     �y�x�w�y  �x  �w   �  � � � l     �v � ��v   � ; 5 Trims the provided string from the text's boundaries    � � � � j   T r i m s   t h e   p r o v i d e d   s t r i n g   f r o m   t h e   t e x t ' s   b o u n d a r i e s �  � � � l     �u � ��u   � A ; Note: Requires the lstripString and rstripString functions    � � � � v   N o t e :   R e q u i r e s   t h e   l s t r i p S t r i n g   a n d   r s t r i p S t r i n g   f u n c t i o n s �  � � � l     �t�s�r�t  �s  �r   �  � � � i     � � � I      �q ��p�q 0 stripstring stripString �  � � � o      �o�o 0 thetext theText �  ��n � o      �m�m 0 
trimstring 
trimString�n  �p   � k      � �  � � � r     	 � � � I     �l ��k�l 0 lstripstring lstripString �  � � � o    �j�j 0 thetext theText �  ��i � o    �h�h 0 
trimstring 
trimString�i  �k   � o      �g�g 0 thetext theText �  � � � r   
  � � � I   
 �f ��e�f 0 rstripstring rstripString �  � � � o    �d�d 0 thetext theText �  ��c � o    �b�b 0 
trimstring 
trimString�c  �e   � o      �a�a 0 thetext theText �  ��` � L     � � o    �_�_ 0 thetext theText�`   �  � � � l   ) ��^�] � ^    ) � � � ^    # � � � I    �\�[�Z�\ 0 lowerstring lowerString�[  �Z   � l   " ��Y�X � I    "�W�V�U�W 0 upperstring upperString�V  �U  �Y  �X   � l  # ( ��T�S � I   # (�R�Q�P�R $0 capitalizestring capitalizeString�Q  �P  �T  �S  �^  �]   �  � � � l     �O�N�M�O  �N  �M   �  � � � l     �L �L    %  Translate characters of a text    � >   T r a n s l a t e   c h a r a c t e r s   o f   a   t e x t �  l     �K�K   B < Note: Pass the From and To tables as strings (same lenght!)    � x   N o t e :   P a s s   t h e   F r o m   a n d   T o   t a b l e s   a s   s t r i n g s   ( s a m e   l e n g h t ! ) 	 l     �J�I�H�J  �I  �H  	 

 i     I      �G�F�G  0 translatechars translateChars  o      �E�E 0 thetext theText  o      �D�D 0 	fromchars 	fromChars �C o      �B�B 0 tochars toChars�C  �F   k     Y  r      m      �   l     �A�@ o      �?�? 0 newtext newText�A  �@    Z    �>�= >    !  l   	"�<�;" I   	�:#�9
�: .corecnte****       ****# o    �8�8 0 	fromchars 	fromChars�9  �<  �;  ! l  	 $�7�6$ I  	 �5%�4
�5 .corecnte****       ****% o   	 
�3�3 0 tochars toChars�4  �7  �6   R    �2&�1
�2 .ascrerr ****      � ****& m    '' �(( j t r a n s l a t e C h a r s :   F r o m / T o   s t r i n g s   h a v e   d i f f e r e n t   l e n g h t�1  �>  �=   )*) X    V+�0,+ k   + Q-- ./. r   + .010 o   + ,�/�/ 0 char  1 o      �.�. 0 newchar newChar/ 232 r   / :454 I  / 8�-�,6
�- .sysooffslong    ��� null�,  6 �+78
�+ 
psof7 o   1 2�*�* 0 char  8 �)9�(
�) 
psin9 l  3 4:�'�&: o   3 4�%�% 0 	fromchars 	fromChars�'  �&  �(  5 o      �$�$ 0 x  3 ;<; Z  ; K=>�#�"= >  ; >?@? o   ; <�!�! 0 x  @ m   < =� �   > r   A GABA n   A ECDC 4   B E�E
� 
cha E o   C D�� 0 x  D l  A BF��F o   A B�� 0 tochars toChars�  �  B o      �� 0 newchar newChar�#  �"  < G�G r   L QHIH b   L OJKJ o   L M�� 0 newtext newTextK o   M N�� 0 newchar newCharI o      �� 0 newtext newText�  �0 0 char  , o    �� 0 thetext theText* L�L L   W YMM l  W XN��N o   W X�� 0 newtext newText�  �  �   OPO l     ����  �  �  P QRQ l     ����  �  �  R STS l     �
UV�
  U . ( Convert a text case to lower characters   V �WW P   C o n v e r t   a   t e x t   c a s e   t o   l o w e r   c h a r a c t e r sT XYX l     �	Z[�	  Z 1 + Note: Requires the translateChars function   [ �\\ V   N o t e :   R e q u i r e s   t h e   t r a n s l a t e C h a r s   f u n c t i o nY ]^] l     ����  �  �  ^ _`_ i    aba I      �c�� 0 lowerstring lowerStringc d�d o      �� 0 thetext theText�  �  b k     ee fgf r     hih m     jj �kk 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Zi o      �� 	0 upper  g lml r    non m    pp �qq 4 a b c d e f g h i j k l m n o p q r s t u v w x y zo o      � �  	0 lower  m r��r L    ss I    ��t����  0 translatechars translateCharst uvu o   	 
���� 0 thetext theTextv wxw o   
 ���� 	0 upper  x y��y o    ���� 	0 lower  ��  ��  ��  ` z{z l     ��������  ��  ��  { |}| l     ��������  ��  ��  } ~~ l     ������  � . ( Convert a text case to upper characters   � ��� P   C o n v e r t   a   t e x t   c a s e   t o   u p p e r   c h a r a c t e r s ��� l     ������  � 1 + Note: Requires the translateChars function   � ��� V   N o t e :   R e q u i r e s   t h e   t r a n s l a t e C h a r s   f u n c t i o n� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 upperstring upperString� ���� o      ���� 0 thetext theText��  ��  � k     �� ��� r     ��� m     �� ��� 4 a b c d e f g h i j k l m n o p q r s t u v w x y z� o      ���� 	0 lower  � ��� r    ��� m    �� ��� 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z� o      ���� 	0 upper  � ���� L    �� I    �������  0 translatechars translateChars� ��� o   	 
���� 0 thetext theText� ��� o   
 ���� 	0 lower  � ���� o    ���� 	0 upper  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � D > Capitalize a text, returning only the first letter uppercased   � ��� |   C a p i t a l i z e   a   t e x t ,   r e t u r n i n g   o n l y   t h e   f i r s t   l e t t e r   u p p e r c a s e d� ��� l     ������  � A ; Note: Requires translateChars, lowerString and upperString   � ��� v   N o t e :   R e q u i r e s   t r a n s l a t e C h a r s ,   l o w e r S t r i n g   a n d   u p p e r S t r i n g� ��� l     ��������  ��  ��  � ��� i    "��� I      ������� $0 capitalizestring capitalizeString� ���� o      ���� 0 thetext theText��  ��  � k     #�� ��� r     ��� I     	������� 0 upperstring upperString� ���� n    ��� 4   ���
�� 
cha � m    ���� � o    ���� 0 thetext theText��  ��  � o      ���� 0 	firstchar 	firstChar� ��� r    ��� I    ������� 0 lowerstring lowerString� ���� n    ��� 7   ����
�� 
cha � m    ���� � m    ������� o    ���� 0 thetext theText��  ��  � o      ���� 0 
otherchars 
otherChars� ���� L    #�� b    "��� o     ���� 0 	firstchar 	firstChar� o     !���� 0 
otherchars 
otherChars��  � ��� l  * /������ I   * /�������� 0 replacestring replaceString��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � A ; Replace all occurences of one string for another in a text   � ��� v   R e p l a c e   a l l   o c c u r e n c e s   o f   o n e   s t r i n g   f o r   a n o t h e r   i n   a   t e x t� ��� l     ������  � : 4 The trick here is to change the internal delimiter,   � ��� h   T h e   t r i c k   h e r e   i s   t o   c h a n g e   t h e   i n t e r n a l   d e l i m i t e r ,� ��� l     ������  � $  spliting and joining the text   � ��� <   s p l i t i n g   a n d   j o i n i n g   t h e   t e x t� ��� l     ��������  ��  ��  � ��� i   # &��� I      ������� 0 replacestring replaceString� ��� o      ���� 0 thetext theText� ��� o      ���� 0 	oldstring 	oldString� ���� o      ���� 0 	newstring 	newString��  ��  � k      �� ��� r     ��� o     ���� 0 	oldstring 	oldString� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 thetext theText� o      ���� 0 templist tempList�    r     o    ���� 0 	newstring 	newString n      1    ��
�� 
txdl 1    ��
�� 
ascr  r    	 c    

 l   ���� o    ���� 0 templist tempList��  ��   m    ��
�� 
TEXT	 o      ���� 0 thetext theText  r     m     �   n      1    ��
�� 
txdl 1    ��
�� 
ascr �� L      o    ���� 0 thetext theText��  �  l  0 5���� I   0 5�������� $0 getlistitemindex getListItemIndex��  ��  ��  ��    l     ��������  ��  ��    l     ����   C = Returns the integer index of a list item (zero if not found)    �   z   R e t u r n s   t h e   i n t e g e r   i n d e x   o f   a   l i s t   i t e m   ( z e r o   i f   n o t   f o u n d ) !"! l     ��������  ��  ��  " #$# i   ' *%&% I      ��'���� $0 getlistitemindex getListItemIndex' ()( o      ���� 0 thelist theList) *��* o      ���� 0 theitem theItem��  ��  & k     %++ ,-, Y     ".��/0��. Z   12����1 =   343 n    565 4    ��7
�� 
cobj7 o    ���� 0 i  6 o    ���� 0 thelist theList4 o    ���� 0 theitem theItem2 L    88 o    ���� 0 i  ��  ��  �� 0 i  / m    �� 0 I   	�~9�}
�~ .corecnte****       ****9 o    �|�| 0 thelist theList�}  ��  - :�{: L   # %;; m   # $�z�z  �{  $ <=< l  6 ;>�y�x> I   6 ;�w�v�u�w 0 countlistitem countListItem�v  �u  �y  �x  = ?@? l     �t�s�r�t  �s  �r  @ ABA l     �qCD�q  C ; 5 Returns the total count of a specific item in a list   D �EE j   R e t u r n s   t h e   t o t a l   c o u n t   o f   a   s p e c i f i c   i t e m   i n   a   l i s tB FGF l     �p�o�n�p  �o  �n  G HIH i   + .JKJ I      �mL�l�m 0 countlistitem countListItemL MNM o      �k�k 0 thelist theListN O�jO o      �i�i 0 theitem theItem�j  �l  K k     ,PP QRQ r     STS m     �h�h  T o      �g�g 0 counter  R UVU Y    )W�fXY�eW Z    $Z[�d�cZ =   \]\ n    ^_^ 4    �b`
�b 
cobj` o    �a�a 0 i  _ o    �`�` 0 thelist theList] o    �_�_ 0 theitem theItem[ r     aba [    cdc o    �^�^ 0 counter  d m    �]�] b o      �\�\ 0 counter  �d  �c  �f 0 i  X m    �[�[ Y I   �Ze�Y
�Z .corecnte****       ****e o    	�X�X 0 thelist theList�Y  �e  V f�Wf L   * ,gg o   * +�V�V 0 counter  �W  I h�Uh l     �T�S�R�T  �S  �R  �U       �Qi jklmnopqrstu�Q  i �P�O�N�M�L�K�J�I�H�G�F�E�D�P 0 myname myName�O  0 countsubstring countSubstring�N 0 lstripstring lstripString�M 0 rstripstring rstripString�L 0 stripstring stripString�K  0 translatechars translateChars�J 0 lowerstring lowerString�I 0 upperstring upperString�H $0 capitalizestring capitalizeString�G 0 replacestring replaceString�F $0 getlistitemindex getListItemIndex�E 0 countlistitem countListItem
�D .aevtoappnull  �   � ****j �C >�B�Avw�@�C  0 countsubstring countSubstring�B �?x�? x  �>�=�> 0 thetext theText�= 0 thesubstring theSubstring�A  v �<�;�:�< 0 thetext theText�; 0 thesubstring theSubstring�: 0 counter  w �9�8�7�6 X
�9 
ascr
�8 
txdl
�7 
citm
�6 .corecnte****       ****�@ ���,FO��-j kE�O���,FO�k �5 m�4�3yz�2�5 0 lstripstring lstripString�4 �1{�1 {  �0�/�0 0 thetext theText�/ 0 
trimstring 
trimString�3  y �.�-�,�. 0 thetext theText�- 0 
trimstring 
trimString�, 0 x  z �+�*�)�(�' �
�+ .corecnte****       ****
�* 
cha 
�) 
ctxt�(  �'  �2 7�j  E�O # h���[�\[Z�k\Zi2�&E�[OY��W 	X  �O�l �& ��%�$|}�#�& 0 rstripstring rstripString�% �"~�" ~  �!� �! 0 thetext theText�  0 
trimstring 
trimString�$  | ���� 0 thetext theText� 0 
trimstring 
trimString� 0 x  } ����� �
� .corecnte****       ****
� 
cha 
� 
ctxt�  �  �# 8�j  E�O $ h���[�\[Zk\Z�k'2�&E�[OY��W 	X  �O�m � ������ 0 stripstring stripString� ��� �  ��� 0 thetext theText� 0 
trimstring 
trimString�   ��� 0 thetext theText� 0 
trimstring 
trimString� ��� 0 lstripstring lstripString� 0 rstripstring rstripString� *��l+  E�O*��l+ E�O�n ���
���	�  0 translatechars translateChars� ��� �  ���� 0 thetext theText� 0 	fromchars 	fromChars� 0 tochars toChars�
  � ����� ����� 0 thetext theText� 0 	fromchars 	fromChars� 0 tochars toChars� 0 newtext newText�  0 char  �� 0 newchar newChar�� 0 x  � 
��'��������������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha �	 Z�E�O�j �j  	)j�Y hO :�[��l kh �E�O*��� E�O�j ��/E�Y hO��%E�[OY��O�o ��b���������� 0 lowerstring lowerString�� ����� �  ���� 0 thetext theText��  � �������� 0 thetext theText�� 	0 upper  �� 	0 lower  � jp����  0 translatechars translateChars�� �E�O�E�O*���m+ p ������������� 0 upperstring upperString�� ����� �  ���� 0 thetext theText��  � �������� 0 thetext theText�� 	0 lower  �� 	0 upper  � ������  0 translatechars translateChars�� �E�O�E�O*���m+ q ������������� $0 capitalizestring capitalizeString�� ����� �  ���� 0 thetext theText��  � �������� 0 thetext theText�� 0 	firstchar 	firstChar�� 0 
otherchars 
otherChars� ������
�� 
cha �� 0 upperstring upperString�� 0 lowerstring lowerString�� $*��k/k+ E�O*�[�\[Zl\Zi2k+ E�O��%r ������������� 0 replacestring replaceString�� ����� �  �������� 0 thetext theText�� 0 	oldstring 	oldString�� 0 	newstring 	newString��  � ���������� 0 thetext theText�� 0 	oldstring 	oldString�� 0 	newstring 	newString�� 0 templist tempList� ��������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� !���,FO��-E�O���,FO��&E�O���,FO�s ��&���������� $0 getlistitemindex getListItemIndex�� ����� �  ������ 0 thelist theList�� 0 theitem theItem��  � �������� 0 thelist theList�� 0 theitem theItem�� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�� & !k�j  kh ��/�  �Y h[OY��Ojt ��K���������� 0 countlistitem countListItem�� ����� �  ������ 0 thelist theList�� 0 theitem theItem��  � ���������� 0 thelist theList�� 0 theitem theItem�� 0 counter  �� 0 i  � ����
�� .corecnte****       ****
�� 
cobj�� -jE�O $k�j  kh ��/�  
�kE�Y h[OY��O�u �����������
�� .aevtoappnull  �   � ****� k     ;��  *��  ^��  ���  ���  ��� ��� �� <����  ��  ��  �  � 
����������������������  0 countsubstring countSubstring�� 0 lstripstring lstripString�� 0 rstripstring rstripString�� 0 stripstring stripString�� 0 lowerstring lowerString�� 0 upperstring upperString�� $0 capitalizestring capitalizeString�� 0 replacestring replaceString�� $0 getlistitemindex getListItemIndex�� 0 countlistitem countListItem�� <*j+  O*j+ O*j+ O*j+ O*j+ *j+ !*j+ !O*j+ O*j+ O*j+ 	 ascr  ��ޭ