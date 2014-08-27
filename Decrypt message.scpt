FasdUAS 1.101.10   ��   ��    k             l      ��  ��   nh
	Script that handles decrypting messages found inside dropbox.
	
	Requires
	- Keybase command line tools installed
	
	Install Instructions
	- Update passphrase to your passphrase
	- Update pathToDecryptedMessages to whereever you want to put decrypted messages
	- Put this file in /Library/Scripts/Folder Action Scripts/ (I created a soft link so that I could easily modify the file if need be)
	- Go to Dropbox -> Keybase -> Right click the folder with your keybase ID -> Services -> Folder Actions Setup
	- If you put the file in the right place you should see the Decrypt message script.	
	- Share that folder with your friends. Then when they drop messages into that folder this script will decrypt the messages for you.
	
	To easily send messages to your friends checkout spychat.py. That script will drop encryted messages into Dropbox for your friends to consume.
     � 	 	� 
 	 S c r i p t   t h a t   h a n d l e s   d e c r y p t i n g   m e s s a g e s   f o u n d   i n s i d e   d r o p b o x . 
 	 
 	 R e q u i r e s 
 	 -   K e y b a s e   c o m m a n d   l i n e   t o o l s   i n s t a l l e d 
 	 
 	 I n s t a l l   I n s t r u c t i o n s 
 	 -   U p d a t e   p a s s p h r a s e   t o   y o u r   p a s s p h r a s e 
 	 -   U p d a t e   p a t h T o D e c r y p t e d M e s s a g e s   t o   w h e r e e v e r   y o u   w a n t   t o   p u t   d e c r y p t e d   m e s s a g e s 
 	 -   P u t   t h i s   f i l e   i n   / L i b r a r y / S c r i p t s / F o l d e r   A c t i o n   S c r i p t s /   ( I   c r e a t e d   a   s o f t   l i n k   s o   t h a t   I   c o u l d   e a s i l y   m o d i f y   t h e   f i l e   i f   n e e d   b e ) 
 	 -   G o   t o   D r o p b o x   - >   K e y b a s e   - >   R i g h t   c l i c k   t h e   f o l d e r   w i t h   y o u r   k e y b a s e   I D   - >   S e r v i c e s   - >   F o l d e r   A c t i o n s   S e t u p 
 	 -   I f   y o u   p u t   t h e   f i l e   i n   t h e   r i g h t   p l a c e   y o u   s h o u l d   s e e   t h e   D e c r y p t   m e s s a g e   s c r i p t . 	 
 	 -   S h a r e   t h a t   f o l d e r   w i t h   y o u r   f r i e n d s .   T h e n   w h e n   t h e y   d r o p   m e s s a g e s   i n t o   t h a t   f o l d e r   t h i s   s c r i p t   w i l l   d e c r y p t   t h e   m e s s a g e s   f o r   y o u . 
 	 
 	 T o   e a s i l y   s e n d   m e s s a g e s   t o   y o u r   f r i e n d s   c h e c k o u t   s p y c h a t . p y .   T h a t   s c r i p t   w i l l   d r o p   e n c r y t e d   m e s s a g e s   i n t o   D r o p b o x   f o r   y o u r   f r i e n d s   t o   c o n s u m e . 
   
  
 i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     �       r         l     ����  m        �   N ~ / S i t e s / K e y b a s e S c r i p t s / p r o p e r t i e s . p l i s t��  ��    o      ���� 0 theplistpath thePListPath      r        I    �� ���� 0 readkey readKey      o    ���� 0 theplistpath thePListPath    ��   m     ! ! � " " . p a t h T o D e c r y p t e d M e s s a g e s��  ��    o      ���� 20 pathtodecryptedmessages pathToDecryptedMessages   # $ # r     % & % I    �� '���� 0 readkey readKey '  ( ) ( o    ���� 0 theplistpath thePListPath )  *�� * m     + + � , ,  p a s s p h r a s e��  ��   & o      ���� 0 
passphrase   $  - . - r     / 0 / n     1 2 1 1    ��
�� 
psxp 2 o    ���� 0 this_folder   0 o      ���� 0 pathtomessage pathToMessage .  3 4 3 r    ' 5 6 5 b    % 7 8 7 b    # 9 : 9 b    ! ; < ; m     = = � > > ` e v a l   $ ( / u s r / l i b e x e c / p a t h _ h e l p e r   - s ) ;   k e y b a s e   - p   < o     ���� 0 
passphrase   : m   ! " ? ? � @ @ $   d e c r y p t   - - o u t p u t   8 o   # $���� 20 pathtodecryptedmessages pathToDecryptedMessages 6 o      ���� 20 commandtodecryptmessage commandToDecryptMessage 4  A B A l  ( (��������  ��  ��   B  C D C l  ( (�� E F��   E   Get items in folder    F � G G (   G e t   i t e m s   i n   f o l d e r D  H I H r   ( 1 J K J l  ( / L���� L I  ( /�� M��
�� .sysoexecTEXT���     TEXT M b   ( + N O N m   ( ) P P � Q Q  l s   O o   ) *���� 0 pathtomessage pathToMessage��  ��  ��   K o      ���� 0 
listoutput 
listOutput I  R S R l  2 2��������  ��  ��   S  T U T l  2 2�� V W��   V j d  save the current TID in oldtid and set the TID to return (the char we want to break the string at)    W � X X �     s a v e   t h e   c u r r e n t   T I D   i n   o l d t i d   a n d   s e t   t h e   T I D   t o   r e t u r n   ( t h e   c h a r   w e   w a n t   t o   b r e a k   t h e   s t r i n g   a t ) U  Y Z Y r   2 I [ \ [ J   2 8 ] ]  ^ _ ^ n  2 5 ` a ` 1   3 5��
�� 
txdl a 1   2 3��
�� 
ascr _  b�� b o   5 6��
�� 
ret ��   \ J       c c  d e d o      ���� 
0 oldtid   e  f�� f n      g h g 1   E G��
�� 
txdl h 1   D E��
�� 
ascr��   Z  i j i l  J J��������  ��  ��   j  k l k r   J O m n m n   J M o p o 2   K M��
�� 
citm p o   J K���� 0 
listoutput 
listOutput n o      ���� "0 listoffilenames listOfFilenames l  q r q l  P P��������  ��  ��   r  s t s l  P P�� u v��   u s m Now set the TID back to want it was. Just a good pratice to get into so you don;t mess yourself up later on.    v � w w �   N o w   s e t   t h e   T I D   b a c k   t o   w a n t   i t   w a s .   J u s t   a   g o o d   p r a t i c e   t o   g e t   i n t o   s o   y o u   d o n ; t   m e s s   y o u r s e l f   u p   l a t e r   o n . t  x y x r   P U z { z o   P Q���� 
0 oldtid   { n      | } | 1   R T��
�� 
txdl } 1   Q R��
�� 
ascr y  ~  ~ l  V V��������  ��  ��     � � � X   V � ��� � � k   f � � �  � � � r   f s � � � b   f q � � � b   f o � � � b   f m � � � b   f i � � � o   f g���� 20 commandtodecryptmessage commandToDecryptMessage � o   g h���� 0 filename   � m   i l � � � � �    � o   m n���� 0 pathtomessage pathToMessage � o   o p���� 0 filename   � o      ����  0 decryptcommand decryptCommand �  � � � r   t } � � � b   t { � � � b   t y � � � m   t w � � � � �  r m   � o   w x���� 0 pathtomessage pathToMessage � o   y z���� 0 filename   � o      ���� 0 
removefile 
removeFile �  ��� � Q   ~ � � � � � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � �����  0 decryptcommand decryptCommand��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 
removefile 
removeFile��  ��   � R      ������
�� .ascrerr ****      � ****��  ��   � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � �  C a n ' t   d e c r y p t   � o   � ����� 0 filename  ��  ��  �� 0 filename   � o   Y Z���� "0 listoffilenames listOfFilenames �  � � � l  � ���������  ��  ��   �  � � � O   � � � � � k   � � � �  � � � l  � ��� � ���   �   get the name of the folder    � � � � 4 g e t   t h e   n a m e   o f   t h e   f o l d e r �  ��� � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 this_folder  ��  ��   � l      ����� � o      ���� 0 folder_name  ��  ��  ��   � m   � � � ��                                                                                  MACS  alis    t  Macintosh HD               �>��H+     '
Finder.app                                                      &����        ����  	                CoreServices    �?eX      ��\       '   $   #  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � r   � � � � � b   � � � � � m   � � � � � � � " N e w   m e s s a g e   f r o m   � o   � ����� 0 folder_name   � o      ���� "0 notificaitonmsg notificaitonMsg �  � � � I  � ��� � �
�� .sysonotfnull��� ��� TEXT � o   � ����� "0 notificaitonmsg notificaitonMsg � �� ���
�� 
appr � m   � � � � � � �  S e c r e t   M e s s a g e��   �  ��� � I  � ��� ���
�� .sysodelanull��� ��� nmbr � m   � ����� 
��  ��     � � � l     ��������  ��  ��   �  ��� � i     � � � I      �� ����� 0 readkey readKey �  � � � o      ���� 0 	posixpath 	posixPath �  ��� � o      ���� 0 keyname  ��  ��   � k     2 � �  � � � q       � � �� ��� 0 	posixpath 	posixPath � �� ��� 0 keyname   � ������ 0 val  ��   �  ��� � Q     2 � � � � k    " � �  � � � O     � � � O     � � � O     � � � r     � � � n     � � � 1    ��
�� 
valL � 4    �� �
�� 
plii � o    ���� 0 keyname   � o      ���� 0 val   � 1    �
� 
pcnt � 4    �~ �
�~ 
plif � o   	 
�}�} 0 	posixpath 	posixPath � m     � ��                                                                                  sevs  alis    �  Macintosh HD               �>��H+     'System Events.app                                               �|�ʛf        ����  	                CoreServices    �?eX      ���       '   $   #  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �  ��| � L     " � � o     !�{�{ 0 val  �|   � R      �z � �
�z .ascrerr ****      � **** � o      �y�y 0 emsg eMsg � �x ��w
�x 
errn � o      �v�v 0 enum eNum�w   � R   * 2�u � �
�u .ascrerr ****      � **** � b   . 1 � � � m   . / � � � � �  C a n ' t   r e a d K e y :   � o   / 0�t�t 0 emsg eMsg � �s ��r
�s 
errn � o   , -�q�q 0 enum eNum�r  ��  ��       �p �p    �o�n
�o .facofgetnull���     alis�n 0 readkey readKey �m �l�k�j
�m .facofgetnull���     alis�l 0 this_folder  �k �i�h�g
�i 
flst�h 0 added_items  �g   �f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�f 0 this_folder  �e 0 added_items  �d 0 theplistpath thePListPath�c 20 pathtodecryptedmessages pathToDecryptedMessages�b 0 
passphrase  �a 0 pathtomessage pathToMessage�` 20 commandtodecryptmessage commandToDecryptMessage�_ 0 
listoutput 
listOutput�^ 
0 oldtid  �] "0 listoffilenames listOfFilenames�\ 0 filename  �[  0 decryptcommand decryptCommand�Z 0 
removefile 
removeFile�Y 0 folder_name  �X "0 notificaitonmsg notificaitonMsg   !�W +�V = ? P�U�T�S�R�Q�P�O�N � ��M�L ��K ��J ��I ��H�G�F�W 0 readkey readKey
�V 
psxp
�U .sysoexecTEXT���     TEXT
�T 
ascr
�S 
txdl
�R 
ret 
�Q 
cobj
�P 
citm
�O 
kocl
�N .corecnte****       ****�M  �L  
�K .ascrcmnt****      � ****
�J 
pnam
�I 
appr
�H .sysonotfnull��� ��� TEXT�G 

�F .sysodelanull��� ��� nmbr�j ��E�O*��l+ E�O*��l+ E�O��,E�O�%�%�%E�O�%j E�O��,�lvE[�k/E�Z[�l/��,FZO��-E�O���,FO K�[��l kh 
��%a %�%�%E�Oa �%�%E�O �j O�j W X  a �%j [OY��Oa  	�a ,E�UOa �%E�O�a a l Oa j  �E ��D�C�B�E 0 readkey readKey�D �A�A   �@�?�@ 0 	posixpath 	posixPath�? 0 keyname  �C   �>�=�<�;�:�> 0 	posixpath 	posixPath�= 0 keyname  �< 0 val  �; 0 emsg eMsg�: 0 enum eNum 	 ��9�8�7�6�5�4 �
�9 
plif
�8 
pcnt
�7 
plii
�6 
valL�5 0 emsg eMsg �3�2�1
�3 
errn�2 0 enum eNum�1  
�4 
errn�B 3 $� *�/ *�, 
*�/�,E�UUUO�W X  )�l�%ascr  ��ޭ