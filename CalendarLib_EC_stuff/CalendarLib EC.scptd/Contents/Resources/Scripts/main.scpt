FasdUAS 1.101.10   ��   ��    k             l     ��  ��    9 3 Created 2015-12-07 10:29:40 +1100 by Shane Stanley     � 	 	 f   C r e a t e d   2 0 1 5 - 1 2 - 0 7   1 0 : 2 9 : 4 0   + 1 1 0 0   b y   S h a n e   S t a n l e y   
  
 l          x     ��  ��    1      ��
�� 
ascr  �� ��
�� 
minv  m         �    2 . 5��    $  requires OS X 10.11 or higher     �   <   r e q u i r e s   O S   X   1 0 . 1 1   o r   h i g h e r      x    �� ����    2  	 ��
�� 
osax��        x     �� ����    4    �� 
�� 
frmk  m       �    F o u n d a t i o n��        x     -��  ����     4   " &�� !
�� 
frmk ! m   $ % " " � # #  E v e n t K i t��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( � } You need to fetch the event store first; it's required for many other handlers. This also triggers authentication if needed.    ) � * * �   Y o u   n e e d   t o   f e t c h   t h e   e v e n t   s t o r e   f i r s t ;   i t ' s   r e q u i r e d   f o r   m a n y   o t h e r   h a n d l e r s .   T h i s   a l s o   t r i g g e r s   a u t h e n t i c a t i o n   i f   n e e d e d . '  + , + i   - 0 - . - I     ������
�� .!Cls!fstnull��� ��� null��  ��   . k     o / /  0 1 0 l     �� 2 3��   2 < 6 create event store and get the OK to access Calendars    3 � 4 4 l   c r e a t e   e v e n t   s t o r e   a n d   g e t   t h e   O K   t o   a c c e s s   C a l e n d a r s 1  5 6 5 r      7 8 7 n     9 : 9 I    �������� 0 init  ��  ��   : n     ; < ; I    �������� 	0 alloc  ��  ��   < n     = > = o    ���� 0 ekeventstore EKEventStore > m     ��
�� misccura 8 o      ���� "0 theekeventstore theEKEventStore 6  ? @ ? n    A B A I    �� C���� N0 %requestaccesstoentitytype_completion_ %requestAccessToEntityType_completion_ C  D E D m    ����   E  F�� F l    G���� G m    ��
�� 
msng��  ��  ��  ��   B o    ���� "0 theekeventstore theEKEventStore @  H I H l   �� J K��   J Y S check if app has access; this will still occur the first time you OK authorization    K � L L �   c h e c k   i f   a p p   h a s   a c c e s s ;   t h i s   w i l l   s t i l l   o c c u r   t h e   f i r s t   t i m e   y o u   O K   a u t h o r i z a t i o n I  M N M r      O P O n    Q R Q I    �� S���� F0 !authorizationstatusforentitytype_ !authorizationStatusForEntityType_ S  T�� T m    ����  ��  ��   R n    U V U o    ���� 0 ekeventstore EKEventStore V m    ��
�� misccura P o      ���� *0 authorizationstatus authorizationStatus N  W X W Z   ! l Y Z���� Y >  ! $ [ \ [ o   ! "���� *0 authorizationstatus authorizationStatus \ m   " #����  Z k   ' h ] ]  ^ _ ^ I  ' 6�� ` a
�� .sysodlogaskr        TEXT ` b   ' , b c b b   ' * d e d m   ' ( f f � g g T A c c e s s   m u s t   b e   g i v e n   i n   S y s t e m   P r e f e r e n c e s e 1   ( )��
�� 
lnfd c m   * + h h � i i 8 - >   S e c u r i t y   &   P r i v a c y   f i r s t . a �� j k
�� 
btns j J   - 0 l l  m�� m m   - . n n � o o  O K��   k �� p��
�� 
dflt p m   1 2���� ��   _  q r q O   7 ] s t s k   ; \ u u  v w v I  ; @������
�� .miscactvnull��� ��� null��  ��   w  x�� x O  A \ y z y I  O [�� {��
�� .miscmvisnull���     **** { 4   O W�� |
�� 
xppa | m   S V } } � ~ ~  P r i v a c y��   z 5   A L�� ��
�� 
xppb  m   E H � � � � � : c o m . a p p l e . p r e f e r e n c e . s e c u r i t y
�� kfrmID  ��   t m   7 8 � ��                                                                                  sprf  alis    R  Macintosh HD                   BD ����System Preferences.app                                         ����            ����  
 cu             Applications  &/:Applications:System Preferences.app/  .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��   r  ��� � R   ^ h���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   b e��������  ��  ��  ��   X  ��� � L   m o � � o   m n���� "0 theekeventstore theEKEventStore��   ,  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � H B You often need a reference to the relevant calendar; get it here.    � � � � �   Y o u   o f t e n   n e e d   a   r e f e r e n c e   t o   t h e   r e l e v a n t   c a l e n d a r ;   g e t   i t   h e r e . �  � � � i   1 4 � � � I     �� � �
�� .!CLs!fcanull���     **** � o      ���� 0 calname calName � �� � �
�� 
!Cty � o      ���� 0 caltype calType � �� ���
�� 
!Cst � o      ���� 0 thestore theStore��   � k     b � �  � � � Z     @ � � � � � =      � � � o     ���� 0 caltype calType � m    ��
�� !Tct!TtL � r    	 � � � m    ����   � o      ���� 0 caltype calType �  � � � =     � � � o    ���� 0 caltype calType � m    ��
�� !Tct!TtC �  � � � r     � � � m    ����  � o      ���� 0 caltype calType �  � � � =     � � � o    ���� 0 caltype calType � m    ��
�� !Tct!TtE �  � � � r    ! � � � m    ����  � o      ���� 0 caltype calType �  � � � =   $ ' � � � o   $ %���� 0 caltype calType � m   % &��
�� !Tct!TtS �  � � � r   * - � � � m   * +����  � o      ���� 0 caltype calType �  � � � =   0 3 � � � o   0 1���� 0 caltype calType � m   1 2��
�� !Tct!TtB �  ��� � r   6 9 � � � m   6 7����  � o      ���� 0 caltype calType��   � R   < @�� ���
�� .ascrerr ****      � **** � m   > ? � � � � �   I n v a l i d   c a l   t y p e��   �  � � � l  A A�� � ���   � * $ get calendars that can store events    � � � � H   g e t   c a l e n d a r s   t h a t   c a n   s t o r e   e v e n t s �  � � � r   A I � � � n  A G � � � I   B G�� ����� 20 calendarsforentitytype_ calendarsForEntityType_ �  ��� � m   B C����  ��  ��   � o   A B���� 0 thestore theStore � o      ���� 0 thecalendars theCalendars �  � � � l  J J�� � ���   � !  get the requested calendar    � � � � 6   g e t   t h e   r e q u e s t e d   c a l e n d a r �  � � � r   J V � � � n  J T � � � I   M T�� ����� ,0 predicatewithformat_ predicateWithFormat_ �  � � � m   M N � � � � � 4 t i t l e   = =   % @   A N D   t y p e   = =   % @ �  � � � o   N O���� 0 calname calName �  ��� � o   O P���� 0 caltype calType��  ��   � n  J M � � � o   K M���� 0 nspredicate NSPredicate � m   J K��
�� misccura � o      ����  0 thenspredicate theNSPredicate �  ��� � L   W b � � n  W a � � � I   ] a����~�� 0 firstobject firstObject�  �~   � l  W ] ��}�| � n  W ] � � � I   X ]�{ ��z�{ <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_ �  ��y � o   X Y�x�x  0 thenspredicate theNSPredicate�y  �z   � o   W X�w�w 0 thecalendars theCalendars�}  �|  ��   �  � � � l     �v�u�t�v  �u  �t   �  � � � i   5 8 � � � I     �s � �
�s .!CLs!fcAnull���     **** � c       � � � o      �r�r  0 listofcalnames listOfCalNames � m      �q
�q 
list � �p � �
�p 
!CtY � |�o�n ��m ��o  �n   � c       � � � o      �l�l  0 listofcaltypes listOfCalTypes � m      �k
�k 
list�m   � J      �j�j   � �i �h
�i 
!Cst  o      �g�g 0 thestore theStore�h   � k     �  l     �f�f   * $ get calendars that can store events    � H   g e t   c a l e n d a r s   t h a t   c a n   s t o r e   e v e n t s  r     	
	 n     I    �e�d�e 20 calendarsforentitytype_ calendarsForEntityType_ �c m    �b�b  �c  �d   o     �a�a 0 thestore theStore
 o      �`�` 0 thecalendars theCalendars  Z   	 ��_ =   	  o   	 
�^�^  0 listofcaltypes listOfCalTypes J   
 �]�]   Z    )�\ =     o    �[�[  0 listofcalnames listOfCalNames J    �Z�Z   L     c     o    �Y�Y 0 thecalendars theCalendars m    �X
�X 
list�\   r    ) n   ' !  I   ! '�W"�V�W ,0 predicatewithformat_ predicateWithFormat_" #$# m   ! "%% �&&  t i t l e   I N   % @$ '�U' o   " #�T�T  0 listofcalnames listOfCalNames�U  �V  ! n   !()( o    !�S�S 0 nspredicate NSPredicate) m    �R
�R misccura o      �Q�Q  0 thenspredicate theNSPredicate�_   k   , �** +,+ Y   , �-�P./�O- k   : �00 121 r   : @343 n   : >565 4   ; >�N7
�N 
cobj7 o   < =�M�M 0 i  6 o   : ;�L�L  0 listofcaltypes listOfCalTypes4 o      �K�K 0 caltype calType2 898 Z   A �:;<=: =   A D>?> o   A B�J�J 0 caltype calType? m   B C�I
�I !Tct!TtL; r   G J@A@ m   G H�H�H  A o      �G�G 0 caltype calType< BCB =   M PDED o   M N�F�F 0 caltype calTypeE m   N O�E
�E !Tct!TtCC FGF r   S VHIH m   S T�D�D I o      �C�C 0 caltype calTypeG JKJ =   Y \LML o   Y Z�B�B 0 caltype calTypeM m   Z [�A
�A !Tct!TtEK NON r   _ bPQP m   _ `�@�@ Q o      �?�? 0 caltype calTypeO RSR =   e hTUT o   e f�>�> 0 caltype calTypeU m   f g�=
�= !Tct!TtSS VWV r   k nXYX m   k l�<�< Y o      �;�; 0 caltype calTypeW Z[Z =   q t\]\ o   q r�:�: 0 caltype calType] m   r s�9
�9 !Tct!TtB[ ^�8^ r   w z_`_ m   w x�7�7 ` o      �6�6 0 caltype calType�8  = R   } ��5a�4
�5 .ascrerr ****      � ****a m    �bb �cc   I n v a l i d   c a l   t y p e�4  9 d�3d r   � �efe o   � ��2�2 0 caltype calTypef n      ghg 4   � ��1i
�1 
cobji o   � ��0�0 0 i  h o   � ��/�/  0 listofcaltypes listOfCalTypes�3  �P 0 i  . m   / 0�.�. / I  0 5�-j�,
�- .corecnte****       ****j o   0 1�+�+  0 listofcaltypes listOfCalTypes�,  �O  , k�*k Z   � �lm�)nl =   � �opo o   � ��(�(  0 listofcalnames listOfCalNamesp J   � ��'�'  m r   � �qrq n  � �sts I   � ��&u�%�& ,0 predicatewithformat_ predicateWithFormat_u vwv m   � �xx �yy  t y p e   I N   % @w z�$z o   � ��#�#  0 listofcaltypes listOfCalTypes�$  �%  t n  � �{|{ o   � ��"�" 0 nspredicate NSPredicate| m   � ��!
�! misccurar o      � �   0 thenspredicate theNSPredicate�)  n r   � �}~} n  � �� I   � ����� ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ��� 4 t i t l e   I N   % @   A N D   t y p e   I N   % @� ��� o   � ���  0 listofcalnames listOfCalNames� ��� o   � ���  0 listofcaltypes listOfCalTypes�  �  � n  � ���� o   � ��� 0 nspredicate NSPredicate� m   � ��
� misccura~ o      ��  0 thenspredicate theNSPredicate�*   ��� L   � ��� c   � ���� l  � ����� n  � ���� I   � ����� <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_� ��� o   � ���  0 thenspredicate theNSPredicate�  �  � o   � ��� 0 thecalendars theCalendars�  �  � m   � ��
� 
list�   � ��� l     ����  �  �  � ��� l     ��
�	�  �
  �	  � ��� l     ����  � f ` In theory, more than one event can have the same external ID, so this returns a list of events.   � ��� �   I n   t h e o r y ,   m o r e   t h a n   o n e   e v e n t   c a n   h a v e   t h e   s a m e   e x t e r n a l   I D ,   s o   t h i s   r e t u r n s   a   l i s t   o f   e v e n t s .� ��� i   9 <��� I     ���
� .!CLs!feUnull���     ****� o      �� 0 calid calID� ���
� 
!Cst� o      �� 0 thestore theStore�  � k     �� ��� r     ��� l    ���� n    ��� I    � ����  L0 $calendaritemswithexternalidentifier_ $calendarItemsWithExternalIdentifier_� ���� o    ���� 0 calid calID��  ��  � o     ���� 0 thestore theStore�  �  � o      ���� 0 	theevents 	theEvents� ��� r   	 ��� n  	 ��� I   
 ������� 60 sortedarrayusingselector_ sortedArrayUsingSelector_� ���� m   
 �� ��� 4 c o m p a r e S t a r t D a t e W i t h E v e n t :��  ��  � o   	 
���� 0 	theevents 	theEvents� o      ���� 0 	theevents 	theEvents� ���� L    �� c    ��� o    ���� 0 	theevents 	theEvents� m    ��
�� 
list��  � ��� l     ��������  ��  ��  � ��� l     ������  � K E The main way to search for events. Dates can be AS dates or NSDates.   � ��� �   T h e   m a i n   w a y   t o   s e a r c h   f o r   e v e n t s .   D a t e s   c a n   b e   A S   d a t e s   o r   N S D a t e s .� ��� i   = @��� I     �����
�� .!CLs!feSnull��� ��� null��  � ����
�� 
!Csd� o      ���� 0 	startdate 	startDate� ����
�� 
!Ced� o      ���� 0 enddate endDate� ����
�� 
!Csc� o      ���� 0 callist calList� �����
�� 
!Cst� o      ���� 0 thestore theStore��  � k     J�� ��� l     ������  � � � check it it is a list/array of calendars, and if not make it one. We do this by making a new array and checking the class of its first object. This copes with arrays and lists.   � ���b   c h e c k   i t   i t   i s   a   l i s t / a r r a y   o f   c a l e n d a r s ,   a n d   i f   n o t   m a k e   i t   o n e .   W e   d o   t h i s   b y   m a k i n g   a   n e w   a r r a y   a n d   c h e c k i n g   t h e   c l a s s   o f   i t s   f i r s t   o b j e c t .   T h i s   c o p e s   w i t h   a r r a y s   a n d   l i s t s .� ��� r     
��� n    ��� I    ������� $0 arraywithobject_ arrayWithObject_� ���� o    ���� 0 callist calList��  ��  � n    ��� o    ���� 0 nsarray NSArray� m     ��
�� misccura� o      ���� 0 callistarray calListArray� ��� r    ��� n   ��� I    �������� 0 firstObject  ��  ��  � o    ���� 0 callistarray calListArray� o      ���� 0 callist calList� ��� Z   (������� H    �� c    ��� l   ������ n   ��� I    �������  0 iskindofclass_ isKindOfClass_� ���� l   ������ n   ��� o    ���� 0 nsarray NSArray� m    ��
�� misccura��  ��  ��  ��  � o    ���� 0 callist calList��  ��  � m    ��
�� 
bool� r   ! $��� o   ! "���� 0 callistarray calListArray� o      ���� 0 callist calList��  ��  � ��� r   ) 3��� n  ) 1��� I   * 1������� h0 2predicateforeventswithstartdate_enddate_calendars_ 2predicateForEventsWithStartDate_endDate_calendars_� ��� o   * +���� 0 	startdate 	startDate� � � o   + ,���� 0 enddate endDate  �� o   , -���� 0 callist calList��  ��  � o   ) *���� 0 thestore theStore� o      ���� 0 thepredicate thePredicate�  r   4 < n  4 : I   5 :������ 40 eventsmatchingpredicate_ eventsMatchingPredicate_ 	��	 o   5 6���� 0 thepredicate thePredicate��  ��   o   4 5���� 0 thestore theStore o      ���� 0 	theevents 	theEvents 

 r   = E n  = C I   > C������ 60 sortedarrayusingselector_ sortedArrayUsingSelector_ �� m   > ? � 4 c o m p a r e S t a r t D a t e W i t h E v e n t :��  ��   o   = >���� 0 	theevents 	theEvents o      ���� 0 	theevents 	theEvents �� L   F J c   F I o   F G���� 0 	theevents 	theEvents m   G H��
�� 
list��  �  l     ��������  ��  ��    l     ����   � � If you have retrieved events, you can use this to refine the resulting list. Summary, location, and description are case-insensitive strings; the other parameters are booleans. Pass missing value for parameters you're not interested in.    ��   I f   y o u   h a v e   r e t r i e v e d   e v e n t s ,   y o u   c a n   u s e   t h i s   t o   r e f i n e   t h e   r e s u l t i n g   l i s t .   S u m m a r y ,   l o c a t i o n ,   a n d   d e s c r i p t i o n   a r e   c a s e - i n s e n s i t i v e   s t r i n g s ;   t h e   o t h e r   p a r a m e t e r s   a r e   b o o l e a n s .   P a s s   m i s s i n g   v a l u e   f o r   p a r a m e t e r s   y o u ' r e   n o t   i n t e r e s t e d   i n .   i   A D!"! I     ����#
�� .!CLs!fe1null��� ��� null��  # ��$%
�� 
!Cel$ o      ���� 0 	theevents 	theEvents% ��&'
�� 
!Csu& |����(��)��  ��  ( o      ���� 0 thetitle theTitle��  ) m      ��
�� 
msng' ��*+
�� 
!Clo* |����,��-��  ��  , o      ���� 0 thelocation theLocation��  - m      ��
�� 
msng+ ��./
�� 
!CdD. |����0��1��  ��  0 o      ���� 0 desc  ��  1 m      ��
�� 
msng/ ��23
�� 
!Cha2 |����4��5��  ��  4 o      ���� 0 hasa hasA��  5 m      ��
�� 
msng3 ��67
�� 
!Cre6 |����8��9��  ��  8 o      ���� 0 hasrecrules hasRecRules��  9 m      ��
�� 
msng7 ��:��
�� 
!Cad: |����;��<��  ��  ; o      ���� 0 allday allDay��  < m      ��
�� 
msng��  " k    == >?> l     ��@A��  @ � � check it it is a list/array of events, and if not make it one. We do this by making a new array and checking the class of its first object. This copes with arrays and lists.   A �BB\   c h e c k   i t   i t   i s   a   l i s t / a r r a y   o f   e v e n t s ,   a n d   i f   n o t   m a k e   i t   o n e .   W e   d o   t h i s   b y   m a k i n g   a   n e w   a r r a y   a n d   c h e c k i n g   t h e   c l a s s   o f   i t s   f i r s t   o b j e c t .   T h i s   c o p e s   w i t h   a r r a y s   a n d   l i s t s .? CDC r     
EFE n    GHG I    ��I���� $0 arraywithobject_ arrayWithObject_I J��J o    ���� 0 	theevents 	theEvents��  ��  H n    KLK o    �� 0 nsarray NSArrayL m     �~
�~ misccuraF o      �}�}  0 theeventsarray theEventsArrayD MNM r    OPO n   QRQ I    �|�{�z�| 0 firstObject  �{  �z  R o    �y�y  0 theeventsarray theEventsArrayP o      �x�x 0 	theevents 	theEventsN STS Z   (UV�w�vU H    WW c    XYX l   Z�u�tZ n   [\[ I    �s]�r�s  0 iskindofclass_ isKindOfClass_] ^�q^ l   _�p�o_ n   `a` o    �n�n 0 nsarray NSArraya m    �m
�m misccura�p  �o  �q  �r  \ o    �l�l 0 	theevents 	theEvents�u  �t  Y m    �k
�k 
boolV r   ! $bcb o   ! "�j�j  0 theeventsarray theEventsArrayc o      �i�i 0 	theevents 	theEvents�w  �v  T ded r   ) 3fgf n  ) 1hih I   , 1�hj�g�h (0 arraywithcapacity_ arrayWithCapacity_j k�fk m   , -�e�e �f  �g  i n  ) ,lml o   * ,�d�d  0 nsmutablearray NSMutableArraym m   ) *�c
�c misccurag o      �b�b 0 	predarray 	predArraye non Z   4 Lpq�a�`p >  4 7rsr o   4 5�_�_ 0 thetitle theTitles m   5 6�^
�^ 
msngq n  : Htut I   ; H�]v�\�] 0 
addobject_ 
addObject_v w�[w l  ; Dx�Z�Yx n  ; Dyzy I   > D�X{�W�X ,0 predicatewithformat_ predicateWithFormat_{ |}| m   > ?~~ �  t i t l e   = = [ c ]   % @} ��V� o   ? @�U�U 0 thetitle theTitle�V  �W  z n  ; >��� o   < >�T�T 0 nspredicate NSPredicate� m   ; <�S
�S misccura�Z  �Y  �[  �\  u o   : ;�R�R 0 	predarray 	predArray�a  �`  o ��� Z   M e���Q�P� >  M P��� o   M N�O�O 0 thelocation theLocation� m   N O�N
�N 
msng� n  S a��� I   T a�M��L�M 0 
addobject_ 
addObject_� ��K� l  T ]��J�I� n  T ]��� I   W ]�H��G�H ,0 predicatewithformat_ predicateWithFormat_� ��� m   W X�� ��� " l o c a t i o n   = = [ c ]   % @� ��F� o   X Y�E�E 0 thelocation theLocation�F  �G  � n  T W��� o   U W�D�D 0 nspredicate NSPredicate� m   T U�C
�C misccura�J  �I  �K  �L  � o   S T�B�B 0 	predarray 	predArray�Q  �P  � ��� Z   f ���A�@� >  f i��� o   f g�?�? 0 desc  � m   g h�>
�> 
msng� n  l {��� I   m {�=��<�= 0 
addobject_ 
addObject_� ��;� l  m w��:�9� n  m w��� I   p w�8��7�8 ,0 predicatewithformat_ predicateWithFormat_� ��� m   p q�� ��� B h a s N o t e s   = =   % @   A N D   n o t e s   = = [ c ]   % @� ��� m   q r�6
�6 boovtrue� ��5� o   r s�4�4 0 desc  �5  �7  � n  m p��� o   n p�3�3 0 nspredicate NSPredicate� m   m n�2
�2 misccura�:  �9  �;  �<  � o   l m�1�1 0 	predarray 	predArray�A  �@  � ��� Z   � ����0�/� >  � ���� o   � ��.�. 0 hasa hasA� m   � ��-
�- 
msng� n  � ���� I   � ��,��+�, 0 
addobject_ 
addObject_� ��*� l  � ���)�(� n  � ���� I   � ��'��&�' ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ��� $ h a s A t t e n d e e s   = =   % @� ��%� o   � ��$�$ 0 hasa hasA�%  �&  � n  � ���� o   � ��#�# 0 nspredicate NSPredicate� m   � ��"
�" misccura�)  �(  �*  �+  � o   � ��!�! 0 	predarray 	predArray�0  �/  � ��� Z   � ���� �� >  � ���� o   � ��� 0 hasrecrules hasRecRules� m   � ��
� 
msng� n  � ���� I   � ����� 0 
addobject_ 
addObject_� ��� l  � ����� n  � ���� I   � ����� ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ��� 0 h a s R e c u r r e n c e R u l e s   = =   % @� ��� o   � ��� 0 hasrecrules hasRecRules�  �  � n  � ���� o   � ��� 0 nspredicate NSPredicate� m   � ��
� misccura�  �  �  �  � o   � ��� 0 	predarray 	predArray�   �  � ��� Z   � ������ >  � ���� o   � ��� 0 allday allDay� m   � ��
� 
msng� n  � ���� I   � ����� 0 
addobject_ 
addObject_� ��
� l  � ���	�� n  � ���� I   � ����� ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ���  a l l D a y   = =   % @� ��� o   � ��� 0 allday allDay�  �  � n  � ���� o   � ��� 0 nspredicate NSPredicate� m   � ��
� misccura�	  �  �
  �  � o   � ��� 0 	predarray 	predArray�  �  � ��� r   � ���� I  � �� ���
�  .corecnte****       ****� o   � ����� 0 	predarray 	predArray��  � o      ���� 0 thecount theCount� ��� l  � �������  � h b do nothing if count is 0; if 1, just use the first predicate in the array; otherwise and them all   � ��� �   d o   n o t h i n g   i f   c o u n t   i s   0 ;   i f   1 ,   j u s t   u s e   t h e   f i r s t   p r e d i c a t e   i n   t h e   a r r a y ;   o t h e r w i s e   a n d   t h e m   a l l� ��� Z   ������� =   � ���� o   � ����� 0 thecount theCount� m   � ����� � r   � �� � l  � ����� n  � � I   � ������� <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_ �� l  � ����� n  � � I   � ��������� 0 firstobject firstObject��  ��   o   � ����� 0 	predarray 	predArray��  ��  ��  ��   o   � ����� 0 	theevents 	theEvents��  ��    o      ���� 0 	theevents 	theEvents� 	
	 ?   � � o   � ����� 0 thecount theCount m   � ����� 
 �� k   �	  r   �  n  � � I   � ������� @0 andpredicatewithsubpredicates_ andPredicateWithSubpredicates_ �� o   � ����� 0 	predarray 	predArray��  ��   n  � � o   � ����� *0 nscompoundpredicate NSCompoundPredicate m   � ���
�� misccura o      ���� 0 thepred thePred �� r  	 l ���� n  I  ������ <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_  ��  o  ���� 0 thepred thePred��  ��   o  ���� 0 	theevents 	theEvents��  ��   o      ���� 0 	theevents 	theEvents��  ��  ��  � !��! L  "" c  #$# o  ���� 0 	theevents 	theEvents$ m  ��
�� 
list��    %&% l     ��������  ��  ��  & '(' l     ��)*��  )�| When you have retrieved events, you can use this to refine the resulting list. If useRegex is true, the string(s) you pass will be treated as regular expression patterns, and matches will be sought. If useRegex is false, you can use ? as a wildcard for single characters and * as a wildcard for zero or more characters. Pass missing value for parameters you're not interested in.   * �++�   W h e n   y o u   h a v e   r e t r i e v e d   e v e n t s ,   y o u   c a n   u s e   t h i s   t o   r e f i n e   t h e   r e s u l t i n g   l i s t .   I f   u s e R e g e x   i s   t r u e ,   t h e   s t r i n g ( s )   y o u   p a s s   w i l l   b e   t r e a t e d   a s   r e g u l a r   e x p r e s s i o n   p a t t e r n s ,   a n d   m a t c h e s   w i l l   b e   s o u g h t .   I f   u s e R e g e x   i s   f a l s e ,   y o u   c a n   u s e   ?   a s   a   w i l d c a r d   f o r   s i n g l e   c h a r a c t e r s   a n d   *   a s   a   w i l d c a r d   f o r   z e r o   o r   m o r e   c h a r a c t e r s .   P a s s   m i s s i n g   v a l u e   f o r   p a r a m e t e r s   y o u ' r e   n o t   i n t e r e s t e d   i n .( ,-, i   E H./. I     ����0
�� .!CLs!fe2null��� ��� null��  0 ��12
�� 
!Cel1 o      ���� 0 	theevents 	theEvents2 ��34
�� 
!Csu3 |����5��6��  ��  5 o      ���� 0 thetitle theTitle��  6 m      ��
�� 
msng4 ��78
�� 
!CdD7 |����9��:��  ��  9 o      ���� 0 desc  ��  : m      ��
�� 
msng8 ��;<
�� 
!Clo; |����=��>��  ��  = o      ���� 0 thelocation theLocation��  > m      ��
�� 
msng< ��?��
�� 
!Cre? |����@��A��  ��  @ o      ���� 0 	regexflag 	regexFlag��  A m      ��
�� boovtrue��  / k     �BB CDC l     ��EF��  E � � check it it is a list/array of events, and if not make it one. We do this by making a new array and checking the class of its first object. This copes with arrays and lists.   F �GG\   c h e c k   i t   i t   i s   a   l i s t / a r r a y   o f   e v e n t s ,   a n d   i f   n o t   m a k e   i t   o n e .   W e   d o   t h i s   b y   m a k i n g   a   n e w   a r r a y   a n d   c h e c k i n g   t h e   c l a s s   o f   i t s   f i r s t   o b j e c t .   T h i s   c o p e s   w i t h   a r r a y s   a n d   l i s t s .D HIH r     
JKJ n    LML I    ��N���� $0 arraywithobject_ arrayWithObject_N O��O o    ���� 0 	theevents 	theEvents��  ��  M n    PQP o    ���� 0 nsarray NSArrayQ m     ��
�� misccuraK o      ����  0 theeventsarray theEventsArrayI RSR r    TUT n   VWV I    �������� 0 firstObject  ��  ��  W o    ����  0 theeventsarray theEventsArrayU o      ���� 0 	theevents 	theEventsS XYX Z   (Z[����Z H    \\ c    ]^] l   _����_ n   `a` I    ��b����  0 iskindofclass_ isKindOfClass_b c��c l   d����d n   efe o    ���� 0 nsarray NSArrayf m    ��
�� misccura��  ��  ��  ��  a o    ���� 0 	theevents 	theEvents��  ��  ^ m    ��
�� 
bool[ r   ! $ghg o   ! "����  0 theeventsarray theEventsArrayh o      ���� 0 	theevents 	theEvents��  ��  Y iji Z   ) [kl����k >  ) ,mnm o   ) *���� 0 thetitle theTitlen m   * +��
�� 
msngl k   / Woo pqp Z   / Nrs��tr c   / 2uvu o   / 0���� 0 	regexflag 	regexFlagv m   0 1��
�� 
bools r   5 @wxw n  5 >yzy I   8 >��{���� ,0 predicatewithformat_ predicateWithFormat_{ |}| m   8 9~~ �   t i t l e   M A T C H E S   % @} ���� o   9 :���� 0 thetitle theTitle��  ��  z n  5 8��� o   6 8���� 0 nspredicate NSPredicate� m   5 6��
�� misccurax o      ����  0 thenspredicate theNSPredicate��  t r   C N��� n  C L��� I   F L������� ,0 predicatewithformat_ predicateWithFormat_� ��� m   F G�� ���  t i t l e   L I K E   % @� ���� o   G H���� 0 thetitle theTitle��  ��  � n  C F��� o   D F���� 0 nspredicate NSPredicate� m   C D��
�� misccura� o      ����  0 thenspredicate theNSPredicateq ���� r   O W��� l  O U������ n  O U��� I   P U������ <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_� ��~� o   P Q�}�}  0 thenspredicate theNSPredicate�~  �  � o   O P�|�| 0 	theevents 	theEvents��  ��  � o      �{�{ 0 	theevents 	theEvents��  ��  ��  j ��� Z   \ ����z�y� >  \ _��� o   \ ]�x�x 0 desc  � m   ] ^�w
�w 
msng� k   b ��� ��� Z   b ����v�� c   b e��� o   b c�u�u 0 	regexflag 	regexFlag� m   c d�t
�t 
bool� r   h t��� n  h r��� I   k r�s��r�s ,0 predicatewithformat_ predicateWithFormat_� ��� m   k l�� ��� F h a s N o t e s   = =   % @   A N D   n o t e s   M A T C H E S   % @� ��� m   l m�q
�q boovtrue� ��p� o   m n�o�o 0 desc  �p  �r  � n  h k��� o   i k�n�n 0 nspredicate NSPredicate� m   h i�m
�m misccura� o      �l�l  0 thenspredicate theNSPredicate�v  � r   w ���� n  w ���� I   z ��k��j�k ,0 predicatewithformat_ predicateWithFormat_� ��� m   z {�� ��� @ h a s N o t e s   = =   % @   A N D   n o t e s   L I K E   % @� ��� m   { |�i
�i boovtrue� ��h� o   | }�g�g 0 desc  �h  �j  � n  w z��� o   x z�f�f 0 nspredicate NSPredicate� m   w x�e
�e misccura� o      �d�d  0 thenspredicate theNSPredicate� ��c� r   � ���� l  � ���b�a� n  � ���� I   � ��`��_�` <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_� ��^� o   � ��]�]  0 thenspredicate theNSPredicate�^  �_  � o   � ��\�\ 0 	theevents 	theEvents�b  �a  � o      �[�[ 0 	theevents 	theEvents�c  �z  �y  � ��� Z   � ����Z�Y� >  � ���� o   � ��X�X 0 thelocation theLocation� m   � ��W
�W 
msng� k   � ��� ��� Z   � ����V�� c   � ���� o   � ��U�U 0 useregex useRegex� m   � ��T
�T 
bool� r   � ���� n  � ���� I   � ��S��R�S ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ��� & l o c a t i o n   M A T C H E S   % @� ��Q� o   � ��P�P 0 thelocation theLocation�Q  �R  � n  � ���� o   � ��O�O 0 nspredicate NSPredicate� m   � ��N
�N misccura� o      �M�M  0 thenspredicate theNSPredicate�V  � r   � ���� n  � ���� I   � ��L��K�L ,0 predicatewithformat_ predicateWithFormat_� ��� m   � ��� ���   l o c a t i o n   L I K E   % @� ��J� o   � ��I�I 0 thelocation theLocation�J  �K  � n  � ���� o   � ��H�H 0 nspredicate NSPredicate� m   � ��G
�G misccura� o      �F�F  0 thenspredicate theNSPredicate� ��E� r   � ���� l  � ���D�C� n  � ���� I   � ��B��A�B <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_� ��@� o   � ��?�?  0 thenspredicate theNSPredicate�@  �A  � o   � ��>�> 0 	theevents 	theEvents�D  �C  � o      �=�= 0 	theevents 	theEvents�E  �Z  �Y  � ��<� L   � ��� c   � ���� o   � ��;�; 0 	theevents 	theEvents� m   � ��:
�: 
list�<  - ��� l     �9�8�7�9  �8  �7  � ��� l     �6� �6  � f ` Deletes an event. For recurring events, futureFlag should be true to delete future recurrences.     � �   D e l e t e s   a n   e v e n t .   F o r   r e c u r r i n g   e v e n t s ,   f u t u r e F l a g   s h o u l d   b e   t r u e   t o   d e l e t e   f u t u r e   r e c u r r e n c e s .�  i   I L I     �5�4
�5 .!CLs!reEnull��� ��� null�4   �3
�3 
!Cev o      �2�2 0 theevent theEvent �1	

�1 
!Cst	 o      �0�0 0 thestore theStore
 �/�.
�/ 
!Cft |�-�,�+�-  �,   o      �*�* 0 
futureflag 
futureFlag�+   m      �)
�) boovtrue�.   k     .  r      n    	 I    	�(�'�( @0 removeevent_span_commit_error_ removeEvent_span_commit_error_  o    �&�& 0 theevent theEvent  o    �%�% 0 
futureflag 
futureFlag  m    �$
�$ boovtrue �# l   �"�! m    � 
�  
obj �"  �!  �#  �'   o     �� 0 thestore theStore J         o      �� 0 	theresult 	theResult  !�! o      �� 0 theerror theError�   "�" Z   .#$��# H    %% c    &'& o    �� 0 	theresult 	theResult' m    �
� 
bool$ R     *�(�
� .ascrerr ****      � ****( l  " ))��) c   " )*+* n  " ',-, I   # '���� ,0 localizeddescription localizedDescription�  �  - o   " #�� 0 theerror theError+ m   ' (�
� 
ctxt�  �  �  �  �  �   ./. l     ����  �  �  / 010 l     �
23�
  2 � � Creates a new event. Location and notes can be missing value, start and end dates can be AS dates or NSDates, and allDay is a boolean. You still need to save it using the saveEvent::: handler below.   3 �44�   C r e a t e s   a   n e w   e v e n t .   L o c a t i o n   a n d   n o t e s   c a n   b e   m i s s i n g   v a l u e ,   s t a r t   a n d   e n d   d a t e s   c a n   b e   A S   d a t e s   o r   N S D a t e s ,   a n d   a l l D a y   i s   a   b o o l e a n .   Y o u   s t i l l   n e e d   t o   s a v e   i t   u s i n g   t h e   s a v e E v e n t : : :   h a n d l e r   b e l o w .1 565 i   M P787 I     �	�9
�	 .!CLs!crenull��� ��� null�  9 �:;
� 
!Cst: o      �� 0 thestore theStore; �<=
� 
!Cdc< o      �� 0 thecal theCal= �>?
� 
!Csu> o      �� 0 thetitle theTitle? �@A
� 
!Csd@ o      � �  0 startd startDA ��BC
�� 
!CedB o      ���� 0 endd endDC ��DE
�� 
!CadD |����F��G��  ��  F o      ���� 0 allday allDay��  G m      ��
�� boovfalsE ��HI
�� 
!CloH |����J��K��  ��  J o      ���� 0 thelocation theLocation��  K m      ��
�� 
msngI ��L��
�� 
!CdDL |����M��N��  ��  M o      ���� 0 desc  ��  N m      ��
�� 
msng��  8 k     ROO PQP r     
RSR n    TUT I    ��V���� ,0 eventwitheventstore_ eventWithEventStore_V W��W o    ���� 0 thestore theStore��  ��  U n    XYX o    ���� 0 ekevent EKEventY m     ��
�� misccuraS o      ���� 0 newevent newEventQ Z[Z n   \]\ I    ��^���� 0 setcalendar_ setCalendar_^ _��_ o    ���� 0 thecal theCal��  ��  ] o    ���� 0 newevent newEvent[ `a` n   bcb I    ��d���� 0 	settitle_ 	setTitle_d e��e o    ���� 0 thetitle theTitle��  ��  c o    ���� 0 newevent newEventa fgf n   hih I    ��j���� 0 setstartdate_ setStartDate_j k��k o    ���� 0 startd startD��  ��  i o    ���� 0 newevent newEventg lml n    &non I   ! &��p���� 0 setenddate_ setEndDate_p q��q o   ! "���� 0 endd endD��  ��  o o     !���� 0 newevent newEventm rsr n  ' -tut I   ( -��v���� 0 
setallday_ 
setAllDay_v w��w o   ( )���� 0 allday allDay��  ��  u o   ' (���� 0 newevent newEvents xyx Z  . >z{����z >  . 1|}| o   . /���� 0 thelocation theLocation} m   / 0��
�� 
msng{ n  4 :~~ I   5 :������� 0 setlocation_ setLocation_� ���� o   5 6���� 0 thelocation theLocation��  ��   o   4 5���� 0 newevent newEvent��  ��  y ��� Z  ? O������� >  ? B��� o   ? @���� 0 desc  � m   @ A��
�� 
msng� n  E K��� I   F K������� 0 	setnotes_ 	setNotes_� ���� o   F G���� 0 desc  ��  ��  � o   E F���� 0 newevent newEvent��  ��  � ���� L   P R�� o   P Q���� 0 newevent newEvent��  6 ��� l     ��������  ��  ��  � ��� l     ������  � E ? Supply missing value for properties you do not want to change.   � ��� ~   S u p p l y   m i s s i n g   v a l u e   f o r   p r o p e r t i e s   y o u   d o   n o t   w a n t   t o   c h a n g e .� ��� i   Q T��� I     �����
�� .ICLs!mo1null��� ��� null��  � ����
�� 
!Cev� o      ���� 0 theevent theEvent� ����
�� 
!Cdc� o      ���� 0 thecal theCal� ����
�� 
!Csu� |����������  ��  � o      ���� 0 thetitle theTitle��  � m      ��
�� 
msng� ����
�� 
!Csd� |����������  ��  � o      ���� 0 startd startD��  � m      ��
�� 
msng� ����
�� 
!Ced� |����������  ��  � o      ���� 0 endd endD��  � m      ��
�� 
msng� ����
�� 
!Cad� |����������  ��  � o      ���� 0 allday allDay��  � m      ��
�� 
msng� ����
�� 
!Clo� |����������  ��  � o      ���� 0 thelocation theLocation��  � m      ��
�� 
msng� �����
�� 
!CdD� |����������  ��  � o      ���� 0 desc  ��  � m      ��
�� 
msng��  � k     y�� ��� Z    ������� >    ��� o     ���� 0 thecal theCal� m    ��
�� 
msng� n   ��� I    ������� 0 setcalendar_ setCalendar_� ���� o    ���� 0 thecal theCal��  ��  � o    �� 0 theevent theEvent��  ��  � ��� Z   !���~�}� >   ��� o    �|�| 0 thetitle theTitle� m    �{
�{ 
msng� n   ��� I    �z��y�z 0 	settitle_ 	setTitle_� ��x� o    �w�w 0 thetitle theTitle�x  �y  � o    �v�v 0 theevent theEvent�~  �}  � ��� Z  " 2���u�t� >  " %��� o   " #�s�s 0 startd startD� m   # $�r
�r 
msng� n  ( .��� I   ) .�q��p�q 0 setstartdate_ setStartDate_� ��o� o   ) *�n�n 0 startd startD�o  �p  � o   ( )�m�m 0 theevent theEvent�u  �t  � ��� Z  3 C���l�k� >  3 6��� o   3 4�j�j 0 endd endD� m   4 5�i
�i 
msng� n  9 ?��� I   : ?�h��g�h 0 setenddate_ setEndDate_� ��f� o   : ;�e�e 0 endd endD�f  �g  � o   9 :�d�d 0 theevent theEvent�l  �k  � ��� Z  D T���c�b� >  D G��� o   D E�a�a 0 allday allDay� m   E F�`
�` 
msng� n  J P��� I   K P�_��^�_ 0 
setallday_ 
setAllDay_� ��]� o   K L�\�\ 0 allday allDay�]  �^  � o   J K�[�[ 0 theevent theEvent�c  �b  � ��� Z  U e���Z�Y� >  U X��� o   U V�X�X 0 thelocation theLocation� m   V W�W
�W 
msng� n  [ a��� I   \ a�V��U�V 0 setlocation_ setLocation_� ��T� o   \ ]�S�S 0 thelocation theLocation�T  �U  � o   [ \�R�R 0 theevent theEvent�Z  �Y  � ��� Z  f v���Q�P� >  f i��� o   f g�O�O 0 desc  � m   g h�N
�N 
msng� n  l r��� I   m r�M��L�M 0 	setnotes_ 	setNotes_� ��K� o   m n�J�J 0 desc  �K  �L  � o   l m�I�I 0 theevent theEvent�Q  �P  � ��H� L   w y�� o   w x�G�G 0 theevent theEvent�H  � ��� l     �F�E�D�F  �E  �D  �    l     �C�C   n h The time zone can be missing value (for floating times), a valid time zone name, or a Cocoa NSTimeZone.    � �   T h e   t i m e   z o n e   c a n   b e   m i s s i n g   v a l u e   ( f o r   f l o a t i n g   t i m e s ) ,   a   v a l i d   t i m e   z o n e   n a m e ,   o r   a   C o c o a   N S T i m e Z o n e .  i   U X I     �B�A	
�B .!CLs!mo2null��� ��� null�A  	 �@

�@ 
!Cev
 o      �?�? 0 theevent theEvent �>�=
�> 
!Ctz o      �<�< 0 tz  �=   k     ]  Z     Z�; =     o     �:�: 0 tz   m    �9
�9 
msng n    I    �8�7�8 0 settimezone_ setTimeZone_ �6 o    �5�5 0 tz  �6  �7   o    �4�4 0 theevent theEvent�;   k    Z  l   �3�3   L F workaround to make sure tz is a Cocoa object so we can test its class    � �   w o r k a r o u n d   t o   m a k e   s u r e   t z   i s   a   C o c o a   o b j e c t   s o   w e   c a n   t e s t   i t s   c l a s s   r    !"! n   #$# I    �2�1�0�2 0 firstObject  �1  �0  $ l   %�/�.% n   &'& I    �-(�,�- $0 arraywithobject_ arrayWithObject_( )�+) o    �*�* 0 tz  �+  �,  ' n   *+* o    �)�) 0 nsarray NSArray+ m    �(
�( misccura�/  �.  " o      �'�' 0 tz    ,�&, Z    Z-.�%/- c    (010 l   &2�$�#2 n   &343 I    &�"5�!�"  0 iskindofclass_ isKindOfClass_5 6� 6 l   "7��7 n   "898 o     "�� 0 nsstring NSString9 m     �
� misccura�  �  �   �!  4 o    �� 0 tz  �$  �#  1 m   & '�
� 
bool. k   + Q:: ;<; l  + +�=>�  = / ) make a time zone from string if possible   > �?? R   m a k e   a   t i m e   z o n e   f r o m   s t r i n g   i f   p o s s i b l e< @�@ Z   + QAB��A c   + 9CDC l  + 7E��E n  + 7FGF I   2 7�H�� "0 containsobject_ containsObject_H I�I o   2 3�� 0 tz  �  �  G n  + 2JKJ I   . 2���� (0 knowntimezonenames knownTimeZoneNames�  �  K n  + .LML o   , .�� 0 
nstimezone 
NSTimeZoneM m   + ,�
� misccura�  �  D m   7 8�

�
 
boolB k   < MNN OPO r   < FQRQ n  < DSTS I   ? D�	U��	 &0 timezonewithname_ timeZoneWithName_U V�V o   ? @�� 0 tz  �  �  T n  < ?WXW o   = ?�� 0 
nstimezone 
NSTimeZoneX m   < =�
� misccuraR o      �� 0 tz  P Y�Y n  G MZ[Z I   H M�\� � 0 settimezone_ setTimeZone_\ ]��] o   H I���� 0 tz  ��  �   [ o   G H���� 0 theevent theEvent�  �  �  �  �%  / l  T Z^_`^ n  T Zaba I   U Z��c���� 0 settimezone_ setTimeZone_c d��d o   U V���� 0 tz  ��  ��  b o   T U���� 0 theevent theEvent_ &   assume it's already a time zone   ` �ee @   a s s u m e   i t ' s   a l r e a d y   a   t i m e   z o n e�&   f��f L   [ ]gg o   [ \���� 0 theevent theEvent��   hih l     ��������  ��  ��  i jkj l     ��lm��  l � � You pass the frequency as an integer or string, and the interval as an integer. If you supply a date (AS date or NSDate) for orEndDate:, it will be used, otherwise pass missing value for it, and the repeatCount: integer will be used.   m �nn�   Y o u   p a s s   t h e   f r e q u e n c y   a s   a n   i n t e g e r   o r   s t r i n g ,   a n d   t h e   i n t e r v a l   a s   a n   i n t e g e r .   I f   y o u   s u p p l y   a   d a t e   ( A S   d a t e   o r   N S D a t e )   f o r   o r E n d D a t e : ,   i t   w i l l   b e   u s e d ,   o t h e r w i s e   p a s s   m i s s i n g   v a l u e   f o r   i t ,   a n d   t h e   r e p e a t C o u n t :   i n t e g e r   w i l l   b e   u s e d .k opo i   Y \qrq I     ����s
�� .!CLs!mo3null��� ��� null��  s ��tu
�� 
!Cevt o      ���� 0 theevent theEventu ��vw
�� 
!Cefv o      ���� 0 thefreq theFreqw ��xy
�� 
!Civx o      ���� 
0 interv  y ��z{
�� 
!Crez |����|��}��  ��  | o      ���� 0 repeatct repeatCt��  } m      ��
�� 
msng{ ��~��
�� 
!Crd~ |���������  ��   o      ���� 0 
endingdate 
endingDate��  � m      ��
�� 
msng��  r k     u�� ��� Z     4����� =     ��� o     ���� 0 thefreq theFreq� m    ��
�� !Efr!Eda� r    	��� m    ����  � o      ���� 0 thefreq theFreq� ��� =    ��� o    ���� 0 thefreq theFreq� m    ��
�� !Efr!Ewe� ��� r    ��� m    ���� � o      ���� 0 thefreq theFreq� ��� =    ��� o    ���� 0 thefreq theFreq� m    ��
�� !Efr!Emo� ��� r    !��� m    ���� � o      ���� 0 thefreq theFreq� ��� =   $ '��� o   $ %���� 0 thefreq theFreq� m   % &��
�� !Efr!Eye� ���� r   * -��� m   * +���� � o      ���� 0 thefreq theFreq��  � R   0 4�����
�� .ascrerr ****      � ****� m   2 3�� ��� 6 I n v a l i d   f r e q u e n c y   p a r a m e t e r��  � ��� Z   5 R������ =  5 8��� o   5 6���� 0 
endingdate 
endingDate� m   6 7��
�� 
msng� r   ; E��� n  ; C��� I   > C������� F0 !recurrenceendwithoccurrencecount_ !recurrenceEndWithOccurrenceCount_� ���� o   > ?���� 0 repeatct repeatCt��  ��  � n  ; >��� o   < >���� "0 ekrecurrenceend EKRecurrenceEnd� m   ; <��
�� misccura� o      ���� 0 	recurrend 	recurrEnd��  � r   H R��� n  H P��� I   K P������� 60 recurrenceendwithenddate_ recurrenceEndWithEndDate_� ���� o   K L���� 0 
endingdate 
endingDate��  ��  � n  H K��� o   I K���� "0 ekrecurrenceend EKRecurrenceEnd� m   H I��
�� misccura� o      ���� 0 	recurrend 	recurrEnd� ��� r   S c��� n  S a��� I   Z a������� V0 )initrecurrencewithfrequency_interval_end_ )initRecurrenceWithFrequency_interval_end_� ��� o   Z [���� 0 thefreq theFreq� ��� o   [ \���� 
0 interv  � ���� o   \ ]���� 0 	recurrend 	recurrEnd��  ��  � n  S Z��� I   V Z�������� 	0 alloc  ��  ��  � n  S V��� o   T V���� $0 ekrecurrencerule EKRecurrenceRule� m   S T��
�� misccura� o      ���� 0 
recurrrule 
recurrRule� ��� l  d d������  �    delete any existing first   � ��� 4   d e l e t e   a n y   e x i s t i n g   f i r s t� ��� I  d k�����
�� .!CLs!stpnull��� ��� null��  � �����
�� 
!Cev� o   f g���� 0 theevent theEvent��  � ��� n  l r��� I   m r������� (0 addrecurrencerule_ addRecurrenceRule_� ���� o   m n���� 0 
recurrrule 
recurrRule��  ��  � o   l m���� 0 theevent theEvent� ���� L   s u�� o   s t���� 0 theevent theEvent��  p ��� l     ��������  ��  ��  � ��� l     ������  � &   Turns off recurrence for event.   � ��� @   T u r n s   o f f   r e c u r r e n c e   f o r   e v e n t .� ��� i   ] `��� I     �����
�� .!CLs!stpnull��� ��� null��  � �����
�� 
!Cev� o      ���� 0 theevent theEvent��  � k     0�� ��� Z     -������� c     ��� n    ��� I    �������� (0 hasrecurrencerules hasRecurrenceRules��  ��  � o     ���� 0 theevent theEvent� m    ��
�� 
bool� k   
 )�� ��� r   
 ��� n  
 ��� I    �������� 0 recurrenceRules  ��  ��  � o   
 ���� 0 theevent theEvent� o      ���� 0 therules theRules� ���� Z   )������� ?    ��� l    ����  I   ����
�� .corecnte****       **** o    ���� 0 therules theRules��  ��  ��  � m    ����  � n   % I    %������ .0 removerecurrencerule_ removeRecurrenceRule_ � l   !�~�} n    ! 4    !�|	
�| 
cobj	 m     �{�{  o    �z�z 0 therules theRules�~  �}  �  ��   o    �y�y 0 theevent theEvent��  ��  ��  ��  ��  � 
�x
 L   . 0 o   . /�w�w 0 theevent theEvent�x  �  l     �v�u�t�v  �u  �t    l     �s�s   � � After you create or modify an event, you need to save it. For recurring events, futureFlag should be true to make changes apply to future events.    �$   A f t e r   y o u   c r e a t e   o r   m o d i f y   a n   e v e n t ,   y o u   n e e d   t o   s a v e   i t .   F o r   r e c u r r i n g   e v e n t s ,   f u t u r e F l a g   s h o u l d   b e   t r u e   t o   m a k e   c h a n g e s   a p p l y   t o   f u t u r e   e v e n t s .  i   a d I     �r�q
�r .!CLs!updnull��� ��� null�q   �p
�p 
!Cev o      �o�o 0 theevent theEvent �n
�n 
!Cst o      �m�m 0 thestore theStore �l�k
�l 
!Cft |�j�i�h�j  �i   o      �g�g 0 
futureflag 
futureFlag�h   m      �f
�f boovtrue�k   k     .  !  r     "#" n    	$%$ I    	�e&�d�e <0 saveevent_span_commit_error_ saveEvent_span_commit_error_& '(' o    �c�c 0 theevent theEvent( )*) o    �b�b 0 
futureflag 
futureFlag* +,+ m    �a
�a boovtrue, -�`- l   .�_�^. m    �]
�] 
obj �_  �^  �`  �d  % o     �\�\ 0 thestore theStore# J      // 010 o      �[�[ 0 	theresult 	theResult1 2�Z2 o      �Y�Y 0 theerror theError�Z  ! 3�X3 Z   .45�W�V4 H    66 c    787 o    �U�U 0 	theresult 	theResult8 m    �T
�T 
bool5 R     *�S9�R
�S .ascrerr ****      � ****9 l  " ):�Q�P: c   " );<; n  " '=>= I   # '�O�N�M�O 0 localizedDescription  �N  �M  > o   " #�L�L 0 theerror theError< m   ' (�K
�K 
ctxt�Q  �P  �R  �W  �V  �X   ?@? l     �J�I�H�J  �I  �H  @ ABA l     �GCD�G  C 4 . This is the external id used by Calendar.app.   D �EE \   T h i s   i s   t h e   e x t e r n a l   i d   u s e d   b y   C a l e n d a r . a p p .B FGF i   e hHIH I     �F�EJ
�F .!CLs!eidnull��� ��� null�E  J �DK�C
�D 
!CevK o      �B�B 0 theevent theEvent�C  I L     LL c     MNM n    OPO I    �A�@�?�A "0 calendarItemExternalIdentifier  �@  �?  P o     �>�> 0 theevent theEventN m    �=
�= 
ctxtG QRQ l     �<�;�:�<  �;  �:  R STS l     �9UV�9  U   returns record.   V �WW     r e t u r n s   r e c o r d .T XYX i   i lZ[Z I     �8�7\
�8 .!CLs!infnull��� ��� null�7  \ �6]�5
�6 
!Cev] o      �4�4 0 theevent theEvent�5  [ k    =^^ _`_ l     �3ab�3  a y s work around problem with null values in dictionaries; set initial nulls for all values that might be missing value   b �cc �   w o r k   a r o u n d   p r o b l e m   w i t h   n u l l   v a l u e s   i n   d i c t i o n a r i e s ;   s e t   i n i t i a l   n u l l s   f o r   a l l   v a l u e s   t h a t   m i g h t   b e   m i s s i n g   v a l u e` ded r     	fgf n    hih I    �2�1�0�2 0 null  �1  �0  i n    jkj o    �/�/ 0 nsnull NSNullk m     �.
�. misccurag o      �-�- 0 thenull theNulle lml r   
 %non n  
 #pqp I    #�,r�+�, @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_r sts J    uu vwv o    �*�* 0 thenull theNullw xyx o    �)�) 0 thenull theNully z{z o    �(�( 0 thenull theNull{ |}| o    �'�' 0 thenull theNull} ~~ o    �&�& 0 thenull theNull ��� o    �%�% 0 thenull theNull� ��$� o    �#�# 0 thenull theNull�$  t ��"� J    �� ��� m    �� ���  e v e n t _ s u m m a r y� ��� m    �� ���  e v e n t _ t i m e _ z o n e� ��� m    �� ���  e v e n t _ l o c a t i o n� ��� m    �� ���  e v e n t _ u r l� ��� m    �� ��� " e v e n t _ d e s c r i p t i o n� ��� m    �� ���  e v e n t _ o r g a n i z e r� ��!� m    �� ��� & e v e n t _ o r i g i n a l _ d a t e�!  �"  �+  q n  
 ��� o    � �  *0 nsmutabledictionary NSMutableDictionary� m   
 �
� misccurao o      �� 0 thedict theDictm ��� n  & 5��� I   ' 5���� &0 setobject_forkey_ setObject_forKey_� ��� l  ' 0���� n  ' 0��� I   , 0���� 	0 title  �  �  � n  ' ,��� I   ( ,���� 0 calendar  �  �  � o   ' (�� 0 theevent theEvent�  �  � ��� m   0 1�� ���  c a l e n d a r _ n a m e�  �  � o   & '�� 0 thedict theDict� ��� r   6 E��� c   6 C��� l  6 ?���� n  6 ?��� I   ; ?���� 0 type  �  �  � n  6 ;��� I   7 ;��
�	� 0 calendar  �
  �	  � o   6 7�� 0 theevent theEvent�  �  � m   ? B�
� 
long� o      �� 0 	theresult 	theResult� ��� n  F h��� I   G h���� &0 setobject_forkey_ setObject_forKey_� ��� l  G a���� n   G a��� 4   Z a��
� 
cobj� l  ] `�� ��� [   ] `��� o   ] ^���� 0 	theresult 	theResult� m   ^ _���� �   ��  � J   G Z�� ��� m   G J�� ��� 
 l o c a l� ��� m   J M�� ��� 
 c l o u d� ��� m   M P�� ���  E x c h a n g e� ��� m   P S�� ���  s u b s c r i p t i o n� ���� m   S V�� ���  b i r t h d a y��  �  �  � ���� m   a d�� ���  c a l e n d a r _ t y p e��  �  � o   F G���� 0 thedict theDict� ��� r   i p��� l  i n������ n  i n��� I   j n�������� 	0 title  ��  ��  � o   i j���� 0 theevent theEvent��  ��  � o      ���� 0 	theresult 	theResult� ��� Z  q �������� >  q v��� o   q r���� 0 	theresult 	theResult� m   r u��
�� 
msng� n  y ���� I   z �������� &0 setobject_forkey_ setObject_forKey_� ��� o   z {���� 0 	theresult 	theResult� ���� m   { ~�� ���  e v e n t _ s u m m a r y��  ��  � o   y z���� 0 thedict theDict��  ��  � ��� n  � ���� I   � �������� &0 setobject_forkey_ setObject_forKey_� ��� l  � ������� n  � ���� I   � ��������� "0 calendarItemExternalIdentifier  ��  ��  � o   � ����� 0 theevent theEvent��  ��  �  ��  m   � � � " e v e n t _ e x t e r n a l _ I D��  ��  � o   � ����� 0 thedict theDict�  n  � � I   � ������� &0 setobject_forkey_ setObject_forKey_ 	 l  � �
����
 n  � � I   � ��������� 0 	startDate  ��  ��   o   � ����� 0 theevent theEvent��  ��  	 �� m   � � �   e v e n t _ s t a r t _ d a t e��  ��   o   � ����� 0 thedict theDict  n  � � I   � ������� &0 setobject_forkey_ setObject_forKey_  l  � ����� n  � � I   � ��������� 0 endDate  ��  ��   o   � ����� 0 theevent theEvent��  ��   �� m   � � �  e v e n t _ e n d _ d a t e��  ��   o   � ����� 0 thedict theDict  n  � �  I   � ���!���� &0 setobject_forkey_ setObject_forKey_! "#" l  � �$����$ n  � �%&% I   � ��������� 0 isAllDay  ��  ��  & o   � ����� 0 theevent theEvent��  ��  # '��' m   � �(( �))  a l l _ d a y��  ��    o   � ����� 0 thedict theDict *+* r   � �,-, l  � �.����. n  � �/0/ I   � ��������� 0 timezone timeZone��  ��  0 o   � ����� 0 theevent theEvent��  ��  - o      ���� 0 tz  + 121 Z  � �34����3 >  � �565 o   � ����� 0 tz  6 m   � ���
�� 
msng4 n  � �787 I   � ���9���� &0 setobject_forkey_ setObject_forKey_9 :;: l  � �<����< n  � �=>= I   � ��������� 0 name  ��  ��  > o   � ����� 0 tz  ��  ��  ; ?��? m   � �@@ �AA  e v e n t _ t i m e _ z o n e��  ��  8 o   � ����� 0 thedict theDict��  ��  2 BCB r   � �DED l  � �F����F n  � �GHG I   � ��������� 0 location  ��  ��  H o   � ����� 0 theevent theEvent��  ��  E o      ���� 0 	theresult 	theResultC IJI Z  � �KL����K >  � �MNM o   � ����� 0 	theresult 	theResultN m   � ���
�� 
msngL n  � �OPO I   � ���Q���� &0 setobject_forkey_ setObject_forKey_Q RSR o   � ����� 0 	theresult 	theResultS T��T m   � �UU �VV  e v e n t _ l o c a t i o n��  ��  P o   � ����� 0 thedict theDict��  ��  J WXW r   �YZY l  �[����[ n  �\]\ I   �������� 0 URL  ��  ��  ] o   � ���� 0 theevent theEvent��  ��  Z o      ���� 0 theurl theURLX ^_^ Z  `a����` > bcb o  ���� 0 theurl theURLc m  ��
�� 
msnga n ded I  ��f���� &0 setobject_forkey_ setObject_forKey_f ghg l i����i n jkj I  �������� 0 absoluteString  ��  ��  k o  ���� 0 theurl theURL��  ��  h l��l m  mm �nn  e v e n t _ u r l��  ��  e o  ���� 0 thedict theDict��  ��  _ opo r  !,qrq c  !*sts l !&u����u n !&vwv I  "&�������� 0 hasNotes  ��  ��  w o  !"���� 0 theevent theEvent��  ��  t m  &)��
�� 
boolr o      ���� 0 	theresult 	theResultp xyx Z  -Rz{��~z o  -.�}�} 0 	theresult 	theResult{ k  1N|| }~} r  18� l 16��|�{� n 16��� I  26�z�y�x�z 	0 notes  �y  �x  � o  12�w�w 0 theevent theEvent�|  �{  � o      �v�v 0 	theresult 	theResult~ ��u� Z 9N���t�s� > 9>��� o  9:�r�r 0 	theresult 	theResult� m  :=�q
�q 
msng� n AJ��� I  BJ�p��o�p &0 setobject_forkey_ setObject_forKey_� ��� o  BC�n�n 0 	theresult 	theResult� ��m� m  CF�� ��� " e v e n t _ d e s c r i p t i o n�m  �o  � o  AB�l�l 0 thedict theDict�t  �s  �u  �  �~  y ��� r  SZ��� n SX��� I  TX�k�j�i�k 0 hasAttendees  �j  �i  � o  ST�h�h 0 theevent theEvent� o      �g�g 0 theattendees theAttendees� ��� Z  [����f�� c  [`��� o  [\�e�e 0 theattendees theAttendees� m  \_�d
�d 
bool� n cw��� I  dw�c��b�c &0 setobject_forkey_ setObject_forKey_� ��� l dp��a�`� n dp��� I  ip�_��^�_ 0 valueforkey_ valueForKey_� ��]� m  il�� ���  n a m e�]  �^  � n di��� I  ei�\�[�Z�\ 0 	attendees  �[  �Z  � o  de�Y�Y 0 theevent theEvent�a  �`  � ��X� m  ps�� ���  e v e n t _ a t t e n d e e s�X  �b  � o  cd�W�W 0 thedict theDict�f  � n z���� I  {��V��U�V &0 setobject_forkey_ setObject_forKey_� ��� J  {}�T�T  � ��S� m  }��� ���  e v e n t _ a t t e n d e e s�S  �U  � o  z{�R�R 0 thedict theDict� ��� n ����� I  ���Q��P�Q &0 setobject_forkey_ setObject_forKey_� ��� l ����O�N� n ����� I  ���M�L�K�M 0 hasRecurrenceRules  �L  �K  � o  ���J�J 0 theevent theEvent�O  �N  � ��I� m  ���� ��� $ e v e n t _ i s _ r e c u r r i n g�I  �P  � o  ���H�H 0 thedict theDict� ��� n ����� I  ���G��F�G &0 setobject_forkey_ setObject_forKey_� ��� l ����E�D� n ����� I  ���C�B�A�C 0 creationDate  �B  �A  � o  ���@�@ 0 theevent theEvent�E  �D  � ��?� m  ���� ��� & e v e n t _ c r e a t i o n _ d a t e�?  �F  � o  ���>�> 0 thedict theDict� ��� r  ����� l ����=�<� n ����� I  ���;�:�9�; 0 	organizer  �:  �9  � o  ���8�8 0 theevent theEvent�=  �<  � o      �7�7 0 	theresult 	theResult� ��� Z  �����6�5� > ����� o  ���4�4 0 	theresult 	theResult� m  ���3
�3 
msng� k  ���� ��� r  ����� l ����2�1� n ����� I  ���0�/�.�0 0 name  �/  �.  � o  ���-�- 0 	theresult 	theResult�2  �1  � o      �,�, 0 	theresult 	theResult� ��+� Z �����*�)� > ����� o  ���(�( 0 	theresult 	theResult� m  ���'
�' 
msng� n ����� I  ���&��%�& &0 setobject_forkey_ setObject_forKey_� ��� o  ���$�$ 0 	theresult 	theResult� ��#� m  ���� ���  e v e n t _ o r g a n i z e r�#  �%  � o  ���"�" 0 thedict theDict�*  �)  �+  �6  �5  � ��� r  ����� l ����!� � n ����� I  ������ 0 occurrenceDate  �  �  � o  ���� 0 theevent theEvent�!  �   � o      �� 0 	theresult 	theResult� ��� Z ������� > ����� o  ���� 0 	theresult 	theResult� m  ���
� 
msng� n ��   I  ����� &0 setobject_forkey_ setObject_forKey_  o  ���� 0 	theresult 	theResult � m  �� � & e v e n t _ o r i g i n a l _ d a t e�  �   o  ���� 0 thedict theDict�  �  � 	 r  ��

 l ���� n �� I  ������ 
0 status  �  �   o  ���� 0 theevent theEvent�  �   o      �� 0 	theresult 	theResult	  Z  �6�
 = �� o  ���	�	 0 	theresult 	theResult m  ���
� 
msng n  I  ��� &0 setobject_forkey_ setObject_forKey_  m   �  n o n e � m   �  e v e n t _ s t a t u s�  �   o  �� 0 thedict theDict�
   k  6   !"! r  #$# c  %&% o  �� 0 	theresult 	theResult& m  �
� 
long$ o      �� 0 	theresult 	theResult" '� ' n 6()( I  6��*���� &0 setobject_forkey_ setObject_forKey_* +,+ l /-����- n  /./. 4  (/��0
�� 
cobj0 l +.1����1 [  +.232 o  +,���� 0 	theresult 	theResult3 m  ,-���� ��  ��  / J  (44 565 m  77 �88  n o n e6 9:9 m  ;; �<<  c o n f i r m e d: =>= m  !?? �@@  t e n t a t i v e> A��A m  !$BB �CC  c a n c e l e d��  ��  ��  , D��D m  /2EE �FF  e v e n t _ s t a t u s��  ��  ) o  ���� 0 thedict theDict�    G��G L  7=HH c  7<IJI o  78���� 0 thedict theDictJ m  8;��
�� 
reco��  Y KLK l     ��������  ��  ��  L MNM l     ��OP��  O    returns a list of records   P �QQ 4   r e t u r n s   a   l i s t   o f   r e c o r d sN RSR i   m pTUT I     ����V
�� .!Cls!attnull��� ��� null��  V ��W��
�� 
!CevW o      ���� 0 theevent theEvent��  U Z     XY��ZX c     [\[ n    ]^] I    �������� 0 hasattendees hasAttendees��  ��  ^ o     ���� 0 theevent theEvent\ m    ��
�� 
boolY k   
__ `a` r   
 bcb n  
 ded I    �������� 0 null  ��  ��  e n  
 fgf o    ���� 0 nsnull NSNullg m   
 ��
�� misccurac o      ���� 0 thenull theNulla hih r    jkj n   lml I    �������� 0 	attendees  ��  ��  m o    ���� 0 theevent theEventk o      ���� 0 theattendees theAttendeesi non r    %pqp n   #rsr I    #�������� 	0 array  ��  ��  s n   tut o    ����  0 nsmutablearray NSMutableArrayu m    ��
�� misccuraq o      ���� 0 thearray theArrayo vwv X   &x��yx k   6zz {|{ r   6 E}~} l  6 C���� n  6 C��� I   9 C������� @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_� ��� J   9 <�� ���� o   9 :���� 0 thenull theNull��  � ���� J   < ?�� ���� m   < =�� ���  a t t e n d e e _ e m a i l��  ��  ��  � n  6 9��� o   7 9���� *0 nsmutabledictionary NSMutableDictionary� m   6 7��
�� misccura��  ��  ~ o      ���� 0 thedict theDict| ��� l  F Q������ n  F Q��� I   G Q������� &0 setobject_forkey_ setObject_forKey_� ��� l  G L������ n  G L��� I   H L�������� 0 name  ��  ��  � o   G H���� 0 
anattendee 
anAttendee��  ��  � ���� m   L M�� ���  a t t e n d e e _ n a m e��  ��  � o   F G���� 0 thedict theDict��  ��  � ��� r   R Y��� n  R W��� I   S W�������� 0 URL  ��  ��  � o   R S���� 0 
anattendee 
anAttendee� o      ���� 0 theemail theEmail� ��� Z  Z s������� >  Z _��� o   Z [���� 0 theemail theEmail� m   [ ^��
�� 
msng� l  b o������ n  b o��� I   c o������� &0 setobject_forkey_ setObject_forKey_� ��� l  c h������ n  c h��� I   d h�������� 0 resourceSpecifier  ��  ��  � o   c d���� 0 theemail theEmail��  ��  � ���� m   h k�� ���  a t t e n d e e _ e m a i l��  ��  � o   b c���� 0 thedict theDict��  ��  ��  ��  � ��� r   t ��� c   t }��� n  t y��� I   u y�������� 0 participantStatus  ��  ��  � o   t u���� 0 
anattendee 
anAttendee� m   y |��
�� 
long� o      ���� 0 	thestatus 	theStatus� ��� l  � ������� n  � ���� I   � �������� &0 setobject_forkey_ setObject_forKey_� ��� l  � ������� n   � ���� 4   � ����
�� 
cobj� l  � ������� [   � ���� o   � ����� 0 	thestatus 	theStatus� m   � ����� ��  ��  � J   � ��� ��� m   � ��� ���  u n k n o w n� ��� m   � ��� ���  p e n d i n g� ��� m   � ��� ���  a c c e p t e d� ��� m   � ��� ���  d e c l i n e d� ��� m   � ��� ���  t e n t a t i v e� ��� m   � ��� ���  d e l e g a t e d� ��� m   � ��� ���  c o m p l e t e d� ���� m   � ��� ���  i n   p r o c e s s��  ��  ��  � ���� m   � ��� ���  a t t e n d e e _ s t a t u s��  ��  � o   � ����� 0 thedict theDict��  ��  � ��� r   � ���� c   � ���� n  � ���� I   � ��������� 0 participantType  ��  ��  � o   � ����� 0 
anattendee 
anAttendee� m   � ���
�� 
long� o      ���� 0 thetype theType� ��� l  � ������� n  � ���� I   � �������� &0 setobject_forkey_ setObject_forKey_� ��� l  � ������� n   � ��	 � 4   � ���	
�� 
cobj	 l  � �	����	 [   � �			 o   � ����� 0 thetype theType	 m   � ��� ��  ��  	  J   � �		 			 m   � �		 �				  u n k n o w n	 	
		
 m   � �		 �		  p e r s o n	 			 m   � �		 �		  r o o m	 			 m   � �		 �		  r e s o u r c e	 	�~	 m   � �		 �		 
 g r o u p�~  ��  ��  � 	�}	 m   � �		 �		  a t t e n d e e _ t y p e�}  ��  � o   � ��|�| 0 thedict theDict��  ��  � 			 r   � �			 c   � �	 	!	  n  � �	"	#	" I   � ��{�z�y�{ 0 participantRole  �z  �y  	# o   � ��x�x 0 
anattendee 
anAttendee	! m   � ��w
�w 
long	 o      �v�v 0 therole theRole	 	$	%	$ l  �	&�u�t	& n  �	'	(	' I   ��s	)�r�s &0 setobject_forkey_ setObject_forKey_	) 	*	+	* l  � �	,�q�p	, n   � �	-	.	- 4   � ��o	/
�o 
cobj	/ l  � �	0�n�m	0 [   � �	1	2	1 o   � ��l�l 0 therole theRole	2 m   � ��k�k �n  �m  	. J   � �	3	3 	4	5	4 m   � �	6	6 �	7	7  u n k n o w n	5 	8	9	8 m   � �	:	: �	;	;  r e q u i r e d	9 	<	=	< m   � �	>	> �	?	?  o p t i o n a l	= 	@	A	@ m   � �	B	B �	C	C 
 c h a i r	A 	D�j	D m   � �	E	E �	F	F  n o n p a r t i c i p a n t�j  �q  �p  	+ 	G�i	G m   � �	H	H �	I	I  a t t e n d e e _ r o l e�i  �r  	( o   � ��h�h 0 thedict theDict�u  �t  	% 	J�g	J l 	K�f�e	K n 	L	M	L I  �d	N�c�d 0 
addobject_ 
addObject_	N 	O�b	O l 
	P�a�`	P n 
	Q	R	Q I  
�_�^�]�_ 0 copy  �^  �]  	R o  �\�\ 0 thedict theDict�a  �`  �b  �c  	M o  �[�[ 0 thearray theArray�f  �e  �g  �� 0 
anattendee 
anAttendeey o   ) *�Z�Z 0 theattendees theAttendeesw 	S�Y	S L  	T	T c  	U	V	U o  �X�X 0 thearray theArray	V m  �W
�W 
list�Y  ��  Z L   	W	W J  �V�V  S 	X	Y	X l     �U�T�S�U  �T  �S  	Y 	Z	[	Z l     �R	\	]�R  	\ _ Y Returns a record. If occurrence_end_date is missing value, occurrence_frequency is used.   	] �	^	^ �   R e t u r n s   a   r e c o r d .   I f   o c c u r r e n c e _ e n d _ d a t e   i s   m i s s i n g   v a l u e ,   o c c u r r e n c e _ f r e q u e n c y   i s   u s e d .	[ 	_	`	_ i   q t	a	b	a I     �Q�P	c
�Q .!CLs!rcrnull��� ��� null�P  	c �O	d�N
�O 
!Cev	d o      �M�M 0 theevent theEvent�N  	b k     �	e	e 	f	g	f Z     �	h	i�L�K	h c     	j	k	j n    	l	m	l I    �J�I�H�J (0 hasrecurrencerules hasRecurrenceRules�I  �H  	m o     �G�G 0 theevent theEvent	k m    �F
�F 
bool	i k   
 �	n	n 	o	p	o r   
 	q	r	q n  
 	s	t	s I    �E�D�C�E 0 null  �D  �C  	t n  
 	u	v	u o    �B�B 0 nsnull NSNull	v m   
 �A
�A misccura	r o      �@�@ 0 thenull theNull	p 	w	x	w r    #	y	z	y l   !	{�?�>	{ n   !	|	}	| I    !�=	~�<�= @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_	~ 		�	 J    	�	� 	��;	� o    �:�: 0 thenull theNull�;  	� 	��9	� J    	�	� 	��8	� m    	�	� �	�	� & o c c u r r e n c e _ e n d _ d a t e�8  �9  �<  	} n   	�	�	� o    �7�7 *0 nsmutabledictionary NSMutableDictionary	� m    �6
�6 misccura�?  �>  	z o      �5�5 0 thedict theDict	x 	�	�	� r   $ /	�	�	� n  $ -	�	�	� I   ) -�4�3�2�4 0 firstobject firstObject�3  �2  	� n  $ )	�	�	� I   % )�1�0�/�1 0 recurrenceRules  �0  �/  	� o   $ %�.�. 0 theevent theEvent	� o      �-�- 0 therule theRule	� 	�	�	� r   0 9	�	�	� c   0 7	�	�	� n  0 5	�	�	� I   1 5�,�+�*�, 0 	frequency  �+  �*  	� o   0 1�)�) 0 therule theRule	� m   5 6�(
�( 
long	� o      �'�' 0 thefreq theFreq	� 	�	�	� l  : Q	��&�%	� n  : Q	�	�	� I   ; Q�$	��#�$ &0 setobject_forkey_ setObject_forKey_	� 	�	�	� l  ; J	��"�!	� n   ; J	�	�	� 4   C J� 	�
�  
cobj	� l  F I	���	� [   F I	�	�	� o   F G�� 0 thefreq theFreq	� m   G H�� �  �  	� J   ; C	�	� 	�	�	� m   ; <	�	� �	�	� 
 d a i l y	� 	�	�	� m   < =	�	� �	�	�  w e e k l y	� 	�	�	� m   = >	�	� �	�	�  m o n t h l y	� 	��	� m   > ?	�	� �	�	�  y e a r l y�  �"  �!  	� 	��	� m   J M	�	� �	�	� ( o c c u r r e n c e _ f r e q u e n c y�  �#  	� o   : ;�� 0 thedict theDict�&  �%  	� 	�	�	� l  R _	���	� n  R _	�	�	� I   S _�	��� &0 setobject_forkey_ setObject_forKey_	� 	�	�	� l  S X	���	� n  S X	�	�	� I   T X���� 0 interval  �  �  	� o   S T�� 0 therule theRule�  �  	� 	��	� m   X [	�	� �	�	� & o c c u r r e n c e _ i n t e r v a l�  �  	� o   R S�� 0 thedict theDict�  �  	� 	�	�	� r   ` g	�	�	� n  ` e	�	�	� I   a e���
� 0 recurrenceEnd  �  �
  	� o   ` a�	�	 0 therule theRule	� o      �� 0 	recurrend 	recurrEnd	� 	�	�	� Z   h �	�	���	� >  h m	�	�	� o   h i�� 0 	recurrend 	recurrEnd	� m   i l�
� 
msng	� k   p �	�	� 	�	�	� r   p w	�	�	� n  p u	�	�	� I   q u���� 0 endDate  �  �  	� o   p q� �  0 	recurrend 	recurrEnd	� o      ���� 0 recurrenddate recurrEndDate	� 	�	�	� Z  x �	�	�����	� >  x }	�	�	� o   x y���� 0 recurrenddate recurrEndDate	� m   y |��
�� 
msng	� n  � �	�	�	� I   � ���	����� &0 setobject_forkey_ setObject_forKey_	� 	�	�	� o   � ����� 0 recurrenddate recurrEndDate	� 	���	� m   � �	�	� �	�	� & o c c u r r e n c e _ e n d _ d a t e��  ��  	� o   � ����� 0 thedict theDict��  ��  	� 	�	�	� r   � �	�	�	� n  � �	�	�	� I   � ��������� 0 occurrenceCount  ��  ��  	� o   � ����� 0 	recurrend 	recurrEnd	� o      ���� 0 recurrcount recurrCount	� 	���	� n  � �	�	�	� I   � ���	����� &0 setobject_forkey_ setObject_forKey_	� 	�	�	� o   � ����� 0 recurrcount recurrCount	� 	���	� m   � �	�	� �	�	�   o c c u r r e n c e _ c o u n t��  ��  	� o   � ����� 0 thedict theDict��  �  �  	� 	���	� L   � �	�	� c   � �	�	�	� o   � ����� 0 thedict theDict	� m   � ���
�� 
reco��  �L  �K  	g 	���	� L   � �	�	� m   � ���
�� 
msng��  	` 
 ��
  l     ��������  ��  ��  ��       ��








	











��  
 ��������������������������������������
�� 
pimr
�� .!Cls!fstnull��� ��� null
�� .!CLs!fcanull���     ****
�� .!CLs!fcAnull���     ****
�� .!CLs!feUnull���     ****
�� .!CLs!feSnull��� ��� null
�� .!CLs!fe1null��� ��� null
�� .!CLs!fe2null��� ��� null
�� .!CLs!reEnull��� ��� null
�� .!CLs!crenull��� ��� null
�� .ICLs!mo1null��� ��� null
�� .!CLs!mo2null��� ��� null
�� .!CLs!mo3null��� ��� null
�� .!CLs!stpnull��� ��� null
�� .!CLs!updnull��� ��� null
�� .!CLs!eidnull��� ��� null
�� .!CLs!infnull��� ��� null
�� .!Cls!attnull��� ��� null
�� .!CLs!rcrnull��� ��� null
 ��
�� 
  




 �� ��
�� 
vers��  
 ��
��
�� 
cobj
 

 
��
 ��  
��  
 ��








	











��  
 �� .����

��
�� .!Cls!fstnull��� ��� null��  ��  
 ������ "0 theekeventstore theEKEventStore�� *0 authorizationstatus authorizationStatus
 �������������� f�� h�� n������ ����� ����� }������
�� misccura�� 0 ekeventstore EKEventStore�� 	0 alloc  �� 0 init  
�� 
msng�� N0 %requestaccesstoentitytype_completion_ %requestAccessToEntityType_completion_�� F0 !authorizationstatusforentitytype_ !authorizationStatusForEntityType_
�� 
lnfd
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null
�� 
xppb
�� kfrmID  
�� 
xppa
�� .miscmvisnull���     ****
�� 
errn������ p��,j+ j+ E�O�j�l+ O��,jk+ E�O�m F��%�%��kv�k� O� #*j O*a a a 0 *a a /j UUO)a a lhY hO�
 �� �����
 
!��
�� .!CLs!fcanull���     ****�� 0 calname calName�� ����
"
�� 
!Cty�� 0 caltype calType
" ������
�� 
!Cst�� 0 thestore theStore��  
  ������������ 0 calname calName�� 0 caltype calType�� 0 thestore theStore�� 0 thecalendars theCalendars��  0 thenspredicate theNSPredicate
! ������������ ������� �������
�� !Tct!TtL
�� !Tct!TtC
�� !Tct!TtE
�� !Tct!TtS
�� !Tct!TtB�� �� 20 calendarsforentitytype_ calendarsForEntityType_
�� misccura�� 0 nspredicate NSPredicate�� ,0 predicatewithformat_ predicateWithFormat_�� <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_�� 0 firstobject firstObject�� c��  jE�Y 6��  kE�Y *��  lE�Y ��  mE�Y ��  �E�Y )j�O�jk+ E�O��,ꠡm+ E�O��k+ j+ 
 �� �����
#
$��
�� .!CLs!fcAnull���     ****�� {��������  0 listofcalnames listOfCalNames
�� 
list��  �� ��
%
&
�� 
!CtY
% {��������  0 listofcaltypes listOfCalTypes
�� 
list��  
& ������
�� 
!Cst�� 0 thestore theStore��  
# ������������~��  0 listofcalnames listOfCalNames��  0 listofcaltypes listOfCalTypes�� 0 thestore theStore�� 0 thecalendars theCalendars��  0 thenspredicate theNSPredicate� 0 i  �~ 0 caltype calType
$ �}�|�{�z%�y�x�w�v�u�t�s�r�qbx��p�} 20 calendarsforentitytype_ calendarsForEntityType_
�| 
list
�{ misccura�z 0 nspredicate NSPredicate�y ,0 predicatewithformat_ predicateWithFormat_
�x .corecnte****       ****
�w 
cobj
�v !Tct!TtL
�u !Tct!TtC
�t !Tct!TtE
�s !Tct!TtS
�r !Tct!TtB�q �p <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_�� ��jk+  E�O�jv  �jv  	��&Y ��,�l+ E�Y � `k�j kh ��/E�O��  jE�Y 6��  kE�Y *��  lE�Y ��  mE�Y ��  �E�Y )j�O���/F[OY��O�jv  ��,�l+ E�Y ��,a ��m+ E�O��k+ �&
 �o��n�m
'
(�l
�o .!CLs!feUnull���     ****�n 0 calid calID�m �k�j�i
�k 
!Cst�j 0 thestore theStore�i  
' �h�g�f�h 0 calid calID�g 0 thestore theStore�f 0 	theevents 	theEvents
( �e��d�c�e L0 $calendaritemswithexternalidentifier_ $calendarItemsWithExternalIdentifier_�d 60 sortedarrayusingselector_ sortedArrayUsingSelector_
�c 
list�l ��k+  E�O��k+ E�O��&
 �b��a�`
)
*�_
�b .!CLs!feSnull��� ��� null�a  �` �^�]
+
�^ 
!Csd�] 0 	startdate 	startDate
+ �\�[
,
�\ 
!Ced�[ 0 enddate endDate
, �Z�Y
-
�Z 
!Csc�Y 0 callist calList
- �X�W�V
�X 
!Cst�W 0 thestore theStore�V  
) �U�T�S�R�Q�P�O�U 0 	startdate 	startDate�T 0 enddate endDate�S 0 callist calList�R 0 thestore theStore�Q 0 callistarray calListArray�P 0 thepredicate thePredicate�O 0 	theevents 	theEvents
* �N�M�L�K�J�I�H�G�F�E
�N misccura�M 0 nsarray NSArray�L $0 arraywithobject_ arrayWithObject_�K 0 firstObject  �J  0 iskindofclass_ isKindOfClass_
�I 
bool�H h0 2predicateforeventswithstartdate_enddate_calendars_ 2predicateForEventsWithStartDate_endDate_calendars_�G 40 eventsmatchingpredicate_ eventsMatchingPredicate_�F 60 sortedarrayusingselector_ sortedArrayUsingSelector_
�E 
list�_ K��,�k+ E�O�j+ E�O���,k+ �& �E�Y hO����m+ E�O��k+ E�O��k+ 	E�O��&
 �D"�C�B
.
/�A
�D .!CLs!fe1null��� ��� null�C  �B �@�?
0
�@ 
!Cel�? 0 	theevents 	theEvents
0 �>
1
2
�> 
!Csu
1 {�=�<�;�= 0 thetitle theTitle�<  
�; 
msng
2 �:
3
4
�: 
!Clo
3 {�9�8�7�9 0 thelocation theLocation�8  
�7 
msng
4 �6
5
6
�6 
!CdD
5 {�5�4�3�5 0 desc  �4  
�3 
msng
6 �2
7
8
�2 
!Cha
7 {�1�0�/�1 0 hasa hasA�0  
�/ 
msng
8 �.
9
:
�. 
!Cre
9 {�-�,�+�- 0 hasrecrules hasRecRules�,  
�+ 
msng
: �*
;�)
�* 
!Cad
; {�(�'�&�( 0 allday allDay�'  
�& 
msng�)  
. �%�$�#�"�!� ������% 0 	theevents 	theEvents�$ 0 thetitle theTitle�# 0 thelocation theLocation�" 0 desc  �! 0 hasa hasA�  0 hasrecrules hasRecRules� 0 allday allDay�  0 theeventsarray theEventsArray� 0 	predarray 	predArray� 0 thecount theCount� 0 thepred thePred
/ �����������~�����������
�	
� misccura� 0 nsarray NSArray� $0 arraywithobject_ arrayWithObject_� 0 firstObject  �  0 iskindofclass_ isKindOfClass_
� 
bool�  0 nsmutablearray NSMutableArray� � (0 arraywithcapacity_ arrayWithCapacity_
� 
msng� 0 nspredicate NSPredicate� ,0 predicatewithformat_ predicateWithFormat_� 0 
addobject_ 
addObject_
� .corecnte****       ****� <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_� *0 nscompoundpredicate NSCompoundPredicate�
 @0 andpredicatewithsubpredicates_ andPredicateWithSubpredicates_
�	 
list�A��,�k+ E�O�j+ E�O���,k+ �& �E�Y hO��,�k+ E�O�� ���,�l+ k+ Y hO�� ���,�l+ k+ Y hO�� ���,�e�m+ k+ Y hO�� ���,a �l+ k+ Y hO�� ���,a �l+ k+ Y hO�� ���,a �l+ k+ Y hO�j E�O�k  ��j+ k+ E�Y !�k �a ,�k+ E�O��k+ E�Y hO�a &
	 �/��
<
=�
� .!CLs!fe2null��� ��� null�  � ��
>
� 
!Cel� 0 	theevents 	theEvents
> �
?
@
� 
!Csu
? {�� ��� 0 thetitle theTitle�   
�� 
msng
@ ��
A
B
�� 
!CdD
A {�������� 0 desc  ��  
�� 
msng
B ��
C
D
�� 
!Clo
C {�������� 0 thelocation theLocation��  
�� 
msng
D ��
E��
�� 
!Cre
E {�������� 0 	regexflag 	regexFlag��  
�� boovtrue��  
< ������������������ 0 	theevents 	theEvents�� 0 thetitle theTitle�� 0 desc  �� 0 thelocation theLocation�� 0 	regexflag 	regexFlag��  0 theeventsarray theEventsArray��  0 thenspredicate theNSPredicate�� 0 useregex useRegex
= ����������������~�����������
�� misccura�� 0 nsarray NSArray�� $0 arraywithobject_ arrayWithObject_�� 0 firstObject  ��  0 iskindofclass_ isKindOfClass_
�� 
bool
�� 
msng�� 0 nspredicate NSPredicate�� ,0 predicatewithformat_ predicateWithFormat_�� <0 filteredarrayusingpredicate_ filteredArrayUsingPredicate_
�� 
list� ���,�k+ E�O�j+ E�O���,k+ �& �E�Y hO�� -��& ��,�l+ 	E�Y ��,�l+ 	E�O��k+ E�Y hO�� /��& ��,�e�m+ 	E�Y ��,�e�m+ 	E�O��k+ E�Y hO�� -��& ��,�l+ 	E�Y ��,�l+ 	E�O��k+ E�Y hO�a &

 ������
F
G��
�� .!CLs!reEnull��� ��� null��  �� ����
H
�� 
!Cev�� 0 theevent theEvent
H ����
I
�� 
!Cst�� 0 thestore theStore
I ��
J��
�� 
!Cft
J {�������� 0 
futureflag 
futureFlag��  
�� boovtrue��  
F ������������ 0 theevent theEvent�� 0 thestore theStore�� 0 
futureflag 
futureFlag�� 0 	theresult 	theResult�� 0 theerror theError
G ��������������
�� 
obj �� �� @0 removeevent_span_commit_error_ removeEvent_span_commit_error_
�� 
cobj
�� 
bool�� ,0 localizeddescription localizedDescription
�� 
ctxt�� /���e��+ E[�k/E�Z[�l/E�ZO��& )j�j+ �&Y h
 ��8����
K
L��
�� .!CLs!crenull��� ��� null��  �� ����
M
�� 
!Cst�� 0 thestore theStore
M ����
N
�� 
!Cdc�� 0 thecal theCal
N ����
O
�� 
!Csu�� 0 thetitle theTitle
O ����
P
�� 
!Csd�� 0 startd startD
P ����
Q
�� 
!Ced�� 0 endd endD
Q ��
R
S
�� 
!Cad
R {�������� 0 allday allDay��  
�� boovfals
S ��
T
U
�� 
!Clo
T {�������� 0 thelocation theLocation��  
�� 
msng
U ��
V��
�� 
!CdD
V {�������� 0 desc  ��  
�� 
msng��  
K 	�������������������� 0 thestore theStore�� 0 thecal theCal�� 0 thetitle theTitle�� 0 startd startD�� 0 endd endD�� 0 allday allDay�� 0 thelocation theLocation�� 0 desc  �� 0 newevent newEvent
L ����������������������
�� misccura�� 0 ekevent EKEvent�� ,0 eventwitheventstore_ eventWithEventStore_�� 0 setcalendar_ setCalendar_�� 0 	settitle_ 	setTitle_�� 0 setstartdate_ setStartDate_�� 0 setenddate_ setEndDate_�� 0 
setallday_ 
setAllDay_
�� 
msng�� 0 setlocation_ setLocation_�� 0 	setnotes_ 	setNotes_�� S��,�k+ E�O��k+ O��k+ O��k+ O��k+ O��k+ O�� ��k+ 	Y hO�� ��k+ 
Y hO�
 �������
W
X��
�� .ICLs!mo1null��� ��� null��  �� ����
Y
�� 
!Cev�� 0 theevent theEvent
Y ����
Z
�� 
!Cdc�� 0 thecal theCal
Z ��
[
\
�� 
!Csu
[ {�������� 0 thetitle theTitle��  
�� 
msng
\ ��
]
^
�� 
!Csd
] {�������� 0 startd startD��  
�� 
msng
^ ��
_
`
�� 
!Ced
_ {�������� 0 endd endD��  
�� 
msng
` ��
a
b
�� 
!Cad
a {������� 0 allday allDay��  
� 
msng
b �~
c
d
�~ 
!Clo
c {�}�|�{�} 0 thelocation theLocation�|  
�{ 
msng
d �z
e�y
�z 
!CdD
e {�x�w�v�x 0 desc  �w  
�v 
msng�y  
W �u�t�s�r�q�p�o�n�u 0 theevent theEvent�t 0 thecal theCal�s 0 thetitle theTitle�r 0 startd startD�q 0 endd endD�p 0 allday allDay�o 0 thelocation theLocation�n 0 desc  
X �m�l�k�j�i�h�g�f
�m 
msng�l 0 setcalendar_ setCalendar_�k 0 	settitle_ 	setTitle_�j 0 setstartdate_ setStartDate_�i 0 setenddate_ setEndDate_�h 0 
setallday_ 
setAllDay_�g 0 setlocation_ setLocation_�f 0 	setnotes_ 	setNotes_�� z�� ��k+ Y hO�� ��k+ Y hO�� ��k+ Y hO�� ��k+ Y hO�� ��k+ Y hO�� ��k+ Y hO�� ��k+ Y hO�
 �e�d�c
f
g�b
�e .!CLs!mo2null��� ��� null�d  �c �a�`
h
�a 
!Cev�` 0 theevent theEvent
h �_�^�]
�_ 
!Ctz�^ 0 tz  �]  
f �\�[�\ 0 theevent theEvent�[ 0 tz  
g �Z�Y�X�W�V�U�T�S�R�Q�P�O�N
�Z 
msng�Y 0 settimezone_ setTimeZone_
�X misccura�W 0 nsarray NSArray�V $0 arraywithobject_ arrayWithObject_�U 0 firstObject  �T 0 nsstring NSString�S  0 iskindofclass_ isKindOfClass_
�R 
bool�Q 0 
nstimezone 
NSTimeZone�P (0 knowntimezonenames knownTimeZoneNames�O "0 containsobject_ containsObject_�N &0 timezonewithname_ timeZoneWithName_�b ^��  ��k+ Y M��,�k+ j+ E�O���,k+ �& +��,j+ 
�k+ �& ��,�k+ E�O��k+ Y hY ��k+ O�
 �Mr�L�K
i
j�J
�M .!CLs!mo3null��� ��� null�L  �K �I�H
k
�I 
!Cev�H 0 theevent theEvent
k �G�F
l
�G 
!Cef�F 0 thefreq theFreq
l �E�D
m
�E 
!Civ�D 
0 interv  
m �C
n
o
�C 
!Cre
n {�B�A�@�B 0 repeatct repeatCt�A  
�@ 
msng
o �?
p�>
�? 
!Crd
p {�=�<�;�= 0 
endingdate 
endingDate�<  
�; 
msng�>  
i �:�9�8�7�6�5�4�: 0 theevent theEvent�9 0 thefreq theFreq�8 
0 interv  �7 0 repeatct repeatCt�6 0 
endingdate 
endingDate�5 0 	recurrend 	recurrEnd�4 0 
recurrrule 
recurrRule
j �3�2�1�0��/�.�-�,�+�*�)�(�'�&�%
�3 !Efr!Eda
�2 !Efr!Ewe
�1 !Efr!Emo
�0 !Efr!Eye
�/ 
msng
�. misccura�- "0 ekrecurrenceend EKRecurrenceEnd�, F0 !recurrenceendwithoccurrencecount_ !recurrenceEndWithOccurrenceCount_�+ 60 recurrenceendwithenddate_ recurrenceEndWithEndDate_�* $0 ekrecurrencerule EKRecurrenceRule�) 	0 alloc  �( V0 )initrecurrencewithfrequency_interval_end_ )initRecurrenceWithFrequency_interval_end_
�' 
!Cev
�& .!CLs!stpnull��� ��� null�% (0 addrecurrencerule_ addRecurrenceRule_�J v��  jE�Y *��  kE�Y ��  lE�Y ��  mE�Y )j�O��  ��,�k+ E�Y ��,�k+ 	E�O��,j+ ���m+ E�O*��l O��k+ O�
 �$��#�"
q
r�!
�$ .!CLs!stpnull��� ��� null�#  �" � ��
�  
!Cev� 0 theevent theEvent�  
q ��� 0 theevent theEvent� 0 therules theRules
r ������� (0 hasrecurrencerules hasRecurrenceRules
� 
bool� 0 recurrenceRules  
� .corecnte****       ****
� 
cobj� .0 removerecurrencerule_ removeRecurrenceRule_�! 1�j+  �& $�j+ E�O�j j ���k/k+ Y hY hO�
 ���
s
t�
� .!CLs!updnull��� ��� null�  � ��
u
� 
!Cev� 0 theevent theEvent
u ��
v
� 
!Cst� 0 thestore theStore
v �
w�
� 
!Cft
w {��
�	� 0 
futureflag 
futureFlag�
  
�	 boovtrue�  
s ������ 0 theevent theEvent� 0 thestore theStore� 0 
futureflag 
futureFlag� 0 	theresult 	theResult� 0 theerror theError
t ���� ������
� 
obj � � <0 saveevent_span_commit_error_ saveEvent_span_commit_error_
�  
cobj
�� 
bool�� 0 localizedDescription  
�� 
ctxt� /���e��+ E[�k/E�Z[�l/E�ZO��& )j�j+ �&Y h
 ��I����
x
y��
�� .!CLs!eidnull��� ��� null��  �� ������
�� 
!Cev�� 0 theevent theEvent��  
x ���� 0 theevent theEvent
y ������ "0 calendarItemExternalIdentifier  
�� 
ctxt�� 	�j+  �&
 ��[����
z
{��
�� .!CLs!infnull��� ��� null��  �� ������
�� 
!Cev�� 0 theevent theEvent��  
z ���������������� 0 theevent theEvent�� 0 thenull theNull�� 0 thedict theDict�� 0 	theresult 	theResult�� 0 tz  �� 0 theurl theURL�� 0 theattendees theAttendees
{ I���������������������������������������������������(����@��U����m�����������������������������7;?B��E��
�� misccura�� 0 nsnull NSNull�� 0 null  �� *0 nsmutabledictionary NSMutableDictionary�� �� @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_�� 0 calendar  �� 	0 title  �� &0 setobject_forkey_ setObject_forKey_�� 0 type  
�� 
long�� 
�� 
cobj
�� 
msng�� "0 calendarItemExternalIdentifier  �� 0 	startDate  �� 0 endDate  �� 0 isAllDay  �� 0 timezone timeZone�� 0 name  �� 0 location  �� 0 URL  �� 0 absoluteString  �� 0 hasNotes  
�� 
bool�� 	0 notes  �� 0 hasAttendees  �� 0 	attendees  �� 0 valueforkey_ valueForKey_�� 0 hasRecurrenceRules  �� 0 creationDate  �� 0 	organizer  �� 0 occurrenceDate  �� 
0 status  �� 
�� 
reco��>��,j+ E�O��,��������v��������vl+ E�O��j+ j+ �l+ O�j+ j+ a &E�O�a a a a a a va �k/a l+ O�j+ E�O�a  ��a l+ Y hO��j+ a l+ O��j+ a  l+ O��j+ !a "l+ O��j+ #a $l+ O�j+ %E�O�a  ��j+ &a 'l+ Y hO�j+ (E�O�a  ��a )l+ Y hO�j+ *E�O�a  ��j+ +a ,l+ Y hO�j+ -a .&E�O� "�j+ /E�O�a  ��a 0l+ Y hY hO�j+ 1E�O�a .& ��j+ 2a 3k+ 4a 5l+ Y �jva 6l+ O��j+ 7a 8l+ O��j+ 9a :l+ O�j+ ;E�O�a  "�j+ &E�O�a  ��a <l+ Y hY hO�j+ =E�O�a  ��a >l+ Y hO�j+ ?E�O�a   �a @a Al+ Y )�a &E�O�a Ba Ca Da Ea Fva �k/a Gl+ O�a H&
 ��U����
|
}��
�� .!Cls!attnull��� ��� null��  �� ������
�� 
!Cev�� 0 theevent theEvent��  
| 
���������������������� 0 theevent theEvent�� 0 thenull theNull�� 0 theattendees theAttendees�� 0 thearray theArray�� 0 
anattendee 
anAttendee�� 0 thedict theDict�� 0 theemail theEmail�� 0 	thestatus 	theStatus�� 0 thetype theType�� 0 therole theRole
} 3��������������������������������������������������������					��	��	6	:	>	B	E	H�������� 0 hasattendees hasAttendees
�� 
bool
�� misccura�� 0 nsnull NSNull�� 0 null  �� 0 	attendees  ��  0 nsmutablearray NSMutableArray�� 	0 array  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� *0 nsmutabledictionary NSMutableDictionary�� @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_�� 0 name  �� &0 setobject_forkey_ setObject_forKey_�� 0 URL  
�� 
msng�� 0 resourceSpecifier  �� 0 participantStatus  
�� 
long�� �� 0 participantType  �� �� 0 participantRole  �� 0 copy  �� 0 
addobject_ 
addObject_
�� 
list��!�j+  �&��,j+ E�O�j+ E�O��,j+ E�O �[��l 
kh ��,�kv�kvl+ E�O��j+ �l+ O�j+ E�O�a  ��j+ a l+ Y hO�j+ a &E�O�a a a a a a a a a v�k/a  l+ O�j+ !a &E�O�a "a #a $a %a &a 'v�k/a (l+ O�j+ )a &E�O�a *a +a ,a -a .a 'v�k/a /l+ O��j+ 0k+ 1[OY�"O�a 2&Y jv
 ��	b����
~
��
�� .!CLs!rcrnull��� ��� null��  �� ������
�� 
!Cev�� 0 theevent theEvent��  
~ ������������������ 0 theevent theEvent�� 0 thenull theNull�� 0 thedict theDict�� 0 therule theRule�� 0 thefreq theFreq�� 0 	recurrend 	recurrEnd�� 0 recurrenddate recurrEndDate�� 0 recurrcount recurrCount
 ������������	���~�}�|�{	�	�	�	��z�y	��x�w	��v�u�t	��s	��r�� (0 hasrecurrencerules hasRecurrenceRules
�� 
bool
�� misccura�� 0 nsnull NSNull�� 0 null  �� *0 nsmutabledictionary NSMutableDictionary� @0 dictionarywithobjects_forkeys_ dictionaryWithObjects_forKeys_�~ 0 recurrenceRules  �} 0 firstobject firstObject�| 0 	frequency  
�{ 
long�z 
�y 
cobj�x &0 setobject_forkey_ setObject_forKey_�w 0 interval  �v 0 recurrenceEnd  
�u 
msng�t 0 endDate  �s 0 occurrenceCount  
�r 
reco�� ��j+  �& ���,j+ E�O��,�kv�kvl+ E�O�j+ j+ 	E�O�j+ 
�&E�O�����a va �k/a l+ O��j+ a l+ O�j+ E�O�a  4�j+ E�O�a  ��a l+ Y hO�j+ E�O��a l+ Y hO�a &Y hOa 
�� 
osax��  
 �q
��p
�q 
cobj
� 
�
� 
�o 
�o 
frmk�p  
 �n
��m
�n 
cobj
� 
�
� 
�l "
�l 
frmk�m  ascr  ��ޭ