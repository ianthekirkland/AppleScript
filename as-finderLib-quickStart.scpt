FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ) #-- FinderLib Quick Start File -----     � 	 	 F - -   F i n d e r L i b   Q u i c k   S t a r t   F i l e   - - - - -   
  
 l     ��������  ��  ��        l     ��  ��      load library     �      l o a d   l i b r a r y      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
alis  l    ����  b        b        l   	 ����  I   	��  
�� .earsffdralis        afdr  m    ��
�� afdrcusr  ��  ��
�� 
rtyp   m    ��
�� 
ctxt��  ��  ��    m   	 
 ! ! � " " 2 L i b r a r y : S c r i p t   L i b r a r i e s :  m     # # � $ $ 4 A p p l e S c r i p t _ f i n d e r L i b . s c p t��  ��  ��    o      ���� 0 
_finderlib 
_finderLib��  ��     % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   )   put the library to work    * � + + 0   p u t   t h e   l i b r a r y   t o   w o r k (  ,�� , l  8 -���� - O   8 . / . k   7 0 0  1 2 1 l   ��������  ��  ��   2  3 4 3 r      5 6 5 I    �������� 0 getselection getSelection��  ��   6 o      ���� 
0 _items   4  7 8 7 l  ! !�� 9 :��   9 ! ->  {item, item, item, ...}    : � ; ; 6 - >     { i t e m ,   i t e m ,   i t e m ,   . . . } 8  < = < l  ! !��������  ��  ��   =  > ? > r   ! ) @ A @ I   ! '�� B���� 0 getonlyfiles getOnlyFiles B  C�� C o   " #���� 
0 _items  ��  ��   A o      ���� 
0 _files   ?  D E D l  * *�� F G��   F ! ->  {file, file, file, ...}    G � H H 6 - >     { f i l e ,   f i l e ,   f i l e ,   . . . } E  I J I l  * *��������  ��  ��   J  K L K r   * 2 M N M I   * 0�� O����  0 getonlyfolders getOnlyFolders O  P�� P o   + ,���� 
0 _items  ��  ��   N o      ���� 0 _folders   L  Q R Q l  3 3�� S T��   S ' !->  {folder, folder, folder, ...}    T � U U B - >     { f o l d e r ,   f o l d e r ,   f o l d e r ,   . . . } R  V W V l  3 3��������  ��  ��   W  X Y X r   3 = Z [ Z I   3 9�� \���� 0 getfirstitem getFirstItem \  ]�� ] o   4 5���� 
0 _items  ��  ��   [ o      ���� 	0 _item   Y  ^ _ ^ l  > >�� ` a��   `  ->  item    a � b b  - >     i t e m _  c d c l  > >��������  ��  ��   d  e f e r   > H g h g I   > D�� i���� 0 getnames getNames i  j�� j o   ? @���� 
0 _items  ��  ��   h o      ���� 
0 _names   f  k l k l  I I�� m n��   m - '->  {fullname, fullname, fullname, ...}    n � o o N - >     { f u l l n a m e ,   f u l l n a m e ,   f u l l n a m e ,   . . . } l  p q p l  I I��������  ��  ��   q  r s r r   I S t u t I   I O�� v���� 0 getbasenames getBasenames v  w�� w o   J K���� 
0 _items  ��  ��   u o      ���� 0 
_basenames   s  x y x l  T T�� z {��   z - '->  {basename, basename, basename, ...}    { � | | N - >     { b a s e n a m e ,   b a s e n a m e ,   b a s e n a m e ,   . . . } y  } ~ } l  T T��������  ��  ��   ~   �  r   T ^ � � � I   T Z�� ����� 00 getbasenameoffirstitem getBasenameOfFirstItem �  ��� � o   U V���� 
0 _items  ��  ��   � o      ���� (0 _firstitembasename _firstItemBasename �  � � � l  _ _�� � ���   �  ->  basename    � � � �  - >     b a s e n a m e �  � � � l  _ _��������  ��  ��   �  � � � r   _ i � � � I   _ e�� ����� 20 getbasenamesofonlyfiles getBasenamesOfOnlyFiles �  ��� � o   ` a���� 
0 _items  ��  ��   � o      ���� "0 _basenamesfiles _basenamesFiles �  � � � l  j j�� � ���   � - '->  {basename, basename, basename, ...}    � � � � N - >     { b a s e n a m e ,   b a s e n a m e ,   b a s e n a m e ,   . . . } �  � � � l  j j��������  ��  ��   �  � � � r   j t � � � I   j p�� ����� 0 getextensions getExtensions �  ��� � o   k l���� 
0 _items  ��  ��   � o      ���� 0 _extensions   �  � � � l  u u�� � ���   � - '->  {extension, extension, [null], ...}    � � � � N - >     { e x t e n s i o n ,   e x t e n s i o n ,   [ n u l l ] ,   . . . } �  � � � l  u u��������  ��  ��   �  � � � r   u  � � � I   u {�� ����� 40 getextensionsofonlyfiles getExtensionsOfOnlyFiles �  ��� � o   v w���� 
0 _items  ��  ��   � o      ���� $0 _extensionsfiles _extensionsFiles �  � � � l  � ��� � ���   � 0 *->  {extension, extension, extension, ...}    � � � � T - >     { e x t e n s i o n ,   e x t e n s i o n ,   e x t e n s i o n ,   . . . } �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I   � ��� ����� 00 toggleextensionshidden toggleExtensionsHidden �  ��� � o   � ����� 
0 _items  ��  ��   � o      ���� (0 _extensionstoggled _extensionsToggled �  � � � l  � ��� � ���   � " ->  (shows/hides extensions)    � � � � 8 - >     ( s h o w s / h i d e s   e x t e n s i o n s ) �  � � � l  � ��������  ��  �   �  � � � r   � � � � � I   � ��~ ��}�~ 0 getposixpaths getPosixPaths �  ��| � o   � ��{�{ 
0 _items  �|  �}   � o      �z�z 
0 _paths   �  � � � l  � ��y � ��y   � 3 -->  {POSIX path, POSIX path, POSIX path, ...}    � � � � Z - >     { P O S I X   p a t h ,   P O S I X   p a t h ,   P O S I X   p a t h ,   . . . } �  � � � l  � ��x�w�v�x  �w  �v   �  � � � r   � � � � � I   � ��u ��t�u  0 getposixpathsq getPosixPathsQ �  ��s � o   � ��r�r 
0 _items  �s  �t   � o      �q�q 0 _pathsq _pathsQ �  � � � l  � ��p � ��p   � 9 3->  {'POSIX path', 'POSIX path', 'POSIX path', ...}    � � � � f - >     { ' P O S I X   p a t h ' ,   ' P O S I X   p a t h ' ,   ' P O S I X   p a t h ' ,   . . . } �  � � � l  � ��o�n�m�o  �n  �m   �  � � � r   � � � � � I   � ��l ��k�l ,0 getescapedposixarray getEscapedPosixArray �  ��j � o   � ��i�i 
0 _items  �j  �k   � o      �h�h 0 _pathsshell _pathsShell �  � � � l  � ��g � ��g   � D >->  "(EscapedPOSIXpath EscapedPOSIXpath EscapedPOSIXpath ...)"    � � � � | - >     " ( E s c a p e d P O S I X p a t h   E s c a p e d P O S I X p a t h   E s c a p e d P O S I X p a t h   . . . ) " �  � � � l  � ��f�e�d�f  �e  �d   �  � � � r   � � � � � I   � ��c ��b�c 0 gethfspaths getHFSPaths �  ��a � o   � ��`�` 
0 _items  �a  �b   � o      �_�_ 0 	_pathshfs 	_pathsHFS �  � � � l  � ��^ � ��^   � - '->  {HFS path, HFS path, HFS path, ...}    � � � � N - >     { H F S   p a t h ,   H F S   p a t h ,   H F S   p a t h ,   . . . } �  � � � l  � ��]�\�[�]  �\  �[   �  � � � r   � � � � � I   � ��Z ��Y�Z 0 gethfspathsq getHFSPathsQ �  ��X � o   � ��W�W 
0 _items  �X  �Y   � o      �V�V 0 
_pathshfsq 
_pathsHFSQ �  � � � l  � ��U � ��U   � 3 -->  {'HFS path', 'HFS path', 'HFS path', ...}    � � � � Z - >     { ' H F S   p a t h ' ,   ' H F S   p a t h ' ,   ' H F S   p a t h ' ,   . . . } �  �  � l  � ��T�S�R�T  �S  �R     r   � � I   � ��Q�P�Q  0 getparentposix getParentPosix �O o   � ��N�N 
0 _items  �O  �P   o      �M�M 0 _pathsparent _pathsParent  l  � ��L	
�L  	 H B->  {parent POSIX path, parent POSIX path, parent POSIX path, ...}   
 � � - >     { p a r e n t   P O S I X   p a t h ,   p a r e n t   P O S I X   p a t h ,   p a r e n t   P O S I X   p a t h ,   . . . }  l  � ��K�J�I�K  �J  �I    r   � � I   � ��H�G�H 0 getparenthfs getParentHFS �F o   � ��E�E 
0 _items  �F  �G   o      �D�D "0 _pathsparenthfs _pathsParentHFS  l  � ��C�C   C =->  {parent HFS path, parent HFS path, parent HFS path, ...}     � z - >     { p a r e n t   H F S   p a t h ,   p a r e n t   H F S   p a t h ,   p a r e n t   H F S   p a t h ,   . . . }    l  � ��B�A�@�B  �A  �@    r   � � I   � ��?�>�? &0 getbasenameofitem getBasenameOfItem  �=  o   � ��<�< 	0 _item  �=  �>   o      �;�; 0 	_basename   !"! l  � ��:#$�:  #  ->  basename   $ �%%  - >     b a s e n a m e" &'& l  � ��9�8�7�9  �8  �7  ' ()( r   � �*+* I   � ��6,�5�6 0 getnameandext getNameAndExt, -�4- o   � ��3�3 	0 _item  �4  �5  + o      �2�2 0 	_name_ext  ) ./. l  � ��101�1  0  ->  {name, extension}   1 �22 * - >     { n a m e ,   e x t e n s i o n }/ 343 l  � ��0�/�.�0  �/  �.  4 565 r   � �787 I   � ��-9�,�- $0 getcommentofitem getCommentOfItem9 :�+: o   � ��*�* 	0 _item  �+  �,  8 o      �)�) 0 _comment  6 ;<; l  � ��(=>�(  =  ->  comment   > �??  - >     c o m m e n t< @A@ l  � ��'�&�%�'  �&  �%  A BCB r   �DED I   ��$F�#�$ (0 getcontainerofitem getContainerOfItemF G�"G o   �!�! 	0 _item  �"  �#  E o      � �  0 _parent  C HIH l �JK�  J  ->  parent folder   K �LL " - >     p a r e n t   f o l d e rI MNM l ����  �  �  N OPO r  QRQ I  �S�� *0 getpropertiesofitem getPropertiesOfItemS T�T o  �� 	0 _item  �  �  R o      �� 0 _properties  P UVU l �WX�  W ? 9->  {property:value, property:value, property:value, ...}   X �YY r - >     { p r o p e r t y : v a l u e ,   p r o p e r t y : v a l u e ,   p r o p e r t y : v a l u e ,   . . . }V Z[Z l ����  �  �  [ \]\ r  %^_^ I  !�`��  0 getparentalias getParentAlias` a�a o  �� 
0 _alias  �  �  _ o      �� 0 _parentalias _parentAlias] bcb l &&�de�  d  ->  parent alias   e �ff   - >     p a r e n t   a l i a sc ghg l &&���
�  �  �
  h iji r  &5klk I  &1�	m��	 <0 appendbasenamestoparentposix appendBasenamesToParentPOSIXm non o  '*�� 0 
_basenames  o p�p o  *-�� 0 _pathparent _pathParent�  �  l o      ��  0 _conjuredpaths _conjuredPathsj qrq l 66�st�  s B <->  {full POSIX path, full POSIX path, full POSIX path, ...}   t �uu x - >     { f u l l   P O S I X   p a t h ,   f u l l   P O S I X   p a t h ,   f u l l   P O S I X   p a t h ,   . . . }r v�v l 66�� ���  �   ��  �   / o    ���� 0 
_finderlib 
_finderLib��  ��  ��       ��wx��  w ��
�� .aevtoappnull  �   � ****x ��y����z{��
�� .aevtoappnull  �   � ****y k    8||  }}  ,����  ��  ��  z  { =���������� ! #������������������������������������������������������������������������������������������������������������
�� 
alis
�� afdrcusr
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr
�� .sysoloadscpt        file�� 0 
_finderlib 
_finderLib�� 0 getselection getSelection�� 
0 _items  �� 0 getonlyfiles getOnlyFiles�� 
0 _files  ��  0 getonlyfolders getOnlyFolders�� 0 _folders  �� 0 getfirstitem getFirstItem�� 	0 _item  �� 0 getnames getNames�� 
0 _names  �� 0 getbasenames getBasenames�� 0 
_basenames  �� 00 getbasenameoffirstitem getBasenameOfFirstItem�� (0 _firstitembasename _firstItemBasename�� 20 getbasenamesofonlyfiles getBasenamesOfOnlyFiles�� "0 _basenamesfiles _basenamesFiles�� 0 getextensions getExtensions�� 0 _extensions  �� 40 getextensionsofonlyfiles getExtensionsOfOnlyFiles�� $0 _extensionsfiles _extensionsFiles�� 00 toggleextensionshidden toggleExtensionsHidden�� (0 _extensionstoggled _extensionsToggled�� 0 getposixpaths getPosixPaths�� 
0 _paths  ��  0 getposixpathsq getPosixPathsQ�� 0 _pathsq _pathsQ�� ,0 getescapedposixarray getEscapedPosixArray�� 0 _pathsshell _pathsShell�� 0 gethfspaths getHFSPaths�� 0 	_pathshfs 	_pathsHFS�� 0 gethfspathsq getHFSPathsQ�� 0 
_pathshfsq 
_pathsHFSQ��  0 getparentposix getParentPosix�� 0 _pathsparent _pathsParent�� 0 getparenthfs getParentHFS�� "0 _pathsparenthfs _pathsParentHFS�� &0 getbasenameofitem getBasenameOfItem�� 0 	_basename  �� 0 getnameandext getNameAndExt�� 0 	_name_ext  �� $0 getcommentofitem getCommentOfItem�� 0 _comment  �� (0 getcontainerofitem getContainerOfItem�� 0 _parent  �� *0 getpropertiesofitem getPropertiesOfItem�� 0 _properties  �� 
0 _alias  ��  0 getparentalias getParentAlias�� 0 _parentalias _parentAlias�� 0 _pathparent _pathParent�� <0 appendbasenamestoparentposix appendBasenamesToParentPOSIX��  0 _conjuredpaths _conjuredPaths��9*����l �%�%/j E�O� *j+ 	E�O*�k+ E�O*�k+ E�O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E` O*�k+ E`  O*�k+ !E` "O*�k+ #E` $O*�k+ %E` &O*�k+ 'E` (O*�k+ )E` *O*�k+ +E` ,O*_ k+ -E` .O*_ k+ /E` 0O*_ k+ 1E` 2O*_ k+ 3E` 4O*_ k+ 5E` 6O*_ 7k+ 8E` 9O*_ _ :l+ ;E` <OPU ascr  ��ޭ