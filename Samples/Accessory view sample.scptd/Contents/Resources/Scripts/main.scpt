FasdUAS 1.101.10   ��   ��    k             x     ��  ��    1      ��
�� 
ascr  �� 	��
�� 
minv 	 m       
 
 �    2 . 4��        x    �� ����    4   	 �� 
�� 
frmk  m       �    F o u n d a t i o n��        x    !�� ����    4    �� 
�� 
frmk  m       �    A p p K i t��        x   ! 0��  ��    4   W ]�� 
�� 
scpt  m   Y \   �   " M y r i a d   T a b l e s   L i b  �� ��
�� 
minv  m           � ! ! 
 1 . 0 . 9��     " # " x   0 <�� $����   $ 2  2 5��
�� 
osax��   #  % & % l     ��������  ��  ��   &  ' ( ' j   < >�� )�� 0 thecheckbox theCheckbox ) m   < =��
�� 
msng (  * + * j   ? A�� ,�� $0 theaccessoryview theAccessoryView , m   ? @��
�� 
msng +  - . - l     ��������  ��  ��   .  / 0 / l     �� 1 2��   1 � } This sample uses the 'accessory view' parameter. This is a more complex process requiring some knowledge of AppleScriptObjC.    2 � 3 3 �   T h i s   s a m p l e   u s e s   t h e   ' a c c e s s o r y   v i e w '   p a r a m e t e r .   T h i s   i s   a   m o r e   c o m p l e x   p r o c e s s   r e q u i r i n g   s o m e   k n o w l e d g e   o f   A p p l e S c r i p t O b j C . 0  4 5 4 l     ��������  ��  ��   5  6 7 6 l     �� 8 9��   8 > 8 Manipulation of views should be done on the main thread    9 � : : p   M a n i p u l a t i o n   o f   v i e w s   s h o u l d   b e   d o n e   o n   t h e   m a i n   t h r e a d 7  ; < ; l     =���� = Z      > ?�� @ > c     	 A B A n     C D C I    �������� 0 ismainthread isMainThread��  ��   D n     E F E o    ���� 0 nsthread NSThread F m     ��
�� misccura B m    ��
�� 
bool ? n    G H G I    �������� 40 buildaccviewwithcheckbox buildAccViewWithCheckbox��  ��   H  f    ��   @ n    I J I I    �� K���� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_ K  L M L m     N N � O O 0 b u i l d A c c V i e w W i t h C h e c k b o x M  P Q P l    R���� R m    ��
�� 
msng��  ��   Q  S�� S m    ��
�� boovtrue��  ��   J  f    ��  ��   <  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X . ( make a table and add the accessory view    Y � Z Z P   m a k e   a   t a b l e   a n d   a d d   t h e   a c c e s s o r y   v i e w W  [ \ [ l   4 ]���� ] r    4 ^ _ ^ I   0 ` a�� ` z�� 
�� .!�Mt!�Tdnull���     **** a J   $ + b b  c d c m   $ % e e � f f  O n e d  g h g m   % & i i � j j  T w o h  k l k m   & ' m m � n n 
 T h r e e l  o p o m   ' ( q q � r r  F o u r p  s�� s m   ( ) t t � u u  F i v e��  ��   _ o      ���� 0 thetable theTable��  ��   \  v w v l  5 N x���� x I  5 N y z { y z�� 
�� .!�Mt!�Tmnull���     **** z o   > A���� 0 thetable theTable { �� |��
�� 
!�Av | o   D I���� $0 theaccessoryview theAccessoryView��  ��  ��   w  } ~ } l  O V  � �  r   O V � � � m   O P��
�� 
msng � o      ���� $0 theaccessoryview theAccessoryView � * $ to avoid error messages when saving    � � � � H   t o   a v o i d   e r r o r   m e s s a g e s   w h e n   s a v i n g ~  � � � l  W h ����� � I  W h � ��� � z�� 
�� .!�Mt!�Sdnull���     **** � o   ` c���� 0 thetable theTable��  ��  ��   �  � � � l     �� � ���   � $  get the state of the checkbox    � � � � <   g e t   t h e   s t a t e   o f   t h e   c h e c k b o x �  � � � l  i x ����� � r   i x � � � c   i t � � � n  i r � � � I   n r�������� 	0 state  ��  ��   � o   i n���� 0 thecheckbox theCheckbox � m   r s��
�� 
bool � o      ���� 0 thestate theState��  ��   �  � � � l  y � � � � � r   y � � � � m   y z��
�� 
msng � o      ���� 0 thecheckbox theCheckbox � * $ to avoid error messages when saving    � � � � H   t o   a v o i d   e r r o r   m e s s a g e s   w h e n   s a v i n g �  � � � l  � � ����� � I  � ��� ���
�� .sysodlogaskr        TEXT � c   � � � � � o   � ����� 0 thestate theState � m   � ���
�� 
ctxt��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i   B E � � � I      �������� 40 buildaccviewwithcheckbox buildAccViewWithCheckbox��  ��   � k     o � �  � � � l     �� � ���   �   build a checkbox    � � � � "   b u i l d   a   c h e c k b o x �  � � � r      � � � n     � � � I    �� �����  0 initwithframe_ initWithFrame_ �  ��� � J     � �  � � � J     � �  � � � m    ���� 
 �  ��� � m    	���� 
��   �  ��� � J     � �  � � � m    ���� � �  ��� � m    ���� ��  ��  ��  ��   � n     � � � I    �������� 	0 alloc  ��  ��   � n     � � � o    ���� 0 nsbutton NSButton � m     ��
�� misccura � n      � � � o    ���� 0 thecheckbox theCheckbox �  f     �  � � � O    @ � � � k   " ? � �  � � � n  " * � � � I   # *�� �����  0 setbuttontype_ setButtonType_ �  ��� � l  # & ����� � n  # & � � � o   $ &����  0 nsswitchbutton NSSwitchButton � m   # $��
�� misccura��  ��  ��  ��   �  g   " # �  � � � n  + 1 � � � I   , 1�� ����� 0 	settitle_ 	setTitle_ �  ��� � m   , - � � � � � $ T h i s   i s   a   c h e c k b o x��  ��   �  g   + , �  � � � n  2 8 � � � I   3 8�� ����� 0 
settarget_ 
setTarget_ �  �� �  f   3 4�  ��   �  g   2 3 �  ��~ � l  9 ? � � � � n  9 ? � � � I   : ?�} ��|�} 0 
setaction_ 
setAction_ �  ��{ � m   : ; � � � � �   c h e c k b o x C l i c k e d :�{  �|   �  g   9 : �   a handler in this script    � � � � 2   a   h a n d l e r   i n   t h i s   s c r i p t�~   � o    �z�z 0 thecheckbox theCheckbox �  � � � l  A A�y � ��y   � N H make a view and add the checkbox to it; maximum size is 600pts x 200pts    � � � � �   m a k e   a   v i e w   a n d   a d d   t h e   c h e c k b o x   t o   i t ;   m a x i m u m   s i z e   i s   6 0 0 p t s   x   2 0 0 p t s �  � � � r   A ` � � � n  A Z � � � I   H Z�x ��w�x  0 initwithframe_ initWithFrame_ �  ��v � J   H V    J   H L  m   H I�u�u   �t m   I J�s�s  �t   �r J   L T 	
	 m   L O�q�q �
 �p m   O R�o�o �p  �r  �v  �w   � n  A H I   D H�n�m�l�n 	0 alloc  �m  �l   n  A D o   B D�k�k 0 nsview NSView m   A B�j
�j misccura � n      o   [ _�i�i $0 theaccessoryview theAccessoryView  f   Z [ � �h n  a o I   f o�g�f�g 0 addsubview_ addSubview_ �e o   f k�d�d 0 thecheckbox theCheckbox�e  �f   o   a f�c�c $0 theaccessoryview theAccessoryView�h   �  l     �b�a�`�b  �a  �`    l     �_�_   2 , this is called when the checkbox is clicked    � X   t h i s   i s   c a l l e d   w h e n   t h e   c h e c k b o x   i s   c l i c k e d  i   F I !  I      �^"�]�^ $0 checkboxclicked_ checkboxClicked_" #�\# o      �[�[ 
0 sender  �\  �]  ! k     +$$ %&% l     �Z'(�Z  ' A ; make an alert and show it as a sheet over the table window   ( �)) v   m a k e   a n   a l e r t   a n d   s h o w   i t   a s   a   s h e e t   o v e r   t h e   t a b l e   w i n d o w& *+* r     ,-, n    ./. I    �Y�X�W�Y 
0 window  �X  �W  / o     �V�V 
0 sender  - o      �U�U 0 	thewindow 	theWindow+ 010 r    232 n   454 I    �T�S�R�T 0 init  �S  �R  5 n   676 I    �Q�P�O�Q 	0 alloc  �P  �O  7 n   898 o   	 �N�N 0 nsalert NSAlert9 m    	�M
�M misccura3 o      �L�L 0 thealert theAlert1 :;: n   <=< I    �K>�J�K "0 setmessagetext_ setMessageText_> ?�I? m    @@ �AA 0 Y o u   c l i c k e d   t h e   c h e c k b o x�I  �J  = o    �H�H 0 thealert theAlert; BCB n   #DED I    #�GF�F�G *0 setinformativetext_ setInformativeText_F G�EG m    HH �II ( N o w   c l o s e   t h i s   s h e e t�E  �F  E o    �D�D 0 thealert theAlertC J�CJ n  $ +KLK I   % +�BM�A�B Z0 +beginsheetmodalforwindow_completionhandler_ +beginSheetModalForWindow_completionHandler_M NON o   % &�@�@ 0 	thewindow 	theWindowO P�?P l  & 'Q�>�=Q m   & '�<
�< 
msng�>  �=  �?  �A  L o   $ %�;�; 0 thealert theAlert�C   RSR l     �:�9�8�:  �9  �8  S T�7T l     �6�5�4�6  �5  �4  �7       �3UV�2�1WXY�3  U �0�/�.�-�,�+
�0 
pimr�/ 0 thecheckbox theCheckbox�. $0 theaccessoryview theAccessoryView�- 40 buildaccviewwithcheckbox buildAccViewWithCheckbox�, $0 checkboxclicked_ checkboxClicked_
�+ .aevtoappnull  �   � ****V �*Z�* Z  [\]^_[ �) 
�(
�) 
vers�(  \ �'`�&
�' 
cobj` aa   �% 
�% 
frmk�&  ] �$b�#
�$ 
cobjb cc   �" 
�" 
frmk�#  ^ �!de
�! 
cobjd ff   �  
�  
scpte �  �
� 
vers�  _ �g�
� 
cobjg hh   �
� 
osax�  
�2 
msng
�1 
msngW � ���ij�� 40 buildaccviewwithcheckbox buildAccViewWithCheckbox�  �  i  j ���������� ��� ��
�	����
� misccura� 0 nsbutton NSButton� 	0 alloc  � 
� �� �  0 initwithframe_ initWithFrame_� 0 thecheckbox theCheckbox�  0 nsswitchbutton NSSwitchButton�  0 setbuttontype_ setButtonType_� 0 	settitle_ 	setTitle_� 0 
settarget_ 
setTarget_�
 0 
setaction_ 
setAction_�	 0 nsview NSView� �� � $0 theaccessoryview theAccessoryView� 0 addsubview_ addSubview_� p��,j+ ��lv��lvlvk+ )�,FOb   *��,k+ 	O*�k+ O*)k+ O*�k+ UO��,j+ jjlva a lvlvk+ )a ,FOb  b  k+ X �!��kl�� $0 checkboxclicked_ checkboxClicked_� � m�  m  ���� 
0 sender  �  k �������� 
0 sender  �� 0 	thewindow 	theWindow�� 0 thealert theAlertl ����������@��H�������� 
0 window  
�� misccura�� 0 nsalert NSAlert�� 	0 alloc  �� 0 init  �� "0 setmessagetext_ setMessageText_�� *0 setinformativetext_ setInformativeText_
�� 
msng�� Z0 +beginsheetmodalforwindow_completionhandler_ +beginSheetModalForWindow_completionHandler_� ,�j+  E�O��,j+ j+ E�O��k+ O��k+ O���l+ 
Y ��n����op��
�� .aevtoappnull  �   � ****n k     �qq  ;rr  [ss  vtt  }uu  �vv  �ww  �xx  �����  ��  ��  o  p ���������� N������  e i m q t������ ���� ����������
�� misccura�� 0 nsthread NSThread�� 0 ismainthread isMainThread
�� 
bool�� 40 buildaccviewwithcheckbox buildAccViewWithCheckbox
�� 
msng�� n0 5performselectoronmainthread_withobject_waituntildone_ 5performSelectorOnMainThread_withObject_waitUntilDone_
�� 
scpt�� 
�� .!�Mt!�Tdnull���     ****�� 0 thetable theTable
�� 
!�Av
�� .!�Mt!�Tmnull���     ****
�� .!�Mt!�Sdnull���     ****�� 	0 state  �� 0 thestate theState
�� 
ctxt
�� .sysodlogaskr        TEXT�� ���,j+ �& 
)j+ Y 
)��em+ O)��/ ������vj UE` O)�a / _ a b  l UO�Ec  O)�a / 	_ j UOb  j+ �&E` O�Ec  O_ a &j ascr  ��ޭ