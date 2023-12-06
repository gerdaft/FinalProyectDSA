‘
hC:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\App_Start\BundleConfig.cs
	namespace 	
Entregable3
 
{		 
public

 

class

 
BundleConfig

 
{ 
public 
static 
void 
RegisterBundles *
(* +
BundleCollection+ ;
bundles< C
)C D
{ 	
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) ?
)? @
.@ A
IncludeA H
(H I
$str <
,< =
$str C
,C D
$str A
,A B
$str 9
,9 :
$str <
,< =
$str ?
,? @
$str <
,< =
$str <
)< =
)= >
;> ?
bundles 
. 
Add 
( 
new 
ScriptBundle (
(( )
$str) =
)= >
.> ?
Include? F
(F G
$str @
,@ A
$str S
,S T
$str E
,E F
$str H
)H I
)I J
;J K
bundles"" 
."" 
Add"" 
("" 
new"" 
ScriptBundle"" (
(""( )
$str"") >
)""> ?
.""? @
Include""@ G
(""G H
$str## 3
)##3 4
)##4 5
;##5 6
}$$ 	
}%% 
}&& ç
\C:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\About.aspx.cs
	namespace 	
Entregable3
 
{		 
public

 

partial

 
class

 
About

 
:

  
Page

! %
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ¢
gC:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\App_Start\RouteConfig.cs
	namespace 	
Entregable3
 
{ 
public		 

static		 
class		 
RouteConfig		 #
{

 
public 
static 
void 
RegisterRoutes )
() *
RouteCollection* 9
routes: @
)@ A
{ 	
var 
settings 
= 
new 
FriendlyUrlSettings 2
(2 3
)3 4
;4 5
settings 
. 
AutoRedirectMode %
=& '
RedirectMode( 4
.4 5
	Permanent5 >
;> ?
routes 
. 
EnableFriendlyUrls %
(% &
settings& .
). /
;/ 0
} 	
} 
} ë
^C:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Contact.aspx.cs
	namespace 	
Entregable3
 
{		 
public

 

partial

 
class

 
Contact

  
:

! "
Page

# '
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} ¯c
^C:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Default.aspx.cs
	namespace

 	
Entregable3


 
{ 
public 

partial 
class 
_Default !
:" #
Page$ (
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
	protected 
void 
btnAceptar_Click '
(' (
object( .
sender/ 5
,5 6
	EventArgs7 @
eA B
)B C
{ 	
try 
{ 
string 
tdcInput 
=  !
txtNumTarjeta" /
./ 0
Text0 4
;4 5
string 
	tdcMasked  
=! "
maskCreditCard# 1
(1 2
tdcInput2 :
): ;
;; <
var 
sha256 
= 
convertToSha256Hsah 0
(0 1
tdcInput1 9
)9 :
;: ;
string 
msgHASH 
=  
$str! 1
+2 3
	tdcMasked4 =
+> ?
Environment@ K
.K L
NewLineL S
+T U
$strV g
+h i
sha256j p
;p q
byte 
[ 
] 
key 
= 
new  
byte! %
[% &
$num& (
]( )
;) *
byte 
[ 
] 
iv 
= 
new 
byte  $
[$ %
$num% '
]' (
;( )
using 
( 
var 
rng 
=  
new! $$
RNGCryptoServiceProvider% =
(= >
)> ?
)? @
{   
rng!! 
.!! 
GetBytes!!  
(!!  !
key!!! $
)!!$ %
;!!% &
rng"" 
."" 
GetBytes""  
(""  !
iv""! #
)""# $
;""$ %
}## 
byte%% 
[%% 
]%% 

ciphertext%% !
=%%" #
Encrypt%%$ +
(%%+ ,
tdcInput%%, 4
,%%4 5
key%%6 9
,%%9 :
iv%%; =
)%%= >
;%%> ?
string&& 
encryptedText&& $
=&&% &
Convert&&' .
.&&. /
ToBase64String&&/ =
(&&= >

ciphertext&&> H
)&&H I
;&&I J
string'' 
msgEncrypted'' #
=''$ %
$str''& 8
+''9 :
encryptedText''; H
;''H I
byte)) 
[)) 
])) 
bytes)) 
=)) 
Convert)) &
.))& '
FromBase64String))' 7
())7 8
encryptedText))8 E
)))E F
;))F G
string** 
decryptedText** $
=**% &
Decrypt**' .
(**. /
bytes**/ 4
,**4 5
key**6 9
,**9 :
iv**; =
)**= >
;**> ?
string++ 
msgDecrypted++ #
=++$ %
$str++& ;
+++< =
maskCreditCard++> L
(++L M
decryptedText++M Z
)++Z [
;++[ \
mostrarMensaje.. 
(.. 
msgHASH.. &
+..' (
Environment..) 4
...4 5
NewLine..5 <
+..= >
msgEncrypted..? K
+..L M
Environment..N Y
...Y Z
NewLine..Z a
+..b c
msgDecrypted..d p
)..p q
;..q r
}00 
catch11 
(11 
	Exception11 
ex11 
)11  
{22 
mostrarMensaje33 
(33 
$str33 B
+33C D
ex33E G
.33G H
Message33H O
)33O P
;33P Q
}44 
}55 	
private77 
string77 
maskCreditCard77 %
(77% &
string77& ,
tdc77- 0
)770 1
{88 	
string99 
firstDigits99 
=99  
tdc99! $
.99$ %
	Substring99% .
(99. /
$num99/ 0
,990 1
$num992 3
)993 4
;994 5
string:: 

lastDigits:: 
=:: 
tdc::  #
.::# $
	Substring::$ -
(::- .
tdc::. 1
.::1 2
Length::2 8
-::9 :
$num::; <
,::< =
$num::> ?
)::? @
;::@ A
string;; 
maskecNumber;; 
=;;  !
firstDigits;;" -
+;;. /
new;;0 3
string;;4 :
(;;: ;
$char;;; >
,;;> ?
tdc;;@ C
.;;C D
Length;;D J
-;;K L
$num;;M N
);;N O
+;;P Q

lastDigits;;R \
;;;\ ]
return<< 
maskecNumber<< 
;<<  
}== 	
private?? 
string?? 
convertToSha256Hsah?? *
(??* +
string??+ 1
value??2 7
)??7 8
{@@ 	
usingAA 
(AA 
SHA256AA 
sha256AA  
=AA! "
SHA256AA# )
.AA) *
CreateAA* 0
(AA0 1
)AA1 2
)AA2 3
{BB 
byteCC 
[CC 
]CC 

inputBytesCC !
=CC" #
EncodingCC$ ,
.CC, -
UTF8CC- 1
.CC1 2
GetBytesCC2 :
(CC: ;
valueCC; @
)CC@ A
;CCA B
byteDD 
[DD 
]DD 
	hashBytesDD  
=DD! "
sha256DD# )
.DD) *
ComputeHashDD* 5
(DD5 6

inputBytesDD6 @
)DD@ A
;DDA B
StringBuilderFF 
sbFF  
=FF! "
newFF# &
StringBuilderFF' 4
(FF4 5
)FF5 6
;FF6 7
foreachGG 
(GG 
byteGG 
bGG 
inGG  "
	hashBytesGG# ,
)GG, -
{HH 
sbII 
.II 
AppendII 
(II 
bII 
.II  
ToStringII  (
(II( )
$strII) -
)II- .
)II. /
;II/ 0
}JJ 
returnKK 
sbKK 
.KK 
ToStringKK "
(KK" #
)KK# $
;KK$ %
}LL 
}MM 	
publicNN 
byteNN 
[NN 
]NN 
EncryptNN 
(NN 
stringNN $
	plaintextNN% .
,NN. /
byteNN0 4
[NN4 5
]NN5 6
keyNN7 :
,NN: ;
byteNN< @
[NN@ A
]NNA B
ivNNC E
)NNE F
{OO 	
usingPP 
(PP 
AesPP 
aesAlgPP 
=PP 
AesPP  #
.PP# $
CreatePP$ *
(PP* +
)PP+ ,
)PP, -
{QQ 
aesAlgRR 
.RR 
KeyRR 
=RR 
keyRR  
;RR  !
aesAlgSS 
.SS 
IVSS 
=SS 
ivSS 
;SS 
ICryptoTransformTT  
	encryptorTT! *
=TT+ ,
aesAlgTT- 3
.TT3 4
CreateEncryptorTT4 C
(TTC D
aesAlgTTD J
.TTJ K
KeyTTK N
,TTN O
aesAlgTTP V
.TTV W
IVTTW Y
)TTY Z
;TTZ [
byteUU 
[UU 
]UU 
encryptedBytesUU %
;UU% &
usingVV 
(VV 
varVV 
	msEncryptVV $
=VV% &
newVV' *
SystemVV+ 1
.VV1 2
IOVV2 4
.VV4 5
MemoryStreamVV5 A
(VVA B
)VVB C
)VVC D
{WW 
usingXX 
(XX 
varXX 
	csEncryptXX (
=XX) *
newXX+ .
CryptoStreamXX/ ;
(XX; <
	msEncryptXX< E
,XXE F
	encryptorXXG P
,XXP Q
CryptoStreamModeXXR b
.XXb c
WriteXXc h
)XXh i
)XXi j
{YY 
byteZZ 
[ZZ 
]ZZ 

plainBytesZZ )
=ZZ* +
EncodingZZ, 4
.ZZ4 5
UTF8ZZ5 9
.ZZ9 :
GetBytesZZ: B
(ZZB C
	plaintextZZC L
)ZZL M
;ZZM N
	csEncrypt[[ !
.[[! "
Write[[" '
([[' (

plainBytes[[( 2
,[[2 3
$num[[4 5
,[[5 6

plainBytes[[7 A
.[[A B
Length[[B H
)[[H I
;[[I J
}\\ 
encryptedBytes]] "
=]]# $
	msEncrypt]]% .
.]]. /
ToArray]]/ 6
(]]6 7
)]]7 8
;]]8 9
}^^ 
return__ 
encryptedBytes__ %
;__% &
}`` 
}aa 	
publiccc 
stringcc 
Decryptcc 
(cc 
bytecc "
[cc" #
]cc# $

ciphertextcc% /
,cc/ 0
bytecc1 5
[cc5 6
]cc6 7
keycc8 ;
,cc; <
bytecc= A
[ccA B
]ccB C
ivccD F
)ccF G
{dd 	
usingee 
(ee 
Aesee 
aesAlgee 
=ee 
Aesee  #
.ee# $
Createee$ *
(ee* +
)ee+ ,
)ee, -
{ff 
aesAlggg 
.gg 
Keygg 
=gg 
keygg  
;gg  !
aesAlghh 
.hh 
IVhh 
=hh 
ivhh 
;hh 
ICryptoTransformii  
	decryptorii! *
=ii+ ,
aesAlgii- 3
.ii3 4
CreateDecryptorii4 C
(iiC D
aesAlgiiD J
.iiJ K
KeyiiK N
,iiN O
aesAlgiiP V
.iiV W
IViiW Y
)iiY Z
;iiZ [
bytejj 
[jj 
]jj 
decryptedBytesjj %
;jj% &
usingkk 
(kk 
varkk 
	msDecryptkk $
=kk% &
newkk' *
Systemkk+ 1
.kk1 2
IOkk2 4
.kk4 5
MemoryStreamkk5 A
(kkA B

ciphertextkkB L
)kkL M
)kkM N
{ll 
usingmm 
(mm 
varmm 
	csDecryptmm (
=mm) *
newmm+ .
CryptoStreammm/ ;
(mm; <
	msDecryptmm< E
,mmE F
	decryptormmG P
,mmP Q
CryptoStreamModemmR b
.mmb c
Readmmc g
)mmg h
)mmh i
{nn 
usingoo 
(oo 
varoo "
msPlainoo# *
=oo+ ,
newoo- 0
Systemoo1 7
.oo7 8
IOoo8 :
.oo: ;
MemoryStreamoo; G
(ooG H
)ooH I
)ooI J
{pp 
	csDecryptqq %
.qq% &
CopyToqq& ,
(qq, -
msPlainqq- 4
)qq4 5
;qq5 6
decryptedBytesrr *
=rr+ ,
msPlainrr- 4
.rr4 5
ToArrayrr5 <
(rr< =
)rr= >
;rr> ?
}ss 
}tt 
}uu 
returnvv 
Encodingvv 
.vv  
UTF8vv  $
.vv$ %
	GetStringvv% .
(vv. /
decryptedBytesvv/ =
)vv= >
;vv> ?
}ww 
}xx 	
	protected{{ 
virtual{{ 
void{{ 
mostrarMensaje{{ -
({{- .
string{{. 4
mensaje{{5 <
){{< =
{|| 	
string}} 
mensajeFormateado}} $
=}}% &
mensaje}}' .
.}}. /
Replace}}/ 6
(}}6 7
$str}}7 ;
,}}; <
$str}}= ?
)}}? @
.}}@ A
Replace}}A H
(}}H I
$str}}I M
,}}M N
$str}}O Q
)}}Q R
.}}R S
Replace}}S Z
(}}Z [
$str}}[ ^
,}}^ _
$str}}` b
)}}b c
;}}c d
string~~ 
script~~ 
=~~ 
$str~~ C
+~~D E
mensajeFormateado~~F W
+~~X Y
$str~~Z h
;~~h i
ScriptManager 
. %
RegisterClientScriptBlock 3
(3 4
this4 8
.8 9
Page9 =
,= >
this? C
.C D
GetTypeD K
(K L
)L M
,M N
$strO W
,W X
scriptY _
,_ `
falsea f
)f g
;g h
}
ÄÄ 	
}
ÅÅ 
}ÇÇ “
]C:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Global.asax.cs
	namespace

 	
Entregable3


 
{ 
public 

class 
Global 
: 
HttpApplication )
{ 
void 
Application_Start 
( 
object %
sender& ,
,, -
	EventArgs. 7
e8 9
)9 :
{ 	
RouteConfig 
. 
RegisterRoutes &
(& '

RouteTable' 1
.1 2
Routes2 8
)8 9
;9 :
BundleConfig 
. 
RegisterBundles (
(( )
BundleTable) 4
.4 5
Bundles5 <
)< =
;= >
} 	
} 
} î
iC:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str &
)& '
]' (
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 1
)1 2
]2 3
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str (
)( )
]) *
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str D
)D E
]E F
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *ô
]C:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Site.Master.cs
	namespace 	
Entregable3
 
{		 
public

 

partial

 
class

 

SiteMaster

 #
:

$ %

MasterPage

& 0
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} É
dC:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\Site.Mobile.Master.cs
	namespace 	
Entregable3
 
{		 
public

 

partial

 
class

 
Site_Mobile

 $
:

% &
System

' -
.

- .
Web

. 1
.

1 2
UI

2 4
.

4 5

MasterPage

5 ?
{ 
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
} 	
} 
} µ
cC:\Users\fahernandez\source\repos\CursoSeguridad\EntregableGerardo\Entregable3\ViewSwitcher.ascx.cs
	namespace

 	
Entregable3


 
{ 
public 

partial 
class 
ViewSwitcher %
:& '
System( .
.. /
Web/ 2
.2 3
UI3 5
.5 6
UserControl6 A
{ 
	protected 
string 
CurrentView $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
	protected 
string 
AlternateView &
{' (
get) ,
;, -
private. 5
set6 9
;9 :
}; <
	protected 
string 
	SwitchUrl "
{# $
get% (
;( )
private* 1
set2 5
;5 6
}7 8
	protected 
void 
	Page_Load  
(  !
object! '
sender( .
,. /
	EventArgs0 9
e: ;
); <
{ 	
var 
isMobile 
= '
WebFormsFriendlyUrlResolver 6
.6 7
IsMobileView7 C
(C D
newD G
HttpContextWrapperH Z
(Z [
Context[ b
)b c
)c d
;d e
CurrentView 
= 
isMobile "
?# $
$str% -
:. /
$str0 9
;9 :
AlternateView 
= 
isMobile $
?% &
$str' 0
:1 2
$str3 ;
;; <
var 
switchViewRouteName #
=$ %
$str& F
;F G
var 
switchViewRoute 
=  !

RouteTable" ,
., -
Routes- 3
[3 4
switchViewRouteName4 G
]G H
;H I
if   
(   
switchViewRoute   
==    "
null  # '
)  ' (
{!! 
this## 
.## 
Visible## 
=## 
false## $
;##$ %
return$$ 
;$$ 
}%% 
var&& 
url&& 
=&& 
GetRouteUrl&& !
(&&! "
switchViewRouteName&&" 5
,&&5 6
new&&7 :
{&&; <
view&&= A
=&&B C
AlternateView&&D Q
,&&Q R&
__FriendlyUrls_SwitchViews&&S m
=&&n o
true&&p t
}&&u v
)&&v w
;&&w x
url'' 
+='' 
$str''  
+''! "
HttpUtility''# .
.''. /
	UrlEncode''/ 8
(''8 9
Request''9 @
.''@ A
RawUrl''A G
)''G H
;''H I
	SwitchUrl(( 
=(( 
url(( 
;(( 
})) 	
}** 
}++ 