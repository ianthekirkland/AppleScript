FasdUAS 1.101.10   ��   ��    k             x     ��  ��    1      ��
�� 
ascr  �� 	��
�� 
minv 	 m       
 
 �    2 . 4��        x    ��  ��    4  '�� 
�� 
scpt  m  #&   �   " M y r i a d   T a b l e s   L i b  �� ��
�� 
minv  m         �   
 1 . 0 . 9��        x    "�� ����    2   ��
�� 
osax��        l     ��������  ��  ��        l     ��  ��    � � This script doesn't do anything particularly useful, but it demonstrates the use of the 'swap columns and rows in' and 'extract column' commands     �  "   T h i s   s c r i p t   d o e s n ' t   d o   a n y t h i n g   p a r t i c u l a r l y   u s e f u l ,   b u t   i t   d e m o n s t r a t e s   t h e   u s e   o f   t h e   ' s w a p   c o l u m n s   a n d   r o w s   i n '   a n d   ' e x t r a c t   c o l u m n '   c o m m a n d s     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $   choose a folder    % � & &     c h o o s e   a   f o l d e r #  ' ( ' l    	 )���� ) r     	 * + * I    ���� ,
�� .sysostflalis    ��� null��   , �� -��
�� 
prmp - m     . . � / /  C h o o s e   a   f o l d e r��   + o      ���� 0 	thefolder 	theFolder��  ��   (  0 1 0 l     �� 2 3��   2 %  get information about contents    3 � 4 4 >   g e t   i n f o r m a t i o n   a b o u t   c o n t e n t s 1  5 6 5 l  
 N 7���� 7 O   
 N 8 9 8 k    M : :  ; < ; r     = > = n     ? @ ? 1    ��
�� 
dnam @ n     A B A 2   ��
�� 
file B o    ���� 0 	thefolder 	theFolder > o      ���� 0 thenames theNames <  C D C r     E F E n     G H G 1    ��
�� 
asmo H n     I J I 2   ��
�� 
file J o    ���� 0 	thefolder 	theFolder F o      ���� 0 themoddates theModDates D  K L K r    % M N M n    # O P O 1   ! #��
�� 
ascd P n    ! Q R Q 2   !��
�� 
file R o    ���� 0 	thefolder 	theFolder N o      ���� $0 thecreationdates theCreationDates L  S T S r   & - U V U n   & + W X W 1   ) +��
�� 
ptsz X n   & ) Y Z Y 2  ' )��
�� 
file Z o   & '���� 0 	thefolder 	theFolder V o      ���� 0 thesizes theSizes T  [ \ [ r   . 5 ] ^ ] n   . 3 _ ` _ 1   1 3��
�� 
kind ` n   . 1 a b a 2  / 1��
�� 
file b o   . /���� 0 	thefolder 	theFolder ^ o      ���� 0 thekinds theKinds \  c d c r   6 A e f e n   6 = g h g 1   9 =��
�� 
aslk h n   6 9 i j i 2  7 9��
�� 
file j o   6 7���� 0 	thefolder 	theFolder f o      ���� 0 thelocks theLocks d  k�� k r   B M l m l c   B I n o n n   B E p q p 2  C E��
�� 
file q o   B C���� 0 	thefolder 	theFolder o m   E H��
�� 
alst m o      ���� 0 thefiles theFiles��   9 m   
  r r�                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   6  s t s l     �� u v��   u ' ! convert from "columns" to "rows"    v � w w B   c o n v e r t   f r o m   " c o l u m n s "   t o   " r o w s " t  x y x l  O r z���� z r   O r { | { I  O n } ~�� } z�� 
�� .!�M1!�cRnull���     **** ~ J   Z i    � � � o   Z [���� 0 thenames theNames �  � � � o   [ \���� 0 themoddates theModDates �  � � � o   \ ]���� $0 thecreationdates theCreationDates �  � � � o   ] ^���� 0 thesizes theSizes �  � � � o   ^ _���� 0 thekinds theKinds �  � � � o   _ b���� 0 thelocks theLocks �  ��� � o   b e���� 0 thefiles theFiles��  ��   | o      ���� 0 thedata theData��  ��   y  � � � l     �� � ���   �   show table    � � � �    s h o w   t a b l e �  � � � l  s � ����� � r   s � � � � I  s � � � � � z�� 
�� .!�Mt!�Tdnull���     **** � o   ~ ����� 0 thedata theData � �� � �
�� 
!�Ch � J   � � � �  � � � m   � � � � � � �  N a m e �  � � � m   � � � � � � �  D a t e   M o d i f i e d �  � � � m   � � � � � � �  D a t e   C r e a t e d �  � � � m   � � � � � � �  S i z e �  � � � m   � � � � � � �  K i n d �  ��� � m   � � � � � � �  L o c k e d��   � �� � �
�� 
prmp � m   � � � � � � � " C h o o s e   y o u r   f i l e s � �� ���
�� 
mlsl � m   � ���
�� boovtrue��   � o      ���� 0 mytable myTable��  ��   �  � � � l  � � ����� � I  � � � � � � z�� 
�� .!�Mt!�Tmnull���     **** � o   � ����� 0 mytable myTable � �� ���
�� 
!�Ab � m   � ���
�� boovtrue��  ��  ��   �  � � � l  � � ����� � I  � � � � � � z�� 
�� .!�Mt!�Mcnull���     **** � o   � ����� 0 mytable myTable � �� ���
�� 
!�Df � m   � � � � � � �   d   M M M   y y y y ,   H : m m��  ��  ��   �  � � � l  � ����� � I  � � � � � z�� 
�� .!�Mt!�Mcnull���     **** � o   � ����� 0 mytable myTable � �� � �
�� 
!�Cl � J   � � � �  � � � m   � �����  �  ��� � m   � ����� ��   � �� ���
�� 
!�Ha � m   � � � � z�� 
�� !�Am!�Ac��  ��  ��   �  � � � l  ����� � r   � � � I  � ��� � z�� 
�� .!�Mt!�Sdnull���     **** � o  ���� 0 mytable myTable��   � o      ���� 0 	theresult 	theResult��  ��   �  � � � l     �� � ���   � C = extract the files, which will be returned as file references    � � � � z   e x t r a c t   t h e   f i l e s ,   w h i c h   w i l l   b e   r e t u r n e d   a s   f i l e   r e f e r e n c e s �  ��� � l > ����� � r  > � � � I < � � � � z�� 
�� .!�M1!�cEnull���     **** � m  *-����  � �� ���
�� 
!�S1 � n  07 � � � 1  37 � � z�� 
�� 
!�Zv � o  03���� 0 	theresult 	theResult��   � o      ���� 0 thenames theNames��  ��  ��       �� � � ���   � ���
�� 
pimr
� .aevtoappnull  �   � **** � �~ ��~  �   � � � � �} 
�|
�} 
vers�|   � �{ � �
�{ 
cobj �  � �   �z 
�z 
scpt � �y �x
�y 
vers�x   � �w ��v
�w 
cobj �  � �   �u
�u 
osax�v   � �t ��s�r � ��q
�t .aevtoappnull  �   � **** � k    > � �  ' � �  5 � �  x    �  �  �  �  �  ��p�p  �s  �r   �   � 9�o .�n�m r�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�] �\�[�Z �Y � � � � � ��X ��W�V�U �T�S �R ��Q �P�O�N�M �L�K �J�I�H
�o 
prmp
�n .sysostflalis    ��� null�m 0 	thefolder 	theFolder
�l 
file
�k 
dnam�j 0 thenames theNames
�i 
asmo�h 0 themoddates theModDates
�g 
ascd�f $0 thecreationdates theCreationDates
�e 
ptsz�d 0 thesizes theSizes
�c 
kind�b 0 thekinds theKinds
�a 
aslk�` 0 thelocks theLocks
�_ 
alst�^ 0 thefiles theFiles
�] 
scpt�\ 
�[ .!�M1!�cRnull���     ****�Z 0 thedata theData
�Y 
!�Ch�X 
�W 
mlsl
�V .!�Mt!�Tdnull���     ****�U 0 mytable myTable
�T 
!�Ab
�S .!�Mt!�Tmnull���     ****
�R 
!�Df
�Q .!�Mt!�Mcnull���     ****
�P 
!�Cl�O 
�N 
!�Ha
�M !�Am!�Ac
�L .!�Mt!�Sdnull���     ****�K 0 	theresult 	theResult
�J 
!�S1
�I 
!�Zv
�H .!�M1!�cEnull���     ****�q?*��l E�O� A��-�,E�O��-�,E�O��-�,E�O��-�,E�O��-�,E�O��-a ,E` O��-a &E` UO)a a / �����_ _ a vj UE` O)a a / ,_ a a a a a a a  a !v�a "a #ea ! $UE` %O)a a &/ _ %a 'el (UO)a a )/ _ %a *a +l ,UO)a a -/ _ %a .a /a !lva 0a 1a / ,UO)a a 2/ 	_ %j 3UE` 4O)a a 5/ a a 6_ 4a 7,l 8UE�ascr  ��ޭ