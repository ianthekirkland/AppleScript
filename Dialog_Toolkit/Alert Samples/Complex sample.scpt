FasdUAS 1.101.10   ��   ��    k             l     ��  ��    C =  This sample shows how to build a reasonably complex dialog.     � 	 	 z     T h i s   s a m p l e   s h o w s   h o w   t o   b u i l d   a   r e a s o n a b l y   c o m p l e x   d i a l o g .   
  
 l     ��������  ��  ��        l     ��  ��    H B Dialog Toolkit Plus.scptd should be in ~/Library/Script Libraries     �   �   D i a l o g   T o o l k i t   P l u s . s c p t d   s h o u l d   b e   i n   ~ / L i b r a r y / S c r i p t   L i b r a r i e s      x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 4��        x    �� ����    2  	 ��
�� 
osax��        x    "��  ��    4  ���� 
�� 
scpt  m  ��     � ! ! & D i a l o g   T o o l k i t   P l u s  �� "��
�� 
minv " m       # # � $ $ 
 1 . 1 . 0��     % & % l     ��������  ��  ��   &  ' ( ' l    C )���� ) r     C * + * I      , - . , z�� 
�� .!ASuCrLfnull���     ctxt - m     / / � 0 0   . �� 1 2
�� 
!FpL 1 m     3 3 � 4 4 4 E x t r a   i n s t r u c t i o n s   g o   h e r e 2 �� 5 6
�� 
!Lli 5 m    ����   6 �� 7 8
�� 
!BtM 7 m    ����   8 �� 9 :
�� 
!FwI 9 m    ����� : �� ; <
�� 
!ExH ; m    ���� < < �� = >
�� 
!LtX = m     ? ? � @ @  I n s t r u c t i o n s > �� A��
�� 
!MlT A m     ��
�� boovtrue��   + J   	  B B  C D C o   	 
���� &0 instructionsfield instructionsField D  E F E o   
 ���� &0 instructionslabel instructionsLabel F  G�� G o    ���� 0 thetop theTop��  ��  ��   (  H I H l  D � J���� J r   D � K L K I      M N O M z�� 
�� .!ASuCrLsnull���     ctxt N l  M V P���� P n   M V Q R Q 1   R V��
�� 
sisn R l  M R S���� S I  M R������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��   O �� T U
�� 
!FpL T m   f i V V � W W  Y o u r   n a m e U �� X Y
�� 
!Lli X m   j k����   Y �� Z [
�� 
!BtM Z l  l q \���� \ [   l q ] ^ ] o   l m���� 0 thetop theTop ^ m   m p���� ��  ��   [ �� _ `
�� 
!StW _ m   t u����� ` �� a b
�� 
!LtX a m   v y c c � d d  O p e r a t o r : b �� e��
�� 
!FlF e m   | }����  ��   L J   W e f f  g h g o   W Z���� 0 operatorfield operatorField h  i j i o   Z ]���� 0 operatorlabel operatorLabel j  k l k o   ] ^���� 0 thetop theTop l  m�� m o   ^ a���� 0 	fieldleft 	fieldLeft��  ��  ��   I  n o n l  � � p���� p r   � � q r q I      s t u s z�� 
�� .!ASuCrRunull���     long t l  � � v���� v [   � � w x w o   � ����� 0 thetop theTop x m   � ����� ��  ��   u �� y z
�� 
!Lli y m   � �����   z �� {��
�� 
!RwI { m   � ��������   r J   � � | |  } ~ } o   � ����� 0 therule theRule ~  ��  o   � ����� 0 thetop theTop��  ��  ��   o  � � � l  �C ����� � r   �C � � � I      � � � � z�� 
�� .!ASuCrP+null���     ctxt � l  � � ����� � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � I  � ��� ���
�� .earsffdralis        afdr � m   � ���
�� afdrdocs��  ��  ��  ��  ��   � �� � �
�� 
!Lli � m  	
����   � �� � �
�� 
!BtM � l  ����� � [   � � � o  ���� 0 thetop theTop � m  ���� ��  ��   � �� � �
�� 
!CwI � m  ����� � �� � �
�� 
!LtX � m   � � � � � : C h o o s e   o r   d r a g   t h e   f i l e   h e r e : � �� ���
�� 
!PoP � m  ��
�� boovtrue��   � J   � � �  � � � o   �����  0 thepathcontrol thePathControl �  � � � o  ���� 0 	pathlabel 	pathLabel �  ��� � o  ���� 0 thetop theTop��  ��  ��   �  � � � l D� ����� � r  D� � � � I      � � � � z�� 
�� .!ASuCrCbnull���     **** � m  MP � � � � �  O n e   s i d e   o n l y � �� � �
�� 
!Lli � m  [\����   � �� � �
�� 
!BtM � l ]b ����� � [  ]b � � � o  ]^���� 0 thetop theTop � m  ^a���� ��  ��   � �� � �
�� 
!MxW � m  ef����� � �� ���
�� 
!IsT � m  ij��
�� boovfals��   � J  QZ � �  � � � o  QT�� 0 thecheckbox theCheckbox �  � � � o  TU�~�~ 0 thetop theTop �  ��} � o  UX�|�| 0 newwidth newWidth�}  ��  ��   �  � � � l �� ��{�z � r  �� � � � I      � � � � z�y 
�y .!ASuCrPlnull���     **** � J  �� � �  � � � m  �� � � � � �  R e d �  � � � m  �� � � � � � 
 G r e e n �  ��x � m  �� � � � � �  B l u e�x   � �w � �
�w 
!Lli � m  ���v�v   � �u � �
�u 
!BtM � l �� ��t�s � [  �� � � � o  ���r�r 0 thetop theTop � m  ���q�q �t  �s   � �p � �
�p 
!PuW � m  ���o�o d � �n � �
�n 
!MxW � m  ���m�m� � �l � �
�l 
!LtX � m  �� � � � � �  J o b   i s   f o r : � �k � �
�k 
!PuL � m  ���j�j � � �i ��h
�i 
!MuD � m  �� � � � � � 
 G r e e n�h   � J  �� � �  � � � o  ���g�g 0 
colorpopup 
colorPopup �  � � � o  ���f�f 0 
popuplabel 
popupLabel �  ��e � o  ���d�d 0 thetop theTop�e  �{  �z   �  � � � l �m ��c�b � r  �m � � � I      � � � � z�a 
�a .!ASuCrLmnull���     **** � J   � �  � � � m   � � � � �  P r e s s   1 �  � � � m  	 � � � � �  P r e s s   2 �  ��` � m  	 � � � � �  P r e s s   3�`   � �_ � �
�_ 
!Lli � m  �^�^   � �] � 
�] 
!BtM � l  %�\�[ [   % o   !�Z�Z 0 thetop theTop m  !$�Y�Y �\  �[    �X
�X 
!MxW m  ()�W�W� �V
�V 
!MxL m  ,-�U�U   �T	
�T 
!LtX m  .1

 �  J o b   i s   f o r :	 �S
�S 
!MuD m  45�R�R  �Q�P
�Q 
!VeR m  89�O
�O boovfals�P   � J    o  �N�N 0 	jobmatrix 	jobMatrix  o  �M�M 0 matrixlabel matrixLabel  o  �L�L 0 thetop theTop �K o  �J�J 0 
matrixleft 
matrixLeft�K  �c  �b   �  l n��I�H r  n� J  n�  o  no�G�G &0 instructionsfield instructionsField   o  op�F�F &0 instructionslabel instructionsLabel  !"! o  ps�E�E 0 operatorfield operatorField" #$# o  sv�D�D 0 operatorlabel operatorLabel$ %&% o  vy�C�C 0 therule theRule& '(' o  y|�B�B  0 thepathcontrol thePathControl( )*) o  |�A�A 0 	pathlabel 	pathLabel* +,+ o  ��@�@ 0 thecheckbox theCheckbox, -.- o  ���?�? 0 
colorpopup 
colorPopup. /0/ o  ���>�> 0 
popuplabel 
popupLabel0 121 o  ���=�= 0 	jobmatrix 	jobMatrix2 3�<3 o  ���;�; 0 matrixlabel matrixLabel�<   o      �:�: 0 allcontrols allControls�I  �H   454 l �6�9�86 r  �787 I     9:;9 z�7 
�7 .!AScDiEanull���     ****: m  ��<< �==  S e n d   f o r   o u t p u t; �6>?
�6 
mesS> m  ��@@ �AA  ? �5BC
�5 
as AB m  ��DD z�4 
�4 !AtP*riTC �3EF
�3 
btnsE J  ��GG HIH m  ��JJ �KK  C a n c e lI L�2L m  ��MM �NN  O K�2  F �1OP
�1 
givuO m  ���0�0 xP �/QR
�/ 
!AvWQ m  ���.�.�R �-ST
�- 
!AvHS o  ���,�, 0 thetop theTopT �+UV
�+ 
!AvCU o  ���*�* 0 allcontrols allControlsV �)W�(
�) 
!suPW m  ���'
�' boovfals�(  8 J  ��XX YZY o  ���&�& 0 
buttonname 
buttonNameZ [\[ o  ���%�% "0 suppressedstate suppressedState\ ]�$] o  ���#�# "0 controlsresults controlsResults�$  �9  �8  5 ^�"^ l     �!� ��!  �   �  �"       �_`a�  _ ��
� 
pimr
� .aevtoappnull  �   � ****` �b� b  cdec � �
� 
vers�  d �f�
� 
cobjf gg   �
� 
osax�  e �hi
� 
cobjh jj   �  
� 
scpti � #�
� 
vers�  a �k��lm�
� .aevtoappnull  �   � ****k k    nn  'oo  Hpp  nqq  �rr  �ss  �tt  �uu vv 4��  �  �  l  m i�   /��
�	�� 3�������  ?��������  ������������ V���� c������  ����������  ������������ �����   �������������   � � ��������� ������� ���   � � ���������
������  <��������@������JM����������������
� 
scpt
� 
Krtn�
 &0 instructionsfield instructionsField�	 &0 instructionslabel instructionsLabel� 0 thetop theTop
� 
!FpL
� 
!Lli
� 
!BtM
� 
!FwI��
� 
!ExH� <
�  
!LtX
�� 
!MlT�� 
�� .!ASuCrLfnull���     ctxt
�� 
cobj
�� .sysosigtsirr   ��� null
�� 
sisn�� 0 operatorfield operatorField�� 0 operatorlabel operatorLabel�� 0 	fieldleft 	fieldLeft�� �� 
�� 
!StW
�� 
!FlF�� 
�� .!ASuCrLsnull���     ctxt�� �� 0 therule theRule
�� 
!RwI�� 
�� .!ASuCrRunull���     long
�� afdrdocs
�� .earsffdralis        afdr
�� 
psxp��  0 thepathcontrol thePathControl�� 0 	pathlabel 	pathLabel
�� 
!CwI
�� 
!PoP
�� .!ASuCrP+null���     ctxt�� 0 thecheckbox theCheckbox�� 0 newwidth newWidth
�� 
!MxW
�� 
!IsT�� 

�� .!ASuCrCbnull���     ****�� 0 
colorpopup 
colorPopup�� 0 
popuplabel 
popupLabel
�� 
!PuW�� d
�� 
!PuL�� �
�� 
!MuD
�� .!ASuCrPlnull���     ****�� 0 	jobmatrix 	jobMatrix�� 0 matrixlabel matrixLabel�� 0 
matrixleft 
matrixLeft
�� 
!MxL
�� 
!VeR
�� .!ASuCrLmnull���     ****�� 0 allcontrols allControls�� 0 
buttonname 
buttonName�� "0 suppressedstate suppressedState�� "0 controlsresults controlsResults
�� 
mesS
�� 
as A
�� !AtP*riT
�� 
btns
�� 
givu�� x
�� 
!AvW
�� 
!AvH
�� 
!AvC
�� 
!suP�� 
�� .!AScDiEanull���     ****�)��/ !�����mv���j�j�����a a ea  UE[a k/E�Z[a l/E�Z[a m/E�ZO)�a / 8*j a ,�a a �a a v�a �j��a a ��a a  ja ! "UE[a k/E` Z[a l/E` Z[a m/E�Z[a a /E` ZO)�a #/ �a $�a %�lv�ja &�a ' (UE[a k/E` %Z[a l/E�ZO)�a )/ 1a *j +a ,,�a -a .�mv�j��a $a /��a 0a 1ea $ 2UE[a k/E` -Z[a l/E` .Z[a m/E�ZO)�a 3/ %a 4�a 5�a 6mv�j��a a 7�a 8fa 9 :UE[a k/E` 5Z[a l/E�Z[a m/E` 6ZO)�a ;/ ?a <a =a >mv�a ?a @�mv�j��a a Aa Ba 7��a Ca Da Ea Fa Ga  HUE[a k/E` ?Z[a l/E` @Z[a m/E�ZO)�a I/ >a Ja Ka Lmv�a Ma N�a Oa v�j��a a 7�a Pj�a Qa Fma Rfa  SUE[a k/E` MZ[a l/E` NZ[a m/E�Z[a a /E` OZO��_ _ _ %_ -_ ._ 5_ ?_ @_ M_ Na $vE` TO)�a U/ Fa V�a Wa Xa Ymva Za [a \a ]a ^a _a `lva aa ba c�a d�a e_ Ta ffa g hUE[a k/E` WZ[a l/E` XZ[a m/E` YZascr  ��ޭ