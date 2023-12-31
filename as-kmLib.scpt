FasdUAS 1.101.10   ��   ��    k             l     ��  ��    @ :--- Keyboard Maestro - AppleScript Scripting Library -----     � 	 	 t - - -   K e y b o a r d   M a e s t r o   -   A p p l e S c r i p t   S c r i p t i n g   L i b r a r y   - - - - -   
  
 l     ��������  ��  ��        l      ��  ��   		

-----------------------------------------------------------------------------------------------------------
Authored by Ian Kirkland M.Ed

�KIRKLAND PROFESSIONAL STUDIOS, 2016
REDISTRIBUTION AND USE IN SOURCE AND BINARY FORMS, WITH OR WITHOUT
MODIFICATION, ARE PERMITTED PROVIDED THAT THE FOLLOWING CONDITIONS ARE MET:

REDISTRIBUTIONS OF SOURCE CODE MUST RETAIN THE ABOVE COPYRIGHT NOTICE, THIS
LIST OF CONDITIONS AND THE FOLLOWING DISCLAIMER.

REDISTRIBUTIONS IN BINARY FORM MUST REPRODUCE THE ABOVE COPYRIGHT NOTICE, THIS
LIST OF CONDITIONS AND THE FOLLOWING DISCLAIMER IN THE DOCUMENTATION AND/OR
OTHER MATERIALS PROVIDED WITH THE DISTRIBUTION.

NEITHER THE NAME OF KIRKLAND PROFESSIONAL STUDIOS NOR THE NAMES OF ITS
CONTRIBUTORS MAY BE USED TO ENDORSE OR PROMOTE PRODUCTS DERIVED FROM THIS
SOFTWARE WITHOUT SPECIFIC PRIOR WRITTEN PERMISSION.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

SOME PORTIONS OF THIS CODE USE LATE NIGHT SOFTWARE'S LIST & RECORD TOOLS:
THIS SOFTWARE IS PROVIDED AS-IS, WITHOUT WARRANTY OF ANY KIND. THE AUTHOR
DISCLAIMS ANY DAMAGES THAT MAY RESULT FROM THE USE OR MISUSE OF THIS SOFTWARE.
THIS SOFTWARE IS COPYRIGHT � 2004-2010 LATE NIGHT SOFTWARE LTD. & MARK
ALLDRITT. YOU MAY USE AND/OR DISTRIBUTE THE SOFTWARE WITHOUT RESTRICTION. IF
YOU BUNDLE THE SOFTWARE WITH ANY COMMERCIAL OFFERING, YOU MUST DISPLAY THIS
COPYRIGHT NOTICE IN THE SOFTWARE�S DOCUMENTATION AND/OR ABOUT BOX.
FOR MORE INFORMATION, SEE: http://www.latenightsw.com/freeware/list-record-tools/
-----------------------------------------------------------------------------------------------------------
     �   
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 A u t h o r e d   b y   I a n   K i r k l a n d   M . E d 
 
 � K I R K L A N D   P R O F E S S I O N A L   S T U D I O S ,   2 0 1 6 
 R E D I S T R I B U T I O N   A N D   U S E   I N   S O U R C E   A N D   B I N A R Y   F O R M S ,   W I T H   O R   W I T H O U T 
 M O D I F I C A T I O N ,   A R E   P E R M I T T E D   P R O V I D E D   T H A T   T H E   F O L L O W I N G   C O N D I T I O N S   A R E   M E T : 
 
 R E D I S T R I B U T I O N S   O F   S O U R C E   C O D E   M U S T   R E T A I N   T H E   A B O V E   C O P Y R I G H T   N O T I C E ,   T H I S 
 L I S T   O F   C O N D I T I O N S   A N D   T H E   F O L L O W I N G   D I S C L A I M E R . 
 
 R E D I S T R I B U T I O N S   I N   B I N A R Y   F O R M   M U S T   R E P R O D U C E   T H E   A B O V E   C O P Y R I G H T   N O T I C E ,   T H I S 
 L I S T   O F   C O N D I T I O N S   A N D   T H E   F O L L O W I N G   D I S C L A I M E R   I N   T H E   D O C U M E N T A T I O N   A N D / O R 
 O T H E R   M A T E R I A L S   P R O V I D E D   W I T H   T H E   D I S T R I B U T I O N . 
 
 N E I T H E R   T H E   N A M E   O F   K I R K L A N D   P R O F E S S I O N A L   S T U D I O S   N O R   T H E   N A M E S   O F   I T S 
 C O N T R I B U T O R S   M A Y   B E   U S E D   T O   E N D O R S E   O R   P R O M O T E   P R O D U C T S   D E R I V E D   F R O M   T H I S 
 S O F T W A R E   W I T H O U T   S P E C I F I C   P R I O R   W R I T T E N   P E R M I S S I O N . 
 
 T H I S   S O F T W A R E   I S   P R O V I D E D   B Y   T H E   C O P Y R I G H T   H O L D E R S   A N D   C O N T R I B U T O R S   " A S   I S " 
 A N D   A N Y   E X P R E S S   O R   I M P L I E D   W A R R A N T I E S ,   I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   T H E 
 I M P L I E D   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A R E 
 D I S C L A I M E D .   I N   N O   E V E N T   S H A L L   T H E   C O P Y R I G H T   H O L D E R   O R   C O N T R I B U T O R S   B E   L I A B L E 
 F O R   A N Y   D I R E C T ,   I N D I R E C T ,   I N C I D E N T A L ,   S P E C I A L ,   E X E M P L A R Y ,   O R   C O N S E Q U E N T I A L 
 D A M A G E S   ( I N C L U D I N G ,   B U T   N O T   L I M I T E D   T O ,   P R O C U R E M E N T   O F   S U B S T I T U T E   G O O D S   O R 
 S E R V I C E S ;   L O S S   O F   U S E ,   D A T A ,   O R   P R O F I T S ;   O R   B U S I N E S S   I N T E R R U P T I O N )   H O W E V E R 
 C A U S E D   A N D   O N   A N Y   T H E O R Y   O F   L I A B I L I T Y ,   W H E T H E R   I N   C O N T R A C T ,   S T R I C T   L I A B I L I T Y , 
 O R   T O R T   ( I N C L U D I N G   N E G L I G E N C E   O R   O T H E R W I S E )   A R I S I N G   I N   A N Y   W A Y   O U T   O F   T H E   U S E 
 O F   T H I S   S O F T W A R E ,   E V E N   I F   A D V I S E D   O F   T H E   P O S S I B I L I T Y   O F   S U C H   D A M A G E . 
 
 S O M E   P O R T I O N S   O F   T H I S   C O D E   U S E   L A T E   N I G H T   S O F T W A R E ' S   L I S T   &   R E C O R D   T O O L S : 
 T H I S   S O F T W A R E   I S   P R O V I D E D   A S - I S ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D .   T H E   A U T H O R 
 D I S C L A I M S   A N Y   D A M A G E S   T H A T   M A Y   R E S U L T   F R O M   T H E   U S E   O R   M I S U S E   O F   T H I S   S O F T W A R E . 
 T H I S   S O F T W A R E   I S   C O P Y R I G H T   �   2 0 0 4 - 2 0 1 0   L A T E   N I G H T   S O F T W A R E   L T D .   &   M A R K 
 A L L D R I T T .   Y O U   M A Y   U S E   A N D / O R   D I S T R I B U T E   T H E   S O F T W A R E   W I T H O U T   R E S T R I C T I O N .   I F 
 Y O U   B U N D L E   T H E   S O F T W A R E   W I T H   A N Y   C O M M E R C I A L   O F F E R I N G ,   Y O U   M U S T   D I S P L A Y   T H I S 
 C O P Y R I G H T   N O T I C E   I N   T H E   S O F T W A R E  S   D O C U M E N T A T I O N   A N D / O R   A B O U T   B O X . 
 F O R   M O R E   I N F O R M A T I O N ,   S E E :   h t t p : / / w w w . l a t e n i g h t s w . c o m / f r e e w a r e / l i s t - r e c o r d - t o o l s / 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
      l     ��������  ��  ��        l     ��������  ��  ��        l     ��������  ��  ��        l     ��  ��    l f-------------------------------------------- PROPERTIES ----------------------------------------------     �   � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   P R O P E R T I E S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -      j     �� �� 0 _myname _myName  m        �      _ k m L i b   ! " ! l     ��������  ��  ��   "  # $ # l     ��������  ��  ��   $  % & % l     ��������  ��  ��   &  ' ( ' l     �� ) *��   ) j d----------------------------------------- SUBROUTINE LIST ------------------------------------------    * � + + � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   S U B R O U T I N E   L I S T   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - (  , - , l     ��������  ��  ��   -  . / . l     �� 0 1��   0   on GET_KMVARS(_varNames)    1 � 2 2 2   o n   G E T _ K M V A R S ( _ v a r N a m e s ) /  3 4 3 l     �� 5 6��   5 9 3 on SET_KMVARS(_input) -- uses SANITIZE_KMVAR_NAMES    6 � 7 7 f   o n   S E T _ K M V A R S ( _ i n p u t )   - -   u s e s   S A N I T I Z E _ K M V A R _ N A M E S 4  8 9 8 l     �� : ;��   : . ( on WRITE_RECORD_TO_KMVARS(_inputRecord)    ; � < < P   o n   W R I T E _ R E C O R D _ T O _ K M V A R S ( _ i n p u t R e c o r d ) 9  = > = l     �� ? @��   ? &   on SANITIZE_KMVAR_NAMES(_input)    @ � A A @   o n   S A N I T I Z E _ K M V A R _ N A M E S ( _ i n p u t ) >  B C B l     �� D E��   D    on PROCESS_TOKENS(_input)    E � F F 4   o n   P R O C E S S _ T O K E N S ( _ i n p u t ) C  G H G l     ��������  ��  ��   H  I J I l     ��������  ��  ��   J  K L K l     ��������  ��  ��   L  M N M l     �� O P��   O k e------------------------------------------- SUBROUTINES ---------------------------------------------    P � Q Q � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   S U B R O U T I N E S   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - N  R S R l     ��������  ��  ��   S  T U T l     ��������  ��  ��   U  V W V l     �� X Y��   X o i---------------------------------------------------------------------------------------------------------    Y � Z Z � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - W  [ \ [ l     ��������  ��  ��   \  ] ^ ] i     _ ` _ I      �� a���� 0 
get_kmvars 
GET_KMVARS a  b�� b o      ���� 0 	_varnames 	_varNames��  ��   ` k     � c c  d e d l     �� f g��   f b \ input:		[ record  |   list + list  |  list + string  |  string + list  |  string + string ]    g � h h �   i n p u t : 	 	 [   r e c o r d     |       l i s t   +   l i s t     |     l i s t   +   s t r i n g     |     s t r i n g   +   l i s t     |     s t r i n g   +   s t r i n g   ] e  i j i l     �� k l��   k ^ X input2:		[ json String  |  ruby hash  |  xml string  |  simple key-value list ] (to-do)    l � m m �   i n p u t 2 : 	 	 [   j s o n   S t r i n g     |     r u b y   h a s h     |     x m l   s t r i n g     |     s i m p l e   k e y - v a l u e   l i s t   ]   ( t o - d o ) j  n o n l     �� p q��   p D > form: 		GET_KMVARS ( list of list | list of string | record )    q � r r |   f o r m :   	 	 G E T _ K M V A R S   (   l i s t   o f   l i s t   |   l i s t   o f   s t r i n g   |   r e c o r d   ) o  s t s l     �� u v��   u 
  eg:    v � w w    e g : t  x y x l      �� z {��   ztn
					-- eg A
					set _myNames to {"_a", "2b", "c$"}					set _myValues to {"1", "2", "3"}					set _input to {_myNames, _myValues}
					set _result to my SET_KMVARS(_input)
					
					-- eg B
					set _myNames to {"_a", "2b", "c$"}					set _myValues to {"1", "2", "3"}					set _result to my SET_KMVARS({_myNames, _myValues})
					
					-- eg C
					set _savedVars to my SET_KMVARS({{"_a", "2b", "c$"}, {"1", "2", "3"}})
					
					-- eg D
					set _record to {a:" &", b:"bbb", c:"ccc"}					set _savedVars to my SET_KMVARS(_record)
					
					-- eg E
					set _savedVars to my SET_KMVARS({a:" &", b:"bbb", c:"ccc"})	    { � | |� 
 	 	 	 	 	 - -   e g   A 
 	 	 	 	 	 s e t   _ m y N a m e s   t o   { " _ a " ,   " 2 b " ,   " c $ " }  	 	 	 	 	 s e t   _ m y V a l u e s   t o   { " 1 " ,   " 2 " ,   " 3 " }  	 	 	 	 	 s e t   _ i n p u t   t o   { _ m y N a m e s ,   _ m y V a l u e s } 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S E T _ K M V A R S ( _ i n p u t ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   B 
 	 	 	 	 	 s e t   _ m y N a m e s   t o   { " _ a " ,   " 2 b " ,   " c $ " }  	 	 	 	 	 s e t   _ m y V a l u e s   t o   { " 1 " ,   " 2 " ,   " 3 " }  	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S E T _ K M V A R S ( { _ m y N a m e s ,   _ m y V a l u e s } ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   C  
 	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( { { " _ a " ,   " 2 b " ,   " c $ " } ,   { " 1 " ,   " 2 " ,   " 3 " } } ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   D 
 	 	 	 	 	 s e t   _ r e c o r d   t o   { a : "   & " ,   b : " b b b " ,   c : " c c c " }  	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( _ r e c o r d ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   E 
 	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( { a : "   & " ,   b : " b b b " ,   c : " c c c " } )  	 y  } ~ } l     ��������  ��  ��   ~   �  O     � � � � Z    � � ��� � � =   	 � � � n     � � � m    ��
�� 
pcls � o    ���� 0 	_varnames 	_varNames � m    ��
�� 
list � k    T � �  � � � r     � � � J    ����   � o      ���� 0 _result   �  ��� � X    T ��� � � k   ! O � �  � � � r   ! & � � � c   ! $ � � � o   ! "���� 0 _v   � m   " #��
�� 
TEXT � o      ���� 0 _varname _varName �  � � � Q   ' J � � � � r   * 2 � � � l  * 0 ����� � n   * 0 � � � 1   . 0��
�� 
MKvl � 4   * .�� �
�� 
MKvr � o   , -���� 0 _varname _varName��  ��   � o      ���� 0 	_varvalue 	_varValue � R      ������
�� .ascrerr ****      � ****��  ��   � k   : J � �  � � � r   : = � � � m   : ; � � � � �    � o      ���� 0 	_varvalue 	_varValue �  ��� � I  > J�� � �
�� .corecrel****      � null � m   > ?��
�� 
MKvr � �� ���
�� 
prdt � K   @ F � � �� � �
�� 
pnam � o   A B���� 0 _varname _varName � �� ���
�� 
MKvl � o   C D���� 0 	_varvalue 	_varValue��  ��  ��   �  ��� � r   K O � � � o   K L���� 0 	_varvalue 	_varValue � n       � � �  ;   M N � o   L M���� 0 _result  ��  �� 0 _v   � o    ���� 0 	_varnames 	_varNames��  ��   � k   W � � �  � � � r   W \ � � � c   W Z � � � o   W X���� 0 	_varnames 	_varNames � m   X Y��
�� 
TEXT � o      ���� 0 _varname _varName �  � � � Q   ] � � � � � r   ` h � � � l  ` f ����� � n   ` f � � � 1   d f��
�� 
MKvl � 4   ` d�� �
�� 
MKvr � o   b c���� 0 _varname _varName��  ��   � o      ���� 0 	_varvalue 	_varValue � R      ������
�� .ascrerr ****      � ****��  ��   � k   p � � �  � � � r   p u � � � m   p s � � � � �    � o      ���� 0 	_varvalue 	_varValue �  ��� � I  v ��� � �
�� .corecrel****      � null � m   v w��
�� 
MKvr � �� ���
�� 
prdt � K   x ~ � � �� � �
�� 
pnam � o   y z���� 0 _varname _varName � �� ���
�� 
MKvl � o   { |���� 0 	_varvalue 	_varValue��  ��  ��   �  ��� � r   � � � � � o   � ����� 0 	_varvalue 	_varValue � o      ���� 0 _result  ��   � m      � �L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��   �  �� � L   � � � � o   � ��~�~ 0 _result  �   ^  � � � l     �}�|�{�}  �|  �{   �  � � � l     �z�y�x�z  �y  �x   �  � � � l     �w � ��w   � o i---------------------------------------------------------------------------------------------------------    � � � � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � i    
 � � � I      �v ��u�v 0 
set_kmvars 
SET_KMVARS �  ��t � o      �s�s 
0 _input  �t  �u   � l   W � � � � k    W � �  � � � l     �r � ��r   � b \ input:		[ record  |   list + list  |  list + string  |  string + list  |  string + string ]    � � � � �   i n p u t : 	 	 [   r e c o r d     |       l i s t   +   l i s t     |     l i s t   +   s t r i n g     |     s t r i n g   +   l i s t     |     s t r i n g   +   s t r i n g   ] �  � � � l     �q � ��q   � ^ X input2:		[ json String  |  ruby hash  |  xml string  |  simple key-value list ] (to-do)    � � � � �   i n p u t 2 : 	 	 [   j s o n   S t r i n g     |     r u b y   h a s h     |     x m l   s t r i n g     |     s i m p l e   k e y - v a l u e   l i s t   ]   ( t o - d o ) �  � � � l     �p � ��p   � D > form: 		GET_KMVARS ( list of list | list of string | record )    � �   |   f o r m :   	 	 G E T _ K M V A R S   (   l i s t   o f   l i s t   |   l i s t   o f   s t r i n g   |   r e c o r d   ) �  l     �o�o   
  eg:    �    e g :  l      �n	�n  tn
					-- eg A
					set _myNames to {"_a", "2b", "c$"}					set _myValues to {"1", "2", "3"}					set _input to {_myNames, _myValues}
					set _result to my SET_KMVARS(_input)
					
					-- eg B
					set _myNames to {"_a", "2b", "c$"}					set _myValues to {"1", "2", "3"}					set _result to my SET_KMVARS({_myNames, _myValues})
					
					-- eg C
					set _savedVars to my SET_KMVARS({{"_a", "2b", "c$"}, {"1", "2", "3"}})
					
					-- eg D
					set _record to {a:" &", b:"bbb", c:"ccc"}					set _savedVars to my SET_KMVARS(_record)
					
					-- eg E
					set _savedVars to my SET_KMVARS({a:" &", b:"bbb", c:"ccc"})
	   	 �

� 
 	 	 	 	 	 - -   e g   A 
 	 	 	 	 	 s e t   _ m y N a m e s   t o   { " _ a " ,   " 2 b " ,   " c $ " }  	 	 	 	 	 s e t   _ m y V a l u e s   t o   { " 1 " ,   " 2 " ,   " 3 " }  	 	 	 	 	 s e t   _ i n p u t   t o   { _ m y N a m e s ,   _ m y V a l u e s } 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S E T _ K M V A R S ( _ i n p u t ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   B 
 	 	 	 	 	 s e t   _ m y N a m e s   t o   { " _ a " ,   " 2 b " ,   " c $ " }  	 	 	 	 	 s e t   _ m y V a l u e s   t o   { " 1 " ,   " 2 " ,   " 3 " }  	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S E T _ K M V A R S ( { _ m y N a m e s ,   _ m y V a l u e s } ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   C  
 	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( { { " _ a " ,   " 2 b " ,   " c $ " } ,   { " 1 " ,   " 2 " ,   " 3 " } } ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   D 
 	 	 	 	 	 s e t   _ r e c o r d   t o   { a : "   & " ,   b : " b b b " ,   c : " c c c " }  	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( _ r e c o r d ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   E 
 	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( { a : "   & " ,   b : " b b b " ,   c : " c c c " } ) 
 	  l     �m�l�k�m  �l  �k    O    T k   S  l   �j�i�h�j  �i  �h    l   �g�g    
 dual list    �    d u a l   l i s t  l   �f�f   !  multi vars with same value    � 6   m u l t i   v a r s   w i t h   s a m e   v a l u e  l   �e !�e      var with list of values   ! �"" 0   v a r   w i t h   l i s t   o f   v a l u e s #$# l   �d%&�d  %   dual string   & �''    d u a l   s t r i n g$ ()( l   �c�b�a�c  �b  �a  ) *+* Z    ,-�`�_, =   	./. n    010 m    �^
�^ 
pcls1 o    �]�] 
0 _input  / m    �\
�\ 
reco- L    22 n   343 I    �[5�Z�[ 00 write_record_to_kmvars WRITE_RECORD_TO_KMVARS5 6�Y6 o    �X�X 
0 _input  �Y  �Z  4  f    �`  �_  + 787 l   �W�V�U�W  �V  �U  8 9:9 Z   (;<�T�S; >   =>= l   ?�R�Q? I   �P@�O
�P .corecnte****       ****@ o    �N�N 
0 _input  �O  �R  �Q  > m    �M�M < L   " $�L�L  �T  �S  : ABA l  ) )�K�J�I�K  �J  �I  B CDC r   ) /EFE n   ) -GHG 4   * -�HI
�H 
cobjI m   + ,�G�G H o   ) *�F�F 
0 _input  F o      �E�E 
0 _names  D JKJ r   0 8LML n  0 6NON I   1 6�DP�C�D ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMESP Q�BQ o   1 2�A�A 
0 _names  �B  �C  O  f   0 1M o      �@�@ 
0 _names  K RSR r   9 ?TUT n   9 =VWV 4   : =�?X
�? 
cobjX m   ; <�>�> W o   9 :�=�= 
0 _input  U o      �<�< 0 _values  S YZY l  @ @�;�:�9�;  �:  �9  Z [\[ l  @ @�8�7�6�8  �7  �6  \ ]^] Z   @ �_`ab_ F   @ Ocdc =  @ Eefe n   @ Cghg l 	 A Ci�5�4i m   A C�3
�3 
pcls�5  �4  h o   @ A�2�2 
0 _names  f m   C D�1
�1 
listd =  H Mjkj n   H Klml l 	 I Kn�0�/n m   I K�.
�. 
pcls�0  �/  m o   H I�-�- 0 _values  k m   K L�,
�, 
list` r   R Uopo m   R Sqq �rr  d u a l   l i s tp o      �+�+ 	0 _mode  a sts F   X guvu =  X ]wxw n   X [yzy l 	 Y [{�*�){ m   Y [�(
�( 
pcls�*  �)  z o   X Y�'�' 
0 _names  x m   [ \�&
�& 
listv =  ` e|}| n   ` c~~ l 	 a c��%�$� m   a c�#
�# 
pcls�%  �$   o   ` a�"�" 0 _values  } m   c d�!
�! 
TEXTt ��� r   j m��� m   j k�� ��� 4 m u l t i   v a r s   w i t h   s a m e   v a l u e� o      � �  	0 _mode  � ��� F   p ��� =  p u��� n   p s��� l 	 q s���� m   q s�
� 
pcls�  �  � o   p q�� 
0 _names  � m   s t�
� 
TEXT� =  x }��� n   x {��� l 	 y {���� m   y {�
� 
pcls�  �  � o   x y�� 0 _values  � m   { |�
� 
list� ��� r   � ���� m   � ��� ��� . v a r   w i t h   l i s t   o f   v a l u e s� o      �� 	0 _mode  � ��� F   � ���� =  � ���� n   � ���� l 	 � ����� m   � ��
� 
pcls�  �  � o   � ��� 
0 _names  � m   � ��
� 
TEXT� =  � ���� n   � ���� l 	 � ����� m   � ��
� 
pcls�  �  � o   � ��� 0 _values  � m   � ��
� 
TEXT� ��
� r   � ���� m   � ��� ���  d u a l   s t r i n g� o      �	�	 	0 _mode  �
  b k   � ��� ��� r   � ���� l  � ����� c   � ���� l  � ����� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ��� 
0 _input  �  �  � m   � ��
� 
TEXT�  �  � o      � �  
0 _names  � ��� r   � ���� l  � ������� c   � ���� l  � ������� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 
0 _input  ��  ��  � m   � ���
�� 
TEXT��  ��  � o      ���� 0 _values  � ��� r   � ���� J   � ��� ��� o   � ����� 
0 _names  � ���� o   � ����� 0 _values  ��  � o      ���� 
0 _input  � ���� r   � ���� m   � ��� ���  d u a l   l i s t� o      ���� 	0 _mode  ��  ^ ��� l  � ���������  ��  ��  � ��� l  � ���������  ��  ��  � ��� l  � �������  �  --- dual list -----   � ��� & - - -   d u a l   l i s t   - - - - -� ���� Z   �S����� =  � ���� o   � ����� 	0 _mode  � m   � ��� ���  d u a l   l i s t� k   ��� ��� Z   � �������� >   � ���� l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 
0 _names  ��  ��  ��  � l  � ������� I  � ������
�� .corecnte****       ****� o   � ����� 0 _values  ��  ��  ��  � k   � ��� ��� r   � ���� m   � ��� ��� . k e y   c o u n t  "`   v a l u e   c o u n t� o      ���� 
0 _error  � ���� L   � ��� o   � ����� 
0 _error  ��  ��  ��  � ��� O   ���� Y   ��������� k   ���    r   � � n   � � 4   � ���
�� 
cobj o   � ����� 0 _i   o   � ����� 
0 _names   o      ���� 	0 _name    r   � �	
	 n   � � 4   � ���
�� 
cobj o   � ����� 0 _i   o   � ����� 0 _values  
 o      ���� 
0 _value   �� I  ��
�� .corecrel****      � null m   ��
�� 
MKvr ����
�� 
prdt K   ��
�� 
pnam o  	
���� 	0 _name   ����
�� 
MKvl o  ���� 
0 _value  ��  ��  ��  �� 0 _i  � m   � ����� � l  � ����� I  � �����
�� .corecnte****       **** o   � ����� 
0 _names  ��  ��  ��  ��  � m   � �L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  �  l ��������  ��  ��    l ��������  ��  ��   �� l ����   * $--- multi vars with same value -----    �   H - - -   m u l t i   v a r s   w i t h   s a m e   v a l u e   - - - - -��  � !"! = !&#$# o  !"���� 	0 _mode  $ m  "%%% �&& 4 m u l t i   v a r s   w i t h   s a m e   v a l u e" '(' k  )c)) *+* O  )a,-, k  /`.. /0/ r  /2121 o  /0���� 0 _values  2 o      ���� 
0 _value  0 3��3 X  3`4��54 I E[��67
�� .corecrel****      � null6 m  EH��
�� 
MKvr7 ��8��
�� 
prdt8 K  KW99 ��:;
�� 
pnam: o  NO���� 	0 _name  ; ��<��
�� 
MKvl< o  RS���� 
0 _value  ��  ��  �� 	0 _name  5 o  67���� 
0 _names  ��  - m  ),==L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  + >?> l bb��������  ��  ��  ? @A@ l bb��������  ��  ��  A B��B l bb��CD��  C ' !--- var with list of values -----   D �EE B - - -   v a r   w i t h   l i s t   o f   v a l u e s   - - - - -��  ( FGF = fkHIH o  fg���� 	0 _mode  I m  gjJJ �KK . v a r   w i t h   l i s t   o f   v a l u e sG LML k  n�NN OPO O  n�QRQ k  t�SS TUT r  twVWV o  tu���� 
0 _names  W o      ���� 	0 _name  U XYX l xx��������  ��  ��  Y Z[Z l xx��\]��  \ 0 *--- format as newline-delimited list -----   ] �^^ T - - -   f o r m a t   a s   n e w l i n e - d e l i m i t e d   l i s t   - - - - -[ _`_ r  x�aba n xcdc 1  {��
�� 
txdld 1  x{��
�� 
ascrb o      ���� 0 _delims_old  ` efe r  ��ghg J  ��ii j��j o  ����
�� 
ret ��  h o      ���� 0 _delims_new  f klk r  ��mnm o  ������ 0 _delims_new  n n     opo 1  ����
�� 
txdlp 1  ����
�� 
ascrl qrq r  ��sts l ��u����u c  ��vwv l ��x����x n  ��yzy 2 ����
�� 
citmz o  ������ 0 _values  ��  ��  w m  ����
�� 
ctxt��  ��  t o      ���� 
0 _value  r {|{ l ��}~} r  ����� o  ������ 0 _delims_old  � n     ��� 1  ����
�� 
txdl� 1  ����
�� 
ascr~   {""}    ��� 
   { " " }| ���� I ������
�� .corecrel****      � null� m  ����
�� 
MKvr� �����
�� 
prdt� K  ���� ���
� 
pnam� o  ���~�~ 	0 _name  � �}��|
�} 
MKvl� o  ���{�{ 
0 _value  �|  ��  ��  R m  nq��L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  P ��� l ���z�y�x�z  �y  �x  � ��� l ���w�v�u�w  �v  �u  � ��t� l ���s���s  �  --- dual string -----   � ��� * - - -   d u a l   s t r i n g   - - - - -�t  M ��� = ����� o  ���r�r 	0 _mode  � m  ���� ���  d u a l   s t r i n g� ��q� k  ���� ��� O  ����� k  ���� ��� r  ����� o  ���p�p 
0 _names  � o      �o�o 	0 _name  � ��� r  ����� o  ���n�n 0 _values  � o      �m�m 
0 _value  � ��l� I ���k��
�k .corecrel****      � null� m  ���j
�j 
MKvr� �i��h
�i 
prdt� K  ���� �g��
�g 
pnam� o  ���f�f 	0 _name  � �e��d
�e 
MKvl� o  ���c�c 
0 _value  �d  �h  �l  � m  ����L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  � ��� l ���b�a�`�b  �a  �`  � ��� l ���_�^�]�_  �^  �]  � ��\� l ���[���[  � ( "--- coerce to dual list mode -----   � ��� D - - -   c o e r c e   t o   d u a l   l i s t   m o d e   - - - - -�\  �q  � k  �S�� ��� Z  ����Z�Y� >  ���� l ����X�W� I ���V��U
�V .corecnte****       ****� o  ���T�T 
0 _names  �U  �X  �W  � l ���S�R� I ��Q��P
�Q .corecnte****       ****� o  ���O�O 0 _values  �P  �S  �R  � k  �� ��� r  ��� m  	�� ��� . k e y   c o u n t  "`   v a l u e   c o u n t� o      �N�N 
0 _error  � ��M� L  �� o  �L�L 
0 _error  �M  �Z  �Y  � ��� O  Q��� Y  P��K���J� k  'K�� ��� r  '-��� n  '+��� 4  (+�I�
�I 
cobj� o  )*�H�H 0 _i  � o  '(�G�G 
0 _names  � o      �F�F 	0 _name  � ��� r  .4��� n  .2��� 4  /2�E�
�E 
cobj� o  01�D�D 0 _i  � o  ./�C�C 0 _values  � o      �B�B 
0 _value  � ��A� I 5K�@��
�@ .corecrel****      � null� m  58�?
�? 
MKvr� �>��=
�> 
prdt� K  ;G�� �<��
�< 
pnam� o  >?�;�; 	0 _name  � �:��9
�: 
MKvl� o  BC�8�8 
0 _value  �9  �=  �A  �K 0 _i  � m  �7�7 � l "��6�5� I "�4��3
�4 .corecnte****       ****� o  �2�2 
0 _names  �3  �6  �5  �J  � m  ��L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  � ��1� l RR�0�/�.�0  �/  �.  �1  ��   m     ���                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+  ���System Events.app                                              ��-����        ����  	                CoreServices    Љ�J      ����    ���������  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   ��� l UU�-���-  �  	 return 0   � ���    r e t u r n   0� ��,� L  UW�� o  UV�+�+ 
0 _names  �,   �    uses SANITIZE_KMVAR_NAMES    � ��� 4   u s e s   S A N I T I Z E _ K M V A R _ N A M E S � ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � � � l     �$�#�"�$  �#  �"     l     �!�!   o i---------------------------------------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  i    	 I      � 
��  00 write_record_to_kmvars WRITE_RECORD_TO_KMVARS
 � o      �� 0 _inputrecord _inputRecord�  �  	 l     k       l     ��     input:		[ record ]    � &   i n p u t : 	 	 [   r e c o r d   ]  l     ��   #  form: 		SET_KMVARS( record )    � :   f o r m :   	 	 S E T _ K M V A R S (   r e c o r d   )  l     ��   
  eg:    �    e g :   l      �!"�  ! � �
					-- eg A
					set _record to {a:" &", b:"bbb", c:"ccc"}					set _savedVars to my SET_KMVARS(_record)
					
					-- eg B
					set _savedVars to my SET_KMVARS({a:" &", b:"bbb", c:"ccc"})	   " �##� 
 	 	 	 	 	 - -   e g   A 
 	 	 	 	 	 s e t   _ r e c o r d   t o   { a : "   & " ,   b : " b b b " ,   c : " c c c " }  	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( _ r e c o r d ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   B 
 	 	 	 	 	 s e t   _ s a v e d V a r s   t o   m y   S E T _ K M V A R S ( { a : "   & " ,   b : " b b b " ,   c : " c c c " } )  	  $%$ l     ����  �  �  % &'& h     �(� 0 
set_kmvars 
SET_KMVARS( k      )) *+* l     ����  �  �  + ,-, l     �./�  .  --- use -----   / �00  - - -   u s e   - - - - -- 121 x     
�3��  3 2   �
� 
osax�  2 454 l     ����  �  �  5 676 l     �
89�
  8 $ --- get / define records -----   9 �:: < - - -   g e t   /   d e f i n e   r e c o r d s   - - - - -7 ;<; j   
 �	=�	 0 _record  = o   
 �� 0 _inputrecord _inputRecord< >?> l     ����  �  �  ? @A@ l     �BC�  B # --- get keys and values -----   C �DD : - - -   g e t   k e y s   a n d   v a l u e s   - - - - -A EFE l    GHIG r     JKJ I    	�L�
� .ScTlrcGnTEXT  @     recoL o     �� 0 _record  �  K o      � �  0 _recordkeys _recordKeysH   *   I �MM    *F NON l   P����P r    QRQ n   STS I    ��U���� ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMESU V��V o    ���� 0 _recordkeys _recordKeys��  ��  T  f    R o      ���� 0 _recordkeyes _recordKeyes��  ��  O WXW l   Y����Y r    Z[Z n    \]\ 2    ��
�� 
cobj] o    ���� 0 _record  [ o      ���� 0 _recordvalues _recordValues��  ��  X ^_^ l     ��������  ��  ��  _ `a` l     ��bc��  b ( "--- save to Keyboard Maestro -----   c �dd D - - -   s a v e   t o   K e y b o a r d   M a e s t r o   - - - - -a efe l   dg����g Z    dhi��jh l   *k����k >    *lml l   $n����n I   $��o��
�� .corecnte****       ****o o     ���� 0 _recordkeys _recordKeys��  ��  ��  m l  $ )p����p I  $ )��q��
�� .corecnte****       ****q o   $ %���� 0 _recordvalues _recordValues��  ��  ��  ��  ��  i L   - /����  ��  j Y   2 dr��st��r k   @ _uu vwv r   @ Fxyx n   @ Dz{z 4   A D��|
�� 
cobj| o   B C���� 0 _i  { o   @ A���� 0 _recordkeys _recordKeysy o      ���� 0 _k  w }~} r   G M� n   G K��� 4   H K���
�� 
cobj� o   I J���� 0 _i  � o   G H���� 0 _recordvalues _recordValues� o      ���� 0 _v  ~ ���� O  N _��� I  R ^����
�� .corecrel****      � null� m   R S��
�� 
MKvr� �����
�� 
prdt� K   T Z�� ����
�� 
pnam� o   U V���� 0 _k  � �����
�� 
MKvl� o   W X���� 0 _v  ��  ��  � m   N O��L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��  ��  �� 0 _i  s m   5 6���� t l  6 ;������ I  6 ;�����
�� .corecnte****       ****� o   6 7���� 0 _recordkeys _recordKeys��  ��  ��  ��  ��  ��  f ��� l     ��������  ��  ��  � ��� l     ������  �  	 return 0   � ���    r e t u r n   0� ��� l  e g������ L   e g�� o   e f���� 0 _recordkeys _recordKeys��  ��  � ��� l     ������  � 7 1 * Uses Late Night Software's List & Record Tools   � ��� b   *   U s e s   L a t e   N i g h t   S o f t w a r e ' s   L i s t   &   R e c o r d   T o o l s� ���� l     ��������  ��  ��  ��  ' ��� l   ��������  ��  ��  � ���� I   �����
�� .aevtoappnull  �   � ****� o    	���� 0 
set_kmvars 
SET_KMVARS��  ��      uses SANITIZE_KMVAR_NAMES    ��� 4   u s e s   S A N I T I Z E _ K M V A R _ N A M E S ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � o i---------------------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i    ��� I      ������� ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMES� ���� o      ���� 
0 _input  ��  ��  � k     %�� ��� l     ������  � $  input:  		[ list  |  scalar ]   � ��� <   i n p u t :     	 	 [   l i s t     |     s c a l a r   ]� ��� l     ������  � > 8 form: 		SANITIZE_KMVAR_NAMES( string | list of string )   � ��� p   f o r m :   	 	 S A N I T I Z E _ K M V A R _ N A M E S (   s t r i n g   |   l i s t   o f   s t r i n g   )� ��� l     ������  � 
  eg:   � ���    e g :� ��� l      ������  ���
					-- eg A
					set _varName1 to "_4honor-$go"
					set _varName2 to "3Beef-cakes"
					set _input to {_varName1, _varName2}
					set _result to my SANITIZE_KMVAR_NAMES(_input)
					
					-- eg B
					set _input to {"_4honor-$go", "3Beef-cakes"}
					set _result to my SANITIZE_KMVAR_NAMES(_input)
					
					-- eg C
					set _result to my SANITIZE_KMVAR_NAMES({"_4honor-$go", "3Beef-cakes"})
	   � ��� 
 	 	 	 	 	 - -   e g   A 
 	 	 	 	 	 s e t   _ v a r N a m e 1   t o   " _ 4 h o n o r - $ g o " 
 	 	 	 	 	 s e t   _ v a r N a m e 2   t o   " 3 B e e f - c a k e s " 
 	 	 	 	 	 s e t   _ i n p u t   t o   { _ v a r N a m e 1 ,   _ v a r N a m e 2 } 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S A N I T I Z E _ K M V A R _ N A M E S ( _ i n p u t ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   B 
 	 	 	 	 	 s e t   _ i n p u t   t o   { " _ 4 h o n o r - $ g o " ,   " 3 B e e f - c a k e s " } 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S A N I T I Z E _ K M V A R _ N A M E S ( _ i n p u t ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   C 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   S A N I T I Z E _ K M V A R _ N A M E S ( { " _ 4 h o n o r - $ g o " ,   " 3 B e e f - c a k e s " } ) 
 	� ��� l     ��������  ��  ��  � ��� Z     ������ >    ��� n     ��� m    ��
�� 
pcls� o     ���� 
0 _input  � m    ��
�� 
list� k    �� ��� r    ��� m    	�� ���  s t r i n g� o      ���� 0 
_inputtype 
_inputType� ���� r    ��� c    ��� o    ���� 
0 _input  � m    ��
�� 
list� o      ���� 
0 _input  ��  ��  � r    ��� m    �� ���  l i s t� o      ���� 0 
_inputtype 
_inputType� ��� h    ����� 0 sanitize SANITIZE� k      �� ��� l     ������  � 2 ,--------------------------------------------   � ��� X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� x     �������  � 4    ���
�� 
frmk� m    �� ���  F o u n d a t i o n��  � ��� j    ����� 0 _listofstring _listOfString� o    ���� 
0 _input  � ��� l     ������  � 2 ,--------------------------------------------   � ��� X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� � � l    ���� r      J     ����   o      ���� 0 _output  ��  ��     l  ����� X   ��� k   �		 

 r     o    ���� 0 kmvar_string   o      ���� 0 potentialname potentialName  r    " n     1     ��
�� 
txdl 1    ��
�� 
ascr o      ���� 0 _delims_old    r   # ( J   # & � m   # $ �  -�   o      �~�~ 0 _delims_new    r   ) . o   ) *�}�} 0 _delims_new   n      !  1   + -�|
�| 
txdl! 1   * +�{
�{ 
ascr "#" r   / 4$%$ n   / 2&'& 2  0 2�z
�z 
citm' o   / 0�y�y 0 potentialname potentialName% o      �x�x 0 potentialname potentialName# ()( r   5 :*+* m   5 6,, �--  _+ n     ./. 1   7 9�w
�w 
txdl/ 1   6 7�v
�v 
ascr) 010 r   ; B232 l  ; @4�u�t4 c   ; @565 l  ; >7�s�r7 n   ; >898 2  < >�q
�q 
citm9 o   ; <�p�p 0 potentialname potentialName�s  �r  6 m   > ?�o
�o 
ctxt�u  �t  3 o      �n�n 0 potentialname potentialName1 :;: l  C H<=>< r   C H?@? o   C D�m�m 0 _delims_old  @ n     ABA 1   E G�l
�l 
txdlB 1   D E�k
�k 
ascr=   {""}   > �CC 
   { " " }; DED r   I NFGF c   I LHIH o   I J�j�j 0 potentialname potentialNameI m   J K�i
�i 
ctxtG o      �h�h 0 potentialname potentialNameE JKJ r   O SLML J   O Q�g�g  M o      �f�f 0 	legalname 	legalNameK NON r   TcPQP J   TaRR STS m   T UUU �VV  aT WXW m   U VYY �ZZ  bX [\[ m   V W]] �^^  c\ _`_ m   W Xaa �bb  d` cdc m   X Yee �ff  ed ghg m   Y Zii �jj  fh klk m   Z [mm �nn  gl opo m   [ ^qq �rr  hp sts m   ^ auu �vv  it wxw m   a dyy �zz  jx {|{ m   d g}} �~~  k| � m   g j�� ���  l� ��� m   j m�� ���  m� ��� m   m p�� ���  n� ��� m   p s�� ���  o� ��� m   s v�� ���  p� ��� m   v y�� ���  q� ��� m   y |�� ���  r� ��� m   | �� ���  s� ��� m    ��� ���  t� ��� m   � ��� ���  u� ��� m   � ��� ���  v� ��� m   � ��� ���  w� ��� m   � ��� ���  x� ��� m   � ��� ���  y� ��� m   � ��� ���  z� ��� m   � ��� ���  A� ��� m   � ��� ���  B� ��� m   � ��� ���  C� ��� m   � ��� ���  D� ��� m   � ��� ���  E� ��� m   � ��� ���  F� ��� m   � ��� ���  G� ��� m   � ��� ���  H� ��� m   � ��� ���  I� ��� m   � ��� ���  J� ��� m   � ��� ���  K� ��� m   � ��� ���  L� ��� m   � ��� ���  M� ��� m   � ��� ���  N� ��� m   � ��� ���  O� ��� m   � ��� ���  P� ��� m   � ��� ���  Q� � � m   � � �  R   m   � � �  S  m   � �		 �

  T  m   � � �  U  m   � � �  V  m   � � �  W  m   � � �  X  m   � � �  Y   m   � �!! �""  Z  #$# m   � �%% �&&  1$ '(' m   � �)) �**  2( +,+ m   � �-- �..  3, /0/ m   � �11 �22  40 343 m   � �55 �66  54 787 m   � �99 �::  68 ;<; m   � �== �>>  7< ?@? m   � �AA �BB  8@ CDC m   � �EE �FF  9D GHG m   � II �JJ  0H KLK m   MM �NN  �L OPO m  QQ �RR  �P STS m  	UU �VV  �T WXW m  	YY �ZZ  �X [\[ m  ]] �^^  �\ _`_ m  aa �bb  �` cdc m  ee �ff  �d ghg m  ii �jj  �h klk m  mm �nn  �l opo m  qq �rr  �p sts m  !uu �vv  �t wxw m  !$yy �zz  �x {|{ m  $'}} �~~  �| � m  '*�� ���  �� ��� m  *-�� ���  �� ��� m  -0�� ���  �� ��� m  03�� ���  �� ��� m  36�� ���  �� ��� m  69�� ���  �� ��� m  9<�� ���  �� ��� m  <?�� ���  �� ��� m  ?B�� ���  �� ��� m  BE�� ���  �� ��� m  EH�� ���  �� ��� m  HK�� ���  �� ��� m  KN�� ���  �� ��� m  NQ�� ���  �� ��� m  QT�� ���  �� ��� m  TW�� ���  %� ��� m  WZ�� ���  _� ��e� m  Z]�� ���   �e  Q o      �d�d "0 legalcharacters legalCharactersO ��� t  d���� l h����� k  h��� ��� X  h���c�� k  |��� ��� r  |���� c  |��� o  |}�b�b 0 thischaracter thisCharacter� m  }~�a
�a 
ctxt� o      �`�` 0 thischaracter thisCharacter� ��_� Z  �����^�]� E ����� o  ���\�\ "0 legalcharacters legalCharacters� o  ���[�[ 0 thischaracter thisCharacter� k  ���� ��� r  ����� o  ���Z�Z 0 thischaracter thisCharacter� l     ��Y�X� n      ���  ;  ��� o  ���W�W 0 	legalname 	legalName�Y  �X  � ��V� Z  �����U�T� ? ����� n  ����� 1  ���S
�S 
leng� o  ���R�R 0 	legalname 	legalName� m  ���Q�Q  � L  ���� c  ����� o  ���P�P 0 	legalname 	legalName� m  ���O
�O 
ctxt�U  �T  �V  �^  �]  �_  �c 0 thischaracter thisCharacter� l kp��N�M� n  kp��� 2 lp�L
�L 
cha � o  kl�K�K 0 potentialname potentialName�N  �M  � ��� l ���J���J  � 	 ---   � ���  - - -� ��� r  ����� c  ����� o  ���I�I 0 	legalname 	legalName� m  ���H
�H 
ctxt� o      �G�G 0 	legalname 	legalName� ��� r  ��   n  �� 4  ���F
�F 
cha  m  ���E�E  o  ���D�D 0 	legalname 	legalName o      �C�C 
0 _char1  �  Z  ���B�A = ��	
	 o  ���@�@ 
0 _char1  
 m  �� �  _ r  �� c  �� l ���?�> n  �� 7���=
�= 
cha  m  ���<�<  m  ���;�;�� o  ���:�: 0 	legalname 	legalName�?  �>   m  ���9
�9 
ctxt o      �8�8 0 	legalname 	legalName�B  �A    l ���7�7   	 ---    �  - - -  r  �� J  ��  !  m  ��"" �##  1! $%$ m  ��&& �''  2% ()( m  ��** �++  3) ,-, m  ��.. �//  4- 010 m  ��22 �33  51 454 m  ��66 �77  65 898 m  ��:: �;;  79 <=< m  ��>> �??  8= @A@ m  ��BB �CC  9A D�6D m  ��EE �FF  0�6   o      �5�5 0 _illegalchar1 _illegalChar1 GHG r  �IJI c  �KLK n  �MNM 4  ��4O
�4 
cha O m  �3�3 N o  ���2�2 0 	legalname 	legalNameL m  �1
�1 
ctxtJ o      �0�0 
0 _char1  H P�/P Z  �QR�.�-Q E STS o  	�,�, 0 _illegalchar1 _illegalChar1T o  	
�+�+ 
0 _char1  R k  �UU VWV r  XYX c  Z[Z l \�*�)\ n  ]^] 7�(_`
�( 
cha _ m  �'�' ` m  �&�&��^ o  �%�% 0 	legalname 	legalName�*  �)  [ m  �$
�$ 
ctxtY o      �#�# 0 _restofstring _restOfStringW aba r   %cdc m   #ee �ff  d o      �"�" 0 	_thischar 	_thisCharb ghg Y  &Qi�!jk� i k  4Lll mnm r  4:opo n  48qrq 4  58�s
� 
cobjs o  67�� 0 _i  r o  45�� 0 _illegalchar1 _illegalChar1p o      �� 	0 _this  n t�t Z  ;Luv��u = ;>wxw o  ;<�� 	0 _this  x o  <=�� 
0 _char1  v k  AHyy z{z r  AF|}| c  AD~~ o  AB�� 	0 _this   m  BC�
� 
ctxt} o      �� 0 	_thischar 	_thisChar{ ���  S  GH�  �  �  �  �! 0 _i  j m  )*�� k I */���
� .corecnte****       ****� o  *+�� 0 _illegalchar1 _illegalChar1�  �   h ��� l RR����  � 	 ---   � ���  - - -� ��� r  RY��� c  RW��� o  RS�� 0 	_thischar 	_thisChar� m  SV�
� 
long� o      �� 0 _number  � ��� O Zp��� r  go��� I  gm�
��	�
  0 numberwithint_ numberWithInt_� ��� o  hi�� 0 _number  �  �	  � o      �� 0 	_nsnumber 	_NSNumber� n Zd��� 4  ]d��
� 
pcls� m  `c�� ���  N S N u m b e r� m  Z]�
� misccura� ��� O q���� r  {���� I  {����� P0 &localizedstringfromnumber_numberstyle_ &localizedStringFromNumber_numberStyle_� ��� o  |}�� 0 	_nsnumber 	_NSNumber� �� � n }���� o  ������ @0 nsnumberformatterspelloutstyle NSNumberFormatterSpellOutStyle� m  }���
�� misccura�   �  � o      ���� 0 _numberword _numberWord� n qx��� o  tx���� &0 nsnumberformatter NSNumberFormatter� m  qt��
�� misccura� ��� r  ����� l �������� c  ����� o  ������ 0 _numberword _numberWord� m  ����
�� 
TEXT��  ��  � o      ���� 
0 _part1  � ���� r  ����� c  ����� l �������� b  ����� l �������� c  ����� o  ������ 
0 _part1  � m  ����
�� 
ctxt��  ��  � l �������� o  ������ 0 _restofstring _restOfString��  ��  ��  ��  � m  ����
�� 
ctxt� o      ���� 0 	legalname 	legalName��  �.  �-  �/  �  86400 seconds = 24 hours   � ��� 0 8 6 4 0 0   s e c o n d s   =   2 4   h o u r s� m  dg����  Q�� ���� r  ����� l �������� c  ����� o  ������ 0 	legalname 	legalName� m  ����
�� 
ctxt��  ��  � n      ���  ;  ��� o  ������ 0 _output  ��  �� 0 kmvar_string   o    ���� 0 _listofstring _listOfString��  ��   ��� l �������� Z  ��������� = ����� o  ������ 0 
_inputtype 
_inputType� m  ���� ���  s t r i n g� r  ����� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 _output  � o      ���� 0 _output  ��  ��  ��  ��  � ���� l �������� L  ���� o  ������ 0 _output  ��  ��  ��  � ���� I    %�����
�� .aevtoappnull  �   � ****� o     !���� 0 sanitize SANITIZE��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � o i---------------------------------------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� i    ��� I      �������  0 process_tokens PROCESS_TOKENS� ���� o      ���� 
0 _input  ��  ��  � k     F�� ��� l     ������  � $  input:  		[ list  |  scalar ]   � ��� <   i n p u t :     	 	 [   l i s t     |     s c a l a r   ]� ��� l     ������  � 8 2 form: 		PROCESS_TOKENS( string | list of string )   � ��� d   f o r m :   	 	 P R O C E S S _ T O K E N S (   s t r i n g   |   l i s t   o f   s t r i n g   )� ��� l     ������  �   eg:			   � ���    e g : 	 	 	� ��� l      ������  �}w
					-- eg A
					set _textA to "Today's date is %LongDate%"
					set _textB to "%CurrentClipboard%"
					set _input to {_textA, _textB}
					set _result to my PROCESS_TOKENS(_input)
					
					-- eg B
					set _result to my PROCESS_TOKENS({"Today's date is %LongDate%", "%CurrentClipboard%"})
					
					-- eg C
					set _result to my PROCESS_TOKENS("%CurrentClipboard%")
	   � ���� 
 	 	 	 	 	 - -   e g   A 
 	 	 	 	 	 s e t   _ t e x t A   t o   " T o d a y ' s   d a t e   i s   % L o n g D a t e % " 
 	 	 	 	 	 s e t   _ t e x t B   t o   " % C u r r e n t C l i p b o a r d % " 
 	 	 	 	 	 s e t   _ i n p u t   t o   { _ t e x t A ,   _ t e x t B } 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   P R O C E S S _ T O K E N S ( _ i n p u t ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   B 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   P R O C E S S _ T O K E N S ( { " T o d a y ' s   d a t e   i s   % L o n g D a t e % " ,   " % C u r r e n t C l i p b o a r d % " } ) 
 	 	 	 	 	 
 	 	 	 	 	 - -   e g   C 
 	 	 	 	 	 s e t   _ r e s u l t   t o   m y   P R O C E S S _ T O K E N S ( " % C u r r e n t C l i p b o a r d % " ) 
 	� ��� l     ��������  ��  ��  � � � l     ��������  ��  ��     O     C O    B Z    A��	 =   

 n     m   	 ��
�� 
pcls o    	���� 
0 _input   m    ��
�� 
list k    5  r     J    ����   o      ���� 0 _result   �� X    5�� r   % 0 I  % ,����
�� .MKKMKMPtnull���     ctxt l  % (���� c   % ( o   % &���� 0 _i   m   & '��
�� 
ctxt��  ��  ��   n       o   - /���� 0 _end   o   , -���� 0 _result  �� 0 _i   o    ���� 
0 _input  ��  ��  	 r   8 A I  8 ?�� ��
�� .MKKMKMPtnull���     ctxt  l  8 ;!����! c   8 ;"#" o   8 9���� 
0 _input  # m   9 :��
�� 
ctxt��  ��  ��   o      ���� 0 _result   m    $$L                                                                                  KM*E  alis    �  Macintosh HD               ЉG�H+  'Keyboard Maestro Engine.app                                    '�Ұ��        ����  	                	Resources     Љ�J      Ұ�O    '''��  aMacintosh HD:Applications: Keyboard Maestro.app: Contents: Resources: Keyboard Maestro Engine.app   8  K e y b o a r d   M a e s t r o   E n g i n e . a p p    M a c i n t o s h   H D  PApplications/Keyboard Maestro.app/Contents/Resources/Keyboard Maestro Engine.app  / ��   m     %%�                                                                                  sevs  alis    �  Macintosh HD               ЉG�H+  ���System Events.app                                              ��-����        ����  	                CoreServices    Љ�J      ����    ���������  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   &��& L   D F'' o   D E���� 0 _result  ��  � (��( l     ��������  ��  ��  ��       ��) *+,-.��  ) �������������� 0 _myname _myName�� 0 
get_kmvars 
GET_KMVARS�� 0 
set_kmvars 
SET_KMVARS�� 00 write_record_to_kmvars WRITE_RECORD_TO_KMVARS�� ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMES��  0 process_tokens PROCESS_TOKENS* �� `����/0���� 0 
get_kmvars 
GET_KMVARS�� ��1�� 1  ���� 0 	_varnames 	_varNames��  / ������������ 0 	_varnames 	_varNames�� 0 _result  �� 0 _v  �� 0 _varname _varName�� 0 	_varvalue 	_varValue0  �������������������� ��~�}�|�{ �
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
TEXT
�� 
MKvr
�� 
MKvl��  �  
�~ 
prdt
�} 
pnam�| 
�{ .corecrel****      � null�� �� ���,�  MjvE�O B�[��l kh ��&E�O *�/�,E�W X 	 
�E�O������l O��6F[OY��Y 1��&E�O *�/�,E�W X 	 
a E�O������l O�E�UO�+ �z ��y�x23�w�z 0 
set_kmvars 
SET_KMVARS�y �v4�v 4  �u�u 
0 _input  �x  2 
�t�s�r�q�p�o�n�m�l�k�t 
0 _input  �s 
0 _names  �r 0 _values  �q 	0 _mode  �p 
0 _error  �o 0 _i  �n 	0 _name  �m 
0 _value  �l 0 _delims_old  �k 0 _delims_new  3 "��j�i�h�g�f�e�d�cq�b�������a�`�_�^�]�\%�[J�Z�Y�X�W�V��
�j 
pcls
�i 
reco�h 00 write_record_to_kmvars WRITE_RECORD_TO_KMVARS
�g .corecnte****       ****
�f 
cobj�e ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMES
�d 
list
�c 
bool
�b 
TEXT
�a 
MKvr
�` 
prdt
�_ 
pnam
�^ 
MKvl�] 
�\ .corecrel****      � null
�[ 
kocl
�Z 
ascr
�Y 
txdl
�X 
ret 
�W 
citm
�V 
ctxt�wX�Q��,�  )�k+ Y hO�j l hY hO��k/E�O)�k+ E�O��l/E�O��,� 	 	��,� �& �E�Y f��,� 	 	��,� �& �E�Y N��,� 	 	��,� �& �E�Y 6��,� 	 	��,� �& �E�Y ��k/�&E�O��l/�&E�O��lvE�O�E�O��  `�j �j  a E�O�Y hOa  9 6k�j kh ��/E�O��/E�Oa a a �a �a l [OY��UOPY4�a   ?a  3�E�O ,�[a �l kh a a a �a �a l [OY��UOPY �a   Za  N�E�O_ a ,E�O_ kvE�O�_ a ,FO�a -a &E�O�_ a ,FOa a a �a �a l UOPY ��a    ,a   �E�O�E�Oa a a �a �a l UOPY ]�j �j  a !E�O�Y hOa  9 6k�j kh ��/E�O��/E�Oa a a �a �a l [OY��UOPUO�, �U	�T�S56�R�U 00 write_record_to_kmvars WRITE_RECORD_TO_KMVARS�T �Q7�Q 7  �P�P 0 _inputrecord _inputRecord�S  5 �O�N�O 0 _inputrecord _inputRecord�N 0 
set_kmvars 
SET_KMVARS6 �M(8�L�M 0 
set_kmvars 
SET_KMVARS8 �K9�J�I:;�H
�K .ascrinit****      � ****9 k     << 1== ;>> ?�G? i    @A@ I      �F�E�D
�F .aevtoappnull  �   � ****�E  �D  A k     gBB ECC NDD WEE eFF ��C�C  �G  �J  �I  : �B�A�@
�B 
pimr�A 0 _record  
�@ .aevtoappnull  �   � ****; �?�>�=G
�? 
cobj
�> 
osax�= 0 _record  G �<A�;�:HI�9
�< .aevtoappnull  �   � ****�;  �:  H �8�7�6�5�4�3�8 0 _recordkeys _recordKeys�7 0 _recordkeyes _recordKeyes�6 0 _recordvalues _recordValues�5 0 _i  �4 0 _k  �3 0 _v  I �2�1�0�/��.�-�,�+�*�)
�2 .ScTlrcGnTEXT  @     reco�1 ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMES
�0 
cobj
�/ .corecnte****       ****
�. 
MKvr
�- 
prdt
�, 
pnam
�+ 
MKvl�* 
�) .corecrel****      � null�9 hb  j  E�O)�k+ E�Ob  �-E�O�j �j  hY 4 1k�j kh ��/E�O��/E�O� �����l 
U[OY��O��H �*�-lkv�b   �OL 
�L .aevtoappnull  �   � ****�R ��K S�O�j - �(��'�&JK�%�( ,0 sanitize_kmvar_names SANITIZE_KMVAR_NAMES�' �$L�$ L  �#�# 
0 _input  �&  J �"�!� �" 
0 _input  �! 0 
_inputtype 
_inputType�  0 sanitize SANITIZEK ������M�
� 
pcls
� 
list� 0 sanitize SANITIZEM �N��OP�
� .ascrinit****      � ****N k     QQ �RR �SS T�T i    UVU I      ���
� .aevtoappnull  �   � ****�  �  V k    �WW �XX YY �ZZ ���  �  �  �  O ���
� 
pimr� 0 _listofstring _listOfString
� .aevtoappnull  �   � ****P ����[
� 
cobj
� 
frmk� 0 _listofstring _listOfString[ �V��
\]�	
� .aevtoappnull  �   � ****�  �
  \ ��������� ������������������� 0 _output  � 0 kmvar_string  � 0 potentialname potentialName� 0 _delims_old  � 0 _delims_new  � 0 	legalname 	legalName� "0 legalcharacters legalCharacters� 0 thischaracter thisCharacter�  
0 _char1  �� 0 _illegalchar1 _illegalChar1�� 0 _restofstring _restOfString�� 0 	_thischar 	_thisChar�� 0 _i  �� 	0 _this  �� 0 _number  �� 0 	_nsnumber 	_NSNumber�� 0 _numberword _numberWord�� 
0 _part1  ] �������������,��UY]aeimquy}��������������������������������	!%)-159=AEIMQUY]aeimquy}����������������������������"&*.26:>BE��e������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ascr
�� 
txdl
�� 
citm
�� 
ctxt�� ]��  Q�
�� 
cha 
�� 
leng��  �� 

�� 
long
�� misccura
�� 
pcls��  0 numberwithint_ numberWithInt_�� &0 nsnumberformatter NSNumberFormatter�� @0 nsnumberformatterspelloutstyle NSNumberFormatterSpellOutStyle�� P0 &localizedstringfromnumber_numberstyle_ &localizedStringFromNumber_numberStyle_
�� 
TEXT�	�jvE�O�b  [��l kh �E�O��,E�O�kvE�O���,FO��-E�O���,FO��-�&E�O���,FO��&E�OjvE�O�������a a a a a a a a a a a a a a a a a  a !a "a #a $a %a &a 'a (a )a *a +a ,a -a .a /a 0a 1a 2a 3a 4a 5a 6a 7a 8a 9a :a ;a <a =a >a ?a @a Aa Ba Ca Da Ea Fa Ga Ha Ia Ja Ka La Ma Na Oa Pa Qa Ra Sa Ta Ua Va Wa Xa Ya Za [a \a ]a ^a _a `a aa ba ca da ea fvE�Oa gn A�a h-[��l kh ��&E�O�� ��6FO�a i,a j 	��&Y hY h[OY��O��&E�O�a hk/E�O�a k  �[a h\[Zl\Zi2�&E�Y hOa la ma na oa pa qa ra sa ta ua vvE�O�a hk/�&E�O�� ��[a h\[Zl\Zi2�&E�Oa wE�O *k�j kh ��/E�O��  ��&E�OY h[OY��O�a x&E�Oa ya za {/ 
*�k+ |E�UOa ya }, *�a ya ~,l+ E^ UO] a �&E^ O] �&�%�&E�Y hoO��&�6F[OY�bOb  a �  ��k/E�Y hO�� �*��/lkv�b   �OL 
� .aevtoappnull  �   � ****�% &��,� �E�O��&E�Y �E�O��K S�O�j . �������^_����  0 process_tokens PROCESS_TOKENS�� ��`�� `  ���� 
0 _input  ��  ^ �������� 
0 _input  �� 0 _result  �� 0 _i  _ 
%$����������������
�� 
pcls
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
ctxt
�� .MKKMKMPtnull���     ctxt�� 0 _end  �� G� @� ;��,�  *jvE�O �[��l kh ��&j ��,F[OY��Y ��&j E�UUO� ascr  ��ޭ