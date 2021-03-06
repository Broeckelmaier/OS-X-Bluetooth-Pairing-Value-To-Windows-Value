FasdUAS 1.101.10   ��   ��    k             l     ��  ��    B < ===========================================================     � 	 	 x   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    4 . OS X Bluetooth Pairing Value To Windows Value     �   \   O S   X   B l u e t o o t h   P a i r i n g   V a l u e   T o   W i n d o w s   V a l u e      l     ��  ��    _ Y A script to get the Windows equivalent bluetooth pairing key/value pair (little endian?)     �   �   A   s c r i p t   t o   g e t   t h e   W i n d o w s   e q u i v a l e n t   b l u e t o o t h   p a i r i n g   k e y / v a l u e   p a i r   ( l i t t l e   e n d i a n ? )      l     ��  ��    j d This is useful if you would like to pair a bluetooth device to both OS X and Windows (in BootCamp).     �   �   T h i s   i s   u s e f u l   i f   y o u   w o u l d   l i k e   t o   p a i r   a   b l u e t o o t h   d e v i c e   t o   b o t h   O S   X   a n d   W i n d o w s   ( i n   B o o t C a m p ) .      l     ��������  ��  ��        l     ��  ��      How it works:     �      H o w   i t   w o r k s :     !   l     �� " #��   " P J The AppleScript parses the paired bluetooth devices' link key/value pairs    # � $ $ �   T h e   A p p l e S c r i p t   p a r s e s   t h e   p a i r e d   b l u e t o o t h   d e v i c e s '   l i n k   k e y / v a l u e   p a i r s !  % & % l     �� ' (��   ' D > and prints out the Windows equivalent value (little endian?).    ( � ) ) |   a n d   p r i n t s   o u t   t h e   W i n d o w s   e q u i v a l e n t   v a l u e   ( l i t t l e   e n d i a n ? ) . &  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . h b Thanks to user pacnow (Camoguy) at https://discussions.apple.com/thread/3113227?start=0&tstart=0     / � 0 0 �   T h a n k s   t o   u s e r   p a c n o w   ( C a m o g u y )   a t   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 3 1 1 3 2 2 7 ? s t a r t = 0 & t s t a r t = 0   -  1 2 1 l     �� 3 4��   3 < 6 for doing the leg work and figuring out the algorithm    4 � 5 5 l   f o r   d o i n g   t h e   l e g   w o r k   a n d   f i g u r i n g   o u t   t h e   a l g o r i t h m 2  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   : C = You must follow pacnow's steps to edit the value in Windows.    ; � < < z   Y o u   m u s t   f o l l o w   p a c n o w ' s   s t e p s   t o   e d i t   t h e   v a l u e   i n   W i n d o w s . 9  = > = l     �� ? @��   ? B < I have copied and slightly modified his steps here for you.    @ � A A x   I   h a v e   c o p i e d   a n d   s l i g h t l y   m o d i f i e d   h i s   s t e p s   h e r e   f o r   y o u . >  B C B l     ��������  ��  ��   C  D E D l     �� F G��   F E ? 1. Pair device with Windows, then go back in and pair in OS X.    G � H H ~   1 .   P a i r   d e v i c e   w i t h   W i n d o w s ,   t h e n   g o   b a c k   i n   a n d   p a i r   i n   O S   X . E  I J I l     �� K L��   K n h 2. a. After you have completed both pairings in step 1, then execute this script or run the application    L � M M �   2 .   a .   A f t e r   y o u   h a v e   c o m p l e t e d   b o t h   p a i r i n g s   i n   s t e p   1 ,   t h e n   e x e c u t e   t h i s   s c r i p t   o r   r u n   t h e   a p p l i c a t i o n J  N O N l     �� P Q��   P p j 2. b. Get the link key from OS X and email it to yourself or put it somewhere you can reach from Windows.    Q � R R �   2 .   b .   G e t   t h e   l i n k   k e y   f r o m   O S   X   a n d   e m a i l   i t   t o   y o u r s e l f   o r   p u t   i t   s o m e w h e r e   y o u   c a n   r e a c h   f r o m   W i n d o w s . O  S T S l     �� U V��   U X R [code]sudo defaults read /private/var/root/Library/Preferences/blued.plist[/code]    V � W W �   [ c o d e ] s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / b l u e d . p l i s t [ / c o d e ] T  X Y X l     �� Z [��   Z g a [code]sudo defaults read /private/var/root/Library/Preferences/com.apple.Bluetoothd.plist[/code]    [ � \ \ �   [ c o d e ] s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . B l u e t o o t h d . p l i s t [ / c o d e ] Y  ] ^ ] l     �� _ `��   _ E ? 3. a. If you don't have psexec, Google for it and download it.    ` � a a ~   3 .   a .   I f   y o u   d o n ' t   h a v e   p s e x e c ,   G o o g l e   f o r   i t   a n d   d o w n l o a d   i t . ^  b c b l     �� d e��   d P J 3.  b. Boot Windows, open cmd as admin, [code]psexec -s -i regedit[/code]    e � f f �   3 .     b .   B o o t   W i n d o w s ,   o p e n   c m d   a s   a d m i n ,   [ c o d e ] p s e x e c   - s   - i   r e g e d i t [ / c o d e ] c  g h g l     �� i j��   i � � 4. Navigate to HKLM\System\CurrentControlSet\services\BTHPORT\Parameters\Keys\ (BT ID of Mouse/Keyboard) and begin modify binary data    j � k k   4 .   N a v i g a t e   t o   H K L M \ S y s t e m \ C u r r e n t C o n t r o l S e t \ s e r v i c e s \ B T H P O R T \ P a r a m e t e r s \ K e y s \   ( B T   I D   o f   M o u s e / K e y b o a r d )   a n d   b e g i n   m o d i f y   b i n a r y   d a t a h  l m l l     ��������  ��  ��   m  n o n l     �� p q��   p � � Here's an example link key, instead of just pluggin that in, what you want to do is break it apart starting from the right, working two digits at a time in pairs.    q � r rF   H e r e ' s   a n   e x a m p l e   l i n k   k e y ,   i n s t e a d   o f   j u s t   p l u g g i n   t h a t   i n ,   w h a t   y o u   w a n t   t o   d o   i s   b r e a k   i t   a p a r t   s t a r t i n g   f r o m   t h e   r i g h t ,   w o r k i n g   t w o   d i g i t s   a t   a   t i m e   i n   p a i r s . o  s t s l     ��������  ��  ��   t  u v u l     �� w x��   w C = 98542ff9 88e19449 475250e1 3943255b ( What is shown in OS X)    x � y y z   9 8 5 4 2 f f 9   8 8 e 1 9 4 4 9   4 7 5 2 5 0 e 1   3 9 4 3 2 5 5 b   (   W h a t   i s   s h o w n   i n   O S   X ) v  z { z l     �� | }��   | F @ 5B254339 E1505247 4994E188 F92F5498 (What you enter in Windows)    } � ~ ~ �   5 B 2 5 4 3 3 9   E 1 5 0 5 2 4 7   4 9 9 4 E 1 8 8   F 9 2 F 5 4 9 8   ( W h a t   y o u   e n t e r   i n   W i n d o w s ) {   �  l     ��������  ��  ��   �  � � � l     �� � ���   �  	 -Camoguy    � � � �    - C a m o g u y �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � n h Note, this script requires administrator privileges. I am strictly just using your password here within    � � � � �   N o t e ,   t h i s   s c r i p t   r e q u i r e s   a d m i n i s t r a t o r   p r i v i l e g e s .   I   a m   s t r i c t l y   j u s t   u s i n g   y o u r   p a s s w o r d   h e r e   w i t h i n �  � � � l     �� � ���   � ` Z the script to get the bluetooth pairing values. If you are still wary, and prefer not to     � � � � �   t h e   s c r i p t   t o   g e t   t h e   b l u e t o o t h   p a i r i n g   v a l u e s .   I f   y o u   a r e   s t i l l   w a r y ,   a n d   p r e f e r   n o t   t o   �  � � � l     �� � ���   � a [ enter your password into an unknown script, then comment out and edit the password related    � � � � �   e n t e r   y o u r   p a s s w o r d   i n t o   a n   u n k n o w n   s c r i p t ,   t h e n   c o m m e n t   o u t   a n d   e d i t   t h e   p a s s w o r d   r e l a t e d �  � � � l     �� � ���   � \ V lines below and just open a terminal window and perform a sudo command before running    � � � � �   l i n e s   b e l o w   a n d   j u s t   o p e n   a   t e r m i n a l   w i n d o w   a n d   p e r f o r m   a   s u d o   c o m m a n d   b e f o r e   r u n n i n g �  � � � l     �� � ���   �   this script.    � � � �    t h i s   s c r i p t . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Adnaan Soorma    � � � �    A d n a a n   S o o r m a �  � � � l     �� � ���   �   Twitter: @Soorma07    � � � � &   T w i t t e r :   @ S o o r m a 0 7 �  � � � l     �� � ���   � B < ===========================================================    � � � � x   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   #region Main    � � � �    # r e g i o n   M a i n �  � � � l     ��������  ��  ��   �  � � � l     ����� � r      � � � m      � � � � �x O S   X   B l u e t o o t h   P a i r i n g   V a l u e   T o   W i n d o w s   V a l u e 
 T h i s   i s   a   s c r i p t   t o   g e t   t h e   W i n d o w s   e q u i v a l e n t   b l u e t o o t h   p a i r i n g   k e y / v a l u e   p a i r 
 T h i s   i s   u s e f u l   i f   y o u   w o u l d   l i k e   t o   p a i r   a   b l u e t o o t h   d e v i c e   t o   y o u r   M a c   i n   b o t h   O S   X   a n d   W i n d o w s   ( i n   B o o t C a m p ) . 
 
 H o w   i t   w o r k s : 
 T h e   A p p l e S c r i p t   p a r s e s   t h e   p a i r e d   b l u e t o o t h   d e v i c e s   l i n k   k e y / v a l u e   p a i r s   a n d   p r i n t s   o u t   t h e   W i n d o w s   e q u i v a l e n t   v a l u e . 
 
 T h a n k s   t o   u s e r   p a c n o w   ( C a m o g u y )   a t   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 3 1 1 3 2 2 7 ? s t a r t = 0 & t s t a r t = 0   
 f o r   d o i n g   t h e   l e g   w o r k   a n d   f i g u r i n g   o u t   t h e   a l g o r i t h m 
 
 Y o u   m u s t   f o l l o w   p a c n o w s   s t e p s   t o   e d i t   t h e   v a l u e   i n   W i n d o w s . 
 I   h a v e   c o p i e d   a n d   s l i g h t l y   m o d i f i e d   h i s   s t e p s   h e r e   f o r   y o u . 
 
 1 .   P a i r   d e v i c e   w i t h   W i n d o w s ,   t h e n   g o   b a c k   a n d   p a i r   i n   O S   X . 
 2 .   a .   A f t e r   y o u   h a v e   c o m p l e t e d   b o t h   p a i r i n g s   i n   s t e p   1 ,   t h e n   e x e c u t e   t h i s   s c r i p t   o r   r u n   t h e   a p p l i c a t i o n 
 2 .   b .   G e t   t h e   l i n k   k e y s   a n d   v a l u e s   f r o m   e x e c u t i n g   t h i s   s c r i p t   a n d   e m a i l   i t   t o   y o u r s e l f   o r   p u t   i t   s o m e w h e r e   y o u   c a n   r e a c h   f r o m   W i n d o w s . 
 [ c o d e ] s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / b l u e d . p l i s t [ / c o d e ] 
 [ c o d e ] s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / c o m . a p p l e . B l u e t o o t h d . p l i s t [ / c o d e ] 
 3 .   a .   I f   y o u   d o n ' t   h a v e   p s e x e c ,   G o o g l e   f o r   i t   a n d   d o w n l o a d   i t . 
 3 .   b .   B o o t   W i n d o w s ,   o p e n   c m d   a s   a d m i n ,   [ c o d e ] p s e x e c   - s   - i   r e g e d i t [ / c o d e ] 
 4 .   N a v i g a t e   t o   H K L M \ S y s t e m \ C u r r e n t C o n t r o l S e t \ s e r v i c e s \ B T H P O R T \ P a r a m e t e r s \ K e y s \   ( B T   I D   o f   M o u s e / K e y b o a r d )   a n d   b e g i n   m o d i f y i n g   t h e   b i n a r y   d a t a   t o   t h e   W i n d o w s   p a i r i n g   v a l u e   a s   o u t p u t   b y   t h i s   s c r i p t . 
 N o t e ,   t h i s   s c r i p t   r e q u i r e s   a d m i n i s t r a t o r   p r i v i l e g e s   a n d   w i l l   p r o m p t   f o r   y o u r   O S   X   c u r r e n t   u s e r   p a s s w o r d . 
 
 - A d n a a n   S o o r m a 
 T w i t t e r :   @ S o o r m a 0 7 
 � o      ���� 0 helptext helpText��  ��   �  � � � l    ����� � I   �� ���
�� .sysodlogaskr        TEXT � n     � � � 1    ��
�� 
strq � o    ���� 0 helptext helpText��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � m     � � � � �  b l u e d . p l i s t � o      ���� :0 bluetoothlinkkeysplistvalue bluetoothLinkKeysPListValue��  ��   �  � � � l    ����� � r     � � � m     � � � � � 4 c o m . a p p l e . B l u e t o o t h d . p l i s t � o      ���� P0 &alternativebluetoothlinkkeysplistvlaue &alternativeBluetoothLinkKeysPListVlaue��  ��   �  � � � l    ����� � r     � � � m     � � � � � 2 c o m . a p p l e . B l u e t o o t h . p l i s t � o      ���� N0 %notworkingbluetoothlinkkeysplistvalue %notWorkingBluetoothLinkKeysPListValue��  ��   �  � � � l     ��������  ��  ��   �  � � � l    ����� � r     � � � b     � � � b     � � � m     � � � � � r s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / � o    ���� :0 bluetoothlinkkeysplistvalue bluetoothLinkKeysPListValue � m     � � � � � 0   |   a w k   ' / L i n k K e y s / , / } ; / ' � o      ���� 0 shellcommand shellCommand��  ��   �  � � � l     ��������  ��  ��   �  � � � l    Y ����� � Q     Y � � � � I   # *�� ����� 0 getlinkkeys getLinkKeys �  � � � o   $ %���� 0 shellcommand shellCommand �  ��� � o   % &���� 0 helptext helpText��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage��   � Q   2 Y � � � � k   5 H � �  �  � r   5 @ b   5 > b   5 : m   5 8 � r s u d o   d e f a u l t s   r e a d   / p r i v a t e / v a r / r o o t / L i b r a r y / P r e f e r e n c e s / o   8 9���� P0 &alternativebluetoothlinkkeysplistvlaue &alternativeBluetoothLinkKeysPListVlaue m   : =		 �

 0   |   a w k   ' / L i n k K e y s / , / } ; / ' o      ���� 0 shellcommand shellCommand  �� I   A H������ 0 getlinkkeys getLinkKeys  o   B C���� 0 shellcommand shellCommand �� o   C D���� 0 helptext helpText��  ��  ��   � R      ����
�� .ascrerr ****      � **** o      ���� 0 errormessage errorMessage��   � I  P Y����
�� .sysodlogaskr        TEXT b   P U m   P S �  E r r o r :   o   S T���� 0 errormessage errorMessage��  ��  ��   �  l     ����     #endregion Main    �     # e n d r e g i o n   M a i n  l     ��������  ��  ��    i       I      ��!���� 0 getlinkkeys getLinkKeys! "#" o      ���� 0 shellcommand shellCommand# $�$ o      �~�~ 0 helptext helpText�  ��    k    [%% &'& r     ()( I    �}*�|
�} .sysoexecTEXT���     TEXT* m     ++ �,,  w h o a m i�|  ) o      �{�{ 0 username userName' -.- r    /0/ n    121 1    �z
�z 
ttxt2 l 	  3�y�x3 l   4�w�v4 I   �u56
�u .sysodlogaskr        TEXT5 b    787 m    	99 �:: & E n t e r   p a s s w o r d   f o r  8 n   	 ;<; l 	 
 =�t�s= 1   
 �r
�r 
strq�t  �s  < l 
 	 
>�q�p> o   	 
�o�o 0 username userName�q  �p  6 �n?@
�n 
disp? l 
  A�m�lA m    �k
�k stic    �m  �l  @ �jBC
�j 
dtxtB l 	  D�i�hD m    EE �FF  �i  �h  C �gG�f
�g 
htxtG m    �e
�e boovtrue�f  �w  �v  �y  �x  0 o      �d�d 0 
mypassword 
myPassword. HIH l   �c�b�a�c  �b  �a  I JKJ r    )LML I   '�`NO
�` .sysoexecTEXT���     TEXTN o    �_�_ 0 shellcommand shellCommandO �^PQ
�^ 
RAunP o    �]�] 0 username userNameQ �\RS
�\ 
RApwR o     !�[�[ 0 
mypassword 
myPasswordS �ZT�Y
�Z 
badmT m   " #�X
�X boovtrue�Y  M o      �W�W 0 linkkeys linkKeysK UVU l  * 1WXYW r   * 1Z[Z l  * /\�V�U\ I  * /�T]�S
�T .sysontocTEXT       shor] m   * +�R�R �S  �V  �U  [ o      �Q�Q 20 carriagereturncharacter carriageReturnCharacterX  // CR   Y �^^ 
 / /   C RV _`_ r   2 9aba o   2 3�P�P 20 carriagereturncharacter carriageReturnCharacterb l     c�O�Nc 1   3 8�M
�M 
txdl�O  �N  ` ded r   : Afgf n   : ?hih 2  ; ?�L
�L 
citmi o   : ;�K�K 0 linkkeys linkKeysg o      �J�J 20 listofdelimitedlinkkeys listOfDelimitedLinkKeyse jkj r   B Jlml n   B Hnon 4   C H�Ip
�I 
cobjp m   F G�H�H o o   B C�G�G 20 listofdelimitedlinkkeys listOfDelimitedLinkKeysm o      �F�F :0 bluetoothadapteraddressline bluetoothAdapterAddressLinek qrq r   K \sts n   K Zuvu 7  L Z�Ewx
�E 
cobjw m   R T�D�D x m   U Y�C�C��v o   K L�B�B 20 listofdelimitedlinkkeys listOfDelimitedLinkKeyst o      �A�A  0 listoflinkkeys listOfLinkKeysr yzy l  ] ]�@�?�>�@  �?  �>  z {|{ r   ] `}~} o   ] ^�=�= :0 bluetoothadapteraddressline bluetoothAdapterAddressLine~ o      �<�< 80 bluetoothadapteraddresskey bluetoothAdapterAddressKey| � r   a j��� m   a d�� ���  "� l     ��;�:� 1   d i�9
�9 
txdl�;  �:  � ��� r   k s��� n   k q��� 4   l q�8�
�8 
citm� m   o p�7�7 � o   k l�6�6 80 bluetoothadapteraddresskey bluetoothAdapterAddressKey� o      �5�5 20 bluetoothadapteraddress bluetoothAdapterAddress� ��� r   t {��� l  t y��4�3� b   t y��� m   t w�� ��� F Y o u r   B l u e t o o t h   A d a p t e r   A d d r e s s   i s :  � o   w x�2�2 20 bluetoothadapteraddress bluetoothAdapterAddress�4  �3  � o      �1�1 
0 output  � ��� r   | ���� b   | ��� o   | }�0�0 
0 output  � o   } ~�/�/ 20 carriagereturncharacter carriageReturnCharacter� o      �.�. 
0 output  � ��� r   � ���� b   � ���� o   � ��-�- 
0 output  � o   � ��,�, 20 carriagereturncharacter carriageReturnCharacter� o      �+�+ 
0 output  � ��� l  � ��*�)�(�*  �)  �(  � ��� r   � ���� m   � ��'�' � o      �&�& 0 counter  � ��� l  � ��%�$�#�%  �$  �#  � ��� X   �=��"�� k   �8�� ��� r   � ���� m   � ��� ���  "� l     ��!� � 1   � ��
� 
txdl�!  �   � ��� r   � ���� n   � ���� 4   � ���
� 
citm� m   � ��� � o   � ��� 20 currentlinkkeyvaluepair currentLinkKeyValuePair� o      ��  0 currentlinkkey currentLinkKey� ��� l  � �����  �  �  � ��� r   � ���� m   � ��� ���  <� l     ���� 1   � ��
� 
txdl�  �  � ��� r   � ���� n   � ���� 4   � ���
� 
citm� m   � ��� � o   � ��� 20 currentlinkkeyvaluepair currentLinkKeyValuePair� o      �� $0 currentlinkvalue currentLinkValue� ��� r   � ���� m   � ��� ���  >� l     ���� 1   � ��
� 
txdl�  �  � ��� r   � ���� n   � ���� 4   � ���
� 
citm� m   � ��� � o   � ��� $0 currentlinkvalue currentLinkValue� o      �
�
 $0 currentlinkvalue currentLinkValue� ��� l  � ��	���	  �  �  � ��� r   � ���� b   � ���� o   � ��� 
0 output  � l  � ����� b   � ���� b   � ���� b   � ���� m   � ��� ��� " B l u e t o o t h   d e v i c e  � o   � ��� 0 counter  � m   � ��� ��� t   p a i r i n g   k e y                                                                                         :  � o   � ���  0 currentlinkkey currentLinkKey�  �  � o      �� 
0 output  � ��� r   � ���� b   � ���� o   � �� �  
0 output  � o   � ����� 20 carriagereturncharacter carriageReturnCharacter� o      ���� 
0 output  � ��� l  � ���������  ��  ��  � ��� r   � ���� b   � ���� o   � ����� 
0 output  � l  � ������� b   � ���� b   � �� � b   � � m   � � � " B l u e t o o t h   d e v i c e   o   � ����� 0 counter    m   � � � d   p a i r i n g   c u r r e n t   v a l u e   i n   O S   X                                     :  � o   � ����� $0 currentlinkvalue currentLinkValue��  ��  � o      ���� 
0 output  �  r   �	
	 b   � o   � ���� 
0 output   o   ���� 20 carriagereturncharacter carriageReturnCharacter
 o      ���� 
0 output    l ��������  ��  ��    l ����   A ; Need to manipulate currentLinkValue here to Windows format    � v   N e e d   t o   m a n i p u l a t e   c u r r e n t L i n k V a l u e   h e r e   t o   W i n d o w s   f o r m a t  l ��������  ��  ��    r   I  ������ 0 removespaces removeSpaces �� o  ���� $0 currentlinkvalue currentLinkValue��  ��   o      ���� $0 currentlinkvalue currentLinkValue  r   I  �� ���� 0 reverseendian reverseEndian  !��! o  ���� $0 currentlinkvalue currentLinkValue��  ��   o      ���� $0 currentlinkvalue currentLinkValue "#" l ��������  ��  ��  # $%$ r  &&'& b  $()( o  ���� 
0 output  ) l #*����* b  #+,+ b  !-.- b  /0/ m  11 �22 " B l u e t o o t h   d e v i c e  0 o  ���� 0 counter  . m   33 �44 X   p a i r i n g   v a l u e   i n   W i n d o w s   s h o u l d   b e   s e t   t o :  , o  !"���� $0 currentlinkvalue currentLinkValue��  ��  ' o      ���� 
0 output  % 565 r  ',787 b  '*9:9 o  '(���� 
0 output  : o  ()���� 20 carriagereturncharacter carriageReturnCharacter8 o      ���� 
0 output  6 ;<; l --��������  ��  ��  < =>= r  -2?@? b  -0ABA o  -.���� 
0 output  B o  ./���� 20 carriagereturncharacter carriageReturnCharacter@ o      ���� 
0 output  > CDC l 33��������  ��  ��  D E��E r  38FGF [  36HIH o  34���� 0 counter  I m  45���� G o      ���� 0 counter  ��  �" 20 currentlinkkeyvaluepair currentLinkKeyValuePair� o   � �����  0 listoflinkkeys listOfLinkKeys� JKJ l >>��������  ��  ��  K LML I >E��N��
�� .sysodlogaskr        TEXTN n  >AOPO 1  ?A��
�� 
strqP o  >?���� 
0 output  ��  M QRQ I FY��S��
�� .sysoexecTEXT���     TEXTS b  FUTUT b  FQVWV b  FOXYX b  FMZ[Z m  FI\\ �]] 
 e c h o  [ n  IL^_^ 1  JL��
�� 
strq_ o  IJ���� 0 helptext helpTextY o  MN���� 20 carriagereturncharacter carriageReturnCharacterW o  OP���� 20 carriagereturncharacter carriageReturnCharacterU n  QT`a` 1  RT��
�� 
strqa o  QR���� 
0 output  ��  R b��b l ZZ��������  ��  ��  ��   cdc l     ��������  ��  ��  d efe i    ghg I      ��i���� 0 removespaces removeSpacesi j��j o      ����  0 toremovespaces toRemoveSpaces��  ��  h k     :kk lml r     non o     ����  0 toremovespaces toRemoveSpaceso o      ���� 00 toremovespacesoriginal toRemoveSpacesOriginalm pqp r    rsr m    tt �uu  s o      ����  0 toremovespaces toRemoveSpacesq vwv r    xyx m    	zz �{{   y l     |����| 1   	 ��
�� 
txdl��  ��  w }~} r    � l   ������ e    �� I   �����
�� .corecnte****       ****� n   ��� 2   ��
�� 
citm� o    ���� 00 toremovespacesoriginal toRemoveSpacesOriginal��  ��  ��  � o      ���� <0 toremovespacesoriginallength toRemoveSpacesOriginalLength~ ��� r    ��� m    ���� � o      ���� 0 counter  � ��� V    7��� k   $ 2�� ��� r   $ ,��� b   $ *��� o   $ %����  0 toremovespaces toRemoveSpaces� l  % )������ n   % )��� 4   & )���
�� 
citm� o   ' (���� 0 counter  � o   % &���� 00 toremovespacesoriginal toRemoveSpacesOriginal��  ��  � o      ����  0 toremovespaces toRemoveSpaces� ���� r   - 2��� [   - 0��� o   - .���� 0 counter  � m   . /���� � o      ���� 0 counter  ��  � B     #��� o     !���� 0 counter  � o   ! "���� <0 toremovespacesoriginallength toRemoveSpacesOriginalLength� ���� L   8 :�� o   8 9����  0 toremovespaces toRemoveSpaces��  f ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 reverseendian reverseEndian� ���� o      ���� "0 toreverseendian toReverseEndian��  ��  � k     U�� ��� r     ��� m     �� ���  � o      ���� 0 returnvalue returnValue� ��� l   ������  �   Endian conversion   � ��� $   E n d i a n   c o n v e r s i o n� ��� l   ������  � I C Starting at the end, take two characters and put them in the front   � ��� �   S t a r t i n g   a t   t h e   e n d ,   t a k e   t w o   c h a r a c t e r s   a n d   p u t   t h e m   i n   t h e   f r o n t� ��� r    ��� l   ������ e    �� I   �����
�� .corecnte****       ****� n   ��� 2   ��
�� 
cha � o    �� "0 toreverseendian toReverseEndian��  ��  ��  � o      �~�~ ,0 stringcharactercount stringCharacterCount� ��� r    ��� o    �}�} ,0 stringcharactercount stringCharacterCount� o      �|�| 0 counter  � ��� V    R��� k    M�� ��� r     ��� n   ��� 4    �{�
�{ 
cha � o    �z�z 0 counter  � o    �y�y "0 toreverseendian toReverseEndian� o      �x�x .0 currentfirstcharacter currentFirstCharacter� ��� r   ! &��� \   ! $��� o   ! "�w�w 0 counter  � m   " #�v�v � o      �u�u 0 counter  � ��� r   ' -��� n  ' +��� 4   ( +�t�
�t 
cha � o   ) *�s�s 0 counter  � o   ' (�r�r "0 toreverseendian toReverseEndian� o      �q�q 00 currentsecondcharacter currentSecondCharacter� ��� r   . 3��� \   . 1��� o   . /�p�p 0 counter  � m   / 0�o�o � o      �n�n 0 counter  � ��� r   4 ;��� b   4 9��� b   4 7��� o   4 5�m�m 0 returnvalue returnValue� o   5 6�l�l 00 currentsecondcharacter currentSecondCharacter� o   7 8�k�k .0 currentfirstcharacter currentFirstCharacter� o      �j�j 0 returnvalue returnValue� ��i� Z   < M���h�g� =  < A��� `   < ?��� o   < =�f�f 0 counter  � m   = >�e�e � m   ? @�d�d  � r   D I��� b   D G��� o   D E�c�c 0 returnvalue returnValue� m   E F�� ���   � o      �b�b 0 returnvalue returnValue�h  �g  �i  � ?    ��� o    �a�a 0 counter  � m    �`�`  � ��_� L   S U�� o   S T�^�^ 0 returnvalue returnValue�_  �  �]  l     �\�[�Z�\  �[  �Z  �]       �Y�Y   �X�W�V�U�X 0 getlinkkeys getLinkKeys�W 0 removespaces removeSpaces�V 0 reverseendian reverseEndian
�U .aevtoappnull  �   � **** �T �S�R�Q�T 0 getlinkkeys getLinkKeys�S �P�P   �O�N�O 0 shellcommand shellCommand�N 0 helptext helpText�R   �M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�M 0 shellcommand shellCommand�L 0 helptext helpText�K 0 username userName�J 0 
mypassword 
myPassword�I 0 linkkeys linkKeys�H 20 carriagereturncharacter carriageReturnCharacter�G 20 listofdelimitedlinkkeys listOfDelimitedLinkKeys�F :0 bluetoothadapteraddressline bluetoothAdapterAddressLine�E  0 listoflinkkeys listOfLinkKeys�D 80 bluetoothadapteraddresskey bluetoothAdapterAddressKey�C 20 bluetoothadapteraddress bluetoothAdapterAddress�B 
0 output  �A 0 counter  �@ 20 currentlinkkeyvaluepair currentLinkKeyValuePair�?  0 currentlinkkey currentLinkKey�> $0 currentlinkvalue currentLinkValue %+�=9�<�;�:�9E�8�7�6�5�4�3�2�1�0�/�.�-�,���+�*������)�(13\
�= .sysoexecTEXT���     TEXT
�< 
strq
�; 
disp
�: stic    
�9 
dtxt
�8 
htxt�7 
�6 .sysodlogaskr        TEXT
�5 
ttxt
�4 
RAun
�3 
RApw
�2 
badm�1 
�0 .sysontocTEXT       shor
�/ 
txdl
�. 
citm
�- 
cobj�,��
�+ 
kocl
�* .corecnte****       ****�) 0 removespaces removeSpaces�( 0 reverseendian reverseEndian�Q\�j E�O��,%�����e� 
�,E�O�����e� E�O�j E�O�*a ,FO�a -E�O�a l/E�O�[a \[Zm\Za 2E�O�E�Oa *a ,FO�a l/E�Oa �%E�O��%E�O��%E�OkE�O ��[a a l kh a *a ,FO�a l/E�Oa *a ,FO�a l/E�Oa *a ,FO�a k/E�O�a �%a %�%%E�O��%E�O�a �%a %�%%E�O��%E�O*�k+  E�O*�k+ !E�O�a "�%a #%�%%E�O��%E�O��%E�O�kE�[OY�bO��,j 
Oa $��,%�%�%��,%j OP �'h�&�%	
�$�' 0 removespaces removeSpaces�& �#�#   �"�"  0 toremovespaces toRemoveSpaces�%  	 �!� ���!  0 toremovespaces toRemoveSpaces�  00 toremovespacesoriginal toRemoveSpacesOriginal� <0 toremovespacesoriginallength toRemoveSpacesOriginalLength� 0 counter  
 tz���
� 
txdl
� 
citm
� .corecnte****       ****�$ ;�E�O�E�O�*�,FO��-j E�OkE�O h�����/%E�O�kE�[OY��O� ������ 0 reverseendian reverseEndian� ��   �� "0 toreverseendian toReverseEndian�   ������� "0 toreverseendian toReverseEndian� 0 returnvalue returnValue� ,0 stringcharactercount stringCharacterCount� 0 counter  � .0 currentfirstcharacter currentFirstCharacter� 00 currentsecondcharacter currentSecondCharacter �����
� 
cha 
� .corecnte****       ****� � V�E�O��-j E�O�E�O ?h�j��/E�O�kE�O��/E�O�kE�O��%�%E�O��#j  
��%E�Y h[OY��O� ��
�	�
� .aevtoappnull  �   � **** k     Y  �  �  �  �  �  �  ���  �
  �	   �� 0 errormessage errorMessage  ���� �� �� ��  � ���������	� 0 helptext helpText
� 
strq
� .sysodlogaskr        TEXT� :0 bluetoothlinkkeysplistvalue bluetoothLinkKeysPListValue� P0 &alternativebluetoothlinkkeysplistvlaue &alternativeBluetoothLinkKeysPListVlaue�  N0 %notworkingbluetoothlinkkeysplistvalue %notWorkingBluetoothLinkKeysPListValue�� 0 shellcommand shellCommand�� 0 getlinkkeys getLinkKeys�� 0 errormessage errorMessage��  � Z�E�O��,j O�E�O�E�O�E�O��%�%E�O *��l+ W .X   a �%a %E�O*��l+ W X  a �%j  ascr  ��ޭ