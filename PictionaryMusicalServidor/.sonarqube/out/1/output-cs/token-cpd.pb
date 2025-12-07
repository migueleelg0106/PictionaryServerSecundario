ßÈ
}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\VerificacionRegistroServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class (
VerificacionRegistroServicio -
:. /)
IVerificacionRegistroServicio0 M
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ((
VerificacionRegistroServicio( D
)D E
)E F
;F G
private 
const 
int #
MinutosExpiracionCodigo 1
=2 3
$num4 5
;5 6
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; <$
SolicitudCodigoPendiente= U
>U V
_solicitudes 
= 
new  
ConcurrentDictionary 3
<3 4
string4 :
,: ;$
SolicitudCodigoPendiente< T
>T U
(U V
)V W
;W X
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; <
byte= A
>A B&
_verificacionesConfirmadasC ]
=^ _
new  
ConcurrentDictionary $
<$ %
string% +
,+ ,
byte- 1
>1 2
(2 3
StringComparer3 A
.A B
OrdinalIgnoreCaseB S
)S T
;T U
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
private   
readonly   (
INotificacionCodigosServicio   5(
_notificacionCodigosServicio  6 R
;  R S
public%% (
VerificacionRegistroServicio%% +
(%%+ ,
IContextoFactoria%%, =
contextoFactory%%> M
,%%M N(
INotificacionCodigosServicio&& ('
notificacionCodigosServicio&&) D
)&&D E
{'' 	
_contextoFactory(( 
=(( 
contextoFactory(( .
??((/ 1
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
nameof))0 6
())6 7
contextoFactory))7 F
)))F G
)))G H
;))H I(
_notificacionCodigosServicio++ (
=++) *'
notificacionCodigosServicio+++ F
??++G I
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
nameof,,0 6
(,,6 7'
notificacionCodigosServicio,,7 R
),,R S
),,S T
;,,T U
}-- 	
public22 '
ResultadoSolicitudCodigoDTO22 *
SolicitarCodigo22+ :
(22: ;
NuevaCuentaDTO22; I
nuevaCuenta22J U
)22U V
{33 	
var44 
validacionDatos44 
=44  !!
ValidarDatosSolicitud44" 7
(447 8
nuevaCuenta448 C
)44C D
;44D E
if55 
(55 
!55 
validacionDatos55  
.55  !
OperacionExitosa55! 1
)551 2
{66 
return77 
CrearFalloSolicitud77 *
(77* +
validacionDatos77+ :
.77: ;
Mensaje77; B
)77B C
;77C D
}88 
var:: 
disponibilidad:: 
=::  )
VerificarDisponibilidadCuenta::! >
(::> ?
nuevaCuenta::? J
)::J K
;::K L
if;; 
(;; 
!;; 
disponibilidad;; 
.;;  !
DisponibilidadExitosa;;  5
);;5 6
{<< 
return== 
disponibilidad== %
.==% &
	Resultado==& /
;==/ 0
}>> 
var@@ 

generacion@@ 
=@@  
GenerarYEnviarCodigo@@ 1
(@@1 2
nuevaCuenta@@2 =
)@@= >
;@@> ?
ifAA 
(AA 
!AA 

generacionAA 
.AA 
ExitoAA !
)AA! "
{BB 
returnCC 
CrearFalloSolicitudCC *
(CC* +
MensajesErrorCC+ 8
.CC8 9
ClienteCC9 @
.CC@ A&
ErrorSolicitudVerificacionCCA [
)CC[ \
;CC\ ]
}DD 
AlmacenarSolicitudFF 
(FF 

generacionFF )
.FF) *
TokenFF* /
,FF/ 0

generacionFF1 ;
.FF; <
	SolicitudFF< E
)FFE F
;FFF G
_loggerHH 
.HH 
InfoHH 
(HH 
$strHH U
)HHU V
;HHV W
returnJJ 
newJJ '
ResultadoSolicitudCodigoDTOJJ 2
{KK 
CodigoEnviadoLL 
=LL 
trueLL  $
,LL$ %
TokenCodigoMM 
=MM 

generacionMM (
.MM( )
TokenMM) .
}NN 
;NN 
}OO 	
publicTT '
ResultadoSolicitudCodigoDTOTT *
ReenviarCodigoTT+ 9
(TT9 :(
ReenvioCodigoVerificacionDTOTT: V
	solicitudTTW `
)TT` a
{UU 	
ifVV 
(VV 
!VV 
ValidarTokenReenvioVV $
(VV$ %
	solicitudVV% .
)VV. /
)VV/ 0
{WW 
returnXX 
CrearFalloReenvioXX (
(XX( )
MensajesErrorXX) 6
.XX6 7
ClienteXX7 >
.XX> ?
DatosReenvioCodigoXX? Q
)XXQ R
;XXR S
}YY 
try[[ 
{\\ 
var]] 
	pendiente]] 
=]] %
ObtenerSolicitudPendiente]]  9
(]]9 :
	solicitud]]: C
.]]C D
TokenCodigo]]D O
)]]O P
;]]P Q
return^^ !
ProcesarReenvioCodigo^^ ,
(^^, -
	solicitud^^- 6
.^^6 7
TokenCodigo^^7 B
,^^B C
	pendiente^^D M
)^^M N
;^^N O
}__ 
catch`` 
(``  
KeyNotFoundException`` '
)``' (
{aa 
returnbb 
CrearFalloReenviobb (
(bb( )
MensajesErrorcc !
.cc! "
Clientecc" )
.cc) *-
!SolicitudVerificacionNoEncontradacc* K
)ccK L
;ccL M
}dd 
}ee 	
publicjj &
ResultadoRegistroCuentaDTOjj )
ConfirmarCodigojj* 9
(jj9 :!
ConfirmacionCodigoDTOjj: O
confirmacionjjP \
)jj\ ]
{kk 	
ifll 
(ll 
!ll $
ValidarDatosConfirmacionll )
(ll) *
confirmacionll* 6
)ll6 7
)ll7 8
{mm 
returnnn "
CrearFalloConfirmacionnn -
(nn- .
MensajesErrornn. ;
.nn; <
Clientenn< C
.nnC D&
DatosConfirmacionInvalidosnnD ^
)nn^ _
;nn_ `
}oo 
tryqq 
{rr 
varss 
	pendientess 
=ss %
ObtenerSolicitudPendientess  9
(ss9 :
confirmacionss: F
.ssF G
TokenCodigossG R
)ssR S
;ssS T
varuu 
verificacionuu  
=uu! "$
VerificarCodigoIngresadouu# ;
(uu; <
	pendientevv 
,vv 
confirmacionww  
.ww  !
TokenCodigoww! ,
,ww, -
confirmacionxx  
.xx  !
CodigoIngresadoxx! 0
)xx0 1
;xx1 2
ifzz 
(zz 
!zz 
verificacionzz !
.zz! "
Exitozz" '
)zz' (
{{{ 
return|| "
CrearFalloConfirmacion|| 1
(||1 2
verificacion||2 >
.||> ?
MensajeError||? K
)||K L
;||L M
}}} !
RegistrarConfirmacion %
(% &
	pendiente& /
)/ 0
;0 1
_solicitudes
ÄÄ 
.
ÄÄ 
	TryRemove
ÄÄ &
(
ÄÄ& '
confirmacion
ÄÄ' 3
.
ÄÄ3 4
TokenCodigo
ÄÄ4 ?
,
ÄÄ? @
out
ÄÄA D
_
ÄÄE F
)
ÄÄF G
;
ÄÄG H
_logger
ÇÇ 
.
ÇÇ 
Info
ÇÇ 
(
ÇÇ 
$str
ÇÇ D
)
ÇÇD E
;
ÇÇE F
return
ÑÑ 
new
ÑÑ (
ResultadoRegistroCuentaDTO
ÑÑ 5
{
ÑÑ6 7
RegistroExitoso
ÑÑ8 G
=
ÑÑH I
true
ÑÑJ N
}
ÑÑO P
;
ÑÑP Q
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ "
KeyNotFoundException
ÜÜ '
)
ÜÜ' (
{
áá 
return
àà $
CrearFalloConfirmacion
àà -
(
àà- .
MensajesError
ââ !
.
ââ! "
Cliente
ââ" )
.
ââ) */
!SolicitudVerificacionNoEncontrada
ââ* K
)
ââK L
;
ââL M
}
ää 
}
ãã 	
public
êê 
bool
êê (
EstaVerificacionConfirmada
êê .
(
êê. /
NuevaCuentaDTO
êê/ =
nuevaCuenta
êê> I
)
êêI J
{
ëë 	
if
íí 
(
íí 
nuevaCuenta
íí 
==
íí 
null
íí #
)
íí# $
{
ìì 
return
îî 
false
îî 
;
îî 
}
ïï 
string
óó 
clave
óó 
=
óó 
ObtenerClave
óó '
(
óó' (
nuevaCuenta
óó( 3
.
óó3 4
Usuario
óó4 ;
,
óó; <
nuevaCuenta
óó= H
.
óóH I
Correo
óóI O
)
óóO P
;
óóP Q
return
òò (
_verificacionesConfirmadas
òò -
.
òò- .
ContainsKey
òò. 9
(
òò9 :
clave
òò: ?
)
òò? @
;
òò@ A
}
ôô 	
public
ûû 
void
ûû !
LimpiarVerificacion
ûû '
(
ûû' (
NuevaCuentaDTO
ûû( 6
nuevaCuenta
ûû7 B
)
ûûB C
{
üü 	
if
†† 
(
†† 
nuevaCuenta
†† 
==
†† 
null
†† #
)
††# $
{
°° 
return
¢¢ 
;
¢¢ 
}
££ 
string
•• 
clave
•• 
=
•• 
ObtenerClave
•• '
(
••' (
nuevaCuenta
••( 3
.
••3 4
Usuario
••4 ;
,
••; <
nuevaCuenta
••= H
.
••H I
Correo
••I O
)
••O P
;
••P Q(
_verificacionesConfirmadas
¶¶ &
.
¶¶& '
	TryRemove
¶¶' 0
(
¶¶0 1
clave
¶¶1 6
,
¶¶6 7
out
¶¶8 ;
_
¶¶< =
)
¶¶= >
;
¶¶> ?
}
ßß 	
private
©© #
ResultadoOperacionDTO
©© %#
ValidarDatosSolicitud
©©& ;
(
©©; <
NuevaCuentaDTO
©©< J
nuevaCuenta
©©K V
)
©©V W
{
™™ 	
if
´´ 
(
´´ 
nuevaCuenta
´´ 
==
´´ 
null
´´ #
)
´´# $
{
¨¨ 
throw
≠≠ 
new
≠≠ #
ArgumentNullException
≠≠ /
(
≠≠/ 0
nameof
≠≠0 6
(
≠≠6 7
nuevaCuenta
≠≠7 B
)
≠≠B C
)
≠≠C D
;
≠≠D E
}
ÆÆ 
return
ØØ #
EntradaComunValidador
ØØ (
.
ØØ( ) 
ValidarNuevaCuenta
ØØ) ;
(
ØØ; <
nuevaCuenta
ØØ< G
)
ØØG H
;
ØØH I
}
∞∞ 	
private
≤≤ 
(
≤≤ 
bool
≤≤ #
DisponibilidadExitosa
≤≤ +
,
≤≤+ ,)
ResultadoSolicitudCodigoDTO
≤≤- H
	Resultado
≤≤I R
)
≤≤R S+
VerificarDisponibilidadCuenta
≥≥ )
(
≥≥) *
NuevaCuentaDTO
≥≥* 8
nuevaCuenta
≥≥9 D
)
≥≥D E
{
¥¥ 	
using
µµ 
(
µµ 
var
µµ 
contexto
µµ 
=
µµ  !
_contextoFactory
µµ" 2
.
µµ2 3
CrearContexto
µµ3 @
(
µµ@ A
)
µµA B
)
µµB C
{
∂∂ 
bool
∑∑ 
usuarioRegistrado
∑∑ &
=
∑∑' (
contexto
∑∑) 1
.
∑∑1 2
Usuario
∑∑2 9
.
∑∑9 :
Any
∑∑: =
(
∑∑= >
u
∏∏ 
=>
∏∏ 
u
∏∏ 
.
∏∏ 
Nombre_Usuario
∏∏ )
==
∏∏* ,
nuevaCuenta
∏∏- 8
.
∏∏8 9
Usuario
∏∏9 @
)
∏∏@ A
;
∏∏A B
bool
∫∫ 
correoRegistrado
∫∫ %
=
∫∫& '
contexto
∫∫( 0
.
∫∫0 1
Jugador
∫∫1 8
.
∫∫8 9
Any
∫∫9 <
(
∫∫< =
j
ªª 
=>
ªª 
j
ªª 
.
ªª 
Correo
ªª !
==
ªª" $
nuevaCuenta
ªª% 0
.
ªª0 1
Correo
ªª1 7
)
ªª7 8
;
ªª8 9
if
ΩΩ 
(
ΩΩ 
usuarioRegistrado
ΩΩ %
||
ΩΩ& (
correoRegistrado
ΩΩ) 9
)
ΩΩ9 :
{
ææ 
_logger
øø 
.
øø 
Warn
øø  
(
øø  !
$str
øø! ]
)
øø] ^
;
øø^ _
var
¡¡ 
	resultado
¡¡ !
=
¡¡" #
new
¡¡$ ')
ResultadoSolicitudCodigoDTO
¡¡( C
{
¬¬ 
CodigoEnviado
√√ %
=
√√& '
false
√√( -
,
√√- .
UsuarioRegistrado
ƒƒ )
=
ƒƒ* +
usuarioRegistrado
ƒƒ, =
,
ƒƒ= >
CorreoRegistrado
≈≈ (
=
≈≈) *
correoRegistrado
≈≈+ ;
,
≈≈; <
Mensaje
∆∆ 
=
∆∆  !
MensajesError
∆∆" /
.
∆∆/ 0
Cliente
∆∆0 7
.
∆∆7 8&
UsuarioOCorreoRegistrado
∆∆8 P
}
«« 
;
«« 
return
»» 
(
»» 
false
»» !
,
»»! "
	resultado
»»# ,
)
»», -
;
»»- .
}
…… 
}
   
return
ÀÀ 
(
ÀÀ 
true
ÀÀ 
,
ÀÀ 
null
ÀÀ 
)
ÀÀ 
;
ÀÀ  
}
ÃÃ 	
private
ŒŒ 
(
ŒŒ 
bool
ŒŒ 
Exito
ŒŒ 
,
ŒŒ 
string
ŒŒ #
Token
ŒŒ$ )
,
ŒŒ) *&
SolicitudCodigoPendiente
ŒŒ+ C
	Solicitud
ŒŒD M
)
ŒŒM N"
GenerarYEnviarCodigo
œœ  
(
œœ  !
NuevaCuentaDTO
œœ! /
nuevaCuenta
œœ0 ;
)
œœ; <
{
–– 	
string
—— 
token
—— 
=
—— 
TokenGenerador
—— )
.
——) *
GenerarToken
——* 6
(
——6 7
)
——7 8
;
——8 9
string
““ 
codigo
““ 
=
““ )
CodigoVerificacionGenerador
““ 7
.
““7 8
GenerarCodigo
““8 E
(
““E F
)
““F G
;
““G H
NuevaCuentaDTO
”” 
datosCuenta
”” &
=
””' (
CopiarCuenta
””) 5
(
””5 6
nuevaCuenta
””6 A
)
””A B
;
””B C
bool
’’ 
enviado
’’ 
=
’’ *
_notificacionCodigosServicio
’’ 7
.
’’7 8 
EnviarNotificacion
’’8 J
(
’’J K
datosCuenta
÷÷ 
.
÷÷ 
Correo
÷÷ "
,
÷÷" #
codigo
◊◊ 
,
◊◊ 
datosCuenta
ÿÿ 
.
ÿÿ 
Usuario
ÿÿ #
,
ÿÿ# $
datosCuenta
ŸŸ 
.
ŸŸ 
Idioma
ŸŸ "
)
ŸŸ" #
;
ŸŸ# $
if
€€ 
(
€€ 
!
€€ 
enviado
€€ 
)
€€ 
{
‹‹ 
_logger
›› 
.
›› 
Error
›› 
(
›› 
$str
›› G
)
››G H
;
››H I
return
ﬁﬁ 
(
ﬁﬁ 
false
ﬁﬁ 
,
ﬁﬁ 
null
ﬁﬁ #
,
ﬁﬁ# $
null
ﬁﬁ% )
)
ﬁﬁ) *
;
ﬁﬁ* +
}
ﬂﬂ 
var
·· 
	solicitud
·· 
=
·· 
new
·· &
SolicitudCodigoPendiente
··  8
{
‚‚ 
DatosCuenta
„„ 
=
„„ 
datosCuenta
„„ )
,
„„) *
Codigo
‰‰ 
=
‰‰ 
codigo
‰‰ 
,
‰‰  
Expira
ÂÂ 
=
ÂÂ 
DateTime
ÂÂ !
.
ÂÂ! "
UtcNow
ÂÂ" (
.
ÂÂ( )

AddMinutes
ÂÂ) 3
(
ÂÂ3 4%
MinutosExpiracionCodigo
ÂÂ4 K
)
ÂÂK L
}
ÊÊ 
;
ÊÊ 
return
ËË 
(
ËË 
true
ËË 
,
ËË 
token
ËË 
,
ËË  
	solicitud
ËË! *
)
ËË* +
;
ËË+ ,
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ  
AlmacenarSolicitud
ÎÎ '
(
ÎÎ' (
string
ÎÎ( .
token
ÎÎ/ 4
,
ÎÎ4 5&
SolicitudCodigoPendiente
ÎÎ6 N
	solicitud
ÎÎO X
)
ÎÎX Y
{
ÏÏ 	
_solicitudes
ÌÌ 
[
ÌÌ 
token
ÌÌ 
]
ÌÌ 
=
ÌÌ  !
	solicitud
ÌÌ" +
;
ÌÌ+ ,
}
ÓÓ 	
private
 )
ResultadoSolicitudCodigoDTO
 +!
CrearFalloSolicitud
, ?
(
? @
string
@ F
mensaje
G N
)
N O
{
ÒÒ 	
return
ÚÚ 
new
ÚÚ )
ResultadoSolicitudCodigoDTO
ÚÚ 2
{
ÛÛ 
CodigoEnviado
ÙÙ 
=
ÙÙ 
false
ÙÙ  %
,
ÙÙ% &
Mensaje
ıı 
=
ıı 
mensaje
ıı !
}
ˆˆ 
;
ˆˆ 
}
˜˜ 	
private
˘˘ 
bool
˘˘ !
ValidarTokenReenvio
˘˘ (
(
˘˘( )*
ReenvioCodigoVerificacionDTO
˘˘) E
	solicitud
˘˘F O
)
˘˘O P
{
˙˙ 	
if
˚˚ 
(
˚˚ 
	solicitud
˚˚ 
==
˚˚ 
null
˚˚ !
)
˚˚! "
return
˚˚# )
false
˚˚* /
;
˚˚/ 0
string
¸¸ 
token
¸¸ 
=
¸¸ #
EntradaComunValidador
¸¸ 0
.
¸¸0 1
NormalizarTexto
¸¸1 @
(
¸¸@ A
	solicitud
¸¸A J
.
¸¸J K
TokenCodigo
¸¸K V
)
¸¸V W
;
¸¸W X
return
˝˝ #
EntradaComunValidador
˝˝ (
.
˝˝( )
EsTokenValido
˝˝) 6
(
˝˝6 7
token
˝˝7 <
)
˝˝< =
;
˝˝= >
}
˛˛ 	
private
ÄÄ &
SolicitudCodigoPendiente
ÄÄ ('
ObtenerSolicitudPendiente
ÄÄ) B
(
ÄÄB C
string
ÄÄC I
token
ÄÄJ O
)
ÄÄO P
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
_solicitudes
ÇÇ 
.
ÇÇ 
TryGetValue
ÇÇ )
(
ÇÇ) *
token
ÇÇ* /
,
ÇÇ/ 0
out
ÇÇ1 4&
SolicitudCodigoPendiente
ÇÇ5 M
	existente
ÇÇN W
)
ÇÇW X
)
ÇÇX Y
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ 
Warn
ÑÑ 
(
ÑÑ 
$str
ÑÑ G
)
ÑÑG H
;
ÑÑH I
throw
ÖÖ 
new
ÖÖ "
KeyNotFoundException
ÖÖ .
(
ÖÖ. /
$str
ÖÖ/ X
)
ÖÖX Y
;
ÖÖY Z
}
ÜÜ 
return
áá 
	existente
áá 
;
áá 
}
àà 	
private
ää )
ResultadoSolicitudCodigoDTO
ää +#
ProcesarReenvioCodigo
ää, A
(
ääA B
string
ãã 
token
ãã 
,
ãã &
SolicitudCodigoPendiente
åå $
	existente
åå% .
)
åå. /
{
çç 	
string
éé 
codigoAnterior
éé !
=
éé" #
	existente
éé$ -
.
éé- .
Codigo
éé. 4
;
éé4 5
DateTime
èè  
expiracionAnterior
èè '
=
èè( )
	existente
èè* 3
.
èè3 4
Expira
èè4 :
;
èè: ;
string
ëë 
nuevoCodigo
ëë 
=
ëë  )
CodigoVerificacionGenerador
ëë! <
.
ëë< =
GenerarCodigo
ëë= J
(
ëëJ K
)
ëëK L
;
ëëL M
	existente
íí 
.
íí 
Codigo
íí 
=
íí 
nuevoCodigo
íí *
;
íí* +
	existente
ìì 
.
ìì 
Expira
ìì 
=
ìì 
DateTime
ìì '
.
ìì' (
UtcNow
ìì( .
.
ìì. /

AddMinutes
ìì/ 9
(
ìì9 :%
MinutosExpiracionCodigo
ìì: Q
)
ììQ R
;
ììR S
bool
ïï 
enviado
ïï 
=
ïï *
_notificacionCodigosServicio
ïï 7
.
ïï7 8 
EnviarNotificacion
ïï8 J
(
ïïJ K
	existente
ññ 
.
ññ 
DatosCuenta
ññ %
.
ññ% &
Correo
ññ& ,
,
ññ, -
nuevoCodigo
óó 
,
óó 
	existente
òò 
.
òò 
DatosCuenta
òò %
.
òò% &
Usuario
òò& -
,
òò- .
	existente
ôô 
.
ôô 
DatosCuenta
ôô %
.
ôô% &
Idioma
ôô& ,
)
ôô, -
;
ôô- .
if
õõ 
(
õõ 
!
õõ 
enviado
õõ 
)
õõ 
{
úú 
	existente
ùù 
.
ùù 
Codigo
ùù  
=
ùù! "
codigoAnterior
ùù# 1
;
ùù1 2
	existente
ûû 
.
ûû 
Expira
ûû  
=
ûû! " 
expiracionAnterior
ûû# 5
;
ûû5 6
_logger
†† 
.
†† 
Error
†† 
(
†† 
$str
†† I
)
††I J
;
††J K
return
¢¢ 
CrearFalloReenvio
¢¢ (
(
¢¢( )
MensajesError
££ !
.
££! "
Cliente
££" )
.
££) *-
ErrorReenviarCodigoVerificacion
££* I
)
££I J
;
££J K
}
§§ 
return
¶¶ 
new
¶¶ )
ResultadoSolicitudCodigoDTO
¶¶ 2
{
ßß 
CodigoEnviado
®® 
=
®® 
true
®®  $
,
®®$ %
TokenCodigo
©© 
=
©© 
token
©© #
}
™™ 
;
™™ 
}
´´ 	
private
≠≠ )
ResultadoSolicitudCodigoDTO
≠≠ +
CrearFalloReenvio
≠≠, =
(
≠≠= >
string
≠≠> D
mensaje
≠≠E L
)
≠≠L M
{
ÆÆ 	
return
ØØ 
new
ØØ )
ResultadoSolicitudCodigoDTO
ØØ 2
{
∞∞ 
CodigoEnviado
±± 
=
±± 
false
±±  %
,
±±% &
Mensaje
≤≤ 
=
≤≤ 
mensaje
≤≤ !
}
≥≥ 
;
≥≥ 
}
¥¥ 	
private
∂∂ 
bool
∂∂ &
ValidarDatosConfirmacion
∂∂ -
(
∂∂- .#
ConfirmacionCodigoDTO
∂∂. C
confirmacion
∂∂D P
)
∂∂P Q
{
∑∑ 	
if
∏∏ 
(
∏∏ 
confirmacion
∏∏ 
==
∏∏ 
null
∏∏  $
)
∏∏$ %
return
∏∏& ,
false
∏∏- 2
;
∏∏2 3
string
ππ 
token
ππ 
=
ππ #
EntradaComunValidador
ππ 0
.
ππ0 1
NormalizarTexto
ππ1 @
(
ππ@ A
confirmacion
ππA M
.
ππM N
TokenCodigo
ππN Y
)
ππY Z
;
ππZ [
string
∫∫ 
codigo
∫∫ 
=
∫∫ #
EntradaComunValidador
∫∫ 1
.
∫∫1 2
NormalizarTexto
∫∫2 A
(
∫∫A B
confirmacion
∫∫B N
.
∫∫N O
CodigoIngresado
∫∫O ^
)
∫∫^ _
;
∫∫_ `
return
ºº #
EntradaComunValidador
ºº (
.
ºº( )
EsTokenValido
ºº) 6
(
ºº6 7
token
ºº7 <
)
ºº< =
&&
ºº> @#
EntradaComunValidador
ΩΩ (
.
ΩΩ( )(
EsCodigoVerificacionValido
ΩΩ) C
(
ΩΩC D
codigo
ΩΩD J
)
ΩΩJ K
;
ΩΩK L
}
ææ 	
private
¿¿ 
(
¿¿ 
bool
¿¿ 
Exito
¿¿ 
,
¿¿ 
string
¿¿ #
MensajeError
¿¿$ 0
)
¿¿0 1&
VerificarCodigoIngresado
¿¿2 J
(
¿¿J K&
SolicitudCodigoPendiente
¡¡ $
	pendiente
¡¡% .
,
¡¡. /
string
¬¬ 
token
¬¬ 
,
¬¬ 
string
√√ 
codigoIngresado
√√ "
)
√√" #
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
	pendiente
≈≈ 
.
≈≈ 
Expira
≈≈  
<
≈≈! "
DateTime
≈≈# +
.
≈≈+ ,
UtcNow
≈≈, 2
)
≈≈2 3
{
∆∆ 
_solicitudes
«« 
.
«« 
	TryRemove
«« &
(
««& '
token
««' ,
,
««, -
out
««. 1
_
««2 3
)
««3 4
;
««4 5
return
»» 
(
»» 
false
»» 
,
»» 
MensajesError
»» ,
.
»», -
Cliente
»»- 4
.
»»4 5(
CodigoVerificacionExpirado
»»5 O
)
»»O P
;
»»P Q
}
…… 
if
ÀÀ 
(
ÀÀ 
!
ÀÀ 
string
ÀÀ 
.
ÀÀ 
Equals
ÀÀ 
(
ÀÀ 
	pendiente
ÃÃ 
.
ÃÃ 
Codigo
ÃÃ  
,
ÃÃ  !
codigoIngresado
ÕÕ 
,
ÕÕ  
StringComparison
ŒŒ  
.
ŒŒ  !
OrdinalIgnoreCase
ŒŒ! 2
)
ŒŒ2 3
)
ŒŒ3 4
{
œœ 
return
–– 
(
–– 
false
–– 
,
–– 
MensajesError
–– ,
.
––, -
Cliente
––- 4
.
––4 5*
CodigoVerificacionIncorrecto
––5 Q
)
––Q R
;
––R S
}
—— 
return
”” 
(
”” 
true
”” 
,
”” 
null
”” 
)
”” 
;
””  
}
‘‘ 	
private
÷÷ 
void
÷÷ #
RegistrarConfirmacion
÷÷ *
(
÷÷* +&
SolicitudCodigoPendiente
÷÷+ C
	pendiente
÷÷D M
)
÷÷M N
{
◊◊ 	
string
ÿÿ 
clave
ÿÿ 
=
ÿÿ 
ObtenerClave
ÿÿ '
(
ÿÿ' (
	pendiente
ŸŸ 
.
ŸŸ 
DatosCuenta
ŸŸ %
.
ŸŸ% &
Usuario
ŸŸ& -
,
ŸŸ- .
	pendiente
⁄⁄ 
.
⁄⁄ 
DatosCuenta
⁄⁄ %
.
⁄⁄% &
Correo
⁄⁄& ,
)
⁄⁄, -
;
⁄⁄- .(
_verificacionesConfirmadas
‹‹ &
[
‹‹& '
clave
‹‹' ,
]
‹‹, -
=
‹‹. /
$num
‹‹0 1
;
‹‹1 2
}
›› 	
private
ﬂﬂ (
ResultadoRegistroCuentaDTO
ﬂﬂ *$
CrearFalloConfirmacion
ﬂﬂ+ A
(
ﬂﬂA B
string
ﬂﬂB H
mensaje
ﬂﬂI P
)
ﬂﬂP Q
{
‡‡ 	
return
·· 
new
·· (
ResultadoRegistroCuentaDTO
·· 1
{
‚‚ 
RegistroExitoso
„„ 
=
„„  !
false
„„" '
,
„„' (
Mensaje
‰‰ 
=
‰‰ 
mensaje
‰‰ !
}
ÂÂ 
;
ÂÂ 
}
ÊÊ 	
private
ËË 
static
ËË 
NuevaCuentaDTO
ËË %
CopiarCuenta
ËË& 2
(
ËË2 3
NuevaCuentaDTO
ËË3 A
original
ËËB J
)
ËËJ K
{
ÈÈ 	
return
ÍÍ 
new
ÍÍ 
NuevaCuentaDTO
ÍÍ %
{
ÎÎ 
Usuario
ÏÏ 
=
ÏÏ 
original
ÏÏ "
.
ÏÏ" #
Usuario
ÏÏ# *
,
ÏÏ* +
Correo
ÌÌ 
=
ÌÌ 
original
ÌÌ !
.
ÌÌ! "
Correo
ÌÌ" (
,
ÌÌ( )
Nombre
ÓÓ 
=
ÓÓ 
original
ÓÓ !
.
ÓÓ! "
Nombre
ÓÓ" (
,
ÓÓ( )
Apellido
ÔÔ 
=
ÔÔ 
original
ÔÔ #
.
ÔÔ# $
Apellido
ÔÔ$ ,
,
ÔÔ, -

Contrasena
 
=
 
original
 %
.
% &

Contrasena
& 0
,
0 1
AvatarId
ÒÒ 
=
ÒÒ 
original
ÒÒ #
.
ÒÒ# $
AvatarId
ÒÒ$ ,
,
ÒÒ, -
Idioma
ÚÚ 
=
ÚÚ 
original
ÚÚ !
.
ÚÚ! "
Idioma
ÚÚ" (
}
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
static
ˆˆ 
string
ˆˆ 
ObtenerClave
ˆˆ *
(
ˆˆ* +
string
ˆˆ+ 1
usuario
ˆˆ2 9
,
ˆˆ9 :
string
ˆˆ; A
correo
ˆˆB H
)
ˆˆH I
{
˜˜ 	
return
¯¯ 
(
¯¯ 
$"
¯¯ 
{
¯¯ 
usuario
¯¯ 
}
¯¯ 
$str
¯¯  
{
¯¯  !
correo
¯¯! '
}
¯¯' (
"
¯¯( )
)
¯¯) *
.
¯¯* +
ToLowerInvariant
¯¯+ ;
(
¯¯; <
)
¯¯< =
;
¯¯= >
}
˘˘ 	
private
˚˚ 
sealed
˚˚ 
class
˚˚ &
SolicitudCodigoPendiente
˚˚ 5
{
¸¸ 	
public
˝˝ 
NuevaCuentaDTO
˝˝ !
DatosCuenta
˝˝" -
{
˝˝. /
get
˝˝0 3
;
˝˝3 4
set
˝˝5 8
;
˝˝8 9
}
˝˝: ;
public
˛˛ 
string
˛˛ 
Codigo
˛˛  
{
˛˛! "
get
˛˛# &
;
˛˛& '
set
˛˛( +
;
˛˛+ ,
}
˛˛- .
public
ˇˇ 
DateTime
ˇˇ 
Expira
ˇˇ "
{
ˇˇ# $
get
ˇˇ% (
;
ˇˇ( )
set
ˇˇ* -
;
ˇˇ- .
}
ˇˇ/ 0
}
ÄÄ 	
}
ÅÅ 
}ÇÇ ”
ÇC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\ValidadorNombreUsuario.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
public 

class "
ValidadorNombreUsuario '
:( )#
IValidadorNombreUsuario* A
{ 
public 
void 
Validar 
( 
string "
nombreUsuario# 0
,0 1
string2 8
	parametro9 B
)B C
{ 	
string 
normalizado 
=  
nombreUsuario! .
?. /
./ 0
Trim0 4
(4 5
)5 6
;6 7
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
normalizado* 5
)5 6
)6 7
{ 
string 
mensaje 
=  
string! '
.' (
Format( .
(. /
CultureInfo/ :
.: ;
CurrentCulture; I
,I J
MensajesError !
.! "
Cliente" )
.) * 
ParametroObligatorio* >
,> ?
	parametro@ I
)I J
;J K
throw 
new 
FaultException (
(( )
mensaje) 0
)0 1
;1 2
} 
if 
( 
normalizado 
. 
Length "
># $!
EntradaComunValidador% :
.: ;
LongitudMaximaTexto; N
)N O
{ 
throw   
new   
FaultException   (
(  ( )
MensajesError  ) 6
.  6 7
Cliente  7 >
.  > ?#
UsuarioRegistroInvalido  ? V
)  V W
;  W X
}!! 
}"" 	
public** 
string** $
ObtenerNombreNormalizado** .
(**. /
string**/ 5
nombreBaseDatos**6 E
,**E F
string**G M
nombreAlterno**N [
)**[ \
{++ 	
string,, 
nombre,, 
=,, 
nombreBaseDatos,, +
?,,+ ,
.,,, -
Trim,,- 1
(,,1 2
),,2 3
;,,3 4
if.. 
(.. 
!.. 
string.. 
... 
IsNullOrWhiteSpace.. *
(..* +
nombre..+ 1
)..1 2
)..2 3
{// 
return00 
nombre00 
;00 
}11 
return33 
nombreAlterno33  
?33  !
.33! "
Trim33" &
(33& '
)33' (
;33( )
}44 	
}55 
}66 ö
zC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\TokenGenerador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
internal		 
static		 
class		 
TokenGenerador		 (
{

 
public 
static 
string 
GenerarToken )
() *
)* +
{ 	
return 
Guid 
. 
NewGuid 
(  
)  !
.! "
ToString" *
(* +
$str+ .
). /
;/ 0
} 	
} 
} ¯@
}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\ManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
internal 
class 
ManejadorCallback $
<$ %
	TCallback% .
>. /
where0 5
	TCallback6 ?
:@ A
classB G
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (
ManejadorCallback( 9
<9 :
	TCallback: C
>C D
)D E
)E F
;F G
private 
readonly  
ConcurrentDictionary -
<- .
string. 4
,4 5
	TCallback6 ?
>? @
_suscripcionesA O
;O P
public 
ManejadorCallback  
(  !
StringComparer! /
comparer0 8
=9 :
null; ?
)? @
{ 	
_suscripciones 
= 
comparer %
!=& (
null) -
? 
new  
ConcurrentDictionary *
<* +
string+ 1
,1 2
	TCallback3 <
>< =
(= >
comparer> F
)F G
: 
new  
ConcurrentDictionary *
<* +
string+ 1
,1 2
	TCallback3 <
>< =
(= >
StringComparer> L
.L M
OrdinalIgnoreCaseM ^
)^ _
;_ `
} 	
public   
void   
	Suscribir   
(   
string   $
nombreUsuario  % 2
,  2 3
	TCallback  4 =
callback  > F
)  F G
{!! 	
if"" 
("" 
string"" 
."" 
IsNullOrWhiteSpace"" )
("") *
nombreUsuario""* 7
)""7 8
||""9 ;
callback""< D
==""E G
null""H L
)""L M
{## 
return$$ 
;$$ 
}%% 
_suscripciones'' 
.'' 
AddOrUpdate'' &
(''& '
nombreUsuario''' 4
,''4 5
callback''6 >
,''> ?
(''@ A
_''A B
,''B C
__''D F
)''F G
=>''H J
callback''K S
)''S T
;''T U
}(( 	
public.. 
void.. "
ConfigurarEventosCanal.. *
(..* +
string..+ 1
nombreUsuario..2 ?
)..? @
{// 	
var00 
canal00 
=00 
OperationContext00 (
.00( )
Current00) 0
?000 1
.001 2
Channel002 9
;009 :
if11 
(11 
canal11 
!=11 
null11 
)11 
{22 
canal33 
.33 
Closed33 
+=33 
(33  !
_33! "
,33" #
__33$ &
)33& '
=>33( *
{44 
Desuscribir55 
(55  
nombreUsuario55  -
)55- .
;55. /
}66 
;66 
canal77 
.77 
Faulted77 
+=77  
(77! "
_77" #
,77# $
__77% '
)77' (
=>77) +
{88 
_logger99 
.99 

WarnFormat99 &
(99& '
$str:: U
,::U V
nombreUsuario;; %
);;% &
;;;& '
Desuscribir<< 
(<<  
nombreUsuario<<  -
)<<- .
;<<. /
}== 
;== 
}>> 
}?? 	
publicEE 
voidEE 
DesuscribirEE 
(EE  
stringEE  &
nombreUsuarioEE' 4
)EE4 5
{FF 	
ifGG 
(GG 
stringGG 
.GG 
IsNullOrWhiteSpaceGG )
(GG) *
nombreUsuarioGG* 7
)GG7 8
)GG8 9
{HH 
returnII 
;II 
}JJ 
_suscripcionesLL 
.LL 
	TryRemoveLL $
(LL$ %
nombreUsuarioLL% 2
,LL2 3
outLL4 7
_LL8 9
)LL9 :
;LL: ;
}MM 	
publicUU 
boolUU 
TryGetCallbackUU "
(UU" #
stringUU# )
nombreUsuarioUU* 7
,UU7 8
outUU9 <
	TCallbackUU= F
callbackUUG O
)UUO P
{VV 	
returnWW 
_suscripcionesWW !
.WW! "
TryGetValueWW" -
(WW- .
nombreUsuarioWW. ;
,WW; <
outWW= @
callbackWWA I
)WWI J
;WWJ K
}XX 	
public`` 
static`` 
	TCallback`` !
ObtenerCallbackActual``  5
(``5 6
)``6 7
{aa 	
varbb 
contextobb 
=bb 
OperationContextbb +
.bb+ ,
Currentbb, 3
;bb3 4
ifcc 
(cc 
contextocc 
!=cc 
nullcc  
)cc  !
{dd 
varee 
callbackee 
=ee 
contextoee '
.ee' (
GetCallbackChannelee( :
<ee: ;
	TCallbackee; D
>eeD E
(eeE F
)eeF G
;eeG H
ifff 
(ff 
callbackff 
!=ff 
nullff  $
)ff$ %
{gg 
returnhh 
callbackhh #
;hh# $
}ii 
throwkk 
newkk 
FaultExceptionkk (
(kk( )
MensajesErrorkk) 6
.kk6 7
Clientekk7 >
.kk> ? 
ErrorObtenerCallbackkk? S
)kkS T
;kkT U
}ll 
thrownn 
newnn 
FaultExceptionnn $
(nn$ %
MensajesErrornn% 2
.nn2 3
Clientenn3 :
.nn: ;"
ErrorContextoOperacionnn; Q
)nnQ R
;nnR S
}oo 	
publicvv 
voidvv 
	Notificarvv 
(vv 
stringvv $
nombreUsuariovv% 2
,vv2 3
Actionvv4 :
<vv: ;
	TCallbackvv; D
>vvD E
accionNotificacionvvF X
)vvX Y
{ww 	
ifxx 
(xx 
!xx 
TryGetCallbackxx 
(xx  
nombreUsuarioxx  -
,xx- .
outxx/ 2
varxx3 6
callbackxx7 ?
)xx? @
)xx@ A
{yy 
returnzz 
;zz 
}{{ 
try}} 
{~~ 
accionNotificacion "
(" #
callback# +
)+ ,
;, -
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ $
CommunicationException
ÅÅ )
ex
ÅÅ* ,
)
ÅÅ, -
{
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
ErrorFormat
ÉÉ #
(
ÉÉ# $
$str
ÉÉ$ a
,
ÉÉa b
nombreUsuario
ÑÑ !
,
ÑÑ! "
ex
ÑÑ# %
)
ÑÑ% &
;
ÑÑ& '
Desuscribir
ÖÖ 
(
ÖÖ  
nombreUsuario
ÖÖ  -
)
ÖÖ- .
;
ÖÖ. /
}
ÜÜ 
catch
áá 
(
áá 
TimeoutException
áá #
ex
áá$ &
)
áá& '
{
àà 
_logger
ââ 
.
ââ 
ErrorFormat
ââ #
(
ââ# $
$str
ââ$ S
,
ââS T
nombreUsuario
ää !
,
ää! "
ex
ää# %
)
ää% &
;
ää& '
Desuscribir
ãã 
(
ãã  
nombreUsuario
ãã  -
)
ãã- .
;
ãã. /
}
åå 
catch
çç 
(
çç '
InvalidOperationException
çç ,
ex
çç- /
)
çç/ 0
{
éé 
_logger
èè 
.
èè 
Warn
èè 
(
èè 
$str
èè F
,
èèF G
ex
èèH J
)
èèJ K
;
èèK L
}
êê 
}
ëë 	
}
íí 
}ìì –
ÉC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\IValidadorNombreUsuario.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
public 

	interface #
IValidadorNombreUsuario ,
{ 
void 
Validar 
( 
string 
nombreUsuario )
,) *
string+ 1
	parametro2 ;
); <
;< =
string $
ObtenerNombreNormalizado '
(' (
string( .
nombreBaseDatos/ >
,> ?
string@ F
nombreAlternoG T
)T U
;U V
} 
} ¿
áC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\CodigoVerificacionGenerador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
internal		 
static		 
class		 '
CodigoVerificacionGenerador		 5
{

 
private 
static 
readonly 
Random  &
_random' .
=/ 0
new1 4
Random5 ;
(; <
)< =
;= >
public 
static 
string 
GenerarCodigo *
(* +
int+ .
longitud/ 7
=8 9
$num: ;
); <
{ 	
if 
( 
longitud 
<= 
$num 
) 
{ 
throw 
new '
ArgumentOutOfRangeException 5
(5 6
nameof6 <
(< =
longitud= E
)E F
)F G
;G H
} 
lock 
( 
_random 
) 
{ 
int 
limiteSuperior "
=# $
(% &
int& )
)) *
Math* .
.. /
Pow/ 2
(2 3
$num3 5
,5 6
longitud7 ?
)? @
-A B
$numC D
;D E
int 
limiteInferior "
=# $
(% &
int& )
)) *
Math* .
.. /
Pow/ 2
(2 3
$num3 5
,5 6
longitud7 ?
-@ A
$numB C
)C D
;D E
int   
numero   
=   
_random   $
.  $ %
Next  % )
(  ) *
limiteInferior  * 8
,  8 9
limiteSuperior  : H
)  H I
;  I J
return!! 
numero!! 
.!! 
ToString!! &
(!!& '
)!!' (
;!!( )
}"" 
}## 	
}$$ 
}%% ∏
çC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\ICodigoVerificacionNotificador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
public		 

	interface		 *
ICodigoVerificacionNotificador		 3
{

 
Task 
< 
bool 
> 
NotificarAsync !
(! "
string" (
correoDestino) 6
,6 7
string8 >
codigo? E
,E F
stringG M
usuarioDestinoN \
,\ ]
string 
idioma 
) 
; 
}   
}!! Óì
äC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\CorreoInvitacionNotificador.cs
	namespace		 	%
PictionaryMusicalServidor		
 #
.		# $
	Servicios		$ -
.		- .
	Servicios		. 7
.		7 8
Notificadores		8 E
{

 
public 

class '
CorreoInvitacionNotificador ,
:- .(
ICorreoInvitacionNotificador/ K
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ('
CorreoInvitacionNotificador( C
)C D
)D E
;E F
private 
const 
string "
AsuntoPredeterminadoEs 3
=4 5
$str6 c
;c d
private 
const 
string "
AsuntoPredeterminadoEn 3
=4 5
$str6 Z
;Z [
public 
async 
Task 
< 
bool 
> !
EnviarInvitacionAsync  5
(5 6
string6 <
correoDestino= J
,J K
stringL R

codigoSalaS ]
,] ^
string 
creador 
, 
string "
idioma# )
)) *
{   	
if!! 
(!! 
string!! 
.!! 
IsNullOrWhiteSpace!! )
(!!) *
correoDestino!!* 7
)!!7 8
||!!9 ;
string!!< B
.!!B C
IsNullOrWhiteSpace!!C U
(!!U V

codigoSala!!V `
)!!` a
)!!a b
{"" 
return## 
false## 
;## 
}$$ 
var&& 
configuracion&& 
=&& $
ObtenerConfiguracionSmtp&&  8
(&&8 9
)&&9 :
;&&: ;
if'' 
('' 
!'' 
configuracion'' 
.'' 
EsValida'' '
)''' (
{(( 
_logger)) 
.)) 
Error)) 
()) 
$str)) Y
)))Y Z
;))Z [
return** 
false** 
;** 
}++ 
string-- 
idiomaNormalizado-- $
=--% &
NormalizarIdioma--' 7
(--7 8
idioma--8 >
)--> ?
;--? @
string.. 
asunto.. 
=.. 
ObtenerAsunto.. )
(..) *
idiomaNormalizado..* ;
)..; <
;..< =
string// 

cuerpoHtml// 
=// "
ConstruirCuerpoMensaje//  6
(//6 7

codigoSala//7 A
,//A B
creador//C J
,//J K
idiomaNormalizado//L ]
)//] ^
;//^ _
return11 
await11 "
EjecutarEnvioSmtpAsync11 /
(11/ 0
correoDestino110 =
,11= >
asunto11? E
,11E F

cuerpoHtml11G Q
,11Q R
configuracion11S `
)11` a
;11a b
}22 	
private44 
ConfiguracionSmtp44 !$
ObtenerConfiguracionSmtp44" :
(44: ;
)44; <
{55 	
var66 
config66 
=66 
new66 
ConfiguracionSmtp66 .
{77 
	Remitente88 
=88  
ObtenerConfiguracion88 0
(880 1
$str881 B
,88B C
$str88D `
)88` a
,88a b

Contrasena99 
=99  
ObtenerConfiguracion99 1
(991 2
$str992 B
,99B C
$str99D \
)99\ ]
,99] ^
Host:: 
=::  
ObtenerConfiguracion:: +
(::+ ,
$str::, 8
,::8 9
$str::: L
)::L M
,::M N
Usuario;; 
=;;  
ObtenerConfiguracion;; .
(;;. /
$str;;/ >
,;;> ?
$str;;@ U
);;U V
,;;V W
PuertoString<< 
=<<  
ObtenerConfiguracion<< 3
(<<3 4
$str<<4 B
,<<B C
$str<<D X
)<<X Y
,<<Y Z
	SslString== 
===  
ObtenerConfiguracion== 0
(==0 1
$str==1 <
,==< =
$str==> X
)==X Y
}>> 
;>> 
if@@ 
(@@ 
string@@ 
.@@ 
IsNullOrWhiteSpace@@ )
(@@) *
config@@* 0
.@@0 1
Usuario@@1 8
)@@8 9
)@@9 :
{AA 
configBB 
.BB 
UsuarioBB 
=BB  
configBB! '
.BB' (
	RemitenteBB( 1
;BB1 2
}CC 
returnEE 
configEE 
;EE 
}FF 	
privateHH 
stringHH 
ObtenerAsuntoHH $
(HH$ %
stringHH% +
idiomaNormalizadoHH, =
)HH= >
{II 	
stringJJ 
asuntoConfiguradoJJ $
=JJ% & 
ObtenerConfiguracionJJ' ;
(JJ; <
stringKK 
.KK 
FormatKK 
(KK 
$strKK :
,KK: ;
idiomaNormalizadoKK< M
)KKM N
,KKN O
stringLL 
.LL 
FormatLL 
(LL 
$strLL <
,LL< =
idiomaNormalizadoLL> O
)LLO P
,LLP Q
$strMM (
,MM( )
$strNN *
)NN* +
;NN+ ,
returnPP 
stringPP 
.PP 
IsNullOrWhiteSpacePP ,
(PP, -
asuntoConfiguradoPP- >
)PP> ?
?QQ '
ObtenerAsuntoPredeterminadoQQ -
(QQ- .
idiomaNormalizadoQQ. ?
)QQ? @
:RR 
asuntoConfiguradoRR #
;RR# $
}SS 	
privateUU 
asyncUU 
TaskUU 
<UU 
boolUU 
>UU  "
EjecutarEnvioSmtpAsyncUU! 7
(UU7 8
stringUU8 >
destinatarioUU? K
,UUK L
stringUUM S
asuntoUUT Z
,UUZ [
stringVV 
cuerpoVV 
,VV 
ConfiguracionSmtpVV ,
configVV- 3
)VV3 4
{WW 	
tryXX 
{YY 
usingZZ 
(ZZ 
varZZ 
mensajeZZ "
=ZZ# $
newZZ% (
MailMessageZZ) 4
(ZZ4 5
configZZ5 ;
.ZZ; <
	RemitenteZZ< E
,ZZE F
destinatarioZZG S
,ZZS T
asuntoZZU [
,ZZ[ \
cuerpo[[ 
)[[ 
)[[ 
{\\ 
mensaje]] 
.]] 

IsBodyHtml]] &
=]]' (
true]]) -
;]]- .
mensaje^^ 
.^^ 
BodyEncoding^^ (
=^^) *
Encoding^^+ 3
.^^3 4
UTF8^^4 8
;^^8 9
mensaje__ 
.__ 
SubjectEncoding__ +
=__, -
Encoding__. 6
.__6 7
UTF8__7 ;
;__; <
usingaa 
(aa 
varaa 
clienteSmtpaa *
=aa+ ,
newaa- 0

SmtpClientaa1 ;
(aa; <
configaa< B
.aaB C
HostaaC G
,aaG H
configaaI O
.aaO P
PuertoaaP V
)aaV W
)aaW X
{bb 
clienteSmtpcc #
.cc# $
	EnableSslcc$ -
=cc. /
configcc0 6
.cc6 7
HabilitarSslcc7 C
;ccC D
ifee 
(ee 
!ee 
stringee #
.ee# $
IsNullOrWhiteSpaceee$ 6
(ee6 7
configee7 =
.ee= >

Contrasenaee> H
)eeH I
)eeI J
{ff 
clienteSmtpgg '
.gg' (
Credentialsgg( 3
=gg4 5
newgg6 9
NetworkCredentialgg: K
(ggK L
configggL R
.ggR S
UsuarioggS Z
,ggZ [
confighh  &
.hh& '

Contrasenahh' 1
)hh1 2
;hh2 3
}ii 
awaitkk 
clienteSmtpkk )
.ll 
SendMailAsyncll *
(ll* +
mensajell+ 2
)ll2 3
.mm 
ConfigureAwaitmm +
(mm+ ,
falsemm, 1
)mm1 2
;mm2 3
}nn 
}oo 
returnqq 
trueqq 
;qq 
}rr 
catchss 
(ss 
SmtpExceptionss  
exss! #
)ss# $
{tt 
_loggeruu 
.uu 
Erroruu 
(uu 
$struu H
,uuH I
exuuJ L
)uuL M
;uuM N
returnvv 
falsevv 
;vv 
}ww 
catchxx 
(xx %
InvalidOperationExceptionxx ,
exxx- /
)xx/ 0
{yy 
_loggerzz 
.zz 
Errorzz 
(zz 
$strzz D
,zzD E
exzzF H
)zzH I
;zzI J
return{{ 
false{{ 
;{{ 
}|| 
catch}} 
(}} 
ArgumentException}} $
ex}}% '
)}}' (
{~~ 
_logger 
. 
Error 
( 
$str H
,H I
exJ L
)L M
;M N
return
ÄÄ 
false
ÄÄ 
;
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
FormatException
ÇÇ "
ex
ÇÇ# %
)
ÇÇ% &
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ 
Error
ÑÑ 
(
ÑÑ 
$str
ÑÑ P
,
ÑÑP Q
ex
ÑÑR T
)
ÑÑT U
;
ÑÑU V
return
ÖÖ 
false
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 	
private
ââ 
class
ââ 
ConfiguracionSmtp
ââ '
{
ää 	
public
ãã 
string
ãã 
	Remitente
ãã #
{
ãã$ %
get
ãã& )
;
ãã) *
set
ãã+ .
;
ãã. /
}
ãã0 1
public
åå 
string
åå 

Contrasena
åå $
{
åå% &
get
åå' *
;
åå* +
set
åå, /
;
åå/ 0
}
åå1 2
public
çç 
string
çç 
Host
çç 
{
çç  
get
çç! $
;
çç$ %
set
çç& )
;
çç) *
}
çç+ ,
public
éé 
string
éé 
Usuario
éé !
{
éé" #
get
éé$ '
;
éé' (
set
éé) ,
;
éé, -
}
éé. /
public
èè 
string
èè 
PuertoString
èè &
{
èè' (
get
èè) ,
;
èè, -
set
èè. 1
;
èè1 2
}
èè3 4
public
êê 
string
êê 
	SslString
êê #
{
êê$ %
get
êê& )
;
êê) *
set
êê+ .
;
êê. /
}
êê0 1
public
íí 
int
íí 
Puerto
íí 
=>
íí  
int
íí! $
.
íí$ %
TryParse
íí% -
(
íí- .
PuertoString
íí. :
,
íí: ;
out
íí< ?
int
íí@ C
p
ííD E
)
ííE F
?
ííG H
p
ííI J
:
ííK L
$num
ííM P
;
ííP Q
public
ìì 
bool
ìì 
HabilitarSsl
ìì $
=>
ìì% '
bool
ìì( ,
.
ìì, -
TryParse
ìì- 5
(
ìì5 6
	SslString
ìì6 ?
,
ìì? @
out
ììA D
bool
ììE I
ssl
ììJ M
)
ììM N
&&
ììO Q
ssl
ììR U
;
ììU V
public
ïï 
bool
ïï 
EsValida
ïï  
=>
ïï! #
!
ïï$ %
string
ïï% +
.
ïï+ , 
IsNullOrWhiteSpace
ïï, >
(
ïï> ?
	Remitente
ïï? H
)
ïïH I
&&
ññ! #
!
ññ$ %
string
ññ% +
.
ññ+ , 
IsNullOrWhiteSpace
ññ, >
(
ññ> ?
Host
ññ? C
)
ññC D
&&
óó! #
HabilitarSsl
óó$ 0
;
óó0 1
}
òò 	
internal
öö 
static
öö 
string
öö $
ConstruirCuerpoMensaje
öö 5
(
öö5 6
string
öö6 <

codigoSala
öö= G
,
ööG H
string
ööI O
creador
ööP W
,
ööW X
string
õõ 
idioma
õõ 
)
õõ 
{
úú 	
string
ùù 
idiomaNormalizado
ùù $
=
ùù% &
NormalizarIdioma
ùù' 7
(
ùù7 8
idioma
ùù8 >
)
ùù> ?
;
ùù? @
bool
ûû 
esIngles
ûû 
=
ûû 
idiomaNormalizado
ûû -
==
ûû. 0
$str
ûû1 5
;
ûû5 6
string
†† 
saludo
†† 
=
†† 
esIngles
†† $
?
°° 
$str
°° 
:
¢¢ 
$str
¢¢ 
;
¢¢ 
string
§§ 
mensajeBienvenida
§§ $
=
§§% &
esIngles
§§' /
?
•• 
$str
•• G
:
¶¶ 
$str
¶¶ J
;
¶¶J K
string
®® 
mensajeInvitacion
®® $
=
®®% &
esIngles
®®' /
?
©© 
$"
©© 
{
©© 
creador
©© 
}
©© 
$str
©© <
"
©©< =
:
™™ 
$"
™™ 
{
™™ 
creador
™™ 
}
™™ 
$str
™™ 7
"
™™7 8
;
™™8 9
string
¨¨  
mensajeInstruccion
¨¨ %
=
¨¨& '
esIngles
¨¨( 0
?
≠≠ 
$str
≠≠ 3
:
ÆÆ 
$str
ÆÆ =
;
ÆÆ= >
string
∞∞ 
mensajeDespedida
∞∞ #
=
∞∞$ %
esIngles
∞∞& .
?
±± 
$str
±± (
:
≤≤ 
$str
≤≤ ,
;
≤≤, -
var
¥¥ 

cuerpoHtml
¥¥ 
=
¥¥ 
new
¥¥  
StringBuilder
¥¥! .
(
¥¥. /
)
¥¥/ 0
;
¥¥0 1

cuerpoHtml
∂∂ 
.
∂∂ 
Append
∂∂ 
(
∂∂ 
$str
∂∂ T
)
∂∂T U
;
∂∂U V

cuerpoHtml
∑∑ 
.
∑∑ 
Append
∑∑ 
(
∑∑ 
$"
∑∑  
$str
∑∑  $
{
∑∑$ %
saludo
∑∑% +
}
∑∑+ ,
$str
∑∑, 1
"
∑∑1 2
)
∑∑2 3
;
∑∑3 4

cuerpoHtml
∏∏ 
.
∏∏ 
Append
∏∏ 
(
∏∏ 
$"
∏∏  
$str
∏∏  #
{
∏∏# $
mensajeBienvenida
∏∏$ 5
}
∏∏5 6
$str
∏∏6 :
"
∏∏: ;
)
∏∏; <
;
∏∏< =

cuerpoHtml
ππ 
.
ππ 
Append
ππ 
(
ππ 
$"
ππ  
$str
ππ  #
{
ππ# $
mensajeInvitacion
ππ$ 5
}
ππ5 6
$str
ππ6 :
"
ππ: ;
)
ππ; <
;
ππ< =

cuerpoHtml
∫∫ 
.
∫∫ 
Append
∫∫ 
(
∫∫ 
$"
∫∫  
$str
∫∫  #
{
∫∫# $ 
mensajeInstruccion
∫∫$ 6
}
∫∫6 7
$str
∫∫7 ;
"
∫∫; <
)
∫∫< =
;
∫∫= >

cuerpoHtml
ªª 
.
ªª 
Append
ªª 
(
ºº 
$"
ºº 
$str
ºº C
{
ººC D

codigoSala
ººD N
}
ººN O
$str
ººO T
"
ººT U
)
ººU V
;
ººV W

cuerpoHtml
ΩΩ 
.
ΩΩ 
Append
ΩΩ 
(
ΩΩ 
$"
ΩΩ  
$str
ΩΩ  #
{
ΩΩ# $
mensajeDespedida
ΩΩ$ 4
}
ΩΩ4 5
$str
ΩΩ5 9
"
ΩΩ9 :
)
ΩΩ: ;
;
ΩΩ; <

cuerpoHtml
ææ 
.
ææ 
Append
ææ 
(
ææ 
$str
ææ .
)
ææ. /
;
ææ/ 0
return
¿¿ 

cuerpoHtml
¿¿ 
.
¿¿ 
ToString
¿¿ &
(
¿¿& '
)
¿¿' (
;
¿¿( )
}
¡¡ 	
private
√√ 
static
√√ 
string
√√ 
NormalizarIdioma
√√ .
(
√√. /
string
√√/ 5
idioma
√√6 <
)
√√< =
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
string
≈≈ 
.
≈≈  
IsNullOrWhiteSpace
≈≈ )
(
≈≈) *
idioma
≈≈* 0
)
≈≈0 1
)
≈≈1 2
{
∆∆ 
return
«« 
$str
«« 
;
«« 
}
»» 
return
   
idioma
   
.
   

StartsWith
   $
(
  $ %
$str
  % )
,
  ) *
StringComparison
  + ;
.
  ; <
OrdinalIgnoreCase
  < M
)
  M N
?
  O P
$str
  Q U
:
  V W
$str
  X \
;
  \ ]
}
ÀÀ 	
private
ÕÕ 
static
ÕÕ 
string
ÕÕ )
ObtenerAsuntoPredeterminado
ÕÕ 9
(
ÕÕ9 :
string
ÕÕ: @
idiomaNormalizado
ÕÕA R
)
ÕÕR S
{
ŒŒ 	
return
œœ 
idiomaNormalizado
œœ $
==
œœ% '
$str
œœ( ,
?
œœ- .$
AsuntoPredeterminadoEn
œœ/ E
:
œœF G$
AsuntoPredeterminadoEs
œœH ^
;
œœ^ _
}
–– 	
private
““ 
static
““ 
string
““ "
ObtenerConfiguracion
““ 2
(
““2 3
params
““3 9
string
““: @
[
““@ A
]
““A B
claves
““C I
)
““I J
{
”” 	
if
‘‘ 
(
‘‘ 
claves
‘‘ 
==
‘‘ 
null
‘‘ 
)
‘‘ 
{
’’ 
return
÷÷ 
string
÷÷ 
.
÷÷ 
Empty
÷÷ #
;
÷÷# $
}
◊◊ 
foreach
ŸŸ 
(
ŸŸ 
string
ŸŸ 
clave
ŸŸ !
in
ŸŸ" $
claves
ŸŸ% +
)
ŸŸ+ ,
{
⁄⁄ 
if
€€ 
(
€€ 
string
€€ 
.
€€  
IsNullOrWhiteSpace
€€ -
(
€€- .
clave
€€. 3
)
€€3 4
)
€€4 5
{
‹‹ 
continue
›› 
;
›› 
}
ﬁﬁ 
string
‡‡ 
valor
‡‡ 
=
‡‡ "
ConfigurationManager
‡‡ 3
.
‡‡3 4
AppSettings
‡‡4 ?
[
‡‡? @
clave
‡‡@ E
]
‡‡E F
;
‡‡F G
if
‚‚ 
(
‚‚ 
!
‚‚ 
string
‚‚ 
.
‚‚  
IsNullOrWhiteSpace
‚‚ .
(
‚‚. /
valor
‚‚/ 4
)
‚‚4 5
)
‚‚5 6
{
„„ 
return
‰‰ 
valor
‰‰  
;
‰‰  !
}
ÂÂ 
}
ÊÊ 
return
ËË 
string
ËË 
.
ËË 
Empty
ËË 
;
ËË  
}
ÈÈ 	
}
ÍÍ 
}ÎÎ ˇç
íC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\CorreoCodigoVerificacionNotificador.cs
	namespace

 	%
PictionaryMusicalServidor


 #
.

# $
	Servicios

$ -
.

- .
	Servicios

. 7
.

7 8

Utilidades

8 B
{ 
public 

class /
#CorreoCodigoVerificacionNotificador 4
:5 6*
ICodigoVerificacionNotificador7 U
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (/
#CorreoCodigoVerificacionNotificador( K
)K L
)L M
;M N
private 
const 
string "
AsuntoPredeterminadoEs 3
=4 5
$str6 N
;N O
private 
const 
string "
AsuntoPredeterminadoEn 3
=4 5
$str6 I
;I J
public   
async   
Task   
<   
bool   
>   
NotificarAsync    .
(  . /
string  / 5
correoDestino  6 C
,  C D
string  E K
codigo  L R
,  R S
string!! 
usuarioDestino!! !
,!!! "
string!!# )
idioma!!* 0
)!!0 1
{"" 	
if## 
(## 
string## 
.## 
IsNullOrWhiteSpace## )
(##) *
correoDestino##* 7
)##7 8
||##9 ;
string##< B
.##B C
IsNullOrWhiteSpace##C U
(##U V
codigo##V \
)##\ ]
)##] ^
{$$ 
return%% 
false%% 
;%% 
}&& 
var(( 
config(( 
=(( $
ObtenerConfiguracionSmtp(( 1
(((1 2
)((2 3
;((3 4
if)) 
()) 
!)) 
config)) 
.)) 
EsValida))  
)))  !
{** 
_logger++ 
.++ 
Error++ 
(++ 
$str++ Y
)++Y Z
;++Z [
return,, 
false,, 
;,, 
}-- 
string// 
idiomaNormalizado// $
=//% &
NormalizarIdioma//' 7
(//7 8
idioma//8 >
)//> ?
;//? @
string00 
asunto00 
=00 
ObtenerAsunto00 )
(00) *
idiomaNormalizado00* ;
)00; <
;00< =
string11 

cuerpoHtml11 
=11 "
ConstruirCuerpoMensaje11  6
(116 7
usuarioDestino117 E
,11E F
codigo11G M
,11M N
idiomaNormalizado11O `
)11` a
;11a b
return33 
await33 "
EjecutarEnvioSmtpAsync33 /
(33/ 0
correoDestino330 =
,33= >
asunto33? E
,33E F

cuerpoHtml33G Q
,33Q R
config33S Y
)33Y Z
;33Z [
}44 	
internal>> 
static>> 
string>> "
ConstruirCuerpoMensaje>> 5
(>>5 6
string>>6 <
usuarioDestino>>= K
,>>K L
string>>M S
codigo>>T Z
,>>Z [
string?? 
idioma?? 
)?? 
{@@ 	
stringAA 
idiomaNormalizadoAA $
=AA% &
NormalizarIdiomaAA' 7
(AA7 8
idiomaAA8 >
)AA> ?
;AA? @
boolBB 
esInglesBB 
=BB 
idiomaNormalizadoBB -
==BB. 0
$strBB1 5
;BB5 6
stringDD 
saludoDD 
=DD 
esInglesDD $
?DD% &
$strDD' .
:DD/ 0
$strDD1 7
;DD7 8
stringEE 
mensajeCodigoEE  
=EE! "
esInglesEE# +
?FF 
$strFF .
:GG 
$strGG 1
;GG1 2
stringII 
mensajeIgnorarII !
=II" #
esInglesII$ ,
?JJ 
$strJJ Q
:KK 
$strKK N
;KKN O
varMM 

cuerpoHtmlMM 
=MM 
newMM  
StringBuilderMM! .
(MM. /
)MM/ 0
;MM0 1

cuerpoHtmlOO 
.OO 
AppendOO 
(OO 
$strOO T
)OOT U
;OOU V
ifQQ 
(QQ 
!QQ 
stringQQ 
.QQ 
IsNullOrWhiteSpaceQQ *
(QQ* +
usuarioDestinoQQ+ 9
)QQ9 :
)QQ: ;
{RR 

cuerpoHtmlSS 
.SS 
AppendSS !
(SS! "
$"SS" $
$strSS$ (
{SS( )
saludoSS) /
}SS/ 0
$strSS0 1
{SS1 2
usuarioDestinoSS2 @
}SS@ A
$strSSA G
"SSG H
)SSH I
;SSI J
}TT 
elseUU 
{VV 

cuerpoHtmlWW 
.WW 
AppendWW !
(WW! "
$"WW" $
$strWW$ (
{WW( )
saludoWW) /
}WW/ 0
$strWW0 6
"WW6 7
)WW7 8
;WW8 9
}XX 

cuerpoHtmlZZ 
.ZZ 
AppendZZ 
(ZZ 
$"ZZ  
$strZZ  #
{ZZ# $
mensajeCodigoZZ$ 1
}ZZ1 2
$strZZ2 6
"ZZ6 7
)ZZ7 8
;ZZ8 9

cuerpoHtml[[ 
.[[ 
Append[[ 
([[ 
$"[[  
$str[[  P
{[[P Q
codigo[[Q W
}[[W X
$str[[X ]
"[[] ^
)[[^ _
;[[_ `

cuerpoHtml\\ 
.\\ 
Append\\ 
(\\ 
$"\\  
$str\\  J
{\\J K
mensajeIgnorar\\K Y
}\\Y Z
$str\\Z ^
"\\^ _
)\\_ `
;\\` a

cuerpoHtml]] 
.]] 
Append]] 
(]] 
$str]] .
)]]. /
;]]/ 0
return__ 

cuerpoHtml__ 
.__ 
ToString__ &
(__& '
)__' (
;__( )
}`` 	
privatebb 
ConfiguracionSmtpbb !$
ObtenerConfiguracionSmtpbb" :
(bb: ;
)bb; <
{cc 	
vardd 
configdd 
=dd 
newdd 
ConfiguracionSmtpdd .
{ee 
	Remitenteff 
=ff  
ObtenerConfiguracionff 0
(ff0 1
$strff1 B
,ffB C
$strffD `
)ff` a
,ffa b

Contrasenagg 
=gg  
ObtenerConfiguraciongg 1
(gg1 2
$strgg2 B
,ggB C
$strggD \
)gg\ ]
,gg] ^
Hosthh 
=hh  
ObtenerConfiguracionhh +
(hh+ ,
$strhh, 8
,hh8 9
$strhh: L
)hhL M
,hhM N
Usuarioii 
=ii  
ObtenerConfiguracionii .
(ii. /
$strii/ >
,ii> ?
$strii@ U
)iiU V
,iiV W
PuertoStringjj 
=jj  
ObtenerConfiguracionjj 3
(jj3 4
$strjj4 B
,jjB C
$strjjD X
)jjX Y
,jjY Z
	SslStringkk 
=kk  
ObtenerConfiguracionkk 0
(kk0 1
$strkk1 <
,kk< =
$strkk> X
)kkX Y
}ll 
;ll 
ifnn 
(nn 
stringnn 
.nn 
IsNullOrWhiteSpacenn )
(nn) *
confignn* 0
.nn0 1
Usuarionn1 8
)nn8 9
)nn9 :
{oo 
configpp 
.pp 
Usuariopp 
=pp  
configpp! '
.pp' (
	Remitentepp( 1
;pp1 2
}qq 
returnss 
configss 
;ss 
}tt 	
privatevv 
stringvv 
ObtenerAsuntovv $
(vv$ %
stringvv% +
idiomaNormalizadovv, =
)vv= >
{ww 	
stringxx 
asuntoConfiguradoxx $
=xx% & 
ObtenerConfiguracionxx' ;
(xx; <
$stryy 
,yy 
$strzz &
)zz& '
;zz' (
return|| 
string|| 
.|| 
IsNullOrWhiteSpace|| ,
(||, -
asuntoConfigurado||- >
)||> ?
?}} '
ObtenerAsuntoPredeterminado}} -
(}}- .
idiomaNormalizado}}. ?
)}}? @
:~~ 
asuntoConfigurado~~ #
;~~# $
} 	
private
ÅÅ 
async
ÅÅ 
Task
ÅÅ 
<
ÅÅ 
bool
ÅÅ 
>
ÅÅ  $
EjecutarEnvioSmtpAsync
ÅÅ! 7
(
ÅÅ7 8
string
ÅÅ8 >
destinatario
ÅÅ? K
,
ÅÅK L
string
ÅÅM S
asunto
ÅÅT Z
,
ÅÅZ [
string
ÇÇ 
cuerpo
ÇÇ 
,
ÇÇ 
ConfiguracionSmtp
ÇÇ ,
config
ÇÇ- 3
)
ÇÇ3 4
{
ÉÉ 	
try
ÑÑ 
{
ÖÖ 
using
ÜÜ 
(
ÜÜ 
var
ÜÜ 
mensaje
ÜÜ "
=
ÜÜ# $
new
ÜÜ% (
MailMessage
ÜÜ) 4
(
ÜÜ4 5
config
ÜÜ5 ;
.
ÜÜ; <
	Remitente
ÜÜ< E
,
ÜÜE F
destinatario
ÜÜG S
,
ÜÜS T
asunto
ÜÜU [
,
ÜÜ[ \
cuerpo
áá 
)
áá 
)
áá 
{
àà 
mensaje
ââ 
.
ââ 

IsBodyHtml
ââ &
=
ââ' (
true
ââ) -
;
ââ- .
mensaje
ää 
.
ää 
BodyEncoding
ää (
=
ää) *
Encoding
ää+ 3
.
ää3 4
UTF8
ää4 8
;
ää8 9
mensaje
ãã 
.
ãã 
SubjectEncoding
ãã +
=
ãã, -
Encoding
ãã. 6
.
ãã6 7
UTF8
ãã7 ;
;
ãã; <
using
çç 
(
çç 
var
çç 
clienteSmtp
çç *
=
çç+ ,
new
çç- 0

SmtpClient
çç1 ;
(
çç; <
config
çç< B
.
ççB C
Host
ççC G
,
ççG H
config
ççI O
.
ççO P
Puerto
ççP V
)
ççV W
)
ççW X
{
éé 
clienteSmtp
èè #
.
èè# $
	EnableSsl
èè$ -
=
èè. /
config
èè0 6
.
èè6 7
HabilitarSsl
èè7 C
;
èèC D
if
ëë 
(
ëë 
!
ëë 
string
ëë #
.
ëë# $ 
IsNullOrWhiteSpace
ëë$ 6
(
ëë6 7
config
ëë7 =
.
ëë= >

Contrasena
ëë> H
)
ëëH I
)
ëëI J
{
íí 
clienteSmtp
ìì '
.
ìì' (
Credentials
ìì( 3
=
ìì4 5
new
îî  #
NetworkCredential
îî$ 5
(
îî5 6
config
îî6 <
.
îî< =
Usuario
îî= D
,
îîD E
config
îîF L
.
îîL M

Contrasena
îîM W
)
îîW X
;
îîX Y
}
ïï 
await
óó 
clienteSmtp
óó )
.
òò 
SendMailAsync
òò *
(
òò* +
mensaje
òò+ 2
)
òò2 3
.
ôô 
ConfigureAwait
ôô +
(
ôô+ ,
false
ôô, 1
)
ôô1 2
;
ôô2 3
}
öö 
}
õõ 
return
ùù 
true
ùù 
;
ùù 
}
ûû 
catch
üü 
(
üü 
SmtpException
üü  
ex
üü! #
)
üü# $
{
†† 
_logger
°° 
.
°° 
Error
°° 
(
°° 
$str
°° H
,
°°H I
ex
°°J L
)
°°L M
;
°°M N
return
¢¢ 
false
¢¢ 
;
¢¢ 
}
££ 
catch
§§ 
(
§§ '
InvalidOperationException
§§ ,
ex
§§- /
)
§§/ 0
{
•• 
_logger
¶¶ 
.
¶¶ 
Error
¶¶ 
(
¶¶ 
$str
¶¶ D
,
¶¶D E
ex
¶¶F H
)
¶¶H I
;
¶¶I J
return
ßß 
false
ßß 
;
ßß 
}
®® 
catch
©© 
(
©© 
ArgumentException
©© $
ex
©©% '
)
©©' (
{
™™ 
_logger
´´ 
.
´´ 
Error
´´ 
(
´´ 
$str
´´ H
,
´´H I
ex
´´J L
)
´´L M
;
´´M N
return
¨¨ 
false
¨¨ 
;
¨¨ 
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
FormatException
ÆÆ "
ex
ÆÆ# %
)
ÆÆ% &
{
ØØ 
_logger
∞∞ 
.
∞∞ 
Error
∞∞ 
(
∞∞ 
$str
∞∞ \
,
∞∞\ ]
ex
∞∞^ `
)
∞∞` a
;
∞∞a b
return
±± 
false
±± 
;
±± 
}
≤≤ 
}
≥≥ 	
private
µµ 
static
µµ 
string
µµ "
ObtenerConfiguracion
µµ 2
(
µµ2 3
params
µµ3 9
string
µµ: @
[
µµ@ A
]
µµA B
claves
µµC I
)
µµI J
{
∂∂ 	
if
∑∑ 
(
∑∑ 
claves
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
return
ππ 
string
ππ 
.
ππ 
Empty
ππ #
;
ππ# $
}
∫∫ 
foreach
ºº 
(
ºº 
string
ºº 
clave
ºº !
in
ºº" $
claves
ºº% +
)
ºº+ ,
{
ΩΩ 
if
ææ 
(
ææ 
string
ææ 
.
ææ  
IsNullOrWhiteSpace
ææ -
(
ææ- .
clave
ææ. 3
)
ææ3 4
)
ææ4 5
{
øø 
continue
¿¿ 
;
¿¿ 
}
¡¡ 
string
√√ 
valor
√√ 
=
√√ "
ConfigurationManager
√√ 3
.
√√3 4
AppSettings
√√4 ?
[
√√? @
clave
√√@ E
]
√√E F
;
√√F G
if
≈≈ 
(
≈≈ 
!
≈≈ 
string
≈≈ 
.
≈≈  
IsNullOrWhiteSpace
≈≈ .
(
≈≈. /
valor
≈≈/ 4
)
≈≈4 5
)
≈≈5 6
{
∆∆ 
return
«« 
valor
««  
;
««  !
}
»» 
}
…… 
return
ÀÀ 
string
ÀÀ 
.
ÀÀ 
Empty
ÀÀ 
;
ÀÀ  
}
ÃÃ 	
private
ŒŒ 
static
ŒŒ 
string
ŒŒ 
NormalizarIdioma
ŒŒ .
(
ŒŒ. /
string
ŒŒ/ 5
idioma
ŒŒ6 <
)
ŒŒ< =
{
œœ 	
if
–– 
(
–– 
string
–– 
.
––  
IsNullOrWhiteSpace
–– )
(
––) *
idioma
––* 0
)
––0 1
)
––1 2
{
—— 
return
““ 
$str
““ 
;
““ 
}
”” 
return
’’ 
idioma
’’ 
.
’’ 

StartsWith
’’ $
(
’’$ %
$str
’’% )
,
’’) *
StringComparison
’’+ ;
.
’’; <
OrdinalIgnoreCase
’’< M
)
’’M N
?
’’O P
$str
’’Q U
:
’’V W
$str
’’X \
;
’’\ ]
}
÷÷ 	
private
ÿÿ 
static
ÿÿ 
string
ÿÿ )
ObtenerAsuntoPredeterminado
ÿÿ 9
(
ÿÿ9 :
string
ÿÿ: @
idiomaNormalizado
ÿÿA R
)
ÿÿR S
{
ŸŸ 	
return
⁄⁄ 
idiomaNormalizado
⁄⁄ $
==
⁄⁄% '
$str
⁄⁄( ,
?
⁄⁄- .$
AsuntoPredeterminadoEn
⁄⁄/ E
:
⁄⁄F G$
AsuntoPredeterminadoEs
⁄⁄H ^
;
⁄⁄^ _
}
€€ 	
private
›› 
class
›› 
ConfiguracionSmtp
›› '
{
ﬁﬁ 	
public
ﬂﬂ 
string
ﬂﬂ 
	Remitente
ﬂﬂ #
{
ﬂﬂ$ %
get
ﬂﬂ& )
;
ﬂﬂ) *
set
ﬂﬂ+ .
;
ﬂﬂ. /
}
ﬂﬂ0 1
public
‡‡ 
string
‡‡ 

Contrasena
‡‡ $
{
‡‡% &
get
‡‡' *
;
‡‡* +
set
‡‡, /
;
‡‡/ 0
}
‡‡1 2
public
·· 
string
·· 
Host
·· 
{
··  
get
··! $
;
··$ %
set
··& )
;
··) *
}
··+ ,
public
‚‚ 
string
‚‚ 
Usuario
‚‚ !
{
‚‚" #
get
‚‚$ '
;
‚‚' (
set
‚‚) ,
;
‚‚, -
}
‚‚. /
public
„„ 
string
„„ 
PuertoString
„„ &
{
„„' (
get
„„) ,
;
„„, -
set
„„. 1
;
„„1 2
}
„„3 4
public
‰‰ 
string
‰‰ 
	SslString
‰‰ #
{
‰‰$ %
get
‰‰& )
;
‰‰) *
set
‰‰+ .
;
‰‰. /
}
‰‰0 1
public
ÊÊ 
int
ÊÊ 
Puerto
ÊÊ 
=>
ÊÊ  
int
ÊÊ! $
.
ÊÊ$ %
TryParse
ÊÊ% -
(
ÊÊ- .
PuertoString
ÊÊ. :
,
ÊÊ: ;
out
ÊÊ< ?
int
ÊÊ@ C
p
ÊÊD E
)
ÊÊE F
?
ÊÊG H
p
ÊÊI J
:
ÊÊK L
$num
ÊÊM P
;
ÊÊP Q
public
ÁÁ 
bool
ÁÁ 
HabilitarSsl
ÁÁ $
=>
ÁÁ% '
bool
ÁÁ( ,
.
ÁÁ, -
TryParse
ÁÁ- 5
(
ÁÁ5 6
	SslString
ÁÁ6 ?
,
ÁÁ? @
out
ÁÁA D
bool
ÁÁE I
ssl
ÁÁJ M
)
ÁÁM N
&&
ÁÁO Q
ssl
ÁÁR U
;
ÁÁU V
public
ÈÈ 
bool
ÈÈ 
EsValida
ÈÈ  
=>
ÈÈ! #
!
ÈÈ$ %
string
ÈÈ% +
.
ÈÈ+ , 
IsNullOrWhiteSpace
ÈÈ, >
(
ÈÈ> ?
	Remitente
ÈÈ? H
)
ÈÈH I
&&
ÍÍ! #
!
ÍÍ$ %
string
ÍÍ% +
.
ÍÍ+ , 
IsNullOrWhiteSpace
ÍÍ, >
(
ÍÍ> ?
Host
ÍÍ? C
)
ÍÍC D
&&
ÎÎ! #
HabilitarSsl
ÎÎ$ 0
;
ÎÎ0 1
}
ÏÏ 	
}
ÌÌ 
}ÓÓ ¸
|C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\ContextoFactoria.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
public 

class 
ContextoFactoria !
:" #
IContextoFactoria$ 5
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
ContextoFactoriaK [
)[ \
)\ ]
;] ^
public #
BaseDatosPruebaEntities &
CrearContexto' 4
(4 5
)5 6
{ 	
string 
conexion 
= 
Conexion &
.& '
ObtenerConexion' 6
(6 7
)7 8
;8 9
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
conexion* 2
)2 3
)3 4
{ 
_logger 
. 
Warn 
( 
$str @
)@ A
;A B
return 
new #
BaseDatosPruebaEntities 2
(2 3
)3 4
;4 5
} 
return 
new #
BaseDatosPruebaEntities .
(. /
conexion/ 7
)7 8
;8 9
} 	
}   
}!! ¡~
vC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\InvitacionesManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class !
InvitacionesManejador &
:' ("
IInvitacionesManejador) ?
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (!
InvitacionesManejador( =
)= >
)> ?
;? @
private 
static 
readonly 
TimeSpan  (
RegexTimeout) 5
=6 7
TimeSpan8 @
.@ A
FromMillisecondsA Q
(Q R
$numR U
)U V
;V W
private 
static 
readonly 
Regex  %
CorreoRegex& 1
=2 3
new4 7
Regex8 =
(= >
$str   )
,  ) *
RegexOptions!! 
.!! 
Compiled!! !
|!!" #
RegexOptions!!$ 0
.!!0 1
CultureInvariant!!1 A
,!!A B
RegexTimeout"" 
)"" 
;"" 
private$$ 
readonly$$ 
IContextoFactoria$$ *
_contextoFactory$$+ ;
;$$; <
private%% 
readonly%% 
ISalasManejador%% (
_salasManejador%%) 8
;%%8 9
private&& 
readonly&& (
ICorreoInvitacionNotificador&& 5
_correoNotificador&&6 H
;&&H I
public(( !
InvitacionesManejador(( $
((($ %
)((% &
:((' (
this(() -
(((- .
new)) 
ContextoFactoria))  
())  !
)))! "
,))" #
new** 
SalasManejador** 
(** 
)**  
,**  !
new++ '
CorreoInvitacionNotificador++ +
(+++ ,
)++, -
)++- .
{,, 	
}-- 	
public// !
InvitacionesManejador// $
(//$ %
IContextoFactoria00 
contextoFactory00 -
,00- .
ISalasManejador11 
salasManejador11 *
,11* +(
ICorreoInvitacionNotificador22 (
correoNotificador22) :
)22: ;
{33 	
_contextoFactory44 
=44 
contextoFactory44 .
??55 
throw55 
new55 !
ArgumentNullException55 2
(552 3
nameof553 9
(559 :
contextoFactory55: I
)55I J
)55J K
;55K L
_salasManejador77 
=77 
salasManejador77 ,
??88 
throw88 
new88 !
ArgumentNullException88 2
(882 3
nameof883 9
(889 :
salasManejador88: H
)88H I
)88I J
;88J K
_correoNotificador:: 
=::  
correoNotificador::! 2
??;; 
throw;; 
new;; !
ArgumentNullException;; 2
(;;2 3
nameof;;3 9
(;;9 :
correoNotificador;;: K
);;K L
);;L M
;;;M N
}<< 	
publicAA 
asyncAA 
TaskAA 
<AA !
ResultadoOperacionDTOAA /
>AA/ 0!
EnviarInvitacionAsyncAA1 F
(AAF G
InvitacionSalaDTOBB 

invitacionBB (
)BB( )
{CC 	
tryDD 
{EE 
ValidarDatosEntradaFF #
(FF# $

invitacionFF$ .
)FF. /
;FF/ 0
stringHH 

codigoSalaHH !
=HH" #

invitacionHH$ .
.HH. /

CodigoSalaHH/ 9
.HH9 :
TrimHH: >
(HH> ?
)HH? @
;HH@ A
stringII 
correoII 
=II 

invitacionII  *
.II* +
CorreoII+ 1
.II1 2
TrimII2 6
(II6 7
)II7 8
;II8 9
varKK 
salaKK 
=KK 
ObtenerYValidarSalaKK .
(KK. /

codigoSalaKK/ 9
)KK9 :
;KK: ;
ifMM 
(MM 
awaitMM "
VerificarUsuarioEnSalaMM 0
(MM0 1
correoMM1 7
,MM7 8
salaMM9 =
)MM= >
)MM> ?
{NN 
throwOO 
newOO %
InvalidOperationExceptionOO 7
(OO7 8
MensajesErrorPP %
.PP% &
ClientePP& -
.PP- .
CorreoJugadorEnSalaPP. A
)PPA B
;PPB C
}QQ 
returnSS 
awaitSS 
EjecutarEnvioCorreoSS 0
(SS0 1
correoSS1 7
,SS7 8
salaSS9 =
,SS= >

invitacionSS? I
.SSI J
IdiomaSSJ P
)SSP Q
;SSQ R
}TT 
catchUU 
(UU 
FaultExceptionUU !
)UU! "
{VV 
throwWW 
;WW 
}XX 
catchYY 
(YY 
ArgumentExceptionYY $
exYY% '
)YY' (
{ZZ 
_logger[[ 
.[[ 
Warn[[ 
([[ 
$str[[ D
,[[D E
ex[[F H
)[[H I
;[[I J
return\\ 

CrearFallo\\ !
(\\! "
ex\\" $
.\\$ %
Message\\% ,
)\\, -
;\\- .
}]] 
catch^^ 
(^^ %
InvalidOperationException^^ ,
ex^^- /
)^^/ 0
{__ 
_logger`` 
.`` 
Warn`` 
(`` 
$str`` G
,``G H
ex``I K
)``K L
;``L M
returnaa 

CrearFalloaa !
(aa! "
exaa" $
.aa$ %
Messageaa% ,
)aa, -
;aa- .
}bb 
catchcc 
(cc 
EntityExceptioncc "
excc# %
)cc% &
{dd 
_loggeree 
.ee 
Erroree 
(ee 
$stree L
,eeL M
exeeN P
)eeP Q
;eeQ R
returnff 

CrearFalloff !
(ff! "
MensajesErrorff" /
.ff/ 0
Clienteff0 7
.ff7 8#
ErrorProcesarInvitacionff8 O
)ffO P
;ffP Q
}gg 
catchhh 
(hh 
DataExceptionhh  
exhh! #
)hh# $
{ii 
_loggerjj 
.jj 
Errorjj 
(jj 
$strjj D
,jjD E
exjjF H
)jjH I
;jjI J
returnkk 

CrearFallokk !
(kk! "
MensajesErrorkk" /
.kk/ 0
Clientekk0 7
.kk7 8#
ErrorProcesarInvitacionkk8 O
)kkO P
;kkP Q
}ll 
catchmm 
(mm &
RegexMatchTimeoutExceptionmm -
exmm. 0
)mm0 1
{nn 
_loggeroo 
.oo 
Erroroo 
(oo 
$stroo W
,ooW X
exooY [
)oo[ \
;oo\ ]
returnpp 

CrearFallopp !
(pp! "
MensajesErrorpp" /
.pp/ 0
Clientepp0 7
.pp7 8%
ErrorInesperadoInvitacionpp8 Q
)ppQ R
;ppR S
}qq 
catchrr 
(rr 
AggregateExceptionrr %
exrr& (
)rr( )
{ss 
_loggertt 
.tt 
Errortt 
(tt 
$strtt F
,ttF G
exttH J
)ttJ K
;ttK L
returnuu 

CrearFallouu !
(uu! "
MensajesErroruu" /
.uu/ 0
Clienteuu0 7
.uu7 8%
ErrorInesperadoInvitacionuu8 Q
)uuQ R
;uuR S
}vv 
}ww 	
privateyy 
voidyy 
ValidarDatosEntradayy (
(yy( )
InvitacionSalaDTOyy) :

invitacionyy; E
)yyE F
{zz 	
ValidarNulosVacios{{ 
({{ 

invitacion{{ )
){{) *
;{{* + 
ValidarFormatoCorreo||  
(||  !

invitacion||! +
.||+ ,
Correo||, 2
)||2 3
;||3 4
}}} 	
private 
void 
ValidarNulosVacios '
(' (
InvitacionSalaDTO( 9

invitacion: D
)D E
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 

invitacion
ÅÅ 
==
ÅÅ 
null
ÅÅ "
)
ÅÅ" #
{
ÇÇ 
throw
ÉÉ 
new
ÉÉ 
ArgumentException
ÉÉ +
(
ÉÉ+ ,
MensajesError
ÑÑ !
.
ÑÑ! "
Cliente
ÑÑ" )
.
ÑÑ) *)
SolicitudInvitacionInvalida
ÑÑ* E
)
ÑÑE F
;
ÑÑF G
}
ÖÖ 
if
áá 
(
áá 
string
áá 
.
áá  
IsNullOrWhiteSpace
áá )
(
áá) *

invitacion
áá* 4
.
áá4 5

CodigoSala
áá5 ?
)
áá? @
||
ááA C
string
àà 
.
àà  
IsNullOrWhiteSpace
àà )
(
àà) *

invitacion
àà* 4
.
àà4 5
Correo
àà5 ;
)
àà; <
)
àà< =
{
ââ 
throw
ää 
new
ää 
ArgumentException
ää +
(
ää+ ,
MensajesError
ãã !
.
ãã! "
Cliente
ãã" )
.
ãã) *&
DatosInvitacionInvalidos
ãã* B
)
ããB C
;
ããC D
}
åå 
}
çç 	
private
èè 
void
èè "
ValidarFormatoCorreo
èè )
(
èè) *
string
èè* 0
correo
èè1 7
)
èè7 8
{
êê 	
if
ëë 
(
ëë 
!
ëë 
CorreoRegex
ëë 
.
ëë 
IsMatch
ëë $
(
ëë$ %
correo
ëë% +
.
ëë+ ,
Trim
ëë, 0
(
ëë0 1
)
ëë1 2
)
ëë2 3
)
ëë3 4
{
íí 
throw
ìì 
new
ìì 
ArgumentException
ìì +
(
ìì+ ,
MensajesError
ìì, 9
.
ìì9 :
Cliente
ìì: A
.
ììA B
CorreoInvalido
ììB P
)
ììP Q
;
ììQ R
}
îî 
}
ïï 	
private
óó 
SalaDTO
óó !
ObtenerYValidarSala
óó +
(
óó+ ,
string
óó, 2

codigoSala
óó3 =
)
óó= >
{
òò 	
var
ôô 
sala
ôô 
=
ôô 
_salasManejador
ôô &
.
ôô& '"
ObtenerSalaPorCodigo
ôô' ;
(
ôô; <

codigoSala
ôô< F
)
ôôF G
;
ôôG H
if
öö 
(
öö 
sala
öö 
==
öö 
null
öö 
)
öö 
{
õõ 
throw
úú 
new
úú '
InvalidOperationException
úú 3
(
úú3 4
MensajesError
úú4 A
.
úúA B
Cliente
úúB I
.
úúI J
SalaNoEncontrada
úúJ Z
)
úúZ [
;
úú[ \
}
ùù 
return
ûû 
sala
ûû 
;
ûû 
}
üü 	
private
°° 
async
°° 
Task
°° 
<
°° 
bool
°° 
>
°°  $
VerificarUsuarioEnSala
°°! 7
(
°°7 8
string
°°8 >
correo
°°? E
,
°°E F
SalaDTO
°°G N
sala
°°O S
)
°°S T
{
¢¢ 	
if
££ 
(
££ 
sala
££ 
.
££ 
	Jugadores
££ 
==
££ !
null
££" &
||
££' )
sala
££* .
.
££. /
	Jugadores
££/ 8
.
££8 9
Count
££9 >
==
££? A
$num
££B C
)
££C D
{
§§ 
return
•• 
false
•• 
;
•• 
}
¶¶ 
return
®® 
await
®® "
UsuarioYaEnSalaAsync
®® -
(
®®- .
correo
®®. 4
,
®®4 5
sala
®®6 :
.
®®: ;
	Jugadores
®®; D
)
®®D E
;
®®E F
}
©© 	
private
´´ 
async
´´ 
Task
´´ 
<
´´ 
bool
´´ 
>
´´  "
UsuarioYaEnSalaAsync
´´! 5
(
´´5 6
string
¨¨ 
correo
¨¨ 
,
¨¨ 
IEnumerable
≠≠ 
<
≠≠ 
string
≠≠ 
>
≠≠ 
jugadoresSala
≠≠  -
)
≠≠- .
{
ÆÆ 	
using
ØØ 
(
ØØ 
var
ØØ 
contexto
ØØ 
=
ØØ  !
_contextoFactory
ØØ" 2
.
ØØ2 3
CrearContexto
ØØ3 @
(
ØØ@ A
)
ØØA B
)
ØØB C
{
∞∞ !
IUsuarioRepositorio
±± #
repositorio
±±$ /
=
±±0 1
new
±±2 5 
UsuarioRepositorio
±±6 H
(
±±H I
contexto
±±I Q
)
±±Q R
;
±±R S
var
≤≤ 
usuario
≤≤ 
=
≤≤ 
await
≤≤ #
repositorio
≤≤$ /
.
≤≤/ 0#
ObtenerPorCorreoAsync
≤≤0 E
(
≤≤E F
correo
≤≤F L
)
≤≤L M
;
≤≤M N
if
¥¥ 
(
¥¥ 
string
¥¥ 
.
¥¥  
IsNullOrWhiteSpace
¥¥ -
(
¥¥- .
usuario
¥¥. 5
?
¥¥5 6
.
¥¥6 7
Nombre_Usuario
¥¥7 E
)
¥¥E F
)
¥¥F G
{
µµ 
return
∂∂ 
false
∂∂  
;
∂∂  !
}
∑∑ 
return
ππ 
jugadoresSala
ππ $
.
ππ$ %
Contains
ππ% -
(
ππ- .
usuario
∫∫ 
.
∫∫ 
Nombre_Usuario
∫∫ *
,
∫∫* +
StringComparer
ªª "
.
ªª" #
OrdinalIgnoreCase
ªª# 4
)
ªª4 5
;
ªª5 6
}
ºº 
}
ΩΩ 	
private
øø 
async
øø 
Task
øø 
<
øø #
ResultadoOperacionDTO
øø 0
>
øø0 1!
EjecutarEnvioCorreo
øø2 E
(
øøE F
string
¿¿ 
correo
¿¿ 
,
¿¿ 
SalaDTO
¡¡ 
sala
¡¡ 
,
¡¡ 
string
¬¬ 
idioma
¬¬ 
)
¬¬ 
{
√√ 	
bool
ƒƒ 
enviado
ƒƒ 
=
ƒƒ 
await
ƒƒ   
_correoNotificador
ƒƒ! 3
.
ƒƒ3 4#
EnviarInvitacionAsync
ƒƒ4 I
(
ƒƒI J
correo
≈≈ 
,
≈≈ 
sala
∆∆ 
.
∆∆ 
Codigo
∆∆ 
,
∆∆ 
sala
«« 
.
«« 
Creador
«« 
,
«« 
idioma
»» 
)
»» 
.
»» 
ConfigureAwait
»» &
(
»»& '
false
»»' ,
)
»», -
;
»»- .
if
   
(
   
!
   
enviado
   
)
   
{
ÀÀ 
return
ÃÃ 

CrearFallo
ÃÃ !
(
ÃÃ! "
MensajesError
ÃÃ" /
.
ÃÃ/ 0
Cliente
ÃÃ0 7
.
ÃÃ7 8)
ErrorEnviarInvitacionCorreo
ÃÃ8 S
)
ÃÃS T
;
ÃÃT U
}
ÕÕ 
return
œœ 
new
œœ #
ResultadoOperacionDTO
œœ ,
{
–– 
OperacionExitosa
——  
=
——! "
true
——# '
,
——' (
Mensaje
““ 
=
““ 
MensajesError
““ '
.
““' (
Cliente
““( /
.
““/ 0$
InvitacionEnviadaExito
““0 F
}
”” 
;
”” 
}
‘‘ 	
private
÷÷ 
static
÷÷ #
ResultadoOperacionDTO
÷÷ ,

CrearFallo
÷÷- 7
(
÷÷7 8
string
÷÷8 >
mensaje
÷÷? F
)
÷÷F G
{
◊◊ 	
return
ÿÿ 
new
ÿÿ #
ResultadoOperacionDTO
ÿÿ ,
{
ŸŸ 
OperacionExitosa
⁄⁄  
=
⁄⁄! "
false
⁄⁄# (
,
⁄⁄( )
Mensaje
€€ 
=
€€ 
mensaje
€€ !
}
‹‹ 
;
‹‹ 
}
›› 	
}
ﬁﬁ 
}ﬂﬂ àö
oC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\SalasManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Multiple* 2
)2 3
]3 4
public 

class 
SalasManejador 
:  !
ISalasManejador" 1
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
SalasManejadorK Y
)Y Z
)Z [
;[ \
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; < 
SalaInternaManejador= Q
>Q R
_salasS Y
=Z [
new  
ConcurrentDictionary $
<$ %
string% +
,+ , 
SalaInternaManejador- A
>A B
(B C
StringComparer 
. 
OrdinalIgnoreCase 0
)0 1
;1 2
private 
readonly 
INotificadorSalas *
_notificador+ 7
;7 8
private   
readonly   #
IValidadorNombreUsuario   0
_validadorUsuario  1 B
;  B C
public%% 
SalasManejador%% 
(%% 
)%% 
{&& 	
_notificador'' 
='' 
new'' 
NotificadorSalas'' /
(''/ 0
(''0 1
)''1 2
=>''3 5
_salas''6 <
.''< =
Values''= C
)''C D
;''D E
_validadorUsuario(( 
=(( 
new((  #"
ValidadorNombreUsuario(($ :
(((: ;
)((; <
;((< =
})) 	
public.. 
SalasManejador.. 
(.. 
INotificadorSalas.. /
notificador..0 ;
,..; <#
IValidadorNombreUsuario// #
validadorUsuario//$ 4
)//4 5
{00 	
_notificador11 
=11 
notificador11 &
??11' )
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
nameof220 6
(226 7
notificador227 B
)22B C
)22C D
;22D E
_validadorUsuario33 
=33 
validadorUsuario33  0
??331 3
throw44 
new44 !
ArgumentNullException44 /
(44/ 0
nameof440 6
(446 7
validadorUsuario447 G
)44G H
)44H I
;44I J
}55 	
public>> 
SalaDTO>> 
	CrearSala>>  
(>>  !
string>>! '
nombreCreador>>( 5
,>>5 6#
ConfiguracionPartidaDTO>>7 N
configuracion>>O \
)>>\ ]
{?? 	
try@@ 
{AA 
_validadorUsuarioBB !
.BB! "
ValidarBB" )
(BB) *
nombreCreadorBB* 7
,BB7 8
nameofBB9 ?
(BB? @
nombreCreadorBB@ M
)BBM N
)BBN O
;BBO P 
ValidarConfiguracionCC $
(CC$ %
configuracionCC% 2
)CC2 3
;CC3 4
stringEE 
codigoEE 
=EE 
GenerarCodigoSalaEE  1
(EE1 2
)EE2 3
;EE3 4
varFF 
callbackFF 
=FF 
OperationContextFF /
.FF/ 0
CurrentFF0 7
.FF7 8
GetCallbackChannelFF8 J
<GG #
ISalasManejadorCallbackGG ,
>GG, -
(GG- .
)GG. /
;GG/ 0
varII $
gestorNotificacionesSalaII ,
=II- .
newII/ 2+
GestorNotificacionesSalaInternaII3 R
(IIR S
)IIS T
;IIT U
varKK 
salaKK 
=KK 
newKK  
SalaInternaManejadorKK 3
(KK3 4
codigoLL 
,LL 
nombreCreadorMM !
.MM! "
TrimMM" &
(MM& '
)MM' (
,MM( )
configuracionNN !
,NN! "$
gestorNotificacionesSalaOO ,
)OO, -
;OO- .
salaQQ 
.QQ 
AgregarJugadorQQ #
(QQ# $
nombreCreadorQQ$ 1
.QQ1 2
TrimQQ2 6
(QQ6 7
)QQ7 8
,QQ8 9
callbackQQ: B
,QQB C
	notificarQQD M
:QQM N
falseQQO T
)QQT U
;QQU V
ifSS 
(SS 
!SS 
_salasSS 
.SS 
TryAddSS "
(SS" #
codigoSS# )
,SS) *
salaSS+ /
)SS/ 0
)SS0 1
{TT 
_loggerUU 
.UU 
WarnUU  
(UU  !
$strUU! U
)UUU V
;UUV W
throwVV 
newVV 
FaultExceptionVV ,
(VV, -
MensajesErrorVV- :
.VV: ;
ClienteVV; B
.VVB C
ErrorCrearSalaVVC Q
)VVQ R
;VVR S
}WW 
_loggerYY 
.YY 

InfoFormatYY "
(YY" #
$strZZ >
,ZZ> ?
codigo[[ 
)[[ 
;[[ 
_notificador]] 
.]] %
NotificarListaSalasATodos]] 6
(]]6 7
)]]7 8
;]]8 9
return__ 
sala__ 
.__ 
ToDto__ !
(__! "
)__" #
;__# $
}`` 
catchaa 
(aa 
ArgumentExceptionaa $
exaa% '
)aa' (
{bb 
_loggercc 
.cc 
Warncc 
(cc 
$strcc @
,cc@ A
exccB D
)ccD E
;ccE F
throwdd 
newdd 
FaultExceptiondd (
(dd( )
exdd) +
.dd+ ,
Messagedd, 3
)dd3 4
;dd4 5
}ee 
catchff 
(ff "
CommunicationExceptionff )
exff* ,
)ff, -
{gg 
_loggerhh 
.hh 
Errorhh 
(hh 
$strhh H
,hhH I
exhhJ L
)hhL M
;hhM N
throwii 
newii 
FaultExceptionii (
(ii( )
MensajesErrorii) 6
.ii6 7
Clienteii7 >
.ii> ?$
ErrorInesperadoCrearSalaii? W
)iiW X
;iiX Y
}jj 
catchkk 
(kk 
TimeoutExceptionkk #
exkk$ &
)kk& '
{ll 
_loggermm 
.mm 
Errormm 
(mm 
$strmm 6
,mm6 7
exmm8 :
)mm: ;
;mm; <
thrownn 
newnn 
FaultExceptionnn (
(nn( )
MensajesErrornn) 6
.nn6 7
Clientenn7 >
.nn> ?$
ErrorInesperadoCrearSalann? W
)nnW X
;nnX Y
}oo 
catchpp 
(pp #
ObjectDisposedExceptionpp *
expp+ -
)pp- .
{qq 
_loggerrr 
.rr 
Errorrr 
(rr 
$strrr ?
,rr? @
exrrA C
)rrC D
;rrD E
throwss 
newss 
FaultExceptionss (
(ss( )
MensajesErrorss) 6
.ss6 7
Clientess7 >
.ss> ?$
ErrorInesperadoCrearSalass? W
)ssW X
;ssX Y
}tt 
}uu 	
public~~ 
SalaDTO~~ 

UnirseSala~~ !
(~~! "
string~~" (

codigoSala~~) 3
,~~3 4
string~~5 ;
nombreUsuario~~< I
)~~I J
{ 	
try
ÄÄ 
{
ÅÅ 
_validadorUsuario
ÇÇ !
.
ÇÇ! "
Validar
ÇÇ" )
(
ÇÇ) *
nombreUsuario
ÇÇ* 7
,
ÇÇ7 8
nameof
ÇÇ9 ?
(
ÇÇ? @
nombreUsuario
ÇÇ@ M
)
ÇÇM N
)
ÇÇN O
;
ÇÇO P
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ  
IsNullOrWhiteSpace
ÑÑ -
(
ÑÑ- .

codigoSala
ÑÑ. 8
)
ÑÑ8 9
)
ÑÑ9 :
{
ÖÖ 
throw
ÜÜ 
new
ÜÜ 
FaultException
ÜÜ ,
(
ÜÜ, -
MensajesError
ÜÜ- :
.
ÜÜ: ;
Cliente
ÜÜ; B
.
ÜÜB C#
CodigoSalaObligatorio
ÜÜC X
)
ÜÜX Y
;
ÜÜY Z
}
áá 
if
ââ 
(
ââ 
!
ââ 
_salas
ââ 
.
ââ 
TryGetValue
ââ '
(
ââ' (

codigoSala
ââ( 2
.
ââ2 3
Trim
ââ3 7
(
ââ7 8
)
ââ8 9
,
ââ9 :
out
ââ; >
var
ââ? B
sala
ââC G
)
ââG H
)
ââH I
{
ää 
throw
ãã 
new
ãã 
FaultException
ãã ,
(
ãã, -
MensajesError
ãã- :
.
ãã: ;
Cliente
ãã; B
.
ããB C
SalaNoEncontrada
ããC S
)
ããS T
;
ããT U
}
åå 
if
éé 
(
éé 
sala
éé 
.
éé 
PartidaIniciada
éé (
)
éé( )
{
èè 
throw
êê 
new
êê 
FaultException
êê ,
(
êê, -
MensajesError
êê- :
.
êê: ;
Cliente
êê; B
.
êêB C
PartidaComenzo
êêC Q
)
êêQ R
;
êêR S
}
ëë 
var
ìì 
callback
ìì 
=
ìì 
OperationContext
ìì /
.
ìì/ 0
Current
ìì0 7
.
ìì7 8 
GetCallbackChannel
ìì8 J
<
îî %
ISalasManejadorCallback
îî ,
>
îî, -
(
îî- .
)
îî. /
;
îî/ 0
var
ññ 
	resultado
ññ 
=
ññ 
sala
ññ  $
.
ññ$ %
AgregarJugador
ññ% 3
(
ññ3 4
nombreUsuario
óó !
.
óó! "
Trim
óó" &
(
óó& '
)
óó' (
,
óó( )
callback
òò 
,
òò 
	notificar
ôô 
:
ôô 
true
ôô #
)
ôô# $
;
ôô$ %
_logger
õõ 
.
õõ 

InfoFormat
õõ "
(
õõ" #
$str
úú G
,
úúG H

codigoSala
ùù 
.
ùù 
Trim
ùù #
(
ùù# $
)
ùù$ %
)
ùù% &
;
ùù& '
_notificador
üü 
.
üü '
NotificarListaSalasATodos
üü 6
(
üü6 7
)
üü7 8
;
üü8 9
return
°° 
	resultado
°°  
;
°°  !
}
¢¢ 
catch
££ 
(
££ 
FaultException
££ !
)
££! "
{
§§ 
throw
•• 
;
•• 
}
¶¶ 
catch
ßß 
(
ßß 
ArgumentException
ßß $
ex
ßß% '
)
ßß' (
{
®® 
_logger
©© 
.
©© 
Warn
©© 
(
©© 
$str
©© C
,
©©C D
ex
©©E G
)
©©G H
;
©©H I
throw
™™ 
new
™™ 
FaultException
™™ (
(
™™( )
ex
™™) +
.
™™+ ,
Message
™™, 3
)
™™3 4
;
™™4 5
}
´´ 
catch
¨¨ 
(
¨¨ %
ObjectDisposedException
¨¨ *
ex
¨¨+ -
)
¨¨- .
{
≠≠ 
_logger
ÆÆ 
.
ÆÆ 
Error
ÆÆ 
(
ÆÆ 
$str
ÆÆ E
,
ÆÆE F
ex
ÆÆG I
)
ÆÆI J
;
ÆÆJ K
throw
ØØ 
new
ØØ 
FaultException
ØØ (
(
ØØ( )
MensajesError
ØØ) 6
.
ØØ6 7
Cliente
ØØ7 >
.
ØØ> ?#
ErrorInesperadoUnirse
ØØ? T
)
ØØT U
;
ØØU V
}
∞∞ 
catch
±± 
(
±± $
CommunicationException
±± )
ex
±±* ,
)
±±, -
{
≤≤ 
_logger
≥≥ 
.
≥≥ 
Error
≥≥ 
(
≥≥ 
$str
≥≥ K
,
≥≥K L
ex
≥≥M O
)
≥≥O P
;
≥≥P Q
throw
¥¥ 
new
¥¥ 
FaultException
¥¥ (
(
¥¥( )
MensajesError
¥¥) 6
.
¥¥6 7
Cliente
¥¥7 >
.
¥¥> ?#
ErrorInesperadoUnirse
¥¥? T
)
¥¥T U
;
¥¥U V
}
µµ 
catch
∂∂ 
(
∂∂ 
TimeoutException
∂∂ #
ex
∂∂$ &
)
∂∂& '
{
∑∑ 
_logger
∏∏ 
.
∏∏ 
Error
∏∏ 
(
∏∏ 
$str
∏∏ <
,
∏∏< =
ex
∏∏> @
)
∏∏@ A
;
∏∏A B
throw
ππ 
new
ππ 
FaultException
ππ (
(
ππ( )
MensajesError
ππ) 6
.
ππ6 7
Cliente
ππ7 >
.
ππ> ?#
ErrorInesperadoUnirse
ππ? T
)
ππT U
;
ππU V
}
∫∫ 
}
ªª 
public
¡¡ 
IList
¡¡ 
<
¡¡ 
SalaDTO
¡¡ 
>
¡¡ 
ObtenerSalas
¡¡ *
(
¡¡* +
)
¡¡+ ,
{
¬¬ 	
try
√√ 
{
ƒƒ 
return
≈≈ 
_salas
≈≈ 
.
≈≈ 
Values
≈≈ $
.
≈≈$ %
Select
≈≈% +
(
≈≈+ ,
s
≈≈, -
=>
≈≈. 0
s
≈≈1 2
.
≈≈2 3
ToDto
≈≈3 8
(
≈≈8 9
)
≈≈9 :
)
≈≈: ;
.
≈≈; <
ToList
≈≈< B
(
≈≈B C
)
≈≈C D
;
≈≈D E
}
∆∆ 
catch
«« 
(
«« %
ObjectDisposedException
«« *
ex
««+ -
)
««- .
{
»» 
_logger
…… 
.
…… 
Error
…… 
(
…… 
$str
…… K
,
……K L
ex
……M O
)
……O P
;
……P Q
return
   
new
   
List
   
<
    
SalaDTO
    '
>
  ' (
(
  ( )
)
  ) *
;
  * +
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ '
InvalidOperationException
ÃÃ ,
ex
ÃÃ- /
)
ÃÃ/ 0
{
ÕÕ 
_logger
ŒŒ 
.
ŒŒ 
Error
ŒŒ 
(
ŒŒ 
$str
ŒŒ M
,
ŒŒM N
ex
ŒŒO Q
)
ŒŒQ R
;
ŒŒR S
return
œœ 
new
œœ 
List
œœ 
<
œœ  
SalaDTO
œœ  '
>
œœ' (
(
œœ( )
)
œœ) *
;
œœ* +
}
–– 
}
—— 	
public
ŸŸ 
void
ŸŸ 
AbandonarSala
ŸŸ !
(
ŸŸ! "
string
ŸŸ" (

codigoSala
ŸŸ) 3
,
ŸŸ3 4
string
ŸŸ5 ;
nombreUsuario
ŸŸ< I
)
ŸŸI J
{
⁄⁄ 	
try
€€ 
{
‹‹ 
_validadorUsuario
›› !
.
››! "
Validar
››" )
(
››) *
nombreUsuario
››* 7
,
››7 8
nameof
››9 ?
(
››? @
nombreUsuario
››@ M
)
››M N
)
››N O
;
››O P
if
ﬂﬂ 
(
ﬂﬂ 
string
ﬂﬂ 
.
ﬂﬂ  
IsNullOrWhiteSpace
ﬂﬂ -
(
ﬂﬂ- .

codigoSala
ﬂﬂ. 8
)
ﬂﬂ8 9
)
ﬂﬂ9 :
{
‡‡ 
throw
·· 
new
·· 
FaultException
·· ,
(
··, -
MensajesError
··- :
.
··: ;
Cliente
··; B
.
··B C#
CodigoSalaObligatorio
··C X
)
··X Y
;
··Y Z
}
‚‚ 
if
‰‰ 
(
‰‰ 
!
‰‰ 
_salas
‰‰ 
.
‰‰ 
TryGetValue
‰‰ '
(
‰‰' (

codigoSala
‰‰( 2
.
‰‰2 3
Trim
‰‰3 7
(
‰‰7 8
)
‰‰8 9
,
‰‰9 :
out
‰‰; >
var
‰‰? B
sala
‰‰C G
)
‰‰G H
)
‰‰H I
{
ÂÂ 
throw
ÊÊ 
new
ÊÊ 
FaultException
ÊÊ ,
(
ÊÊ, -
MensajesError
ÊÊ- :
.
ÊÊ: ;
Cliente
ÊÊ; B
.
ÊÊB C
SalaNoEncontrada
ÊÊC S
)
ÊÊS T
;
ÊÊT U
}
ÁÁ 
sala
ÈÈ 
.
ÈÈ 
RemoverJugador
ÈÈ #
(
ÈÈ# $
nombreUsuario
ÈÈ$ 1
.
ÈÈ1 2
Trim
ÈÈ2 6
(
ÈÈ6 7
)
ÈÈ7 8
)
ÈÈ8 9
;
ÈÈ9 :
_notificador
ÍÍ 
.
ÍÍ '
NotificarListaSalasATodos
ÍÍ 6
(
ÍÍ6 7
)
ÍÍ7 8
;
ÍÍ8 9
}
ÎÎ 
catch
ÏÏ 
(
ÏÏ 
FaultException
ÏÏ !
)
ÏÏ! "
{
ÌÌ 
throw
ÓÓ 
;
ÓÓ 
}
ÔÔ 
catch
 
(
 
ArgumentException
 $
ex
% '
)
' (
{
ÒÒ 
_logger
ÚÚ 
.
ÚÚ 
Warn
ÚÚ 
(
ÚÚ 
$str
ÚÚ D
,
ÚÚD E
ex
ÚÚF H
)
ÚÚH I
;
ÚÚI J
throw
ÛÛ 
new
ÛÛ 
FaultException
ÛÛ (
(
ÛÛ( )
ex
ÛÛ) +
.
ÛÛ+ ,
Message
ÛÛ, 3
)
ÛÛ3 4
;
ÛÛ4 5
}
ÙÙ 
catch
ıı 
(
ıı %
ObjectDisposedException
ıı *
ex
ıı+ -
)
ıı- .
{
ˆˆ 
_logger
˜˜ 
.
˜˜ 
Error
˜˜ 
(
˜˜ 
$str
˜˜ C
,
˜˜C D
ex
˜˜E G
)
˜˜G H
;
˜˜H I
throw
¯¯ 
new
¯¯ 
FaultException
¯¯ (
(
¯¯( )
MensajesError
¯¯) 6
.
¯¯6 7
Cliente
¯¯7 >
.
¯¯> ?&
ErrorInesperadoAbandonar
¯¯? W
)
¯¯W X
;
¯¯X Y
}
˘˘ 
catch
˙˙ 
(
˙˙ '
InvalidOperationException
˙˙ ,
ex
˙˙- /
)
˙˙/ 0
{
˚˚ 
_logger
¸¸ 
.
¸¸ 
Warn
¸¸ 
(
¸¸ 
$str
¸¸ D
,
¸¸D E
ex
¸¸F H
)
¸¸H I
;
¸¸I J
throw
˝˝ 
new
˝˝ 
FaultException
˝˝ (
(
˝˝( )
ex
˝˝) +
.
˝˝+ ,
Message
˝˝, 3
)
˝˝3 4
;
˝˝4 5
}
˛˛ 
}
ÄÄ 	
public
ÖÖ 
void
ÖÖ !
SuscribirListaSalas
ÖÖ '
(
ÖÖ' (
)
ÖÖ( )
{
ÜÜ 	
try
áá 
{
àà 
var
ââ 
callback
ââ 
=
ââ 
OperationContext
ââ /
.
ââ/ 0
Current
ââ0 7
.
ââ7 8 
GetCallbackChannel
ââ8 J
<
ää %
ISalasManejadorCallback
ää ,
>
ää, -
(
ää- .
)
ää. /
;
ää/ 0
var
ãã 
sesionId
ãã 
=
ãã 
_notificador
ãã +
.
ãã+ ,
	Suscribir
ãã, 5
(
ãã5 6
callback
ãã6 >
)
ãã> ?
;
ãã? @
var
çç 
canal
çç 
=
çç 
OperationContext
çç ,
.
çç, -
Current
çç- 4
?
çç4 5
.
çç5 6
Channel
çç6 =
;
çç= >
if
éé 
(
éé 
canal
éé 
!=
éé 
null
éé !
)
éé! "
{
èè 
canal
êê 
.
êê 
Closed
êê  
+=
êê! #
(
êê$ %
_
êê% &
,
êê& '
__
êê( *
)
êê* +
=>
êê, .
_notificador
êê/ ;
.
êê; <
Desuscribir
êê< G
(
êêG H
sesionId
êêH P
)
êêP Q
;
êêQ R
canal
ëë 
.
ëë 
Faulted
ëë !
+=
ëë" $
(
ëë% &
_
ëë& '
,
ëë' (
__
ëë) +
)
ëë+ ,
=>
ëë- /
_notificador
ëë0 <
.
ëë< =
Desuscribir
ëë= H
(
ëëH I
sesionId
ëëI Q
)
ëëQ R
;
ëëR S
}
íí 
_notificador
îî 
.
îî !
NotificarListaSalas
îî 0
(
îî0 1
callback
îî1 9
)
îî9 :
;
îî: ;
}
ïï 
catch
ññ 
(
ññ %
ObjectDisposedException
ññ *
ex
ññ+ -
)
ññ- .
{
óó 
_logger
òò 
.
òò 
Error
òò 
(
òò 
$str
òò T
,
òòT U
ex
òòV X
)
òòX Y
;
òòY Z
throw
ôô 
new
ôô 
FaultException
ôô (
(
ôô( )
MensajesError
ôô) 6
.
ôô6 7
Cliente
ôô7 >
.
ôô> ?(
ErrorInesperadoSuscripcion
ôô? Y
)
ôôY Z
;
ôôZ [
}
öö 
catch
õõ 
(
õõ '
InvalidOperationException
õõ ,
ex
õõ- /
)
õõ/ 0
{
úú 
_logger
ùù 
.
ùù 
Error
ùù 
(
ùù 
$str
ùù S
,
ùùS T
ex
ùùU W
)
ùùW X
;
ùùX Y
throw
ûû 
new
ûû 
FaultException
ûû (
(
ûû( )
MensajesError
ûû) 6
.
ûû6 7
Cliente
ûû7 >
.
ûû> ?(
ErrorInesperadoSuscripcion
ûû? Y
)
ûûY Z
;
ûûZ [
}
üü 
catch
†† 
(
†† $
CommunicationException
†† )
ex
††* ,
)
††, -
{
°° 
_logger
¢¢ 
.
¢¢ 
Error
¢¢ 
(
¢¢ 
$str
¢¢ Z
,
¢¢Z [
ex
¢¢\ ^
)
¢¢^ _
;
¢¢_ `
throw
££ 
new
££ 
FaultException
££ (
(
££( )
MensajesError
££) 6
.
££6 7
Cliente
££7 >
.
££> ?(
ErrorInesperadoSuscripcion
££? Y
)
££Y Z
;
££Z [
}
§§ 
catch
•• 
(
•• 
TimeoutException
•• #
ex
••$ &
)
••& '
{
¶¶ 
_logger
ßß 
.
ßß 
Error
ßß 
(
ßß 
$str
ßß K
,
ßßK L
ex
ßßM O
)
ßßO P
;
ßßP Q
throw
®® 
new
®® 
FaultException
®® (
(
®®( )
MensajesError
®®) 6
.
®®6 7
Cliente
®®7 >
.
®®> ?(
ErrorInesperadoSuscripcion
®®? Y
)
®®Y Z
;
®®Z [
}
©© 
}
™™ 	
public
ØØ 
void
ØØ +
CancelarSuscripcionListaSalas
ØØ 1
(
ØØ1 2
)
ØØ2 3
{
∞∞ 	
try
±± 
{
≤≤ 
var
≥≥ 
callback
≥≥ 
=
≥≥ 
OperationContext
≥≥ /
.
≥≥/ 0
Current
≥≥0 7
.
≥≥7 8 
GetCallbackChannel
≥≥8 J
<
¥¥ %
ISalasManejadorCallback
¥¥ ,
>
¥¥, -
(
¥¥- .
)
¥¥. /
;
¥¥/ 0
_notificador
µµ 
.
µµ $
DesuscribirPorCallback
µµ 3
(
µµ3 4
callback
µµ4 <
)
µµ< =
;
µµ= >
}
∂∂ 
catch
∑∑ 
(
∑∑ %
ObjectDisposedException
∑∑ *
ex
∑∑+ -
)
∑∑- .
{
∏∏ 
_logger
ππ 
.
ππ 
Error
ππ 
(
ππ 
$str
ππ L
,
ππL M
ex
ππN P
)
ππP Q
;
ππQ R
}
∫∫ 
catch
ªª 
(
ªª '
InvalidOperationException
ªª ,
ex
ªª- /
)
ªª/ 0
{
ºº 
_logger
ΩΩ 
.
ΩΩ 
Error
ΩΩ 
(
ΩΩ 
$str
ΩΩ K
,
ΩΩK L
ex
ΩΩM O
)
ΩΩO P
;
ΩΩP Q
}
ææ 
catch
øø 
(
øø $
CommunicationException
øø )
ex
øø* ,
)
øø, -
{
¿¿ 
_logger
¡¡ 
.
¡¡ 
Error
¡¡ 
(
¡¡ 
$str
¡¡ R
,
¡¡R S
ex
¡¡T V
)
¡¡V W
;
¡¡W X
}
¬¬ 
catch
√√ 
(
√√ 
TimeoutException
√√ #
ex
√√$ &
)
√√& '
{
ƒƒ 
_logger
≈≈ 
.
≈≈ 
Error
≈≈ 
(
≈≈ 
$str
≈≈ C
,
≈≈C D
ex
≈≈E G
)
≈≈G H
;
≈≈H I
}
∆∆ 
}
«« 	
public
–– 
void
–– 
ExpulsarJugador
–– #
(
––# $
string
—— 

codigoSala
—— 
,
—— 
string
““ 

nombreHost
““ 
,
““ 
string
”” $
nombreJugadorAExpulsar
”” )
)
””) *
{
‘‘ 	
try
’’ 
{
÷÷ 
_validadorUsuario
◊◊ !
.
◊◊! "
Validar
◊◊" )
(
◊◊) *

nombreHost
◊◊* 4
,
◊◊4 5
nameof
◊◊6 <
(
◊◊< =

nombreHost
◊◊= G
)
◊◊G H
)
◊◊H I
;
◊◊I J
_validadorUsuario
ÿÿ !
.
ÿÿ! "
Validar
ÿÿ" )
(
ÿÿ) *$
nombreJugadorAExpulsar
ŸŸ *
,
ŸŸ* +
nameof
⁄⁄ 
(
⁄⁄ $
nombreJugadorAExpulsar
⁄⁄ 1
)
⁄⁄1 2
)
⁄⁄2 3
;
⁄⁄3 4
if
‹‹ 
(
‹‹ 
string
‹‹ 
.
‹‹  
IsNullOrWhiteSpace
‹‹ -
(
‹‹- .

codigoSala
‹‹. 8
)
‹‹8 9
)
‹‹9 :
{
›› 
throw
ﬁﬁ 
new
ﬁﬁ 
FaultException
ﬁﬁ ,
(
ﬁﬁ, -
MensajesError
ﬁﬁ- :
.
ﬁﬁ: ;
Cliente
ﬁﬁ; B
.
ﬁﬁB C#
CodigoSalaObligatorio
ﬁﬁC X
)
ﬁﬁX Y
;
ﬁﬁY Z
}
ﬂﬂ 
if
·· 
(
·· 
!
·· 
_salas
·· 
.
·· 
TryGetValue
·· '
(
··' (

codigoSala
··( 2
.
··2 3
Trim
··3 7
(
··7 8
)
··8 9
,
··9 :
out
··; >
var
··? B
sala
··C G
)
··G H
)
··H I
{
‚‚ 
throw
„„ 
new
„„ 
FaultException
„„ ,
(
„„, -
MensajesError
„„- :
.
„„: ;
Cliente
„„; B
.
„„B C
SalaNoEncontrada
„„C S
)
„„S T
;
„„T U
}
‰‰ 
sala
ÊÊ 
.
ÊÊ 
ExpulsarJugador
ÊÊ $
(
ÊÊ$ %

nombreHost
ÊÊ% /
.
ÊÊ/ 0
Trim
ÊÊ0 4
(
ÊÊ4 5
)
ÊÊ5 6
,
ÊÊ6 7$
nombreJugadorAExpulsar
ÊÊ8 N
.
ÊÊN O
Trim
ÊÊO S
(
ÊÊS T
)
ÊÊT U
)
ÊÊU V
;
ÊÊV W
if
ËË 
(
ËË 
sala
ËË 
.
ËË 
DebeEliminarse
ËË '
)
ËË' (
{
ÈÈ 
_salas
ÍÍ 
.
ÍÍ 
	TryRemove
ÍÍ $
(
ÍÍ$ %

codigoSala
ÍÍ% /
.
ÍÍ/ 0
Trim
ÍÍ0 4
(
ÍÍ4 5
)
ÍÍ5 6
,
ÍÍ6 7
out
ÍÍ8 ;
_
ÍÍ< =
)
ÍÍ= >
;
ÍÍ> ?
}
ÎÎ 
_notificador
ÌÌ 
.
ÌÌ '
NotificarListaSalasATodos
ÌÌ 6
(
ÌÌ6 7
)
ÌÌ7 8
;
ÌÌ8 9
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ 
FaultException
ÔÔ !
)
ÔÔ! "
{
 
throw
ÒÒ 
;
ÒÒ 
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
ArgumentException
ÛÛ $
ex
ÛÛ% '
)
ÛÛ' (
{
ÙÙ 
_logger
ıı 
.
ıı 
Warn
ıı 
(
ıı 
$str
ıı F
,
ııF G
ex
ııH J
)
ııJ K
;
ııK L
throw
ˆˆ 
new
ˆˆ 
FaultException
ˆˆ (
(
ˆˆ( )
ex
ˆˆ) +
.
ˆˆ+ ,
Message
ˆˆ, 3
)
ˆˆ3 4
;
ˆˆ4 5
}
˜˜ 
catch
¯¯ 
(
¯¯ %
ObjectDisposedException
¯¯ *
ex
¯¯+ -
)
¯¯- .
{
˘˘ 
_logger
˙˙ 
.
˙˙ 
Error
˙˙ 
(
˙˙ 
$str
˙˙ P
,
˙˙P Q
ex
˙˙R T
)
˙˙T U
;
˙˙U V
throw
˚˚ 
new
˚˚ 
FaultException
˚˚ (
(
˚˚( )
MensajesError
˚˚) 6
.
˚˚6 7
Cliente
˚˚7 >
.
˚˚> ?%
ErrorInesperadoExpulsar
˚˚? V
)
˚˚V W
;
˚˚W X
}
¸¸ 
catch
˝˝ 
(
˝˝ '
InvalidOperationException
˝˝ ,
ex
˝˝- /
)
˝˝/ 0
{
˛˛ 
_logger
ˇˇ 
.
ˇˇ 
Warn
ˇˇ 
(
ˇˇ 
$str
ˇˇ F
,
ˇˇF G
ex
ˇˇH J
)
ˇˇJ K
;
ˇˇK L
throw
ÄÄ 
new
ÄÄ 
FaultException
ÄÄ (
(
ÄÄ( )
ex
ÄÄ) +
.
ÄÄ+ ,
Message
ÄÄ, 3
)
ÄÄ3 4
;
ÄÄ4 5
}
ÅÅ 
}
ÉÉ 	
public
ää 
SalaDTO
ää "
ObtenerSalaPorCodigo
ää +
(
ää+ ,
string
ää, 2

codigoSala
ää3 =
)
ää= >
{
ãã 	
if
åå 
(
åå 
string
åå 
.
åå  
IsNullOrWhiteSpace
åå )
(
åå) *

codigoSala
åå* 4
)
åå4 5
)
åå5 6
{
çç 
throw
éé 
new
éé '
InvalidOperationException
éé 3
(
éé3 4
MensajesError
éé4 A
.
ééA B
Cliente
ééB I
.
ééI J#
CodigoSalaObligatorio
ééJ _
)
éé_ `
;
éé` a
}
èè 
if
ëë 
(
ëë 
_salas
ëë 
.
ëë 
TryGetValue
ëë "
(
ëë" #

codigoSala
ëë# -
.
ëë- .
Trim
ëë. 2
(
ëë2 3
)
ëë3 4
,
ëë4 5
out
ëë6 9
var
ëë: =
sala
ëë> B
)
ëëB C
)
ëëC D
{
íí 
return
ìì 
sala
ìì 
.
ìì 
ToDto
ìì !
(
ìì! "
)
ìì" #
;
ìì# $
}
îî 
throw
ññ 
new
ññ '
InvalidOperationException
ññ /
(
ññ/ 0
MensajesError
ññ0 =
.
ññ= >
Cliente
ññ> E
.
ññE F
SalaNoEncontrada
ññF V
)
ññV W
;
ññW X
}
óó 	
public
úú 
void
úú '
MarcarPartidaComoIniciada
úú -
(
úú- .
string
úú. 4

codigoSala
úú5 ?
)
úú? @
{
ùù 	
if
ûû 
(
ûû 
_salas
ûû 
.
ûû 
TryGetValue
ûû "
(
ûû" #

codigoSala
ûû# -
,
ûû- .
out
ûû/ 2
var
ûû3 6
sala
ûû7 ;
)
ûû; <
)
ûû< =
{
üü 
sala
†† 
.
†† 
PartidaIniciada
†† $
=
††% &
true
††' +
;
††+ ,
}
°° 
}
¢¢ 	
public
§§ 
void
§§ )
MarcarPartidaComoFinalizada
§§ /
(
§§/ 0
string
§§0 6

codigoSala
§§7 A
)
§§A B
{
•• 	
if
¶¶ 
(
¶¶ 
_salas
¶¶ 
.
¶¶ 
TryGetValue
¶¶ "
(
¶¶" #

codigoSala
¶¶# -
,
¶¶- .
out
¶¶/ 2
var
¶¶3 6
sala
¶¶7 ;
)
¶¶; <
)
¶¶< =
{
ßß 
sala
®® 
.
®® 
PartidaFinalizada
®® &
=
®®' (
true
®®) -
;
®®- .
}
©© 
}
™™ 	
private
≠≠ 
string
≠≠ 
GenerarCodigoSala
≠≠ (
(
≠≠( )
)
≠≠) *
{
ÆÆ 	
var
ØØ 
random
ØØ 
=
ØØ 
new
ØØ 
Random
ØØ #
(
ØØ# $
)
ØØ$ %
;
ØØ% &
const
∞∞ 
int
∞∞ 
maxIntentos
∞∞ !
=
∞∞" #
$num
∞∞$ (
;
∞∞( )
for
≤≤ 
(
≤≤ 
int
≤≤ 
i
≤≤ 
=
≤≤ 
$num
≤≤ 
;
≤≤ 
i
≤≤ 
<
≤≤ 
maxIntentos
≤≤  +
;
≤≤+ ,
i
≤≤- .
++
≤≤. 0
)
≤≤0 1
{
≥≥ 
string
¥¥ 
codigo
¥¥ 
=
¥¥ 
random
¥¥  &
.
¥¥& '
Next
¥¥' +
(
¥¥+ ,
$num
¥¥, -
,
¥¥- .
$num
¥¥/ 8
)
¥¥8 9
.
¥¥9 :
ToString
¥¥: B
(
¥¥B C
$str
¥¥C G
)
¥¥G H
;
¥¥H I
if
µµ 
(
µµ 
!
µµ 
_salas
µµ 
.
µµ 
ContainsKey
µµ '
(
µµ' (
codigo
µµ( .
)
µµ. /
)
µµ/ 0
{
∂∂ 
return
∑∑ 
codigo
∑∑ !
;
∑∑! "
}
∏∏ 
}
ππ 
_logger
ªª 
.
ªª 
Error
ªª 
(
ªª 
$str
ªª D
)
ªªD E
;
ªªE F
throw
ºº 
new
ºº 
FaultException
ºº $
(
ºº$ %
MensajesError
ºº% 2
.
ºº2 3
Cliente
ºº3 :
.
ºº: ; 
ErrorGenerarCodigo
ºº; M
)
ººM N
;
ººN O
}
ΩΩ 	
private
øø 
static
øø 
void
øø "
ValidarConfiguracion
øø 0
(
øø0 1%
ConfiguracionPartidaDTO
øø1 H
configuracion
øøI V
)
øøV W
{
¿¿ 	
if
¡¡ 
(
¡¡ 
configuracion
¡¡ 
==
¡¡  
null
¡¡! %
)
¡¡% &
{
¬¬ 
throw
√√ 
new
√√ 
FaultException
√√ (
(
√√( )
MensajesError
√√) 6
.
√√6 7
Cliente
√√7 >
.
√√> ?&
ConfiguracionObligatoria
√√? W
)
√√W X
;
√√X Y
}
ƒƒ 
if
∆∆ 
(
∆∆ 
configuracion
∆∆ 
.
∆∆ 
NumeroRondas
∆∆ *
<=
∆∆+ -
$num
∆∆. /
)
∆∆/ 0
{
«« 
throw
»» 
new
»» 
FaultException
»» (
(
»»( )
MensajesError
»») 6
.
»»6 7
Cliente
»»7 >
.
»»> ?"
NumeroRondasInvalido
»»? S
)
»»S T
;
»»T U
}
…… 
if
ÀÀ 
(
ÀÀ 
configuracion
ÀÀ 
.
ÀÀ $
TiempoPorRondaSegundos
ÀÀ 4
<=
ÀÀ5 7
$num
ÀÀ8 9
)
ÀÀ9 :
{
ÃÃ 
throw
ÕÕ 
new
ÕÕ 
FaultException
ÕÕ (
(
ÕÕ( )
MensajesError
ÕÕ) 6
.
ÕÕ6 7
Cliente
ÕÕ7 >
.
ÕÕ> ?!
TiempoRondaInvalido
ÕÕ? R
)
ÕÕR S
;
ÕÕS T
}
ŒŒ 
if
–– 
(
–– 
string
–– 
.
––  
IsNullOrWhiteSpace
–– )
(
––) *
configuracion
––* 7
.
––7 8
IdiomaCanciones
––8 G
)
––G H
)
––H I
{
—— 
throw
““ 
new
““ 
FaultException
““ (
(
““( )
MensajesError
““) 6
.
““6 7
Cliente
““7 >
.
““> ?
IdiomaObligatorio
““? P
)
““P Q
;
““Q R
}
”” 
if
’’ 
(
’’ 
string
’’ 
.
’’  
IsNullOrWhiteSpace
’’ )
(
’’) *
configuracion
’’* 7
.
’’7 8

Dificultad
’’8 B
)
’’B C
)
’’C D
{
÷÷ 
throw
◊◊ 
new
◊◊ 
FaultException
◊◊ (
(
◊◊( )
MensajesError
◊◊) 6
.
◊◊6 7
Cliente
◊◊7 >
.
◊◊> ?#
DificultadObligatoria
◊◊? T
)
◊◊T U
;
◊◊U V
}
ÿÿ 
}
ŸŸ 	
}
⁄⁄ 
}€€ îë
{C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\RecuperacionCuentaServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class &
RecuperacionCuentaServicio +
:, -'
IRecuperacionCuentaServicio. I
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (&
RecuperacionCuentaServicio( B
)B C
)C D
;D E
private 
const 
int #
MinutosExpiracionCodigo 1
=2 3
$num4 5
;5 6
private 
static 
readonly  
ConcurrentDictionary  4
<4 5
string5 ;
,; <*
SolicitudRecuperacionPendiente= [
>[ \$
_solicitudesRecuperacion $
=% &
new    
ConcurrentDictionary   $
<  $ %
string  % +
,  + ,*
SolicitudRecuperacionPendiente  - K
>  K L
(  L M
)  M N
;  N O
private"" 
readonly"" 
IContextoFactoria"" *
_contextoFactory""+ ;
;""; <
private## 
readonly## (
INotificacionCodigosServicio## 5!
_notificacionServicio##6 K
;##K L
public%% &
RecuperacionCuentaServicio%% )
(%%) *
IContextoFactoria&& 
contextoFactory&& -
,&&- .(
INotificacionCodigosServicio'' ( 
notificacionServicio'') =
)''= >
{(( 	
_contextoFactory)) 
=)) 
contextoFactory)) .
??))/ 1
throw** 
new** !
ArgumentNullException** /
(**/ 0
nameof**0 6
(**6 7
contextoFactory**7 F
)**F G
)**G H
;**H I!
_notificacionServicio,, !
=,," # 
notificacionServicio,,$ 8
??,,9 ;
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
nameof--0 6
(--6 7 
notificacionServicio--7 K
)--K L
)--L M
;--M N
}.. 	
public33 -
!ResultadoSolicitudRecuperacionDTO33 0'
SolicitarCodigoRecuperacion331 L
(33L M'
SolicitudRecuperarCuentaDTO44 '
	solicitud44( 1
)441 2
{55 	
if66 
(66 
!66 #
ValidarSolicitudEntrada66 (
(66( )
	solicitud66) 2
)662 3
)663 4
{77 
return88 
CrearFalloSolicitud88 *
(88* +
MensajesError99 !
.99! "
Cliente99" )
.99) *9
-SolicitudRecuperacionIdentificadorObligatorio99* W
)99W X
;99X Y
}:: 
var<< 
usuario<< 
=<< )
BuscarUsuarioParaRecuperacion<< 7
(<<7 8
	solicitud<<8 A
.<<A B
Identificador<<B O
)<<O P
;<<P Q
if== 
(== 
usuario== 
==== 
null== 
)==  
{>> 
return?? 
CrearFalloSolicitud?? *
(??* +
MensajesError@@ !
.@@! "
Cliente@@" )
.@@) *3
'SolicitudRecuperacionCuentaNoEncontrada@@* Q
)@@Q R
;@@R S
}AA *
LimpiarSolicitudesRecuperacionCC *
(CC* +
usuarioCC+ 2
.CC2 3
	idUsuarioCC3 <
)CC< =
;CC= >
varEE 

generacionEE 
=EE  
GenerarYEnviarCodigoEE 1
(EE1 2
usuarioEE2 9
,EE9 :
	solicitudEE; D
.EED E
IdiomaEEE K
)EEK L
;EEL M
ifFF 
(FF 
!FF 

generacionFF 
.FF 
ExitoFF !
)FF! "
{GG 
returnHH 
CrearFalloSolicitudHH *
(HH* +
MensajesErrorHH+ 8
.HH8 9
ClienteHH9 @
.HH@ A 
ErrorRecuperarCuentaHHA U
)HHU V
;HHV W
}II 
AlmacenarSolicitudKK 
(KK 

generacionKK )
.KK) *
TokenKK* /
,KK/ 0

generacionKK1 ;
.KK; <
	PendienteKK< E
)KKE F
;KKF G
returnMM 
newMM -
!ResultadoSolicitudRecuperacionDTOMM 8
{NN 
CuentaEncontradaOO  
=OO! "
trueOO# '
,OO' (
CodigoEnviadoPP 
=PP 
truePP  $
,PP$ %
CorreoDestinoQQ 
=QQ 

generacionQQ  *
.QQ* +
	PendienteQQ+ 4
.QQ4 5
CorreoQQ5 ;
,QQ; <
TokenCodigoRR 
=RR 

generacionRR (
.RR( )
TokenRR) .
}SS 
;SS 
}TT 	
publicYY '
ResultadoSolicitudCodigoDTOYY *&
ReenviarCodigoRecuperacionYY+ E
(YYE F
ReenvioCodigoDTOYYF V
	solicitudYYW `
)YY` a
{ZZ 	
if[[ 
([[ 
![[ !
ValidarReenvioEntrada[[ &
([[& '
	solicitud[[' 0
)[[0 1
)[[1 2
{\\ 
return]] 
CrearFalloReenvio]] (
(]]( )
MensajesError]]) 6
.]]6 7
Cliente]]7 >
.]]> ?
DatosReenvioCodigo]]? Q
)]]Q R
;]]R S
}^^ 
if`` 
(`` 
!`` $
_solicitudesRecuperacion`` )
.``) *
TryGetValue``* 5
(``5 6
	solicitudaa 
.aa 
TokenCodigoaa %
,aa% &
outbb *
SolicitudRecuperacionPendientebb 2
	pendientebb3 <
)bb< =
)bb= >
{cc 
returndd 
CrearFalloReenviodd (
(dd( )
MensajesErroree !
.ee! "
Clienteee" )
.ee) *-
!SolicitudRecuperacionNoEncontradaee* K
)eeK L
;eeL M
}ff 
ifhh 
(hh 
	pendientehh 
.hh 
Expirahh  
<hh! "
DateTimehh# +
.hh+ ,
UtcNowhh, 2
)hh2 3
{ii $
_solicitudesRecuperacionjj (
.jj( )
	TryRemovejj) 2
(jj2 3
	solicitudjj3 <
.jj< =
TokenCodigojj= H
,jjH I
outjjJ M
_jjN O
)jjO P
;jjP Q
returnkk 
CrearFalloReenviokk (
(kk( )
MensajesErrorkk) 6
.kk6 7
Clientekk7 >
.kk> ?&
CodigoRecuperacionExpiradokk? Y
)kkY Z
;kkZ [
}ll 
returnnn 
ProcesarReenvionn "
(nn" #
	solicitudnn# ,
.nn, -
TokenCodigonn- 8
,nn8 9
	pendientenn: C
)nnC D
;nnD E
}oo 	
publictt !
ResultadoOperacionDTOtt $'
ConfirmarCodigoRecuperaciontt% @
(tt@ A!
ConfirmacionCodigoDTOuu !
confirmacionuu" .
)uu. /
{vv 	
ifww 
(ww 
!ww &
ValidarConfirmacionEntradaww +
(ww+ ,
confirmacionww, 8
)ww8 9
)ww9 :
{xx 
returnyy 
CrearFalloOperacionyy *
(yy* +
MensajesErroryy+ 8
.yy8 9
Clienteyy9 @
.yy@ A&
DatosConfirmacionInvalidosyyA [
)yy[ \
;yy\ ]
}zz 
if|| 
(|| 
!|| $
_solicitudesRecuperacion|| )
.||) *
TryGetValue||* 5
(||5 6
confirmacion}} 
.}} 
TokenCodigo}} (
,}}( )
out~~ *
SolicitudRecuperacionPendiente~~ 2
	pendiente~~3 <
)~~< =
)~~= >
{ 
return
ÄÄ !
CrearFalloOperacion
ÄÄ *
(
ÄÄ* +
MensajesError
ÅÅ !
.
ÅÅ! "
Cliente
ÅÅ" )
.
ÅÅ) */
!SolicitudRecuperacionNoEncontrada
ÅÅ* K
)
ÅÅK L
;
ÅÅL M
}
ÇÇ 
return
ÑÑ 
VerificarCodigo
ÑÑ "
(
ÑÑ" #
	pendiente
ÑÑ# ,
,
ÑÑ, -
confirmacion
ÑÑ. :
.
ÑÑ: ;
TokenCodigo
ÑÑ; F
,
ÑÑF G
confirmacion
ÖÖ 
.
ÖÖ 
CodigoIngresado
ÖÖ ,
)
ÖÖ, -
;
ÖÖ- .
}
ÜÜ 	
public
ãã #
ResultadoOperacionDTO
ãã $"
ActualizarContrasena
ãã% 9
(
ãã9 :(
ActualizacionContrasenaDTO
ãã: T
	solicitud
ããU ^
)
ãã^ _
{
åå 	
if
çç 
(
çç 
!
çç )
ValidarActualizacionEntrada
çç ,
(
çç, -
	solicitud
çç- 6
)
çç6 7
)
çç7 8
{
éé 
return
èè !
CrearFalloOperacion
èè *
(
èè* +
MensajesError
èè+ 8
.
èè8 9
Cliente
èè9 @
.
èè@ A*
DatosActualizacionContrasena
èèA ]
)
èè] ^
;
èè^ _
}
êê 
var
íí 
validacionToken
íí 
=
íí  !'
VerificarTokenYExpiracion
íí" ;
(
íí; <
	solicitud
íí< E
.
ííE F
TokenCodigo
ííF Q
)
ííQ R
;
ííR S
if
ìì 
(
ìì 
!
ìì 
validacionToken
ìì  
.
ìì  !
Exito
ìì! &
)
ìì& '
{
îî 
return
ïï !
CrearFalloOperacion
ïï *
(
ïï* +
validacionToken
ïï+ :
.
ïï: ;
MensajeError
ïï; G
)
ïïG H
;
ïïH I
}
ññ 
var
òò 
	pendiente
òò 
=
òò 
validacionToken
òò +
.
òò+ ,
	Pendiente
òò, 5
;
òò5 6
if
ôô 
(
ôô 
!
ôô 
	pendiente
ôô 
.
ôô 

Confirmado
ôô %
)
ôô% &
{
öö 
return
õõ !
CrearFalloOperacion
õõ *
(
õõ* +
MensajesError
úú !
.
úú! "
Cliente
úú" )
.
úú) *,
SolicitudRecuperacionNoVigente
úú* H
)
úúH I
;
úúI J
}
ùù 
return
üü &
EjecutarCambioContrasena
üü +
(
üü+ ,
	pendiente
†† 
.
†† 
	UsuarioId
†† #
,
††# $
	solicitud
°° 
.
°° 
NuevaContrasena
°° )
,
°°) *
	solicitud
¢¢ 
.
¢¢ 
TokenCodigo
¢¢ %
)
¢¢% &
;
¢¢& '
}
££ 	
private
•• 
bool
•• %
ValidarSolicitudEntrada
•• ,
(
••, -)
SolicitudRecuperarCuentaDTO
••- H
	solicitud
••I R
)
••R S
{
¶¶ 	
if
ßß 
(
ßß 
	solicitud
ßß 
==
ßß 
null
ßß !
)
ßß! "
return
ßß# )
false
ßß* /
;
ßß/ 0
string
®® 
identificador
®®  
=
®®! "#
EntradaComunValidador
®®# 8
.
®®8 9
NormalizarTexto
®®9 H
(
®®H I
	solicitud
®®I R
.
®®R S
Identificador
®®S `
)
®®` a
;
®®a b
return
©© #
EntradaComunValidador
©© (
.
©©( )
EsLongitudValida
©©) 9
(
©©9 :
identificador
©©: G
)
©©G H
;
©©H I
}
™™ 	
private
¨¨ 
Usuario
¨¨ +
BuscarUsuarioParaRecuperacion
¨¨ 5
(
¨¨5 6
string
¨¨6 <
identificador
¨¨= J
)
¨¨J K
{
≠≠ 	
using
ÆÆ 
(
ÆÆ 
var
ÆÆ 
contexto
ÆÆ 
=
ÆÆ  !
_contextoFactory
ÆÆ" 2
.
ÆÆ2 3
CrearContexto
ÆÆ3 @
(
ÆÆ@ A
)
ÆÆA B
)
ÆÆB C
{
ØØ !
IUsuarioRepositorio
∞∞ #
repositorio
∞∞$ /
=
∞∞0 1
new
∞∞2 5 
UsuarioRepositorio
∞∞6 H
(
∞∞H I
contexto
∞∞I Q
)
∞∞Q R
;
∞∞R S
string
±± 
idNormalizado
±± $
=
±±% &#
EntradaComunValidador
±±' <
.
±±< =
NormalizarTexto
±±= L
(
±±L M
identificador
±±M Z
)
±±Z [
;
±±[ \
var
≤≤ 
usuarioPorNombre
≤≤ $
=
≤≤% &
repositorio
≤≤' 2
.
≤≤2 3(
ObtenerPorNombreConJugador
≤≤3 M
(
≤≤M N
idNormalizado
≤≤N [
)
≤≤[ \
;
≤≤\ ]
if
¥¥ 
(
¥¥ 
usuarioPorNombre
¥¥ $
!=
¥¥% '
null
¥¥( ,
)
¥¥, -
{
µµ 
return
∂∂ 
usuarioPorNombre
∂∂ +
;
∂∂+ ,
}
∑∑ 
return
ππ 
repositorio
ππ "
.
ππ" #
ObtenerPorCorreo
ππ# 3
(
ππ3 4
idNormalizado
ππ4 A
)
ππA B
;
ππB C
}
∫∫ 
}
ªª 	
private
ΩΩ 
(
ΩΩ 
bool
ΩΩ 
Exito
ΩΩ 
,
ΩΩ 
string
ΩΩ #
Token
ΩΩ$ )
,
ΩΩ) *,
SolicitudRecuperacionPendiente
ΩΩ+ I
	Pendiente
ΩΩJ S
)
ΩΩS T"
GenerarYEnviarCodigo
ææ  
(
ææ  !
Usuario
ææ! (
usuario
ææ) 0
,
ææ0 1
string
ææ2 8
idioma
ææ9 ?
)
ææ? @
{
øø 	
string
¿¿ 
token
¿¿ 
=
¿¿ 
TokenGenerador
¿¿ )
.
¿¿) *
GenerarToken
¿¿* 6
(
¿¿6 7
)
¿¿7 8
;
¿¿8 9
string
¡¡ 
codigo
¡¡ 
=
¡¡ )
CodigoVerificacionGenerador
¡¡ 7
.
¡¡7 8
GenerarCodigo
¡¡8 E
(
¡¡E F
)
¡¡F G
;
¡¡G H
var
√√ 
	pendiente
√√ 
=
√√ 
new
√√ ,
SolicitudRecuperacionPendiente
√√  >
{
ƒƒ 
	UsuarioId
≈≈ 
=
≈≈ 
usuario
≈≈ #
.
≈≈# $
	idUsuario
≈≈$ -
,
≈≈- .
Correo
∆∆ 
=
∆∆ 
usuario
∆∆  
.
∆∆  !
Jugador
∆∆! (
?
∆∆( )
.
∆∆) *
Correo
∆∆* 0
,
∆∆0 1
NombreUsuario
«« 
=
«« 
usuario
««  '
.
««' (
Nombre_Usuario
««( 6
,
««6 7
Codigo
»» 
=
»» 
codigo
»» 
,
»»  
Expira
…… 
=
…… 
DateTime
…… !
.
……! "
UtcNow
……" (
.
……( )

AddMinutes
……) 3
(
……3 4%
MinutosExpiracionCodigo
……4 K
)
……K L
,
……L M

Confirmado
   
=
   
false
   "
,
  " #
Idioma
ÀÀ 
=
ÀÀ 
idioma
ÀÀ 
}
ÃÃ 
;
ÃÃ 
bool
ŒŒ 
enviado
ŒŒ 
=
ŒŒ #
_notificacionServicio
ŒŒ 0
.
ŒŒ0 1 
EnviarNotificacion
ŒŒ1 C
(
ŒŒC D
	pendiente
œœ 
.
œœ 
Correo
œœ  
,
œœ  !
codigo
–– 
,
–– 
	pendiente
—— 
.
—— 
NombreUsuario
—— '
,
——' (
	pendiente
““ 
.
““ 
Idioma
““  
)
““  !
;
““! "
if
‘‘ 
(
‘‘ 
!
‘‘ 
enviado
‘‘ 
)
‘‘ 
{
’’ 
_logger
÷÷ 
.
÷÷ 
Error
÷÷ 
(
÷÷ 
$str
÷÷ O
)
÷÷O P
;
÷÷P Q
return
◊◊ 
(
◊◊ 
false
◊◊ 
,
◊◊ 
null
◊◊ #
,
◊◊# $
null
◊◊% )
)
◊◊) *
;
◊◊* +
}
ÿÿ 
return
⁄⁄ 
(
⁄⁄ 
true
⁄⁄ 
,
⁄⁄ 
token
⁄⁄ 
,
⁄⁄  
	pendiente
⁄⁄! *
)
⁄⁄* +
;
⁄⁄+ ,
}
€€ 	
private
›› 
void
››  
AlmacenarSolicitud
›› '
(
››' (
string
››( .
token
››/ 4
,
››4 5,
SolicitudRecuperacionPendiente
››6 T
	pendiente
››U ^
)
››^ _
{
ﬁﬁ 	&
_solicitudesRecuperacion
ﬂﬂ $
[
ﬂﬂ$ %
token
ﬂﬂ% *
]
ﬂﬂ* +
=
ﬂﬂ, -
	pendiente
ﬂﬂ. 7
;
ﬂﬂ7 8
}
‡‡ 	
private
‚‚ /
!ResultadoSolicitudRecuperacionDTO
‚‚ 1!
CrearFalloSolicitud
‚‚2 E
(
‚‚E F
string
‚‚F L
mensaje
‚‚M T
)
‚‚T U
{
„„ 	
return
‰‰ 
new
‰‰ /
!ResultadoSolicitudRecuperacionDTO
‰‰ 8
{
ÂÂ 
CuentaEncontrada
ÊÊ  
=
ÊÊ! "
false
ÊÊ# (
,
ÊÊ( )
CodigoEnviado
ÁÁ 
=
ÁÁ 
false
ÁÁ  %
,
ÁÁ% &
Mensaje
ËË 
=
ËË 
mensaje
ËË !
}
ÈÈ 
;
ÈÈ 
}
ÍÍ 	
private
ÏÏ 
static
ÏÏ 
void
ÏÏ ,
LimpiarSolicitudesRecuperacion
ÏÏ :
(
ÏÏ: ;
int
ÏÏ; >
	usuarioId
ÏÏ? H
)
ÏÏH I
{
ÌÌ 	
var
ÓÓ 
	registros
ÓÓ 
=
ÓÓ &
_solicitudesRecuperacion
ÓÓ 4
.
ÔÔ 
Where
ÔÔ 
(
ÔÔ 
pair
ÔÔ 
=>
ÔÔ 
pair
ÔÔ #
.
ÔÔ# $
Value
ÔÔ$ )
.
ÔÔ) *
	UsuarioId
ÔÔ* 3
==
ÔÔ4 6
	usuarioId
ÔÔ7 @
)
ÔÔ@ A
.
 
ToList
 
(
 
)
 
;
 
foreach
ÚÚ 
(
ÚÚ 
var
ÚÚ 
registro
ÚÚ !
in
ÚÚ" $
	registros
ÚÚ% .
)
ÚÚ. /
{
ÛÛ &
_solicitudesRecuperacion
ÙÙ (
.
ÙÙ( )
	TryRemove
ÙÙ) 2
(
ÙÙ2 3
registro
ÙÙ3 ;
.
ÙÙ; <
Key
ÙÙ< ?
,
ÙÙ? @
out
ÙÙA D
_
ÙÙE F
)
ÙÙF G
;
ÙÙG H
}
ıı 
}
ˆˆ 	
private
¯¯ 
bool
¯¯ #
ValidarReenvioEntrada
¯¯ *
(
¯¯* +
ReenvioCodigoDTO
¯¯+ ;
	solicitud
¯¯< E
)
¯¯E F
{
˘˘ 	
if
˙˙ 
(
˙˙ 
	solicitud
˙˙ 
==
˙˙ 
null
˙˙ !
)
˙˙! "
return
˙˙# )
false
˙˙* /
;
˙˙/ 0
string
˚˚ 
token
˚˚ 
=
˚˚ #
EntradaComunValidador
˚˚ 0
.
˚˚0 1
NormalizarTexto
˚˚1 @
(
˚˚@ A
	solicitud
˚˚A J
.
˚˚J K
TokenCodigo
˚˚K V
)
˚˚V W
;
˚˚W X
return
¸¸ #
EntradaComunValidador
¸¸ (
.
¸¸( )
EsTokenValido
¸¸) 6
(
¸¸6 7
token
¸¸7 <
)
¸¸< =
;
¸¸= >
}
˝˝ 	
private
ˇˇ )
ResultadoSolicitudCodigoDTO
ˇˇ +
ProcesarReenvio
ˇˇ, ;
(
ˇˇ; <
string
ÄÄ 
token
ÄÄ 
,
ÄÄ ,
SolicitudRecuperacionPendiente
ÅÅ *
	pendiente
ÅÅ+ 4
)
ÅÅ4 5
{
ÇÇ 	
string
ÉÉ 
codigoAnterior
ÉÉ !
=
ÉÉ" #
	pendiente
ÉÉ$ -
.
ÉÉ- .
Codigo
ÉÉ. 4
;
ÉÉ4 5
DateTime
ÑÑ  
expiracionAnterior
ÑÑ '
=
ÑÑ( )
	pendiente
ÑÑ* 3
.
ÑÑ3 4
Expira
ÑÑ4 :
;
ÑÑ: ;
bool
ÖÖ  
confirmadoAnterior
ÖÖ #
=
ÖÖ$ %
	pendiente
ÖÖ& /
.
ÖÖ/ 0

Confirmado
ÖÖ0 :
;
ÖÖ: ;
string
áá 
nuevoCodigo
áá 
=
áá  )
CodigoVerificacionGenerador
áá! <
.
áá< =
GenerarCodigo
áá= J
(
ááJ K
)
ááK L
;
ááL M
	pendiente
àà 
.
àà 
Codigo
àà 
=
àà 
nuevoCodigo
àà *
;
àà* +
	pendiente
ââ 
.
ââ 
Expira
ââ 
=
ââ 
DateTime
ââ '
.
ââ' (
UtcNow
ââ( .
.
ââ. /

AddMinutes
ââ/ 9
(
ââ9 :%
MinutosExpiracionCodigo
ââ: Q
)
ââQ R
;
ââR S
	pendiente
ää 
.
ää 

Confirmado
ää  
=
ää! "
false
ää# (
;
ää( )
bool
åå 
enviado
åå 
=
åå #
_notificacionServicio
åå 0
.
åå0 1 
EnviarNotificacion
åå1 C
(
ååC D
	pendiente
çç 
.
çç 
Correo
çç  
,
çç  !
nuevoCodigo
éé 
,
éé 
	pendiente
èè 
.
èè 
NombreUsuario
èè '
,
èè' (
	pendiente
êê 
.
êê 
Idioma
êê  
)
êê  !
;
êê! "
if
íí 
(
íí 
!
íí 
enviado
íí 
)
íí 
{
ìì 
	pendiente
îî 
.
îî 
Codigo
îî  
=
îî! "
codigoAnterior
îî# 1
;
îî1 2
	pendiente
ïï 
.
ïï 
Expira
ïï  
=
ïï! " 
expiracionAnterior
ïï# 5
;
ïï5 6
	pendiente
ññ 
.
ññ 

Confirmado
ññ $
=
ññ% & 
confirmadoAnterior
ññ' 9
;
ññ9 :
_logger
òò 
.
òò 
Error
òò 
(
òò 
$str
òò Q
)
òòQ R
;
òòR S
return
ôô 
CrearFalloReenvio
ôô (
(
ôô( )
MensajesError
ôô) 6
.
ôô6 7
Cliente
ôô7 >
.
ôô> ?-
ErrorReenviarCodigoRecuperacion
ôô? ^
)
ôô^ _
;
ôô_ `
}
öö 
return
úú 
new
úú )
ResultadoSolicitudCodigoDTO
úú 2
{
ùù 
CodigoEnviado
ûû 
=
ûû 
true
ûû  $
,
ûû$ %
TokenCodigo
üü 
=
üü 
token
üü #
}
†† 
;
†† 
}
°° 	
private
££ )
ResultadoSolicitudCodigoDTO
££ +
CrearFalloReenvio
££, =
(
££= >
string
££> D
mensaje
££E L
)
££L M
{
§§ 	
return
•• 
new
•• )
ResultadoSolicitudCodigoDTO
•• 2
{
¶¶ 
CodigoEnviado
ßß 
=
ßß 
false
ßß  %
,
ßß% &
Mensaje
®® 
=
®® 
mensaje
®® !
}
©© 
;
©© 
}
™™ 	
private
¨¨ 
bool
¨¨ (
ValidarConfirmacionEntrada
¨¨ /
(
¨¨/ 0#
ConfirmacionCodigoDTO
¨¨0 E
confirmacion
¨¨F R
)
¨¨R S
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
confirmacion
ÆÆ 
==
ÆÆ 
null
ÆÆ  $
)
ÆÆ$ %
return
ÆÆ& ,
false
ÆÆ- 2
;
ÆÆ2 3
string
ØØ 
token
ØØ 
=
ØØ #
EntradaComunValidador
ØØ 0
.
ØØ0 1
NormalizarTexto
ØØ1 @
(
ØØ@ A
confirmacion
ØØA M
.
ØØM N
TokenCodigo
ØØN Y
)
ØØY Z
;
ØØZ [
string
∞∞ 
codigo
∞∞ 
=
∞∞ #
EntradaComunValidador
∞∞ 1
.
∞∞1 2
NormalizarTexto
∞∞2 A
(
∞∞A B
confirmacion
∞∞B N
.
∞∞N O
CodigoIngresado
∞∞O ^
)
∞∞^ _
;
∞∞_ `
return
≤≤ #
EntradaComunValidador
≤≤ (
.
≤≤( )
EsTokenValido
≤≤) 6
(
≤≤6 7
token
≤≤7 <
)
≤≤< =
&&
≤≤> @#
EntradaComunValidador
≥≥ (
.
≥≥( )(
EsCodigoVerificacionValido
≥≥) C
(
≥≥C D
codigo
≥≥D J
)
≥≥J K
;
≥≥K L
}
¥¥ 	
private
∂∂ #
ResultadoOperacionDTO
∂∂ %
VerificarCodigo
∂∂& 5
(
∂∂5 6,
SolicitudRecuperacionPendiente
∑∑ *
	pendiente
∑∑+ 4
,
∑∑4 5
string
∏∏ 
token
∏∏ 
,
∏∏ 
string
ππ 
codigoIngresado
ππ "
)
ππ" #
{
∫∫ 	
if
ªª 
(
ªª 
	pendiente
ªª 
.
ªª 
Expira
ªª  
<
ªª! "
DateTime
ªª# +
.
ªª+ ,
UtcNow
ªª, 2
)
ªª2 3
{
ºº &
_solicitudesRecuperacion
ΩΩ (
.
ΩΩ( )
	TryRemove
ΩΩ) 2
(
ΩΩ2 3
token
ΩΩ3 8
,
ΩΩ8 9
out
ΩΩ: =
_
ΩΩ> ?
)
ΩΩ? @
;
ΩΩ@ A
return
ææ !
CrearFalloOperacion
ææ *
(
ææ* +
MensajesError
ææ+ 8
.
ææ8 9
Cliente
ææ9 @
.
ææ@ A(
CodigoRecuperacionExpirado
ææA [
)
ææ[ \
;
ææ\ ]
}
øø 
if
¡¡ 
(
¡¡ 
!
¡¡ 
string
¡¡ 
.
¡¡ 
Equals
¡¡ 
(
¡¡ 
	pendiente
¬¬ 
.
¬¬ 
Codigo
¬¬  
,
¬¬  !
codigoIngresado
√√ 
,
√√  
StringComparison
ƒƒ  
.
ƒƒ  !
OrdinalIgnoreCase
ƒƒ! 2
)
ƒƒ2 3
)
ƒƒ3 4
{
≈≈ 
return
∆∆ !
CrearFalloOperacion
∆∆ *
(
∆∆* +
MensajesError
∆∆+ 8
.
∆∆8 9
Cliente
∆∆9 @
.
∆∆@ A*
CodigoRecuperacionIncorrecto
∆∆A ]
)
∆∆] ^
;
∆∆^ _
}
«« 
	pendiente
…… 
.
…… 

Confirmado
……  
=
……! "
true
……# '
;
……' (
	pendiente
   
.
   
Codigo
   
=
   
null
   #
;
  # $
	pendiente
ÀÀ 
.
ÀÀ 
Expira
ÀÀ 
=
ÀÀ 
DateTime
ÀÀ '
.
ÀÀ' (
UtcNow
ÀÀ( .
.
ÀÀ. /

AddMinutes
ÀÀ/ 9
(
ÀÀ9 :%
MinutosExpiracionCodigo
ÀÀ: Q
)
ÀÀQ R
;
ÀÀR S
return
ÕÕ 
new
ÕÕ #
ResultadoOperacionDTO
ÕÕ ,
{
ÕÕ- .
OperacionExitosa
ÕÕ/ ?
=
ÕÕ@ A
true
ÕÕB F
}
ÕÕG H
;
ÕÕH I
}
ŒŒ 	
private
–– 
bool
–– )
ValidarActualizacionEntrada
–– 0
(
––0 1(
ActualizacionContrasenaDTO
––1 K
	solicitud
––L U
)
––U V
{
—— 	
if
““ 
(
““ 
	solicitud
““ 
==
““ 
null
““ !
)
““! "
return
““# )
false
““* /
;
““/ 0
string
”” 
token
”” 
=
”” #
EntradaComunValidador
”” 0
.
””0 1
NormalizarTexto
””1 @
(
””@ A
	solicitud
””A J
.
””J K
TokenCodigo
””K V
)
””V W
;
””W X
string
‘‘ 
pass
‘‘ 
=
‘‘ #
EntradaComunValidador
‘‘ /
.
‘‘/ 0
NormalizarTexto
‘‘0 ?
(
‘‘? @
	solicitud
‘‘@ I
.
‘‘I J
NuevaContrasena
‘‘J Y
)
‘‘Y Z
;
‘‘Z [
return
÷÷ #
EntradaComunValidador
÷÷ (
.
÷÷( )
EsTokenValido
÷÷) 6
(
÷÷6 7
token
÷÷7 <
)
÷÷< =
&&
÷÷> @#
EntradaComunValidador
◊◊ (
.
◊◊( ) 
EsContrasenaValida
◊◊) ;
(
◊◊; <
pass
◊◊< @
)
◊◊@ A
;
◊◊A B
}
ÿÿ 	
private
⁄⁄ 
(
⁄⁄ 
bool
⁄⁄ 
Exito
⁄⁄ 
,
⁄⁄ ,
SolicitudRecuperacionPendiente
⁄⁄ ;
	Pendiente
⁄⁄< E
,
⁄⁄E F
string
⁄⁄G M
MensajeError
⁄⁄N Z
)
⁄⁄Z ['
VerificarTokenYExpiracion
€€ %
(
€€% &
string
€€& ,
token
€€- 2
)
€€2 3
{
‹‹ 	
if
›› 
(
›› 
!
›› &
_solicitudesRecuperacion
›› )
.
››) *
TryGetValue
››* 5
(
››5 6
token
ﬁﬁ 
,
ﬁﬁ 
out
ﬂﬂ ,
SolicitudRecuperacionPendiente
ﬂﬂ 2
	pendiente
ﬂﬂ3 <
)
ﬂﬂ< =
)
ﬂﬂ= >
{
‡‡ 
return
·· 
(
·· 
false
·· 
,
·· 
null
·· #
,
··# $
MensajesError
··% 2
.
··2 3
Cliente
··3 :
.
··: ;/
!SolicitudRecuperacionNoEncontrada
··; \
)
··\ ]
;
··] ^
}
‚‚ 
if
‰‰ 
(
‰‰ 
	pendiente
‰‰ 
.
‰‰ 
Expira
‰‰  
<
‰‰! "
DateTime
‰‰# +
.
‰‰+ ,
UtcNow
‰‰, 2
)
‰‰2 3
{
ÂÂ &
_solicitudesRecuperacion
ÊÊ (
.
ÊÊ( )
	TryRemove
ÊÊ) 2
(
ÊÊ2 3
token
ÊÊ3 8
,
ÊÊ8 9
out
ÊÊ: =
_
ÊÊ> ?
)
ÊÊ? @
;
ÊÊ@ A
return
ÁÁ 
(
ÁÁ 
false
ÁÁ 
,
ÁÁ 
null
ÁÁ #
,
ÁÁ# $
MensajesError
ÁÁ% 2
.
ÁÁ2 3
Cliente
ÁÁ3 :
.
ÁÁ: ;+
SolicitudRecuperacionInvalida
ÁÁ; X
)
ÁÁX Y
;
ÁÁY Z
}
ËË 
return
ÍÍ 
(
ÍÍ 
true
ÍÍ 
,
ÍÍ 
	pendiente
ÍÍ #
,
ÍÍ# $
null
ÍÍ% )
)
ÍÍ) *
;
ÍÍ* +
}
ÎÎ 	
private
ÌÌ #
ResultadoOperacionDTO
ÌÌ %&
EjecutarCambioContrasena
ÌÌ& >
(
ÌÌ> ?
int
ÓÓ 
	usuarioId
ÓÓ 
,
ÓÓ 
string
ÔÔ 
nuevaContrasena
ÔÔ "
,
ÔÔ" #
string
 
token
 
)
 
{
ÒÒ 	
try
ÚÚ 
{
ÛÛ 
using
ÙÙ 
(
ÙÙ 
var
ÙÙ 
contexto
ÙÙ #
=
ÙÙ$ %
_contextoFactory
ÙÙ& 6
.
ÙÙ6 7
CrearContexto
ÙÙ7 D
(
ÙÙD E
)
ÙÙE F
)
ÙÙF G
{
ıı !
IUsuarioRepositorio
ˆˆ '
repositorio
ˆˆ( 3
=
ˆˆ4 5
new
ˆˆ6 9 
UsuarioRepositorio
ˆˆ: L
(
ˆˆL M
contexto
ˆˆM U
)
ˆˆU V
;
ˆˆV W
string
˜˜ 
hash
˜˜ 
=
˜˜  !
BCrypt
˜˜" (
.
˜˜( )
Net
˜˜) ,
.
˜˜, -
BCrypt
˜˜- 3
.
˜˜3 4
HashPassword
˜˜4 @
(
˜˜@ A
nuevaContrasena
˜˜A P
)
˜˜P Q
;
˜˜Q R
repositorio
˘˘ 
.
˘˘  "
ActualizarContrasena
˘˘  4
(
˘˘4 5
	usuarioId
˘˘5 >
,
˘˘> ?
hash
˘˘@ D
)
˘˘D E
;
˘˘E F
}
˙˙ &
_solicitudesRecuperacion
¸¸ (
.
¸¸( )
	TryRemove
¸¸) 2
(
¸¸2 3
token
¸¸3 8
,
¸¸8 9
out
¸¸: =
_
¸¸> ?
)
¸¸? @
;
¸¸@ A
return
˝˝ 
new
˝˝ #
ResultadoOperacionDTO
˝˝ 0
{
˝˝1 2
OperacionExitosa
˝˝3 C
=
˝˝D E
true
˝˝F J
}
˝˝K L
;
˝˝L M
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
EntityException
ˇˇ "
ex
ˇˇ# %
)
ˇˇ% &
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 
Error
ÅÅ 
(
ÅÅ 
$str
ÅÅ ?
,
ÅÅ? @
ex
ÅÅA C
)
ÅÅC D
;
ÅÅD E
return
ÇÇ !
CrearFalloOperacion
ÇÇ *
(
ÇÇ* +
MensajesError
ÇÇ+ 8
.
ÇÇ8 9
Cliente
ÇÇ9 @
.
ÇÇ@ A'
ErrorActualizarContrasena
ÇÇA Z
)
ÇÇZ [
;
ÇÇ[ \
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
DbUpdateException
ÑÑ $
ex
ÑÑ% '
)
ÑÑ' (
{
ÖÖ 
_logger
ÜÜ 
.
ÜÜ 
Error
ÜÜ 
(
ÜÜ 
$str
ÜÜ ?
,
ÜÜ? @
ex
ÜÜA C
)
ÜÜC D
;
ÜÜD E
return
áá !
CrearFalloOperacion
áá *
(
áá* +
MensajesError
áá+ 8
.
áá8 9
Cliente
áá9 @
.
áá@ A'
ErrorActualizarContrasena
ááA Z
)
ááZ [
;
áá[ \
}
àà 
catch
ââ 
(
ââ 
DataException
ââ  
ex
ââ! #
)
ââ# $
{
ää 
_logger
ãã 
.
ãã 
Error
ãã 
(
ãã 
$str
ãã ?
,
ãã? @
ex
ããA C
)
ããC D
;
ããD E
return
åå !
CrearFalloOperacion
åå *
(
åå* +
MensajesError
åå+ 8
.
åå8 9
Cliente
åå9 @
.
åå@ A'
ErrorActualizarContrasena
ååA Z
)
ååZ [
;
åå[ \
}
çç 
}
èè 	
private
ëë #
ResultadoOperacionDTO
ëë %!
CrearFalloOperacion
ëë& 9
(
ëë9 :
string
ëë: @
mensaje
ëëA H
)
ëëH I
{
íí 	
return
ìì 
new
ìì #
ResultadoOperacionDTO
ìì ,
{
îî 
OperacionExitosa
ïï  
=
ïï! "
false
ïï# (
,
ïï( )
Mensaje
ññ 
=
ññ 
mensaje
ññ !
}
óó 
;
óó 
}
òò 	
private
öö 
sealed
öö 
class
öö ,
SolicitudRecuperacionPendiente
öö ;
{
õõ 	
public
úú 
int
úú 
	UsuarioId
úú  
{
úú! "
get
úú# &
;
úú& '
set
úú( +
;
úú+ ,
}
úú- .
public
ùù 
string
ùù 
Correo
ùù  
{
ùù! "
get
ùù# &
;
ùù& '
set
ùù( +
;
ùù+ ,
}
ùù- .
public
ûû 
string
ûû 
NombreUsuario
ûû '
{
ûû( )
get
ûû* -
;
ûû- .
set
ûû/ 2
;
ûû2 3
}
ûû4 5
public
üü 
string
üü 
Codigo
üü  
{
üü! "
get
üü# &
;
üü& '
set
üü( +
;
üü+ ,
}
üü- .
public
†† 
DateTime
†† 
Expira
†† "
{
††# $
get
††% (
;
††( )
set
††* -
;
††- .
}
††/ 0
public
°° 
bool
°° 

Confirmado
°° "
{
°°# $
get
°°% (
;
°°( )
set
°°* -
;
°°- .
}
°°/ 0
public
¢¢ 
string
¢¢ 
Idioma
¢¢  
{
¢¢! "
get
¢¢# &
;
¢¢& '
set
¢¢( +
;
¢¢+ ,
}
¢¢- .
}
££ 	
}
§§ 
}•• ˚ó
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\PerfilManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class 
PerfilManejador  
:! "
IPerfilManejador# 3
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
PerfilManejadorK Z
)Z [
)[ \
;\ ]
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
public 
PerfilManejador 
( 
)  
:! "
this# '
(' (
new( +
ContextoFactoria, <
(< =
)= >
)> ?
{ 	
} 	
public!! 
PerfilManejador!! 
(!! 
IContextoFactoria!! 0
contextoFactory!!1 @
)!!@ A
{"" 	
_contextoFactory## 
=## 
contextoFactory## .
??##/ 1
throw$$ 
new$$ !
ArgumentNullException$$ /
($$/ 0
nameof$$0 6
($$6 7
contextoFactory$$7 F
)$$F G
)$$G H
;$$H I
}%% 	
public++ 

UsuarioDTO++ 
ObtenerPerfil++ '
(++' (
int++( +
	idUsuario++, 5
)++5 6
{,, 	
try-- 
{.. 
ValidarIdUsuario//  
(//  !
	idUsuario//! *
)//* +
;//+ ,
using11 
(11 
var11 
contexto11 #
=11$ %
_contextoFactory11& 6
.116 7
CrearContexto117 D
(11D E
)11E F
)11F G
{22 
var33 
usuario33 
=33  !'
ObtenerUsuarioConRelaciones33" =
(33= >
contexto33> F
,33F G
	idUsuario33H Q
)33Q R
;33R S
return44 
ConstruirPerfilDTO44 -
(44- .
usuario44. 5
)445 6
;446 7
}55 
}66 
catch77 
(77 
ArgumentException77 $
ex77% '
)77' (
{88 
_logger99 
.99 
Warn99 
(99 
$str99 D
,99D E
ex99F H
)99H I
;99I J
throw:: 
new:: 
FaultException:: (
(::( )
ex::) +
.::+ ,
Message::, 3
)::3 4
;::4 5
};; 
catch<< 
(<< %
InvalidOperationException<< ,
ex<<- /
)<</ 0
{== 
_logger>> 
.>> 
Warn>> 
(>> 
$str>> D
,>>D E
ex>>F H
)>>H I
;>>I J
throw?? 
new?? 
FaultException?? (
(??( )
ex??) +
.??+ ,
Message??, 3
)??3 4
;??4 5
}@@ 
catchAA 
(AA 
EntityExceptionAA "
exAA# %
)AA% &
{BB 
_loggerCC 
.CC 
ErrorCC 
(CC 
$strCC I
,CCI J
exCCK M
)CCM N
;CCN O
throwDD 
newDD 
FaultExceptionDD (
(DD( )
MensajesErrorDD) 6
.DD6 7
ClienteDD7 >
.DD> ?
ErrorObtenerPerfilDD? Q
)DDQ R
;DDR S
}EE 
catchFF 
(FF 
DbUpdateExceptionFF $
exFF% '
)FF' (
{GG 
_loggerHH 
.HH 
ErrorHH 
(HH 
$strHH I
,HHI J
exHHK M
)HHM N
;HHN O
throwII 
newII 
FaultExceptionII (
(II( )
MensajesErrorII) 6
.II6 7
ClienteII7 >
.II> ?
ErrorObtenerPerfilII? Q
)IIQ R
;IIR S
}JJ 
catchKK 
(KK 
DataExceptionKK  
exKK! #
)KK# $
{LL 
_loggerMM 
.MM 
ErrorMM 
(MM 
$strMM A
,MMA B
exMMC E
)MME F
;MMF G
throwNN 
newNN 
FaultExceptionNN (
(NN( )
MensajesErrorNN) 6
.NN6 7
ClienteNN7 >
.NN> ?
ErrorObtenerPerfilNN? Q
)NNQ R
;NNR S
}OO 
}QQ 	
publicWW !
ResultadoOperacionDTOWW $
ActualizarPerfilWW% 5
(WW5 6"
ActualizacionPerfilDTOWW6 L
	solicitudWWM V
)WWV W
{XX 	
tryYY 
{ZZ 
var[[ 

validacion[[ 
=[[  !
EntradaComunValidador[[! 6
.[[6 7&
ValidarActualizacionPerfil[[7 Q
([[Q R
	solicitud[[R [
)[[[ \
;[[\ ]
if\\ 
(\\ 
!\\ 

validacion\\ 
.\\  
OperacionExitosa\\  0
)\\0 1
{]] 
return^^ 

validacion^^ %
;^^% &
}__ %
EjecutarActualizacionEnBDaa )
(aa) *
	solicitudaa* 3
)aa3 4
;aa4 5
_loggercc 
.cc 
Infocc 
(cc 
$strcc ?
)cc? @
;cc@ A
returnee 
newee !
ResultadoOperacionDTOee 0
{ff 
OperacionExitosagg $
=gg% &
truegg' +
,gg+ ,
Mensajehh 
=hh 
MensajesErrorhh +
.hh+ ,
Clientehh, 3
.hh3 4"
PerfilActualizadoExitohh4 J
}ii 
;ii 
}jj 
catchkk 
(kk 
ArgumentExceptionkk $
exkk% '
)kk' (
{ll 
_loggermm 
.mm 
Warnmm 
(mm 
$strmm G
,mmG H
exmmI K
)mmK L
;mmL M
returnnn 
CrearResultadoFallonn *
(nn* +
exnn+ -
.nn- .
Messagenn. 5
)nn5 6
;nn6 7
}oo 
catchpp 
(pp %
InvalidOperationExceptionpp ,
expp- /
)pp/ 0
{qq 
_loggerrr 
.rr 
Warnrr 
(rr 
$strrr G
,rrG H
exrrI K
)rrK L
;rrL M
returnss 
CrearResultadoFalloss *
(ss* +
exss+ -
.ss- .
Messagess. 5
)ss5 6
;ss6 7
}tt 
catchuu 
(uu '
DbEntityValidationExceptionuu .
exuu/ 1
)uu1 2
{vv 
_loggerww 
.ww 
Errorww 
(ww 
$strww S
,wwS T
exwwU W
)wwW X
;wwX Y
returnxx 
CrearResultadoFalloxx *
(xx* +
MensajesErrorxx+ 8
.xx8 9
Clientexx9 @
.xx@ A!
ErrorActualizarPerfilxxA V
)xxV W
;xxW X
}yy 
catchzz 
(zz (
DbUpdateConcurrencyExceptionzz /
exzz0 2
)zz2 3
{{{ 
_logger|| 
.|| 
Error|| 
(|| 
$str|| K
,||K L
ex||M O
)||O P
;||P Q
return}} 
CrearResultadoFallo}} *
(}}* +
MensajesError}}+ 8
.}}8 9
Cliente}}9 @
.}}@ A!
ErrorActualizarPerfil}}A V
)}}V W
;}}W X
}~~ 
catch 
( 
DbUpdateException $
ex% '
)' (
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 
Error
ÅÅ 
(
ÅÅ 
$str
ÅÅ R
,
ÅÅR S
ex
ÅÅT V
)
ÅÅV W
;
ÅÅW X
return
ÇÇ !
CrearResultadoFallo
ÇÇ *
(
ÇÇ* +
MensajesError
ÇÇ+ 8
.
ÇÇ8 9
Cliente
ÇÇ9 @
.
ÇÇ@ A#
ErrorActualizarPerfil
ÇÇA V
)
ÇÇV W
;
ÇÇW X
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
EntityException
ÑÑ "
ex
ÑÑ# %
)
ÑÑ% &
{
ÖÖ 
_logger
ÜÜ 
.
ÜÜ 
Error
ÜÜ 
(
ÜÜ 
$str
ÜÜ L
,
ÜÜL M
ex
ÜÜN P
)
ÜÜP Q
;
ÜÜQ R
return
áá !
CrearResultadoFallo
áá *
(
áá* +
MensajesError
áá+ 8
.
áá8 9
Cliente
áá9 @
.
áá@ A#
ErrorActualizarPerfil
ááA V
)
ááV W
;
ááW X
}
àà 
catch
ää 
(
ää 
DataException
ää  
ex
ää! #
)
ää# $
{
ãã 
_logger
åå 
.
åå 
Error
åå 
(
åå 
$str
åå D
,
ååD E
ex
ååF H
)
ååH I
;
ååI J
return
çç !
CrearResultadoFallo
çç *
(
çç* +
MensajesError
çç+ 8
.
çç8 9
Cliente
çç9 @
.
çç@ A#
ErrorActualizarPerfil
ççA V
)
ççV W
;
ççW X
}
éé 
}
êê 	
private
íí 
void
íí 
ValidarIdUsuario
íí %
(
íí% &
int
íí& )
	idUsuario
íí* 3
)
íí3 4
{
ìì 	
if
îî 
(
îî 
	idUsuario
îî 
<=
îî 
$num
îî 
)
îî 
{
ïï 
throw
ññ 
new
ññ 
ArgumentException
ññ +
(
ññ+ ,
MensajesError
ññ, 9
.
ññ9 :
Cliente
ññ: A
.
ññA B
DatosInvalidos
ññB P
)
ññP Q
;
ññQ R
}
óó 
}
òò 	
private
öö 
Usuario
öö )
ObtenerUsuarioConRelaciones
öö 3
(
öö3 4%
BaseDatosPruebaEntities
õõ #
contexto
õõ$ ,
,
õõ, -
int
úú 
	idUsuario
úú 
)
úú 
{
ùù 	!
IUsuarioRepositorio
ûû 
repositorio
ûû  +
=
ûû, -
new
ûû. 1 
UsuarioRepositorio
ûû2 D
(
ûûD E
contexto
ûûE M
)
ûûM N
;
ûûN O
var
üü 
usuario
üü 
=
üü 
repositorio
üü %
.
üü% &*
ObtenerPorIdConRedesSociales
üü& B
(
üüB C
	idUsuario
üüC L
)
üüL M
;
üüM N
if
°° 
(
°° 
usuario
°° 
==
°° 
null
°° 
)
°°  
{
¢¢ 
throw
££ 
new
££ '
InvalidOperationException
££ 3
(
££3 4
MensajesError
§§ !
.
§§! "
Cliente
§§" )
.
§§) *!
UsuarioNoEncontrado
§§* =
)
§§= >
;
§§> ?
}
•• 
if
ßß 
(
ßß 
usuario
ßß 
.
ßß 
Jugador
ßß 
==
ßß  "
null
ßß# '
)
ßß' (
{
®® 
throw
©© 
new
©© '
InvalidOperationException
©© 3
(
©©3 4
MensajesError
™™ !
.
™™! "
Cliente
™™" )
.
™™) *
JugadorNoAsociado
™™* ;
)
™™; <
;
™™< =
}
´´ 
return
≠≠ 
usuario
≠≠ 
;
≠≠ 
}
ÆÆ 	
private
∞∞ 

UsuarioDTO
∞∞  
ConstruirPerfilDTO
∞∞ -
(
∞∞- .
Usuario
∞∞. 5
usuario
∞∞6 =
)
∞∞= >
{
±± 	
var
≤≤ 
jugador
≤≤ 
=
≤≤ 
usuario
≤≤ !
.
≤≤! "
Jugador
≤≤" )
;
≤≤) *
var
≥≥ 
	redSocial
≥≥ 
=
≥≥ 
jugador
≥≥ #
.
≥≥# $
	RedSocial
≥≥$ -
.
≥≥- .
FirstOrDefault
≥≥. <
(
≥≥< =
)
≥≥= >
;
≥≥> ?
return
µµ 
new
µµ 

UsuarioDTO
µµ !
{
∂∂ 
	UsuarioId
∑∑ 
=
∑∑ 
usuario
∑∑ #
.
∑∑# $
	idUsuario
∑∑$ -
,
∑∑- .
	JugadorId
∏∏ 
=
∏∏ 
jugador
∏∏ #
.
∏∏# $
	idJugador
∏∏$ -
,
∏∏- .
NombreUsuario
ππ 
=
ππ 
usuario
ππ  '
.
ππ' (
Nombre_Usuario
ππ( 6
,
ππ6 7
Nombre
∫∫ 
=
∫∫ 
jugador
∫∫  
.
∫∫  !
Nombre
∫∫! '
,
∫∫' (
Apellido
ªª 
=
ªª 
jugador
ªª "
.
ªª" #
Apellido
ªª# +
,
ªª+ ,
Correo
ºº 
=
ºº 
jugador
ºº  
.
ºº  !
Correo
ºº! '
,
ºº' (
AvatarId
ΩΩ 
=
ΩΩ 
jugador
ΩΩ "
.
ΩΩ" #
	Id_Avatar
ΩΩ# ,
??
ΩΩ- /
$num
ΩΩ0 1
,
ΩΩ1 2
	Instagram
ææ 
=
ææ 
	redSocial
ææ %
?
ææ% &
.
ææ& '
	Instagram
ææ' 0
,
ææ0 1
Facebook
øø 
=
øø 
	redSocial
øø $
?
øø$ %
.
øø% &
facebook
øø& .
,
øø. /
X
¿¿ 
=
¿¿ 
	redSocial
¿¿ 
?
¿¿ 
.
¿¿ 
x
¿¿  
,
¿¿  !
Discord
¡¡ 
=
¡¡ 
	redSocial
¡¡ #
?
¡¡# $
.
¡¡$ %
discord
¡¡% ,
}
¬¬ 
;
¬¬ 
}
√√ 	
private
≈≈ 
void
≈≈ '
EjecutarActualizacionEnBD
≈≈ .
(
≈≈. /$
ActualizacionPerfilDTO
≈≈/ E
	solicitud
≈≈F O
)
≈≈O P
{
∆∆ 	
using
«« 
(
«« 
var
«« 
contexto
«« 
=
««  !
_contextoFactory
««" 2
.
««2 3
CrearContexto
««3 @
(
««@ A
)
««A B
)
««B C
{
»» 
var
…… 
usuario
…… 
=
…… )
ObtenerUsuarioConRelaciones
…… 9
(
……9 :
contexto
……: B
,
……B C
	solicitud
……D M
.
……M N
	UsuarioId
……N W
)
……W X
;
……X Y
var
   
jugador
   
=
   
usuario
   %
.
  % &
Jugador
  & -
;
  - .'
ActualizarDatosPersonales
ÃÃ )
(
ÃÃ) *
jugador
ÃÃ* 1
,
ÃÃ1 2
	solicitud
ÃÃ3 <
)
ÃÃ< =
;
ÃÃ= >0
"ProcesarActualizacionRedesSociales
ÕÕ 2
(
ÕÕ2 3
contexto
ÕÕ3 ;
,
ÕÕ; <
jugador
ÕÕ= D
,
ÕÕD E
	solicitud
ÕÕF O
)
ÕÕO P
;
ÕÕP Q
contexto
œœ 
.
œœ 
SaveChanges
œœ $
(
œœ$ %
)
œœ% &
;
œœ& '
}
–– 
}
—— 	
private
”” 
void
”” '
ActualizarDatosPersonales
”” .
(
””. /
Jugador
‘‘ 
jugador
‘‘ 
,
‘‘ $
ActualizacionPerfilDTO
’’ "
	solicitud
’’# ,
)
’’, -
{
÷÷ 	
jugador
◊◊ 
.
◊◊ 
Nombre
◊◊ 
=
◊◊ 
	solicitud
◊◊ &
.
◊◊& '
Nombre
◊◊' -
;
◊◊- .
jugador
ÿÿ 
.
ÿÿ 
Apellido
ÿÿ 
=
ÿÿ 
	solicitud
ÿÿ (
.
ÿÿ( )
Apellido
ÿÿ) 1
;
ÿÿ1 2
jugador
ŸŸ 
.
ŸŸ 
	Id_Avatar
ŸŸ 
=
ŸŸ 
	solicitud
ŸŸ  )
.
ŸŸ) *
AvatarId
ŸŸ* 2
;
ŸŸ2 3
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 0
"ProcesarActualizacionRedesSociales
‹‹ 7
(
‹‹7 8%
BaseDatosPruebaEntities
›› #
contexto
››$ ,
,
››, -
Jugador
ﬁﬁ 
jugador
ﬁﬁ 
,
ﬁﬁ $
ActualizacionPerfilDTO
ﬂﬂ "
	solicitud
ﬂﬂ# ,
)
ﬂﬂ, -
{
‡‡ 	
var
·· 
	redSocial
·· 
=
·· 
jugador
·· #
.
··# $
	RedSocial
··$ -
.
··- .
FirstOrDefault
··. <
(
··< =
)
··= >
;
··> ?
bool
‚‚ 
esNueva
‚‚ 
=
‚‚ 
false
‚‚  
;
‚‚  !
if
‰‰ 
(
‰‰ 
	redSocial
‰‰ 
==
‰‰ 
null
‰‰ !
)
‰‰! "
{
ÂÂ 
	redSocial
ÊÊ 
=
ÊÊ !
CrearRedSocialVacia
ÊÊ /
(
ÊÊ/ 0
jugador
ÊÊ0 7
.
ÊÊ7 8
	idJugador
ÊÊ8 A
)
ÊÊA B
;
ÊÊB C
esNueva
ÁÁ 
=
ÁÁ 
true
ÁÁ 
;
ÁÁ 
}
ËË %
AsignarValoresRedSocial
ÍÍ #
(
ÍÍ# $
	redSocial
ÍÍ$ -
,
ÍÍ- .
	solicitud
ÍÍ/ 8
)
ÍÍ8 9
;
ÍÍ9 :
if
ÏÏ 
(
ÏÏ 
esNueva
ÏÏ 
)
ÏÏ 
{
ÌÌ 
contexto
ÓÓ 
.
ÓÓ 
	RedSocial
ÓÓ "
.
ÓÓ" #
Add
ÓÓ# &
(
ÓÓ& '
	redSocial
ÓÓ' 0
)
ÓÓ0 1
;
ÓÓ1 2
jugador
ÔÔ 
.
ÔÔ 
	RedSocial
ÔÔ !
.
ÔÔ! "
Add
ÔÔ" %
(
ÔÔ% &
	redSocial
ÔÔ& /
)
ÔÔ/ 0
;
ÔÔ0 1
}
 
}
ÒÒ 	
private
ÛÛ 
	RedSocial
ÛÛ !
CrearRedSocialVacia
ÛÛ -
(
ÛÛ- .
int
ÛÛ. 1
	jugadorId
ÛÛ2 ;
)
ÛÛ; <
{
ÙÙ 	
return
ıı 
new
ıı 
	RedSocial
ıı  
{
ˆˆ 
Jugador_idJugador
˜˜ !
=
˜˜" #
	jugadorId
˜˜$ -
}
¯¯ 
;
¯¯ 
}
˘˘ 	
private
˚˚ 
void
˚˚ %
AsignarValoresRedSocial
˚˚ ,
(
˚˚, -
	RedSocial
¸¸ 
	redSocial
¸¸ 
,
¸¸  $
ActualizacionPerfilDTO
˝˝ "
	solicitud
˝˝# ,
)
˝˝, -
{
˛˛ 	
	redSocial
ˇˇ 
.
ˇˇ 
	Instagram
ˇˇ 
=
ˇˇ  !
	solicitud
ˇˇ" +
.
ˇˇ+ ,
	Instagram
ˇˇ, 5
;
ˇˇ5 6
	redSocial
ÄÄ 
.
ÄÄ 
facebook
ÄÄ 
=
ÄÄ  
	solicitud
ÄÄ! *
.
ÄÄ* +
Facebook
ÄÄ+ 3
;
ÄÄ3 4
	redSocial
ÅÅ 
.
ÅÅ 
x
ÅÅ 
=
ÅÅ 
	solicitud
ÅÅ #
.
ÅÅ# $
X
ÅÅ$ %
;
ÅÅ% &
	redSocial
ÇÇ 
.
ÇÇ 
discord
ÇÇ 
=
ÇÇ 
	solicitud
ÇÇ  )
.
ÇÇ) *
Discord
ÇÇ* 1
;
ÇÇ1 2
}
ÉÉ 	
private
ÖÖ 
static
ÖÖ #
ResultadoOperacionDTO
ÖÖ ,!
CrearResultadoFallo
ÖÖ- @
(
ÖÖ@ A
string
ÖÖA G
mensaje
ÖÖH O
)
ÖÖO P
{
ÜÜ 	
return
áá 
new
áá #
ResultadoOperacionDTO
áá ,
{
àà 
OperacionExitosa
ââ  
=
ââ! "
false
ââ# (
,
ââ( )
Mensaje
ää 
=
ää 
mensaje
ää !
}
ãã 
;
ãã 
}
åå 	
}
çç 
}éé µ;
C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\NotificadorSalas.cs
	namespace		 	%
PictionaryMusicalServidor		
 #
.		# $
	Servicios		$ -
.		- .
	Servicios		. 7
.		7 8
Notificadores		8 E
{

 
internal 
class 
NotificadorSalas #
:$ %
INotificadorSalas& 7
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
NotificadorSalasK [
)[ \
)\ ]
;] ^
private 
readonly  
ConcurrentDictionary -
<- .
Guid. 2
,2 3#
ISalasManejadorCallback4 K
>K L
_suscripcionesM [
=\ ]
new  
ConcurrentDictionary $
<$ %
Guid% )
,) *#
ISalasManejadorCallback+ B
>B C
(C D
)D E
;E F
private 
readonly 
Func 
< 
IEnumerable )
<) * 
SalaInternaManejador* >
>> ?
>? @
_obtenerSalasA N
;N O
public 
NotificadorSalas 
(  
Func  $
<$ %
IEnumerable% 0
<0 1 
SalaInternaManejador1 E
>E F
>F G
obtenerSalasH T
)T U
{ 	
_obtenerSalas 
= 
obtenerSalas (
;( )
} 	
public   
Guid   
	Suscribir   
(   #
ISalasManejadorCallback   5
callback  6 >
)  > ?
{!! 	
var"" 
sesionId"" 
="" 
Guid"" 
.""  
NewGuid""  '
(""' (
)""( )
;"") *
_suscripciones## 
.## 
AddOrUpdate## &
(##& '
sesionId##' /
,##/ 0
callback##1 9
,##9 :
(##; <
_##< =
,##= >
__##? A
)##A B
=>##C E
callback##F N
)##N O
;##O P
return%% 
sesionId%% 
;%% 
}&& 	
public,, 
void,, 
Desuscribir,, 
(,,  
Guid,,  $
sesionId,,% -
),,- .
{-- 	
_suscripciones.. 
... 
	TryRemove.. $
(..$ %
sesionId..% -
,..- .
out../ 2
_..3 4
)..4 5
;..5 6
}// 	
public55 
void55 "
DesuscribirPorCallback55 *
(55* +#
ISalasManejadorCallback55+ B
callback55C K
)55K L
{66 	
var77 
keysToRemove77 
=77 
_suscripciones77 -
.88 
Where88 
(88 
kvp88 
=>88 
ReferenceEquals88 -
(88- .
kvp88. 1
.881 2
Value882 7
,887 8
callback889 A
)88A B
)88B C
.99 
Select99 
(99 
kvp99 
=>99 
kvp99 "
.99" #
Key99# &
)99& '
.:: 
ToList:: 
(:: 
):: 
;:: 
foreach<< 
(<< 
var<< 
key<< 
in<< 
keysToRemove<<  ,
)<<, -
{== 
_suscripciones>> 
.>> 
	TryRemove>> (
(>>( )
key>>) ,
,>>, -
out>>. 1
_>>2 3
)>>3 4
;>>4 5
}?? 
}@@ 	
publicFF 
voidFF 
NotificarListaSalasFF '
(FF' (#
ISalasManejadorCallbackFF( ?
callbackFF@ H
)FFH I
{GG 	
tryHH 
{II 
varJJ 
salasJJ 
=JJ 
_obtenerSalasJJ )
(JJ) *
)JJ* +
.JJ+ ,
SelectJJ, 2
(JJ2 3
sJJ3 4
=>JJ5 7
sJJ8 9
.JJ9 :
ToDtoJJ: ?
(JJ? @
)JJ@ A
)JJA B
.JJB C
ToArrayJJC J
(JJJ K
)JJK L
;JJL M
callbackKK 
.KK *
NotificarListaSalasActualizadaKK 7
(KK7 8
salasKK8 =
)KK= >
;KK> ?
}LL 
catchMM 
(MM "
CommunicationExceptionMM )
exMM* ,
)MM, -
{NN 
_loggerOO 
.OO 
WarnOO 
(OO 
$strPP ^
,PP^ _
exQQ 
)QQ 
;QQ 
}RR 
catchSS 
(SS 
TimeoutExceptionSS #
exSS$ &
)SS& '
{TT 
_loggerUU 
.UU 
WarnUU 
(UU 
$strUU Y
,UUY Z
exUU[ ]
)UU] ^
;UU^ _
}VV 
catchWW 
(WW #
ObjectDisposedExceptionWW *
exWW+ -
)WW- .
{XX 
_loggerYY 
.YY 
ErrorYY 
(YY 
$strZZ Y
,ZZY Z
exZZ[ ]
)ZZ] ^
;ZZ^ _
}[[ 
}\\ 	
publicaa 
voidaa %
NotificarListaSalasATodosaa -
(aa- .
)aa. /
{bb 	
varcc 
salascc 
=cc 
_obtenerSalascc %
(cc% &
)cc& '
.cc' (
Selectcc( .
(cc. /
scc/ 0
=>cc1 3
scc4 5
.cc5 6
ToDtocc6 ;
(cc; <
)cc< =
)cc= >
.cc> ?
ToArraycc? F
(ccF G
)ccG H
;ccH I
foreachee 
(ee 
varee 
kvpee 
inee 
_suscripcionesee  .
)ee. /
{ff 
trygg 
{hh 
kvpii 
.ii 
Valueii 
.ii *
NotificarListaSalasActualizadaii <
(ii< =
salasii= B
)iiB C
;iiC D
}jj 
catchkk 
(kk "
CommunicationExceptionkk -
exkk. 0
)kk0 1
{ll 
_loggermm 
.mm 
Warnmm  
(mm  !
$strnn l
,nnl m
exoo 
)oo 
;oo 
_suscripcionespp "
.pp" #
	TryRemovepp# ,
(pp, -
kvppp- 0
.pp0 1
Keypp1 4
,pp4 5
outpp6 9
_pp: ;
)pp; <
;pp< =
}qq 
catchrr 
(rr 
TimeoutExceptionrr '
exrr( *
)rr* +
{ss 
_loggertt 
.tt 
Warntt  
(tt  !
$struu l
,uul m
exvv 
)vv 
;vv 
_suscripcionesww &
.ww& '
	TryRemoveww' 0
(ww0 1
kvpww1 4
.ww4 5
Keyww5 8
,ww8 9
outww: =
_ww> ?
)ww? @
;ww@ A
}xx 
catchyy 
(yy #
ObjectDisposedExceptionyy .
exyy/ 1
)yy1 2
{zz 
_logger{{ 
.{{ 
Error{{ !
({{! "
$str|| ]
,||] ^
ex||_ a
)||a b
;||b c
}}} 
}~~ 
} 	
}
ÄÄ 
}ÅÅ Ñ-
ÖC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\NotificadorListaAmigos.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
internal 
class "
NotificadorListaAmigos )
:* +#
INotificadorListaAmigos, C
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K"
NotificadorListaAmigosK a
)a b
)b c
;c d
private 
readonly 
ManejadorCallback *
<* +)
IListaAmigosManejadorCallback+ H
>H I
_manejadorCallbackJ \
;\ ]
private 
readonly 
IAmistadServicio )
_amistadServicio* :
;: ;
private 
readonly 
IUsuarioRepositorio ,
_usuarioRepositorio- @
;@ A
public "
NotificadorListaAmigos %
(% &
ManejadorCallback 
< )
IListaAmigosManejadorCallback ;
>; <
manejadorCallback= N
,N O
IAmistadServicio 
amistadServicio ,
,, -
IUsuarioRepositorio 
usuarioRepositorio  2
)2 3
{ 	
_manejadorCallback 
=  
manejadorCallback! 2
;2 3
_amistadServicio 
= 
amistadServicio .
;. /
_usuarioRepositorio   
=    !
usuarioRepositorio  " 4
;  4 5
}!! 	
public'' 
void'' "
NotificarCambioAmistad'' *
(''* +
string''+ 1
nombreUsuario''2 ?
)''? @
{(( 	
if)) 
()) 
string)) 
.)) 
IsNullOrWhiteSpace)) )
())) *
nombreUsuario))* 7
)))7 8
)))8 9
{** 
return++ 
;++ 
},, 
try.. 
{// 
List00 
<00 
AmigoDTO00 
>00 
amigos00 %
=00& '"
ObtenerAmigosPorNombre00( >
(00> ?
nombreUsuario00? L
)00L M
;00M N
NotificarLista11 
(11 
nombreUsuario11 ,
,11, -
amigos11. 4
)114 5
;115 6
}22 
catch33 
(33 
FaultException33 !
ex33" $
)33$ %
{44 
_logger55 
.55 
Warn55 
(55 
$str55 `
,55` a
ex66 
)66 
;66 
}77 
catch88 
(88 '
ArgumentOutOfRangeException88 .
ex88/ 1
)881 2
{99 
_logger:: 
.:: 
Warn:: 
(:: 
$str;; Z
,;;Z [
ex;;\ ^
);;^ _
;;;_ `
}<< 
catch== 
(== 
ArgumentException== $
ex==% '
)==' (
{>> 
_logger?? 
.?? 
Warn?? 
(?? 
$str?? \
,??\ ]
ex@@ 
)@@ 
;@@ 
}AA 
catchBB 
(BB 
DataExceptionBB  
exBB! #
)BB# $
{CC 
_loggerDD 
.DD 
ErrorDD 
(DD 
$strEE l
,EEl m
exFF 
)FF 
;FF 
}GG 
catchHH 
(HH %
InvalidOperationExceptionHH ,
exHH- /
)HH/ 0
{II 
_loggerJJ 
.JJ 
WarnJJ 
(JJ 
$strJJ Z
,JJZ [
exJJ\ ^
)JJ^ _
;JJ_ `
}KK 
}LL 	
publicSS 
voidSS 
NotificarListaSS "
(SS" #
stringSS# )
nombreUsuarioSS* 7
,SS7 8
ListSS9 =
<SS= >
AmigoDTOSS> F
>SSF G
amigosSSH N
)SSN O
{TT 	
_manejadorCallbackUU 
.UU 
	NotificarUU (
(UU( )
nombreUsuarioUU) 6
,UU6 7
callbackUU8 @
=>UUA C
{VV 
callbackWW 
.WW +
NotificarListaAmigosActualizadaWW 8
(WW8 9
amigosWW9 ?
)WW? @
;WW@ A
}XX 
)XX 
;XX 
}YY 	
private[[ 
List[[ 
<[[ 
AmigoDTO[[ 
>[[ "
ObtenerAmigosPorNombre[[ 5
([[5 6
string[[6 <
nombreUsuario[[= J
)[[J K
{\\ 	
var]] 
usuario]] 
=]] 
_usuarioRepositorio]] -
.]]- .#
ObtenerPorNombreUsuario]]. E
(]]E F
nombreUsuario]]F S
)]]S T
;]]T U
if^^ 
(^^ 
usuario^^ 
==^^ 
null^^ 
)^^  
{__ 
throw`` 
new`` 
FaultException`` (
(``( )
MensajesError``) 6
.``6 7
Cliente``7 >
.``> ?
UsuarioNoEncontrado``? R
)``R S
;``S T
}aa 
returncc 
_amistadServiciocc #
.cc# $
ObtenerAmigosDTOcc$ 4
(cc4 5
usuariocc5 <
.cc< =
	idUsuariocc= F
)ccF G
;ccG H
}dd 	
}ee 
}ff œ!
ÄC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\NotificadorAmigos.cs
	namespace		 	%
PictionaryMusicalServidor		
 #
.		# $
	Servicios		$ -
.		- .
	Servicios		. 7
.		7 8
Notificadores		8 E
{

 
internal 
class 
NotificadorAmigos $
:% &
INotificadorAmigos' 9
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
NotificadorAmigosK \
)\ ]
)] ^
;^ _
private 
readonly 
ManejadorCallback *
<* +$
IAmigosManejadorCallback+ C
>C D
_manejadorCallbackE W
;W X
private 
readonly 
IAmistadServicio )
_amistadServicio* :
;: ;
public 
NotificadorAmigos  
(  !
ManejadorCallback! 2
<2 3$
IAmigosManejadorCallback3 K
>K L
manejadorCallbackM ^
,^ _
IAmistadServicio 
amistadServicio ,
), -
{ 	
_manejadorCallback 
=  
manejadorCallback! 2
;2 3
_amistadServicio 
= 
amistadServicio .
;. /
} 	
public!! 
void!! )
NotificarSolicitudActualizada!! 1
(!!1 2
string!!2 8
nombreUsuario!!9 F
,!!F G
SolicitudAmistadDTO"" 
	solicitud""  )
)"") *
{## 	
_manejadorCallback$$ 
.$$ 
	Notificar$$ (
($$( )
nombreUsuario$$) 6
,$$6 7
callback$$8 @
=>$$A C
{%% 
callback&& 
.&& )
NotificarSolicitudActualizada&& 6
(&&6 7
	solicitud&&7 @
)&&@ A
;&&A B
}'' 
)'' 
;'' 
}(( 	
public// 
void// %
NotificarAmistadEliminada// -
(//- .
string//. 4
nombreUsuario//5 B
,//B C
SolicitudAmistadDTO//D W
	solicitud//X a
)//a b
{00 	
_manejadorCallback11 
.11 
	Notificar11 (
(11( )
nombreUsuario11) 6
,116 7
callback118 @
=>11A C
{22 
callback33 
.33 %
NotificarAmistadEliminada33 2
(332 3
	solicitud333 <
)33< =
;33= >
}44 
)44 
;44 
}55 	
public<< 
void<< 5
)NotificarSolicitudesPendientesAlSuscribir<< =
(<<= >
string<<> D
nombreNormalizado<<E V
,<<V W
int== 
	usuarioId== 
)== 
{>> 	
try?? 
{@@ 
ListAA 
<AA 
SolicitudAmistadDTOAA (
>AA( )
solicitudesDTOAA* 8
=AA9 :
_amistadServicioBB $
.BB$ %+
ObtenerSolicitudesPendientesDTOBB% D
(BBD E
	usuarioIdBBE N
)BBN O
;BBO P
ifDD 
(DD 
solicitudesDTODD "
==DD# %
nullDD& *
||DD+ -
solicitudesDTODD. <
.DD< =
CountDD= B
==DDC E
$numDDF G
)DDG H
{EE 
returnFF 
;FF 
}GG 
foreachII 
(II 
varII 
dtoII  
inII! #
solicitudesDTOII$ 2
)II2 3
{JJ )
NotificarSolicitudActualizadaKK 1
(KK1 2
nombreNormalizadoKK2 C
,KKC D
dtoKKE H
)KKH I
;KKI J
}LL 
}MM 
catchNN 
(NN 
DataExceptionNN  
exNN! #
)NN# $
{OO 
_loggerPP 
.PP 
ErrorPP 
(PP 
$strQQ X
,QQX Y
exQQZ \
)QQ\ ]
;QQ] ^
}RR 
}SS 	
}TT 
}UU ˙
|C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\NotificacionCodigosServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class '
NotificacionCodigosServicio ,
:- .(
INotificacionCodigosServicio/ K
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ('
NotificacionCodigosServicio( C
)C D
)D E
;E F
private 
readonly *
ICodigoVerificacionNotificador 7
_notificador8 D
;D E
public '
NotificacionCodigosServicio *
(* +
)+ ,
:- .
this/ 3
(3 4
new4 7/
#CorreoCodigoVerificacionNotificador8 [
([ \
)\ ]
)] ^
{ 	
} 	
public '
NotificacionCodigosServicio *
(* +*
ICodigoVerificacionNotificador+ I
notificadorJ U
)U V
{   	
_notificador!! 
=!! 
notificador!! &
??!!' )
new!!* -/
#CorreoCodigoVerificacionNotificador!!. Q
(!!Q R
)!!R S
;!!S T
}"" 	
public-- 
bool-- 
EnviarNotificacion-- &
(--& '
string.. 
correoDestino..  
,..  !
string// 
codigo// 
,// 
string00 
usuarioDestino00 !
,00! "
string11 
idioma11 
)11 
{22 	
if33 
(33 
string33 
.33 
IsNullOrWhiteSpace33 )
(33) *
correoDestino33* 7
)337 8
||339 ;
string33< B
.33B C
IsNullOrWhiteSpace33C U
(33U V
codigo33V \
)33\ ]
)33] ^
{44 
return55 
false55 
;55 
}66 
try88 
{99 
var:: 
tarea:: 
=:: 
_notificador:: (
?::( )
.::) *
NotificarAsync::* 8
(::8 9
correoDestino;; !
,;;! "
codigo<< 
,<< 
usuarioDestino== "
,==" #
idioma>> 
)>> 
;>> 
if@@ 
(@@ 
tarea@@ 
==@@ 
null@@ !
)@@! "
{AA 
returnBB 
falseBB  
;BB  !
}CC 
returnEE 
tareaEE 
.EE 

GetAwaiterEE '
(EE' (
)EE( )
.EE) *
	GetResultEE* 3
(EE3 4
)EE4 5
;EE5 6
}FF 
catchGG 
(GG 
AggregateExceptionGG %
exGG& (
)GG( )
{HH 
_loggerII 
.II 
ErrorII 
(II 
$strII O
,IIO P
exIIQ S
)IIS T
;IIT U
returnJJ 
falseJJ 
;JJ 
}KK 
catchLL 
(LL %
InvalidOperationExceptionLL ,
exLL- /
)LL/ 0
{MM 
_loggerNN 
.NN 
ErrorNN 
(NN 
$strNN O
,NNO P
exNNQ S
)NNS T
;NNT U
returnOO 
falseOO 
;OO 
}PP 
}QQ 	
}RR 
}SS Ìh
uC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\SalaInternaManejador.cs
	namespace

 	%
PictionaryMusicalServidor


 #
.

# $
	Servicios

$ -
.

- .
	Servicios

. 7
{ 
internal 
sealed 
class  
SalaInternaManejador .
{ 
private 
const 
int 
MaximoJugadores )
=* +
$num, -
;- .
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ( 
SalaInternaManejador( <
)< =
)= >
;> ?
private 
readonly 
object 
	_sincrono  )
=* +
new, /
object0 6
(6 7
)7 8
;8 9
private 
readonly ,
 IGestorNotificacionesSalaInterna 9!
_gestorNotificaciones: O
;O P
private 
readonly 
List 
< 
string $
>$ %

_jugadores& 0
;0 1
public##  
SalaInternaManejador## #
(### $
string$$ 
codigo$$ 
,$$ 
string%% 
creador%% 
,%% #
ConfiguracionPartidaDTO&& #
configuracion&&$ 1
,&&1 2,
 IGestorNotificacionesSalaInterna'' , 
gestorNotificaciones''- A
)''A B
{(( 	
Codigo)) 
=)) 
codigo)) 
;)) 
Creador** 
=** 
creador** 
;** 
Configuracion++ 
=++ 
configuracion++ )
;++) *!
_gestorNotificaciones-- !
=--" # 
gestorNotificaciones--$ 8
??--9 ;
throw.. 
new.. !
ArgumentNullException.. /
(../ 0
nameof..0 6
(..6 7 
gestorNotificaciones..7 K
)..K L
)..L M
;..M N

_jugadores00 
=00 
new00 
List00 !
<00! "
string00" (
>00( )
(00) *
)00* +
;00+ ,
PartidaIniciada11 
=11 
false11 #
;11# $
PartidaFinalizada22 
=22 
false22  %
;22% &
DebeEliminarse33 
=33 
false33 "
;33" #
}44 	
public66 
string66 
Codigo66 
{66 
get66 "
;66" #
}66$ %
public77 
string77 
Creador77 
{77 
get77  #
;77# $
}77% &
public88 #
ConfiguracionPartidaDTO88 &
Configuracion88' 4
{885 6
get887 :
;88: ;
}88< =
public:: 
bool:: 
DebeEliminarse:: "
{::# $
get::% (
;::( )
private::* 1
set::2 5
;::5 6
}::7 8
public;; 
bool;; 
PartidaIniciada;; #
{;;$ %
get;;& )
;;;) *
set;;+ .
;;;. /
};;0 1
public<< 
bool<< 
PartidaFinalizada<< %
{<<& '
get<<( +
;<<+ ,
set<<- 0
;<<0 1
}<<2 3
publicBB 
SalaDTOBB 
ToDtoBB 
(BB 
)BB 
{CC 	
lockDD 
(DD 
	_sincronoDD 
)DD 
{EE 
returnFF 
newFF 
SalaDTOFF "
{GG 
CodigoHH 
=HH 
CodigoHH #
,HH# $
CreadorII 
=II 
CreadorII %
,II% &
ConfiguracionJJ !
=JJ" #
ConfiguracionJJ$ 1
,JJ1 2
	JugadoresKK 
=KK 
newKK  #
ListKK$ (
<KK( )
stringKK) /
>KK/ 0
(KK0 1

_jugadoresKK1 ;
)KK; <
}LL 
;LL 
}MM 
}NN 	
publicWW 
SalaDTOWW 
AgregarJugadorWW %
(WW% &
stringXX 
nombreUsuarioXX  
,XX  !#
ISalasManejadorCallbackYY #
callbackYY$ ,
,YY, -
boolZZ 
	notificarZZ 
)ZZ 
{[[ 	
lock\\ 
(\\ 
	_sincrono\\ 
)\\ 
{]] 
if^^ 
(^^ 

_jugadores^^ 
.^^ 
Contains^^ '
(^^' (
nombreUsuario^^( 5
)^^5 6
)^^6 7
{__ !
_gestorNotificaciones`` )
.``) *
	Registrar``* 3
(``3 4
nombreUsuario``4 A
,``A B
callback``C K
)``K L
;``L M
returnaa 
ToDtoaa  
(aa  !
)aa! "
;aa" #
}bb 
ValidarCapacidaddd  
(dd  !
)dd! "
;dd" #

_jugadoresff 
.ff 
Addff 
(ff 
nombreUsuarioff ,
)ff, -
;ff- .!
_gestorNotificacionesgg %
.gg% &
	Registrargg& /
(gg/ 0
nombreUsuariogg0 =
,gg= >
callbackgg? G
)ggG H
;ggH I
ifii 
(ii 
	notificarii 
)ii 
{jj !
_gestorNotificacioneskk )
.kk) *
NotificarIngresokk* :
(kk: ;
Codigokk; A
,kkA B
nombreUsuariokkC P
,kkP Q
ToDtokkR W
(kkW X
)kkX Y
)kkY Z
;kkZ [
}ll 
returnnn 
ToDtonn 
(nn 
)nn 
;nn 
}oo 
}pp 	
publicvv 
voidvv 
RemoverJugadorvv "
(vv" #
stringvv# )
nombreUsuariovv* 7
)vv7 8
{ww 	
lockxx 
(xx 
	_sincronoxx 
)xx 
{yy 
ifzz 
(zz 
!zz 

_jugadoreszz 
.zz  
Containszz  (
(zz( )
nombreUsuariozz) 6
)zz6 7
)zz7 8
{{{ 
return|| 
;|| 
}}} 

_jugadores 
. 
Remove !
(! "
nombreUsuario" /
)/ 0
;0 1#
_gestorNotificaciones
ÄÄ %
.
ÄÄ% &
Remover
ÄÄ& -
(
ÄÄ- .
nombreUsuario
ÄÄ. ;
)
ÄÄ; <
;
ÄÄ< =!
ManejarLogicaSalida
ÇÇ #
(
ÇÇ# $
nombreUsuario
ÇÇ$ 1
)
ÇÇ1 2
;
ÇÇ2 3
}
ÉÉ 
}
ÑÑ 	
public
ãã 
void
ãã 
ExpulsarJugador
ãã #
(
ãã# $
string
ãã$ *

nombreHost
ãã+ 5
,
ãã5 6
string
ãã7 =$
nombreJugadorAExpulsar
ãã> T
)
ããT U
{
åå 	
lock
çç 
(
çç 
	_sincrono
çç 
)
çç 
{
éé &
ValidarPermisosExpulsion
èè (
(
èè( )

nombreHost
èè) 3
,
èè3 4$
nombreJugadorAExpulsar
èè5 K
)
èèK L
;
èèL M
var
ëë 
callbackExpulsado
ëë %
=
ëë& '#
_gestorNotificaciones
ëë( =
.
ëë= >
ObtenerCallback
ëë> M
(
ëëM N$
nombreJugadorAExpulsar
íí *
)
íí* +
;
íí+ ,

_jugadores
îî 
.
îî 
Remove
îî !
(
îî! "$
nombreJugadorAExpulsar
îî" 8
)
îî8 9
;
îî9 :#
_gestorNotificaciones
ïï %
.
ïï% &
Remover
ïï& -
(
ïï- .$
nombreJugadorAExpulsar
ïï. D
)
ïïD E
;
ïïE F#
_gestorNotificaciones
óó %
.
óó% & 
NotificarExpulsion
óó& 8
(
óó8 9
Codigo
òò 
,
òò $
nombreJugadorAExpulsar
ôô *
,
ôô* +
callbackExpulsado
öö %
,
öö% &
ToDto
õõ 
(
õõ 
)
õõ 
)
õõ 
;
õõ 
}
úú 
}
ùù 	
private
üü 
void
üü 
ValidarCapacidad
üü %
(
üü% &
)
üü& '
{
†† 	
if
°° 
(
°° 

_jugadores
°° 
.
°° 
Count
°°  
>=
°°! #
MaximoJugadores
°°$ 3
)
°°3 4
{
¢¢ 
throw
££ 
new
££ 
FaultException
££ (
(
££( )
MensajesError
££) 6
.
££6 7
Cliente
££7 >
.
££> ?
	SalaLlena
££? H
)
££H I
;
££I J
}
§§ 
}
•• 	
private
ßß 
void
ßß &
ValidarPermisosExpulsion
ßß -
(
ßß- .
string
ßß. 4

nombreHost
ßß5 ?
,
ßß? @
string
ßßA G
objetivo
ßßH P
)
ßßP Q
{
®® 	
if
©© 
(
©© 
!
©© 
string
©© 
.
©© 
Equals
©© 
(
©© 

nombreHost
©© )
,
©©) *
Creador
©©+ 2
,
©©2 3
StringComparison
©©4 D
.
©©D E
OrdinalIgnoreCase
©©E V
)
©©V W
)
©©W X
{
™™ 
throw
´´ 
new
´´ 
FaultException
´´ (
(
´´( )
MensajesError
´´) 6
.
´´6 7
Cliente
´´7 >
.
´´> ?&
SalaExpulsionRestringida
´´? W
)
´´W X
;
´´X Y
}
¨¨ 
if
ÆÆ 
(
ÆÆ 
string
ÆÆ 
.
ÆÆ 
Equals
ÆÆ 
(
ÆÆ 
objetivo
ÆÆ &
,
ÆÆ& '
Creador
ÆÆ( /
,
ÆÆ/ 0
StringComparison
ÆÆ1 A
.
ÆÆA B
OrdinalIgnoreCase
ÆÆB S
)
ÆÆS T
)
ÆÆT U
{
ØØ 
throw
∞∞ 
new
∞∞ 
FaultException
∞∞ (
(
∞∞( )
MensajesError
∞∞) 6
.
∞∞6 7
Cliente
∞∞7 >
.
∞∞> ?%
SalaCreadorNoExpulsable
∞∞? V
)
∞∞V W
;
∞∞W X
}
±± 
if
≥≥ 
(
≥≥ 
!
≥≥ 

_jugadores
≥≥ 
.
≥≥ 
Contains
≥≥ $
(
≥≥$ %
objetivo
≥≥% -
)
≥≥- .
)
≥≥. /
{
¥¥ 
throw
µµ 
new
µµ 
FaultException
µµ (
(
µµ( )
MensajesError
µµ) 6
.
µµ6 7
Cliente
µµ7 >
.
µµ> ?!
SalaJugadorNoExiste
µµ? R
)
µµR S
;
µµS T
}
∂∂ 
}
∑∑ 	
private
ππ 
void
ππ !
ManejarLogicaSalida
ππ (
(
ππ( )
string
ππ) /
nombreUsuario
ππ0 =
)
ππ= >
{
∫∫ 	
bool
ªª 
esAnfitrion
ªª 
=
ªª 
string
ªª %
.
ªª% &
Equals
ªª& ,
(
ªª, -
nombreUsuario
ºº 
,
ºº 
Creador
ΩΩ 
,
ΩΩ 
StringComparison
ææ  
.
ææ  !
OrdinalIgnoreCase
ææ! 2
)
ææ2 3
;
ææ3 4
if
¿¿ 
(
¿¿ 
PartidaFinalizada
¿¿ !
&&
¿¿" $
esAnfitrion
¿¿% 0
)
¿¿0 1
{
¡¡ #
_gestorNotificaciones
¬¬ %
.
¬¬% &
Limpiar
¬¬& -
(
¬¬- .
)
¬¬. /
;
¬¬/ 0
DebeEliminarse
√√ 
=
√√  
true
√√! %
;
√√% &
return
ƒƒ 
;
ƒƒ 
}
≈≈ 
var
«« 
salaActualizada
«« 
=
««  !
ToDto
««" '
(
««' (
)
««( )
;
««) *#
_gestorNotificaciones
…… !
.
……! "
NotificarSalida
……" 1
(
……1 2
Codigo
……2 8
,
……8 9
nombreUsuario
……: G
,
……G H
salaActualizada
……I X
)
……X Y
;
……Y Z
if
ÀÀ 
(
ÀÀ 
esAnfitrion
ÀÀ 
)
ÀÀ 
{
ÃÃ 
CancelarSala
ÕÕ 
(
ÕÕ 
)
ÕÕ 
;
ÕÕ 
}
ŒŒ 
else
œœ 
if
œœ 
(
œœ 

_jugadores
œœ 
.
œœ  
Count
œœ  %
==
œœ& (
$num
œœ) *
)
œœ* +
{
–– 
DebeEliminarse
—— 
=
——  
true
——! %
;
——% &
}
““ 
}
”” 	
private
’’ 
void
’’ 
CancelarSala
’’ !
(
’’! "
)
’’" #
{
÷÷ 	#
_gestorNotificaciones
◊◊ !
.
◊◊! ""
NotificarCancelacion
◊◊" 6
(
◊◊6 7
Codigo
◊◊7 =
)
◊◊= >
;
◊◊> ?

_jugadores
ÿÿ 
.
ÿÿ 
Clear
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ #
_gestorNotificaciones
ŸŸ !
.
ŸŸ! "
Limpiar
ŸŸ" )
(
ŸŸ) *
)
ŸŸ* +
;
ŸŸ+ ,
DebeEliminarse
⁄⁄ 
=
⁄⁄ 
true
⁄⁄ !
;
⁄⁄! "
_logger
€€ 
.
€€ 
Info
€€ 
(
€€ 
$str
€€ C
)
€€C D
;
€€D E
}
‹‹ 	
}
›› 
}ﬁﬁ Á
ÄC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\INotificadorSalas.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
public

 

	interface

 
INotificadorSalas

 &
{ 
Guid 
	Suscribir 
( #
ISalasManejadorCallback .
callback/ 7
)7 8
;8 9
void 
Desuscribir 
( 
Guid 
sesionId &
)& '
;' (
void "
DesuscribirPorCallback #
(# $#
ISalasManejadorCallback$ ;
callback< D
)D E
;E F
void 
NotificarListaSalas  
(  !#
ISalasManejadorCallback! 8
callback9 A
)A B
;B C
void## %
NotificarListaSalasATodos## &
(##& '
)##' (
;##( )
}$$ 
}%% »
ÅC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\INotificadorAmigos.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
public		 

	interface		 
INotificadorAmigos		 '
{

 
void )
NotificarSolicitudActualizada *
(* +
string+ 1
nombreUsuario2 ?
,? @
SolicitudAmistadDTOA T
	solicitudU ^
)^ _
;_ `
void %
NotificarAmistadEliminada &
(& '
string' -
nombreUsuario. ;
,; <
SolicitudAmistadDTO= P
	solicitudQ Z
)Z [
;[ \
void   5
)NotificarSolicitudesPendientesAlSuscribir   6
(  6 7
string  7 =
nombreNormalizado  > O
,  O P
int  Q T
	usuarioId  U ^
)  ^ _
;  _ `
}!! 
public&& 

	interface&& #
INotificadorListaAmigos&& ,
{'' 
void,, "
NotificarCambioAmistad,, #
(,,# $
string,,$ *
nombreUsuario,,+ 8
),,8 9
;,,9 :
void33 
NotificarLista33 
(33 
string33 "
nombreUsuario33# 0
,330 1
List332 6
<336 7
AmigoDTO337 ?
>33? @
amigos33A G
)33G H
;33H I
}44 
}55 î
èC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\IGestorNotificacionesSalaInterna.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
public

 

	interface

 ,
 IGestorNotificacionesSalaInterna

 5
{ 
void 
	Registrar 
( 
string 
nombreUsuario +
,+ ,#
ISalasManejadorCallback- D
callbackE M
)M N
;N O
void 
Remover 
( 
string 
nombreUsuario )
)) *
;* +#
ISalasManejadorCallback 
ObtenerCallback  /
(/ 0
string0 6
nombreUsuario7 D
)D E
;E F
void 
Limpiar 
( 
) 
; 
void$$ 
NotificarIngreso$$ 
($$ 
string$$ $

codigoSala$$% /
,$$/ 0
string$$1 7
nombreUsuario$$8 E
,$$E F
SalaDTO$$G N
salaActualizada$$O ^
)$$^ _
;$$_ `
void)) 
NotificarSalida)) 
()) 
string)) #

codigoSala))$ .
,)). /
string))0 6
nombreUsuario))7 D
,))D E
SalaDTO))F M
salaActualizada))N ]
)))] ^
;))^ _
void.. 
NotificarExpulsion.. 
(..  
string..  &

codigoSala..' 1
,..1 2
string..3 9
nombreExpulsado..: I
,..I J#
ISalasManejadorCallback// #
callbackExpulsado//$ 5
,//5 6
SalaDTO//7 >
salaActualizada//? N
)//N O
;//O P
void44  
NotificarCancelacion44 !
(44! "
string44" (

codigoSala44) 3
)443 4
;444 5
}55 
}66 Ÿñ
|C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\CodigoVerificacionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class '
CodigoVerificacionManejador ,
:- .(
ICodigoVerificacionManejador/ K
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ('
CodigoVerificacionManejador( C
)C D
)D E
;E F
private 
readonly )
IVerificacionRegistroServicio 6)
_verificacionRegistroServicio7 T
;T U
private 
readonly '
IRecuperacionCuentaServicio 4'
_recuperacionCuentaServicio5 P
;P Q
public   '
CodigoVerificacionManejador   *
(  * +
)  + ,
:  - .
this  / 3
(  3 4
new!! (
VerificacionRegistroServicio!! ,
(!!, -
new"" 
ContextoFactoria"" $
(""$ %
)""% &
,""& '
new## '
NotificacionCodigosServicio## /
(##/ 0
new##0 3/
#CorreoCodigoVerificacionNotificador##4 W
(##W X
)##X Y
)##Y Z
)##Z [
,##[ \
new$$ &
RecuperacionCuentaServicio$$ *
($$* +
new%% 
ContextoFactoria%% $
(%%$ %
)%%% &
,%%& '
new&& '
NotificacionCodigosServicio&& /
(&&/ 0
new&&0 3/
#CorreoCodigoVerificacionNotificador&&4 W
(&&W X
)&&X Y
)&&Y Z
)&&Z [
)&&[ \
{'' 	
}(( 	
public-- '
CodigoVerificacionManejador-- *
(--* +)
IVerificacionRegistroServicio.. )(
verificacionRegistroServicio..* F
,..F G'
IRecuperacionCuentaServicio// '&
recuperacionCuentaServicio//( B
)//B C
{00 	)
_verificacionRegistroServicio11 )
=11* +(
verificacionRegistroServicio11, H
??11I K
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
nameof220 6
(226 7(
verificacionRegistroServicio227 S
)22S T
)22T U
;22U V'
_recuperacionCuentaServicio44 '
=44( )&
recuperacionCuentaServicio44* D
??44E G
throw55 
new55 !
ArgumentNullException55 /
(55/ 0
nameof550 6
(556 7&
recuperacionCuentaServicio557 Q
)55Q R
)55R S
;55S T
}66 	
public>> '
ResultadoSolicitudCodigoDTO>> *'
SolicitarCodigoVerificacion>>+ F
(>>F G
NuevaCuentaDTO>>G U
nuevaCuenta>>V a
)>>a b
{?? 	
try@@ 
{AA 
varBB 
	resultadoBB 
=BB )
_verificacionRegistroServicioBB  =
.BB= >
SolicitarCodigoBB> M
(BBM N
nuevaCuentaBBN Y
)BBY Z
;BBZ [
ifDD 
(DD 
!DD 
	resultadoDD 
.DD 
CodigoEnviadoDD ,
)DD, -
{EE 
_loggerFF 
.FF 

WarnFormatFF &
(FF& '
$strGG B
,GGB C
	resultadoHH !
.HH! "
MensajeHH" )
)HH) *
;HH* +
}II 
returnKK 
	resultadoKK  
;KK  !
}LL 
catchMM 
(MM !
ArgumentNullExceptionMM (
exMM) +
)MM+ ,
{NN 
_loggerOO 
.OO 
WarnOO 
(OO 
$strOO R
,OOR S
exOOT V
)OOV W
;OOW X
returnPP 
newPP '
ResultadoSolicitudCodigoDTOPP 6
{QQ 
CodigoEnviadoRR !
=RR" #
falseRR$ )
,RR) *
MensajeSS 
=SS 
MensajesErrorSS +
.SS+ ,
ClienteSS, 3
.SS3 4/
#DatosSolicitudVerificacionInvalidosSS4 W
}TT 
;TT 
}UU 
catchVV 
(VV 
EntityExceptionVV "
exVV# %
)VV% &
{WW 
_loggerXX 
.XX 
ErrorXX 
(XX 
$strYY Q
,YYQ R
exZZ 
)ZZ 
;ZZ 
return\\ 
new\\ '
ResultadoSolicitudCodigoDTO\\ 6
{]] 
CodigoEnviado^^ !
=^^" #
false^^$ )
,^^) *
Mensaje__ 
=__ 
MensajesError__ +
.__+ ,
Cliente__, 3
.__3 4&
ErrorSolicitudVerificacion__4 N
}`` 
;`` 
}aa 
catchbb 
(bb 
DataExceptionbb  
exbb! #
)bb# $
{cc 
_loggerdd 
.dd 
Errordd 
(dd 
$strdd S
,ddS T
exddU W
)ddW X
;ddX Y
returnee 
newee '
ResultadoSolicitudCodigoDTOee 6
{ff 
CodigoEnviadogg !
=gg" #
falsegg$ )
,gg) *
Mensajehh 
=hh 
MensajesErrorhh +
.hh+ ,
Clientehh, 3
.hh3 4&
ErrorSolicitudVerificacionhh4 N
}ii 
;ii 
}jj 
}kk 	
publicss '
ResultadoSolicitudCodigoDTOss *&
ReenviarCodigoVerificacionss+ E
(ssE F(
ReenvioCodigoVerificacionDTOtt (
	solicitudtt) 2
)tt2 3
{uu 	
tryvv 
{ww 
varxx 
	resultadoxx 
=xx )
_verificacionRegistroServicioxx  =
.xx= >
ReenviarCodigoxx> L
(xxL M
	solicitudxxM V
)xxV W
;xxW X
ifzz 
(zz 
!zz 
	resultadozz 
.zz 
CodigoEnviadozz ,
)zz, -
{{{ 
_logger|| 
.|| 

WarnFormat|| &
(||& '
$str}} K
,}}K L
	resultado~~ !
.~~! "
Mensaje~~" )
)~~) *
;~~* +
} 
return
ÅÅ 
	resultado
ÅÅ  
;
ÅÅ  !
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ #
ArgumentNullException
ÉÉ (
ex
ÉÉ) +
)
ÉÉ+ ,
{
ÑÑ 
_logger
ÖÖ 
.
ÖÖ 
Warn
ÖÖ 
(
ÖÖ 
$str
ÖÖ Q
,
ÖÖQ R
ex
ÖÖS U
)
ÖÖU V
;
ÖÖV W
return
ÜÜ 
new
ÜÜ )
ResultadoSolicitudCodigoDTO
ÜÜ 6
{
áá 
CodigoEnviado
àà !
=
àà" #
false
àà$ )
,
àà) *
Mensaje
ââ 
=
ââ 
MensajesError
ââ +
.
ââ+ ,
Cliente
ââ, 3
.
ââ3 4 
DatosReenvioCodigo
ââ4 F
}
ää 
;
ää 
}
ãã 
catch
åå 
(
åå 
EntityException
åå "
ex
åå# %
)
åå% &
{
çç 
_logger
éé 
.
éé 
Error
éé 
(
éé 
$str
èè P
,
èèP Q
ex
êê 
)
êê 
;
êê 
return
íí 
new
íí )
ResultadoSolicitudCodigoDTO
íí 6
{
ìì 
CodigoEnviado
îî !
=
îî" #
false
îî$ )
,
îî) *
Mensaje
ïï 
=
ïï 
MensajesError
ïï +
.
ïï+ ,
Cliente
ïï, 3
.
ïï3 4-
ErrorReenviarCodigoVerificacion
ïï4 S
}
ññ 
;
ññ 
}
óó 
catch
òò 
(
òò 
DataException
òò  
ex
òò! #
)
òò# $
{
ôô 
_logger
öö 
.
öö 
Error
öö 
(
öö 
$str
öö R
,
ööR S
ex
ööT V
)
ööV W
;
ööW X
return
õõ 
new
õõ )
ResultadoSolicitudCodigoDTO
õõ 6
{
úú 
CodigoEnviado
ùù !
=
ùù" #
false
ùù$ )
,
ùù) *
Mensaje
ûû 
=
ûû 
MensajesError
ûû +
.
ûû+ ,
Cliente
ûû, 3
.
ûû3 4-
ErrorReenviarCodigoVerificacion
ûû4 S
}
üü 
;
üü 
}
†† 
}
°° 	
public
™™ (
ResultadoRegistroCuentaDTO
™™ ))
ConfirmarCodigoVerificacion
™™* E
(
™™E F#
ConfirmacionCodigoDTO
´´ !
confirmacion
´´" .
)
´´. /
{
¨¨ 	
try
≠≠ 
{
ÆÆ 
var
ØØ 
	resultado
ØØ 
=
ØØ +
_verificacionRegistroServicio
ØØ  =
.
ØØ= >
ConfirmarCodigo
ØØ> M
(
ØØM N
confirmacion
ØØN Z
)
ØØZ [
;
ØØ[ \
if
±± 
(
±± 
!
±± 
	resultado
±± 
.
±± 
RegistroExitoso
±± .
)
±±. /
{
≤≤ 
_logger
≥≥ 
.
≥≥ 

WarnFormat
≥≥ &
(
≥≥& '
$str
¥¥ P
,
¥¥P Q
	resultado
µµ !
.
µµ! "
Mensaje
µµ" )
)
µµ) *
;
µµ* +
}
∂∂ 
return
∏∏ 
	resultado
∏∏  
;
∏∏  !
}
ππ 
catch
∫∫ 
(
∫∫ #
ArgumentNullException
∫∫ (
ex
∫∫) +
)
∫∫+ ,
{
ªª 
_logger
ºº 
.
ºº 
Warn
ºº 
(
ºº 
$str
ºº R
,
ººR S
ex
ººT V
)
ººV W
;
ººW X
return
ΩΩ 
new
ΩΩ (
ResultadoRegistroCuentaDTO
ΩΩ 5
{
ææ 
RegistroExitoso
øø #
=
øø$ %
false
øø& +
,
øø+ ,
Mensaje
¿¿ 
=
¿¿ 
MensajesError
¿¿ +
.
¿¿+ ,
Cliente
¿¿, 3
.
¿¿3 4(
DatosConfirmacionInvalidos
¿¿4 N
}
¡¡ 
;
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ )
DbEntityValidationException
√√ .
ex
√√/ 1
)
√√1 2
{
ƒƒ 
_logger
≈≈ 
.
≈≈ 
Error
≈≈ 
(
≈≈ 
$str
≈≈ R
,
≈≈R S
ex
≈≈T V
)
≈≈V W
;
≈≈W X
return
∆∆ 
new
∆∆ (
ResultadoRegistroCuentaDTO
∆∆ 5
{
«« 
RegistroExitoso
»» #
=
»»$ %
false
»»& +
,
»»+ ,
Mensaje
…… 
=
…… 
MensajesError
…… +
.
……+ ,
Cliente
……, 3
.
……3 4"
ErrorConfirmarCodigo
……4 H
}
   
;
   
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
DbUpdateException
ÃÃ $
ex
ÃÃ% '
)
ÃÃ' (
{
ÕÕ 
_logger
ŒŒ 
.
ŒŒ 
Error
ŒŒ 
(
ŒŒ 
$str
ŒŒ Q
,
ŒŒQ R
ex
ŒŒS U
)
ŒŒU V
;
ŒŒV W
return
œœ 
new
œœ (
ResultadoRegistroCuentaDTO
œœ 5
{
–– 
RegistroExitoso
—— #
=
——$ %
false
——& +
,
——+ ,
Mensaje
““ 
=
““ 
MensajesError
““ +
.
““+ ,
Cliente
““, 3
.
““3 4"
ErrorConfirmarCodigo
““4 H
}
”” 
;
”” 
}
‘‘ 
catch
’’ 
(
’’ 
EntityException
’’ "
ex
’’# %
)
’’% &
{
÷÷ 
_logger
◊◊ 
.
◊◊ 
Error
◊◊ 
(
◊◊ 
$str
◊◊ K
,
◊◊K L
ex
◊◊M O
)
◊◊O P
;
◊◊P Q
return
ÿÿ 
new
ÿÿ (
ResultadoRegistroCuentaDTO
ÿÿ 5
{
ŸŸ 
RegistroExitoso
⁄⁄ #
=
⁄⁄$ %
false
⁄⁄& +
,
⁄⁄+ ,
Mensaje
€€ 
=
€€ 
MensajesError
€€ +
.
€€+ ,
Cliente
€€, 3
.
€€3 4"
ErrorConfirmarCodigo
€€4 H
}
‹‹ 
;
‹‹ 
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
DataException
ﬁﬁ  
ex
ﬁﬁ! #
)
ﬁﬁ# $
{
ﬂﬂ 
_logger
‡‡ 
.
‡‡ 
Error
‡‡ 
(
‡‡ 
$str
‡‡ C
,
‡‡C D
ex
‡‡E G
)
‡‡G H
;
‡‡H I
return
·· 
new
·· (
ResultadoRegistroCuentaDTO
·· 5
{
‚‚ 
RegistroExitoso
„„ #
=
„„$ %
false
„„& +
,
„„+ ,
Mensaje
‰‰ 
=
‰‰ 
MensajesError
‰‰ +
.
‰‰+ ,
Cliente
‰‰, 3
.
‰‰3 4"
ErrorConfirmarCodigo
‰‰4 H
}
ÂÂ 
;
ÂÂ 
}
ÊÊ 
}
ÁÁ 	
public
ÔÔ /
!ResultadoSolicitudRecuperacionDTO
ÔÔ 0)
SolicitarCodigoRecuperacion
ÔÔ1 L
(
ÔÔL M)
SolicitudRecuperarCuentaDTO
 '
	solicitud
( 1
)
1 2
{
ÒÒ 	
try
ÚÚ 
{
ÛÛ 
var
ÙÙ 
	resultado
ÙÙ 
=
ÙÙ )
_recuperacionCuentaServicio
ÙÙ  ;
.
ÙÙ; <)
SolicitarCodigoRecuperacion
ÙÙ< W
(
ÙÙW X
	solicitud
ÙÙX a
)
ÙÙa b
;
ÙÙb c
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
	resultado
ˆˆ 
.
ˆˆ 
CodigoEnviado
ˆˆ ,
)
ˆˆ, -
{
˜˜ 
_logger
¯¯ 
.
¯¯ 

WarnFormat
¯¯ &
(
¯¯& '
$str
˘˘ H
,
˘˘H I
	resultado
˙˙ !
.
˙˙! "
Mensaje
˙˙" )
)
˙˙) *
;
˙˙* +
}
˚˚ 
return
˝˝ 
	resultado
˝˝  
;
˝˝  !
}
˛˛ 
catch
ˇˇ 
(
ˇˇ #
ArgumentNullException
ˇˇ (
ex
ˇˇ) +
)
ˇˇ+ ,
{
ÄÄ 
_logger
ÅÅ 
.
ÅÅ 
Warn
ÅÅ 
(
ÅÅ 
$str
ÅÅ R
,
ÅÅR S
ex
ÅÅT V
)
ÅÅV W
;
ÅÅW X
return
ÇÇ 
new
ÇÇ /
!ResultadoSolicitudRecuperacionDTO
ÇÇ <
{
ÉÉ 
CodigoEnviado
ÑÑ !
=
ÑÑ" #
false
ÑÑ$ )
,
ÑÑ) *
Mensaje
ÖÖ 
=
ÖÖ 
MensajesError
ÖÖ +
.
ÖÖ+ ,
Cliente
ÖÖ, 3
.
ÖÖ3 4(
DatosRecuperacionInvalidos
ÖÖ4 N
}
ÜÜ 
;
ÜÜ 
}
áá 
catch
àà 
(
àà 
EntityException
àà "
ex
àà# %
)
àà% &
{
ââ 
_logger
ää 
.
ää 
Error
ää 
(
ää 
$str
ää [
,
ää[ \
ex
ää] _
)
ää_ `
;
ää` a
return
ãã 
new
ãã /
!ResultadoSolicitudRecuperacionDTO
ãã <
{
åå 
CodigoEnviado
çç !
=
çç" #
false
çç$ )
,
çç) *
Mensaje
éé 
=
éé 
MensajesError
éé +
.
éé+ ,
Cliente
éé, 3
.
éé3 4"
ErrorRecuperarCuenta
éé4 H
}
èè 
;
èè 
}
êê 
catch
ëë 
(
ëë 
DataException
ëë  
ex
ëë! #
)
ëë# $
{
íí 
_logger
ìì 
.
ìì 
Error
ìì 
(
ìì 
$str
ìì S
,
ììS T
ex
ììU W
)
ììW X
;
ììX Y
return
îî 
new
îî /
!ResultadoSolicitudRecuperacionDTO
îî <
{
ïï 
CodigoEnviado
ññ !
=
ññ" #
false
ññ$ )
,
ññ) *
Mensaje
óó 
=
óó 
MensajesError
óó +
.
óó+ ,
Cliente
óó, 3
.
óó3 4"
ErrorRecuperarCuenta
óó4 H
}
òò 
;
òò 
}
ôô 
}
öö 	
public
¢¢ #
ResultadoOperacionDTO
¢¢ $)
ConfirmarCodigoRecuperacion
¢¢% @
(
££ #
ConfirmacionCodigoDTO
££ "
confirmacion
££# /
)
££/ 0
{
§§ 	
try
•• 
{
¶¶ 
var
ßß 
	resultado
ßß 
=
ßß )
_recuperacionCuentaServicio
ßß  ;
.
ßß; <)
ConfirmarCodigoRecuperacion
ßß< W
(
ßßW X
confirmacion
®®  
)
®®  !
;
®®! "
if
™™ 
(
™™ 
!
™™ 
	resultado
™™ 
.
™™ 
OperacionExitosa
™™ /
)
™™/ 0
{
´´ 
_logger
¨¨ 
.
¨¨ 

WarnFormat
¨¨ &
(
¨¨& '
$str
≠≠ V
,
≠≠V W
	resultado
ÆÆ !
.
ÆÆ! "
Mensaje
ÆÆ" )
)
ÆÆ) *
;
ÆÆ* +
}
ØØ 
return
±± 
	resultado
±±  
;
±±  !
}
≤≤ 
catch
≥≥ 
(
≥≥ #
ArgumentNullException
≥≥ (
ex
≥≥) +
)
≥≥+ ,
{
¥¥ 
_logger
µµ 
.
µµ 
Warn
µµ 
(
µµ 
$str
µµ R
,
µµR S
ex
µµT V
)
µµV W
;
µµW X
return
∂∂ 
new
∂∂ #
ResultadoOperacionDTO
∂∂ 0
{
∑∑ 
OperacionExitosa
∏∏ $
=
∏∏% &
false
∏∏' ,
,
∏∏, -
Mensaje
ππ 
=
ππ 
MensajesError
ππ +
.
ππ+ ,
Cliente
ππ, 3
.
ππ3 4(
DatosConfirmacionInvalidos
ππ4 N
}
∫∫ 
;
∫∫ 
}
ªª 
catch
ºº 
(
ºº 
EntityException
ºº "
ex
ºº# %
)
ºº% &
{
ΩΩ 
_logger
ææ 
.
ææ 
Error
ææ 
(
ææ 
$str
øø Q
,
øøQ R
ex
¿¿ 
)
¿¿ 
;
¿¿ 
return
¬¬ 
new
¬¬ #
ResultadoOperacionDTO
¬¬ 0
{
√√ 
OperacionExitosa
ƒƒ $
=
ƒƒ% &
false
ƒƒ' ,
,
ƒƒ, -
Mensaje
≈≈ 
=
≈≈ 
MensajesError
≈≈ +
.
≈≈+ ,
Cliente
≈≈, 3
.
≈≈3 4.
 ErrorConfirmarCodigoRecuperacion
≈≈4 T
}
∆∆ 
;
∆∆ 
}
«« 
catch
»» 
(
»» 
DataException
»»  
ex
»»! #
)
»»# $
{
…… 
_logger
   
.
   
Error
   
(
   
$str
   S
,
  S T
ex
  U W
)
  W X
;
  X Y
return
ÀÀ 
new
ÀÀ #
ResultadoOperacionDTO
ÀÀ 0
{
ÃÃ 
OperacionExitosa
ÕÕ $
=
ÕÕ% &
false
ÕÕ' ,
,
ÕÕ, -
Mensaje
ŒŒ 
=
ŒŒ 
MensajesError
ŒŒ +
.
ŒŒ+ ,
Cliente
ŒŒ, 3
.
ŒŒ3 4.
 ErrorConfirmarCodigoRecuperacion
ŒŒ4 T
}
œœ 
;
œœ 
}
–– 
}
—— 	
}
““ 
}”” ’u
zC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\CambioContrasenaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class %
CambioContrasenaManejador *
:+ ,&
ICambioContrasenaManejador- G
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (%
CambioContrasenaManejador( A
)A B
)B C
;C D
private 
readonly '
IRecuperacionCuentaServicio 4!
_recuperacionServicio5 J
;J K
public %
CambioContrasenaManejador (
(( )
)) *
:+ ,
this- 1
(1 2
new &
RecuperacionCuentaServicio *
(* +
new   
ContextoFactoria   $
(  $ %
)  % &
,  & '
new!! '
NotificacionCodigosServicio!! /
(!!/ 0
new!!0 3/
#CorreoCodigoVerificacionNotificador!!4 W
(!!W X
)!!X Y
)!!Y Z
)!!Z [
)!![ \
{"" 	
}## 	
public)) %
CambioContrasenaManejador)) (
())( )'
IRecuperacionCuentaServicio))) D 
recuperacionServicio))E Y
)))Y Z
{** 	!
_recuperacionServicio++ !
=++" # 
recuperacionServicio++$ 8
??++9 ;
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
nameof,,0 6
(,,6 7 
recuperacionServicio,,7 K
),,K L
),,L M
;,,M N
}-- 	
public55 -
!ResultadoSolicitudRecuperacionDTO55 0'
SolicitarCodigoRecuperacion551 L
(66 '
SolicitudRecuperarCuentaDTO66 (
	solicitud66) 2
)662 3
{77 	
try88 
{99 
var:: 
	resultado:: 
=:: !
_recuperacionServicio::  5
.::5 6'
SolicitarCodigoRecuperacion::6 Q
(::Q R
	solicitud::R [
)::[ \
;::\ ]
if;; 
(;; 
!;; 
	resultado;; 
.;; 
CodigoEnviado;; ,
);;, -
{<< 
_logger== 
.== 

WarnFormat== &
(==& '
$str==' Z
,==Z [
	solicitud>> !
.>>! "
Identificador>>" /
,>>/ 0
	resultado?? !
.??! "
Mensaje??" )
)??) *
;??* +
}@@ 
returnAA 
	resultadoAA  
;AA  !
}BB 
catchCC 
(CC !
ArgumentNullExceptionCC (
exCC) +
)CC+ ,
{DD 
_loggerEE 
.EE 
WarnEE 
(EE 
$strFF V
,FFV W
exFFX Z
)FFZ [
;FF[ \
returnGG 
newGG -
!ResultadoSolicitudRecuperacionDTOGG <
{HH 
CodigoEnviadoII !
=II" #
falseII$ )
,II) *
MensajeJJ 
=JJ 
MensajesErrorJJ +
.JJ+ ,
ClienteJJ, 3
.JJ3 4&
DatosRecuperacionInvalidosJJ4 N
}KK 
;KK 
}LL 
catchMM 
(MM 
EntityExceptionMM "
exMM# %
)MM% &
{NN 
_loggerOO 
.OO 
ErrorOO 
(OO 
$strPP Q
,PPQ R
exPPS U
)PPU V
;PPV W
returnQQ 
newQQ -
!ResultadoSolicitudRecuperacionDTOQQ <
{RR 
CodigoEnviadoSS !
=SS" #
falseSS$ )
,SS) *
MensajeTT 
=TT 
MensajesErrorTT +
.TT+ ,
ClienteTT, 3
.TT3 4 
ErrorRecuperarCuentaTT4 H
}UU 
;UU 
}VV 
catchWW 
(WW 
DataExceptionWW  
exWW! #
)WW# $
{XX 
_loggerYY 
.YY 
ErrorYY 
(YY 
$strYY S
,YYS T
exYYU W
)YYW X
;YYX Y
returnZZ 
newZZ -
!ResultadoSolicitudRecuperacionDTOZZ <
{[[ 
CodigoEnviado\\ !
=\\" #
false\\$ )
,\\) *
Mensaje]] 
=]] 
MensajesError]] +
.]]+ ,
Cliente]], 3
.]]3 4 
ErrorRecuperarCuenta]]4 H
}^^ 
;^^ 
}__ 
}`` 	
publichh '
ResultadoSolicitudCodigoDTOhh *&
ReenviarCodigoRecuperacionhh+ E
(hhE F
ReenvioCodigoDTOhhF V
	solicitudhhW `
)hh` a
{ii 	
tryjj 
{kk 
varll 
	resultadoll 
=ll !
_recuperacionServicioll  5
.ll5 6&
ReenviarCodigoRecuperacionll6 P
(llP Q
	solicitudllQ Z
)llZ [
;ll[ \
ifmm 
(mm 
!mm 
	resultadomm 
.mm 
CodigoEnviadomm ,
)mm, -
{nn 
_loggeroo 
.oo 

WarnFormatoo &
(oo& '
$strpp \
,pp\ ]
	resultadoqq !
.qq! "
Mensajeqq" )
)qq) *
;qq* +
}rr 
returnss 
	resultadoss  
;ss  !
}tt 
catchuu 
(uu !
ArgumentNullExceptionuu (
exuu) +
)uu+ ,
{vv 
_loggerww 
.ww 
Warnww 
(ww 
$strww Q
,wwQ R
exwwS U
)wwU V
;wwV W
returnxx 
newxx '
ResultadoSolicitudCodigoDTOxx 6
{yy 
CodigoEnviadozz !
=zz" #
falsezz$ )
,zz) *
Mensaje{{ 
={{ 
MensajesError{{ +
.{{+ ,
Cliente{{, 3
.{{3 4
DatosReenvioCodigo{{4 F
}|| 
;|| 
}}} 
catch~~ 
(~~ 
EntityException~~ "
ex~~# %
)~~% &
{ 
_logger
ÄÄ 
.
ÄÄ 
Error
ÄÄ 
(
ÄÄ 
$str
ÄÄ Z
,
ÄÄZ [
ex
ÄÄ\ ^
)
ÄÄ^ _
;
ÄÄ_ `
return
ÅÅ 
new
ÅÅ )
ResultadoSolicitudCodigoDTO
ÅÅ 6
{
ÇÇ 
CodigoEnviado
ÉÉ !
=
ÉÉ" #
false
ÉÉ$ )
,
ÉÉ) *
Mensaje
ÑÑ 
=
ÑÑ 
MensajesError
ÑÑ +
.
ÑÑ+ ,
Cliente
ÑÑ, 3
.
ÑÑ3 4!
ErrorReenviarCodigo
ÑÑ4 G
}
ÖÖ 
;
ÖÖ 
}
ÜÜ 
catch
áá 
(
áá 
DataException
áá  
ex
áá! #
)
áá# $
{
àà 
_logger
ââ 
.
ââ 
Error
ââ 
(
ââ 
$str
ââ R
,
ââR S
ex
ââT V
)
ââV W
;
ââW X
return
ää 
new
ää )
ResultadoSolicitudCodigoDTO
ää 6
{
ãã 
CodigoEnviado
åå !
=
åå" #
false
åå$ )
,
åå) *
Mensaje
çç 
=
çç 
MensajesError
çç +
.
çç+ ,
Cliente
çç, 3
.
çç3 4!
ErrorReenviarCodigo
çç4 G
}
éé 
;
éé 
}
èè 
}
êê 	
public
òò #
ResultadoOperacionDTO
òò $)
ConfirmarCodigoRecuperacion
òò% @
(
ôô #
ConfirmacionCodigoDTO
ôô "
confirmacion
ôô# /
)
ôô/ 0
{
öö 	
try
õõ 
{
úú 
var
ùù 
	resultado
ùù 
=
ùù #
_recuperacionServicio
ùù  5
.
ùù5 6)
ConfirmarCodigoRecuperacion
ùù6 Q
(
ùùQ R
confirmacion
ùùR ^
)
ùù^ _
;
ùù_ `
if
ûû 
(
ûû 
!
ûû 
	resultado
ûû 
.
ûû 
OperacionExitosa
ûû /
)
ûû/ 0
{
üü 
_logger
†† 
.
†† 

WarnFormat
†† &
(
††& '
$str
°° G
,
°°G H
	resultado
¢¢ !
.
¢¢! "
Mensaje
¢¢" )
)
¢¢) *
;
¢¢* +
}
££ 
return
§§ 
	resultado
§§  
;
§§  !
}
•• 
catch
¶¶ 
(
¶¶ #
ArgumentNullException
¶¶ (
ex
¶¶) +
)
¶¶+ ,
{
ßß 
_logger
®® 
.
®® 
Warn
®® 
(
®® 
$str
®® R
,
®®R S
ex
®®T V
)
®®V W
;
®®W X
return
™™ 
new
™™ #
ResultadoOperacionDTO
™™ 0
{
´´ 
OperacionExitosa
¨¨ $
=
¨¨% &
false
¨¨' ,
,
¨¨, -
Mensaje
≠≠ 
=
≠≠ 
MensajesError
≠≠ +
.
≠≠+ ,
Cliente
≠≠, 3
.
≠≠3 4(
DatosConfirmacionInvalidos
≠≠4 N
}
ÆÆ 
;
ÆÆ 
}
ØØ 
catch
∞∞ 
(
∞∞ 
EntityException
∞∞ "
ex
∞∞# %
)
∞∞% &
{
±± 
_logger
≤≤ 
.
≤≤ 
Error
≤≤ 
(
≤≤ 
$str
≤≤ [
,
≤≤[ \
ex
≤≤] _
)
≤≤_ `
;
≤≤` a
return
¥¥ 
new
¥¥ #
ResultadoOperacionDTO
¥¥ 0
{
µµ 
OperacionExitosa
∂∂ $
=
∂∂% &
false
∂∂' ,
,
∂∂, -
Mensaje
∑∑ 
=
∑∑ 
MensajesError
∑∑ +
.
∑∑+ ,
Cliente
∑∑, 3
.
∑∑3 4"
ErrorConfirmarCodigo
∑∑4 H
}
∏∏ 
;
∏∏ 
}
ππ 
catch
∫∫ 
(
∫∫ 
DataException
∫∫  
ex
∫∫! #
)
∫∫# $
{
ªª 
_logger
ºº 
.
ºº 
Error
ºº 
(
ºº 
$str
ºº S
,
ººS T
ex
ººU W
)
ººW X
;
ººX Y
return
ææ 
new
ææ #
ResultadoOperacionDTO
ææ 0
{
øø 
OperacionExitosa
¿¿ $
=
¿¿% &
false
¿¿' ,
,
¿¿, -
Mensaje
¡¡ 
=
¡¡ 
MensajesError
¡¡ +
.
¡¡+ ,
Cliente
¡¡, 3
.
¡¡3 4"
ErrorConfirmarCodigo
¡¡4 H
}
¬¬ 
;
¬¬ 
}
√√ 
}
ƒƒ 	
public
ÃÃ #
ResultadoOperacionDTO
ÃÃ $"
ActualizarContrasena
ÃÃ% 9
(
ÃÃ9 :(
ActualizacionContrasenaDTO
ÃÃ: T
	solicitud
ÃÃU ^
)
ÃÃ^ _
{
ÕÕ 	
try
ŒŒ 
{
œœ 
var
–– 
	resultado
–– 
=
–– #
_recuperacionServicio
––  5
.
––5 6"
ActualizarContrasena
––6 J
(
––J K
	solicitud
––K T
)
––T U
;
––U V
if
—— 
(
—— 
!
—— 
	resultado
—— 
.
—— 
OperacionExitosa
—— /
)
——/ 0
{
““ 
_logger
”” 
.
”” 
Warn
””  
(
””  !
$str
””! ]
)
””] ^
;
””^ _
}
‘‘ 
return
’’ 
	resultado
’’  
;
’’  !
}
÷÷ 
catch
◊◊ 
(
◊◊ #
ArgumentNullException
◊◊ (
ex
◊◊) +
)
◊◊+ ,
{
ÿÿ 
_logger
ŸŸ 
.
ŸŸ 
Warn
ŸŸ 
(
ŸŸ 
$str
ŸŸ G
,
ŸŸG H
ex
ŸŸI K
)
ŸŸK L
;
ŸŸL M
return
€€ 
new
€€ #
ResultadoOperacionDTO
€€ 0
{
‹‹ 
OperacionExitosa
›› $
=
››% &
false
››' ,
,
››, -
Mensaje
ﬁﬁ 
=
ﬁﬁ 
MensajesError
ﬁﬁ +
.
ﬁﬁ+ ,
Cliente
ﬁﬁ, 3
.
ﬁﬁ3 4*
DatosActualizacionContrasena
ﬁﬁ4 P
}
ﬂﬂ 
;
ﬂﬂ 
}
‡‡ 
catch
·· 
(
·· )
DbEntityValidationException
·· .
ex
··/ 1
)
··1 2
{
‚‚ 
_logger
„„ 
.
„„ 
Error
„„ 
(
„„ 
$str
„„ W
,
„„W X
ex
„„Y [
)
„„[ \
;
„„\ ]
return
ÂÂ 
new
ÂÂ #
ResultadoOperacionDTO
ÂÂ 0
{
ÊÊ 
OperacionExitosa
ÁÁ $
=
ÁÁ% &
false
ÁÁ' ,
,
ÁÁ, -
Mensaje
ËË 
=
ËË 
MensajesError
ËË +
.
ËË+ ,
Cliente
ËË, 3
.
ËË3 4'
ErrorActualizarContrasena
ËË4 M
}
ÈÈ 
;
ÈÈ 
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ 
DbUpdateException
ÎÎ $
ex
ÎÎ% '
)
ÎÎ' (
{
ÏÏ 
_logger
ÌÌ 
.
ÌÌ 
Error
ÌÌ 
(
ÌÌ 
$str
ÓÓ W
,
ÓÓW X
ex
ÓÓY [
)
ÓÓ[ \
;
ÓÓ\ ]
return
 
new
 #
ResultadoOperacionDTO
 0
{
ÒÒ 
OperacionExitosa
ÚÚ $
=
ÚÚ% &
false
ÚÚ' ,
,
ÚÚ, -
Mensaje
ÛÛ 
=
ÛÛ 
MensajesError
ÛÛ +
.
ÛÛ+ ,
Cliente
ÛÛ, 3
.
ÛÛ3 4'
ErrorActualizarContrasena
ÛÛ4 M
}
ÙÙ 
;
ÙÙ 
}
ıı 
catch
ˆˆ 
(
ˆˆ 
EntityException
ˆˆ "
ex
ˆˆ# %
)
ˆˆ% &
{
˜˜ 
_logger
¯¯ 
.
¯¯ 
Error
¯¯ 
(
¯¯ 
$str
¯¯ P
,
¯¯P Q
ex
¯¯R T
)
¯¯T U
;
¯¯U V
return
˙˙ 
new
˙˙ #
ResultadoOperacionDTO
˙˙ 0
{
˚˚ 
OperacionExitosa
¸¸ $
=
¸¸% &
false
¸¸' ,
,
¸¸, -
Mensaje
˝˝ 
=
˝˝ 
MensajesError
˝˝ +
.
˝˝+ ,
Cliente
˝˝, 3
.
˝˝3 4'
ErrorActualizarContrasena
˝˝4 M
}
˛˛ 
;
˛˛ 
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
DataException
ÄÄ  
ex
ÄÄ! #
)
ÄÄ# $
{
ÅÅ 
_logger
ÇÇ 
.
ÇÇ 
Error
ÇÇ 
(
ÇÇ 
$str
ÇÇ H
,
ÇÇH I
ex
ÇÇJ L
)
ÇÇL M
;
ÇÇM N
return
ÑÑ 
new
ÑÑ #
ResultadoOperacionDTO
ÑÑ 0
{
ÖÖ 
OperacionExitosa
ÜÜ $
=
ÜÜ% &
false
ÜÜ' ,
,
ÜÜ, -
Mensaje
áá 
=
áá 
MensajesError
áá +
.
áá+ ,
Cliente
áá, 3
.
áá3 4'
ErrorActualizarContrasena
áá4 M
}
àà 
;
àà 
}
ââ 
}
ää 	
}
ãã 
}åå ˇb
éC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\GestorNotificacionesSalaInterna.cs
	namespace		 	%
PictionaryMusicalServidor		
 #
.		# $
	Servicios		$ -
.		- .
	Servicios		. 7
.		7 8
Notificadores		8 E
{

 
public 

class +
GestorNotificacionesSalaInterna 0
:1 2,
 IGestorNotificacionesSalaInterna3 S
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (+
GestorNotificacionesSalaInterna( G
)G H
)H I
;I J
private 
readonly 

Dictionary #
<# $
string$ *
,* +#
ISalasManejadorCallback, C
>C D

_callbacksE O
;O P
private 
readonly 
object 
_sync  %
=& '
new( +
object, 2
(2 3
)3 4
;4 5
public +
GestorNotificacionesSalaInterna .
(. /
)/ 0
{ 	

_callbacks 
= 
new 

Dictionary '
<' (
string( .
,. /#
ISalasManejadorCallback0 G
>G H
( 
StringComparer 
.  
OrdinalIgnoreCase  1
)1 2
;2 3
} 	
public"" 
void"" 
	Registrar"" 
("" 
string"" $
nombreUsuario""% 2
,""2 3#
ISalasManejadorCallback""4 K
callback""L T
)""T U
{## 	
lock$$ 
($$ 
_sync$$ 
)$$ 
{%% 

_callbacks&& 
[&& 
nombreUsuario&& (
]&&( )
=&&* +
callback&&, 4
;&&4 5
}'' 
}(( 	
public-- 
void-- 
Remover-- 
(-- 
string-- "
nombreUsuario--# 0
)--0 1
{.. 	
lock// 
(// 
_sync// 
)// 
{00 

_callbacks11 
.11 
Remove11 !
(11! "
nombreUsuario11" /
)11/ 0
;110 1
}22 
}33 	
public88 #
ISalasManejadorCallback88 &
ObtenerCallback88' 6
(886 7
string887 =
nombreUsuario88> K
)88K L
{99 	
lock:: 
(:: 
_sync:: 
):: 
{;; 
if<< 
(<< 

_callbacks<< 
.<< 
TryGetValue<< *
(<<* +
nombreUsuario<<+ 8
,<<8 9
out<<: =
var<<> A
callback<<B J
)<<J K
)<<K L
{== 
return>> 
callback>> #
;>># $
}?? 
return@@ 
new@@ 
SalasCallbackNulo@@ ,
(@@, -
)@@- .
;@@. /
}AA 
}BB 	
publicGG 
voidGG 
LimpiarGG 
(GG 
)GG 
{HH 	
lockII 
(II 
_syncII 
)II 
{JJ 

_callbacksKK 
.KK 
ClearKK  
(KK  !
)KK! "
;KK" #
}LL 
}MM 	
publicSS 
voidSS 
NotificarIngresoSS $
(SS$ %
stringSS% +

codigoSalaSS, 6
,SS6 7
stringSS8 >
nombreUsuarioSS? L
,SSL M
SalaDTOTT 
salaActualizadaTT #
)TT# $
{UU 	
varVV 
destinatariosVV 
=VV *
ObtenerDestinatariosExcluyendoVV  >
(VV> ?
nombreUsuarioVV? L
)VVL M
;VVM N
foreachWW 
(WW 
varWW 
callbackWW !
inWW" $
destinatariosWW% 2
)WW2 3
{XX 
EjecutarSeguroYY 
(YY 
(YY  
)YY  !
=>YY" $
callbackYY% -
.YY- ."
NotificarJugadorSeUnioYY. D
(YYD E

codigoSalaYYE O
,YYO P
nombreUsuarioYYQ ^
)YY^ _
)YY_ `
;YY` a
}ZZ (
NotificarActualizacionGlobal[[ (
([[( )
salaActualizada[[) 8
)[[8 9
;[[9 :
}\\ 	
publicaa 
voidaa 
NotificarSalidaaa #
(aa# $
stringaa$ *

codigoSalaaa+ 5
,aa5 6
stringaa7 =
nombreUsuarioaa> K
,aaK L
SalaDTObb 
salaActualizadabb #
)bb# $
{cc 	
vardd 
destinatariosdd 
=dd (
ObtenerTodosLosDestinatariosdd  <
(dd< =
)dd= >
;dd> ?
foreachee 
(ee 
varee 
callbackee !
inee" $
destinatariosee% 2
)ee2 3
{ff 
EjecutarSegurogg 
(gg 
(gg  
)gg  !
=>gg" $
callbackgg% -
.gg- .!
NotificarJugadorSaliogg. C
(ggC D

codigoSalaggD N
,ggN O
nombreUsuarioggP ]
)gg] ^
)gg^ _
;gg_ `
EjecutarSegurohh 
(hh 
(hh  
)hh  !
=>hh" $
callbackhh% -
.hh- .$
NotificarSalaActualizadahh. F
(hhF G
salaActualizadahhG V
)hhV W
)hhW X
;hhX Y
}ii 
}jj 	
publicoo 
voidoo 
NotificarExpulsionoo &
(oo& '
stringoo' -

codigoSalaoo. 8
,oo8 9
stringoo: @
nombreExpulsadoooA P
,ooP Q#
ISalasManejadorCallbackpp #
callbackExpulsadopp$ 5
,pp5 6
SalaDTOpp7 >
salaActualizadapp? N
)ppN O
{qq 	
EjecutarSegurorr 
(rr 
(rr 
)rr 
=>rr  
callbackExpulsadorr! 2
.rr2 3%
NotificarJugadorExpulsadorr3 L
(ss 

codigoSalass 
,ss 
nombreExpulsadoss (
)ss( )
)ss) *
;ss* +
NotificarSalidatt 
(tt 

codigoSalatt &
,tt& '
nombreExpulsadott( 7
,tt7 8
salaActualizadatt9 H
)ttH I
;ttI J
}uu 	
publiczz 
voidzz  
NotificarCancelacionzz (
(zz( )
stringzz) /

codigoSalazz0 :
)zz: ;
{{{ 	
var|| 
destinatarios|| 
=|| (
ObtenerTodosLosDestinatarios||  <
(||< =
)||= >
;||> ?
foreach}} 
(}} 
var}} 
callback}} !
in}}" $
destinatarios}}% 2
)}}2 3
{~~ 
EjecutarSeguro 
( 
(  
)  !
=>" $
callback% -
.- ."
NotificarSalaCancelada. D
(D E

codigoSalaE O
)O P
)P Q
;Q R
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
List
ÉÉ 
<
ÉÉ %
ISalasManejadorCallback
ÉÉ ,
>
ÉÉ, -,
ObtenerDestinatariosExcluyendo
ÉÉ. L
(
ÑÑ 
string
ÑÑ 
usuarioExcluido
ÑÑ #
)
ÑÑ# $
{
ÖÖ 	
lock
ÜÜ 
(
ÜÜ 
_sync
ÜÜ 
)
ÜÜ 
{
áá 
return
àà 

_callbacks
àà !
.
ââ 
Where
ââ 
(
ââ 
x
ââ 
=>
ââ 
!
ââ  !
string
ââ! '
.
ââ' (
Equals
ââ( .
(
ââ. /
x
ââ/ 0
.
ââ0 1
Key
ââ1 4
,
ââ4 5
usuarioExcluido
ââ6 E
,
ââE F
StringComparison
ää (
.
ää( )
OrdinalIgnoreCase
ää) :
)
ää: ;
)
ää; <
.
ãã 
Select
ãã 
(
ãã 
x
ãã 
=>
ãã  
x
ãã! "
.
ãã" #
Value
ãã# (
)
ãã( )
.
åå 
ToList
åå 
(
åå 
)
åå 
;
åå 
}
çç 
}
éé 	
private
êê 
List
êê 
<
êê %
ISalasManejadorCallback
êê ,
>
êê, -*
ObtenerTodosLosDestinatarios
êê. J
(
êêJ K
)
êêK L
{
ëë 	
lock
íí 
(
íí 
_sync
íí 
)
íí 
{
ìì 
return
îî 

_callbacks
îî !
.
îî! "
Values
îî" (
.
îî( )
ToList
îî) /
(
îî/ 0
)
îî0 1
;
îî1 2
}
ïï 
}
ññ 	
private
òò 
void
òò *
NotificarActualizacionGlobal
òò 1
(
òò1 2
SalaDTO
òò2 9
sala
òò: >
)
òò> ?
{
ôô 	
var
öö 
destinatarios
öö 
=
öö *
ObtenerTodosLosDestinatarios
öö  <
(
öö< =
)
öö= >
;
öö> ?
foreach
õõ 
(
õõ 
var
õõ 
callback
õõ !
in
õõ" $
destinatarios
õõ% 2
)
õõ2 3
{
úú 
EjecutarSeguro
ùù 
(
ùù 
(
ùù  
)
ùù  !
=>
ùù" $
callback
ùù% -
.
ùù- .&
NotificarSalaActualizada
ùù. F
(
ùùF G
sala
ùùG K
)
ùùK L
)
ùùL M
;
ùùM N
}
ûû 
}
üü 	
private
°° 
static
°° 
void
°° 
EjecutarSeguro
°° *
(
°°* +
Action
°°+ 1
accion
°°2 8
)
°°8 9
{
¢¢ 	
try
££ 
{
§§ 
accion
•• 
(
•• 
)
•• 
;
•• 
}
¶¶ 
catch
ßß 
(
ßß $
CommunicationException
ßß )
ex
ßß* ,
)
ßß, -
{
®® 
_logger
©© 
.
©© 
Warn
©© 
(
©© 
$str
©© R
,
©©R S
ex
©©T V
)
©©V W
;
©©W X
}
™™ 
catch
´´ 
(
´´ 
TimeoutException
´´ #
ex
´´$ &
)
´´& '
{
¨¨ 
_logger
≠≠ 
.
≠≠ 
Warn
≠≠ 
(
≠≠ 
$str
≠≠ U
,
≠≠U V
ex
≠≠W Y
)
≠≠Y Z
;
≠≠Z [
}
ÆÆ 
catch
ØØ 
(
ØØ %
ObjectDisposedException
ØØ *
ex
ØØ+ -
)
ØØ- .
{
∞∞ 
_logger
±± 
.
±± 
Error
±± 
(
±± 
$str
±± V
,
±±V W
ex
±±X Z
)
±±Z [
;
±±[ \
}
≤≤ 
}
≥≥ 	
private
∏∏ 
sealed
∏∏ 
class
∏∏ 
SalasCallbackNulo
∏∏ .
:
∏∏/ 0%
ISalasManejadorCallback
∏∏1 H
{
ππ 	
public
∫∫ 
void
∫∫ $
NotificarJugadorSeUnio
∫∫ .
(
∫∫. /
string
∫∫/ 5

codigoSala
∫∫6 @
,
∫∫@ A
string
∫∫B H
nombreJugador
∫∫I V
)
∫∫V W
{
∫∫X Y
}
∫∫Z [
public
ªª 
void
ªª #
NotificarJugadorSalio
ªª -
(
ªª- .
string
ªª. 4

codigoSala
ªª5 ?
,
ªª? @
string
ªªA G
nombreJugador
ªªH U
)
ªªU V
{
ªªW X
}
ªªY Z
public
ºº 
void
ºº ,
NotificarListaSalasActualizada
ºº 6
(
ºº6 7
SalaDTO
ºº7 >
[
ºº> ?
]
ºº? @
salas
ººA F
)
ººF G
{
ººH I
}
ººJ K
public
ΩΩ 
void
ΩΩ &
NotificarSalaActualizada
ΩΩ 0
(
ΩΩ0 1
SalaDTO
ΩΩ1 8
sala
ΩΩ9 =
)
ΩΩ= >
{
ΩΩ? @
}
ΩΩA B
public
ææ 
void
ææ '
NotificarJugadorExpulsado
ææ 1
(
ææ1 2
string
ææ2 8

codigoSala
ææ9 C
,
ææC D
string
ææE K
nombreJugador
ææL Y
)
ææY Z
{
ææ[ \
}
ææ] ^
public
øø 
void
øø $
NotificarSalaCancelada
øø .
(
øø. /
string
øø/ 5

codigoSala
øø6 @
)
øø@ A
{
øøB C
}
øøD E
}
¿¿ 	
}
¡¡ 
}¬¬ ∏
ãC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Notificadores\ICorreoInvitacionNotificador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8
Notificadores8 E
{ 
public 

	interface (
ICorreoInvitacionNotificador 1
{		 
Task 
< 
bool 
> !
EnviarInvitacionAsync (
(( )
string) /
correoDestino0 =
,= >
string? E

codigoSalaF P
,P Q
stringR X
creadorY `
,` a
string 
idioma 
) 
; 
} 
} ù≥
ÅC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\EntradaComunValidador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
internal 
static 
class !
EntradaComunValidador /
{ 
internal 
const 
int 
LongitudMaximaTexto .
=/ 0
$num1 3
;3 4
internal 
const 
int !
LongitudMaximaReporte 0
=1 2
$num3 6
;6 7
internal 
const 
int $
LongitudMaximaContrasena 3
=4 5
$num6 8
;8 9
internal 
const 
int &
LongitudCodigoVerificacion 5
=6 7
$num8 9
;9 :
private 
static 
readonly 
Regex  %
CorreoRegex& 1
=2 3
new4 7
Regex8 =
(= >
$str )
,) *
RegexOptions 
. 
Compiled !
|" #
RegexOptions$ 0
.0 1
CultureInvariant1 A
,A B
TimeSpan 
. 
FromSeconds  
(  !
$num! "
)" #
)# $
;$ %
private 
static 
readonly 
Regex  %
ContrasenaRegex& 5
=6 7
new8 ;
Regex< A
(A B
$str R
,R S
RegexOptions 
. 
Compiled !
,! "
TimeSpan 
. 
FromSeconds  
(  !
$num! "
)" #
)# $
;$ %
private!! 
static!! 
readonly!! 
Regex!!  %

TokenRegex!!& 0
=!!1 2
new!!3 6
Regex!!7 <
(!!< =
$str""  
,""  !
RegexOptions## 
.## 
Compiled## !
|##" #
RegexOptions##$ 0
.##0 1
CultureInvariant##1 A
,##A B
TimeSpan$$ 
.$$ 
FromSeconds$$  
($$  !
$num$$! "
)$$" #
)$$# $
;$$$ %
public,, 
static,, 
string,, 
NormalizarTexto,, ,
(,,, -
string,,- 3
valor,,4 9
),,9 :
{-- 	
return.. 
string.. 
... 
IsNullOrWhiteSpace.. ,
(.., -
valor..- 2
)..2 3
?..4 5
null..6 :
:..; <
valor..= B
...B C
Trim..C G
(..G H
)..H I
;..I J
}// 	
public66 
static66 
bool66 
EsLongitudValida66 +
(66+ ,
string66, 2
valor663 8
)668 9
{77 	
return88 
!88 
string88 
.88 
IsNullOrWhiteSpace88 -
(88- .
valor88. 3
)883 4
&&885 7
valor888 =
.88= >
Length88> D
<=88E G
LongitudMaximaTexto88H [
;88[ \
}99 	
public@@ 
static@@ 
bool@@ #
EsLongitudValidaReporte@@ 2
(@@2 3
string@@3 9
valor@@: ?
)@@? @
{AA 	
returnBB 
!BB 
stringBB 
.BB 
IsNullOrWhiteSpaceBB -
(BB- .
valorBB. 3
)BB3 4
&&BB5 7
valorBB8 =
.BB= >
LengthBB> D
<=BBE G!
LongitudMaximaReporteBBH ]
;BB] ^
}CC 	
publicKK 
staticKK 
boolKK 
EsCorreoValidoKK )
(KK) *
stringKK* 0
valorKK1 6
)KK6 7
{LL 	
returnMM 
EsLongitudValidaMM #
(MM# $
valorMM$ )
)MM) *
&&MM+ -
CorreoRegexMM. 9
.MM9 :
IsMatchMM: A
(MMA B
valorMMB G
)MMG H
;MMH I
}NN 	
publicWW 
staticWW 
boolWW 
EsContrasenaValidaWW -
(WW- .
stringWW. 4
valorWW5 :
)WW: ;
{XX 	
ifYY 
(YY 
stringYY 
.YY 
IsNullOrWhiteSpaceYY )
(YY) *
valorYY* /
)YY/ 0
)YY0 1
{ZZ 
return[[ 
false[[ 
;[[ 
}\\ 
string^^ 
normalizado^^ 
=^^  
valor^^! &
.^^& '
Trim^^' +
(^^+ ,
)^^, -
;^^- .
return__ 
normalizado__ 
.__ 
Length__ %
<=__& ($
LongitudMaximaContrasena__) A
&&__B D
ContrasenaRegex`` 
.``  
IsMatch``  '
(``' (
normalizado``( 3
)``3 4
;``4 5
}aa 	
publichh 
statichh 
boolhh 
EsTokenValidohh (
(hh( )
stringhh) /
tokenhh0 5
)hh5 6
{ii 	
stringjj 
normalizadojj 
=jj  
NormalizarTextojj! 0
(jj0 1
tokenjj1 6
)jj6 7
;jj7 8
returnkk 
normalizadokk 
!=kk !
nullkk" &
&&kk' )

TokenRegexkk* 4
.kk4 5
IsMatchkk5 <
(kk< =
normalizadokk= H
)kkH I
;kkI J
}ll 	
publicss 
staticss 
boolss &
EsCodigoVerificacionValidoss 5
(ss5 6
stringss6 <
codigoss= C
)ssC D
{tt 	
stringuu 
normalizadouu 
=uu  
NormalizarTextouu! 0
(uu0 1
codigouu1 7
)uu7 8
;uu8 9
ifvv 
(vv 
normalizadovv 
==vv 
nullvv #
||vv$ &
normalizadovv' 2
.vv2 3
Lengthvv3 9
!=vv: <&
LongitudCodigoVerificacionvv= W
)vvW X
{ww 
returnxx 
falsexx 
;xx 
}yy 
return{{ 
normalizado{{ 
.{{ 
All{{ "
({{" #
char{{# '
.{{' (
IsDigit{{( /
){{/ 0
;{{0 1
}|| 	
public
ÖÖ 
static
ÖÖ #
ResultadoOperacionDTO
ÖÖ + 
ValidarNuevaCuenta
ÖÖ, >
(
ÖÖ> ?
NuevaCuentaDTO
ÖÖ? M
nuevaCuenta
ÖÖN Y
)
ÖÖY Z
{
ÜÜ 	
if
áá 
(
áá 
nuevaCuenta
áá 
==
áá 
null
áá #
)
áá# $
{
àà 
return
ââ %
CrearResultadoOperacion
ââ .
(
ââ. /
false
ââ/ 4
,
ââ4 5
MensajesError
ââ6 C
.
ââC D
Cliente
ââD K
.
ââK L
DatosInvalidos
ââL Z
)
ââZ [
;
ââ[ \
}
ää 
var
åå 
validaciones
åå 
=
åå 
new
åå "
Func
åå# '
<
åå' (#
ResultadoOperacionDTO
åå( =
>
åå= >
[
åå> ?
]
åå? @
{
çç 
(
éé 
)
éé 
=>
éé "
ValidarYAsignarCampo
éé *
(
éé* +
nuevaCuenta
èè 
.
èè  
Usuario
èè  '
,
èè' (
EsLongitudValida
êê $
,
êê$ %
MensajesError
ëë !
.
ëë! "
Cliente
ëë" )
.
ëë) *%
UsuarioRegistroInvalido
ëë* A
,
ëëA B
s
íí 
=>
íí 
nuevaCuenta
íí $
.
íí$ %
Usuario
íí% ,
=
íí- .
s
íí/ 0
)
íí0 1
,
íí1 2
(
îî 
)
îî 
=>
îî "
ValidarYAsignarCampo
îî *
(
îî* +
nuevaCuenta
ïï 
.
ïï  
Nombre
ïï  &
,
ïï& '
EsLongitudValida
ññ $
,
ññ$ %
MensajesError
óó !
.
óó! "
Cliente
óó" )
.
óó) *$
NombreRegistroInvalido
óó* @
,
óó@ A
s
òò 
=>
òò 
nuevaCuenta
òò $
.
òò$ %
Nombre
òò% +
=
òò, -
s
òò. /
)
òò/ 0
,
òò0 1
(
öö 
)
öö 
=>
öö "
ValidarYAsignarCampo
öö *
(
öö* +
nuevaCuenta
õõ 
.
õõ  
Apellido
õõ  (
,
õõ( )
EsLongitudValida
úú $
,
úú$ %
MensajesError
ùù !
.
ùù! "
Cliente
ùù" )
.
ùù) *&
ApellidoRegistroInvalido
ùù* B
,
ùùB C
s
ûû 
=>
ûû 
nuevaCuenta
ûû $
.
ûû$ %
Apellido
ûû% -
=
ûû. /
s
ûû0 1
)
ûû1 2
,
ûû2 3
(
†† 
)
†† 
=>
†† "
ValidarYAsignarCampo
†† *
(
††* +
nuevaCuenta
°° 
.
°°  
Correo
°°  &
,
°°& '
EsCorreoValido
¢¢ "
,
¢¢" #
MensajesError
££ !
.
££! "
Cliente
££" )
.
££) *$
CorreoRegistroInvalido
££* @
,
££@ A
s
§§ 
=>
§§ 
nuevaCuenta
§§ $
.
§§$ %
Correo
§§% +
=
§§, -
s
§§. /
)
§§/ 0
,
§§0 1
(
¶¶ 
)
¶¶ 
=>
¶¶ "
ValidarYAsignarCampo
¶¶ *
(
¶¶* +
nuevaCuenta
ßß 
.
ßß  

Contrasena
ßß  *
,
ßß* + 
EsContrasenaValida
®® &
,
®®& '
MensajesError
©© !
.
©©! "
Cliente
©©" )
.
©©) *(
ContrasenaRegistroInvalida
©©* D
,
©©D E
s
™™ 
=>
™™ 
nuevaCuenta
™™ $
.
™™$ %

Contrasena
™™% /
=
™™0 1
s
™™2 3
)
™™3 4
}
´´ 
;
´´ 
return
≠≠ "
EjecutarValidaciones
≠≠ '
(
≠≠' (
validaciones
≠≠( 4
)
≠≠4 5
;
≠≠5 6
}
ÆÆ 	
public
∞∞ 
static
∞∞ #
ResultadoOperacionDTO
∞∞ +(
ValidarActualizacionPerfil
∞∞, F
(
∞∞F G$
ActualizacionPerfilDTO
±± "
	solicitud
±±# ,
)
±±, -
{
≤≤ 	
if
≥≥ 
(
≥≥ 
	solicitud
≥≥ 
==
≥≥ 
null
≥≥ !
||
≥≥" $
	solicitud
≥≥% .
.
≥≥. /
	UsuarioId
≥≥/ 8
<=
≥≥9 ;
$num
≥≥< =
)
≥≥= >
{
¥¥ 
return
µµ %
CrearResultadoOperacion
µµ .
(
µµ. /
false
µµ/ 4
,
µµ4 5
MensajesError
µµ6 C
.
µµC D
Cliente
µµD K
.
µµK L
DatosInvalidos
µµL Z
)
µµZ [
;
µµ[ \
}
∂∂ 
if
∏∏ 
(
∏∏ 
	solicitud
∏∏ 
.
∏∏ 
AvatarId
∏∏ "
<=
∏∏# %
$num
∏∏& '
)
∏∏' (
{
ππ 
return
∫∫ %
CrearResultadoOperacion
∫∫ .
(
∫∫. /
false
∫∫/ 4
,
∫∫4 5
MensajesError
∫∫6 C
.
∫∫C D
Cliente
∫∫D K
.
∫∫K L
AvatarInvalido
∫∫L Z
)
∫∫Z [
;
∫∫[ \
}
ªª 
var
ΩΩ 
resultadoDatos
ΩΩ 
=
ΩΩ  *
ValidarDatosPersonalesPerfil
ΩΩ! =
(
ΩΩ= >
	solicitud
ΩΩ> G
)
ΩΩG H
;
ΩΩH I
if
ææ 
(
ææ 
!
ææ 
resultadoDatos
ææ 
.
ææ  
OperacionExitosa
ææ  0
)
ææ0 1
{
øø 
return
¿¿ 
resultadoDatos
¿¿ %
;
¿¿% &
}
¡¡ 
return
√√ "
ValidarRedesSociales
√√ '
(
√√' (
	solicitud
√√( 1
)
√√1 2
;
√√2 3
}
ƒƒ 	
private
∆∆ 
static
∆∆ #
ResultadoOperacionDTO
∆∆ ,*
ValidarDatosPersonalesPerfil
∆∆- I
(
∆∆I J$
ActualizacionPerfilDTO
«« "
	solicitud
««# ,
)
««, -
{
»» 	
var
…… 
validaciones
…… 
=
…… 
new
…… "
Func
……# '
<
……' (#
ResultadoOperacionDTO
……( =
>
……= >
[
……> ?
]
……? @
{
   
(
ÀÀ 
)
ÀÀ 
=>
ÀÀ "
ValidarYAsignarCampo
ÀÀ *
(
ÀÀ* +
	solicitud
ÃÃ 
.
ÃÃ 
Nombre
ÃÃ $
,
ÃÃ$ %
EsLongitudValida
ÕÕ $
,
ÕÕ$ %
MensajesError
ŒŒ !
.
ŒŒ! "
Cliente
ŒŒ" )
.
ŒŒ) *$
NombreRegistroInvalido
ŒŒ* @
,
ŒŒ@ A
s
œœ 
=>
œœ 
	solicitud
œœ "
.
œœ" #
Nombre
œœ# )
=
œœ* +
s
œœ, -
)
œœ- .
,
œœ. /
(
—— 
)
—— 
=>
—— "
ValidarYAsignarCampo
—— *
(
——* +
	solicitud
““ 
.
““ 
Apellido
““ &
,
““& '
EsLongitudValida
”” $
,
””$ %
MensajesError
‘‘ !
.
‘‘! "
Cliente
‘‘" )
.
‘‘) *&
ApellidoRegistroInvalido
‘‘* B
,
‘‘B C
s
’’ 
=>
’’ 
	solicitud
’’ "
.
’’" #
Apellido
’’# +
=
’’, -
s
’’. /
)
’’/ 0
}
÷÷ 
;
÷÷ 
return
ÿÿ "
EjecutarValidaciones
ÿÿ '
(
ÿÿ' (
validaciones
ÿÿ( 4
)
ÿÿ4 5
;
ÿÿ5 6
}
ŸŸ 	
private
€€ 
static
€€ #
ResultadoOperacionDTO
€€ ,"
ValidarRedesSociales
€€- A
(
€€A B$
ActualizacionPerfilDTO
€€B X
	solicitud
€€Y b
)
€€b c
{
‹‹ 	
var
›› 
validaciones
›› 
=
›› 
new
›› "
Func
››# '
<
››' (#
ResultadoOperacionDTO
››( =
>
››= >
[
››> ?
]
››? @
{
ﬁﬁ 
(
ﬂﬂ 
)
ﬂﬂ 
=>
ﬂﬂ  
ValidarYAsignarRed
ﬂﬂ (
(
ﬂﬂ( )
$str
ﬂﬂ) 4
,
ﬂﬂ4 5
	solicitud
ﬂﬂ6 ?
.
ﬂﬂ? @
	Instagram
ﬂﬂ@ I
,
ﬂﬂI J
s
‡‡ 
=>
‡‡ 
	solicitud
‡‡ "
.
‡‡" #
	Instagram
‡‡# ,
=
‡‡- .
s
‡‡/ 0
)
‡‡0 1
,
‡‡1 2
(
·· 
)
·· 
=>
··  
ValidarYAsignarRed
·· (
(
··( )
$str
··) 3
,
··3 4
	solicitud
··5 >
.
··> ?
Facebook
··? G
,
··G H
s
‚‚ 
=>
‚‚ 
	solicitud
‚‚ "
.
‚‚" #
Facebook
‚‚# +
=
‚‚, -
s
‚‚. /
)
‚‚/ 0
,
‚‚0 1
(
„„ 
)
„„ 
=>
„„  
ValidarYAsignarRed
„„ (
(
„„( )
$str
„„) ,
,
„„, -
	solicitud
„„. 7
.
„„7 8
X
„„8 9
,
„„9 :
s
‰‰ 
=>
‰‰ 
	solicitud
‰‰ "
.
‰‰" #
X
‰‰# $
=
‰‰% &
s
‰‰' (
)
‰‰( )
,
‰‰) *
(
ÂÂ 
)
ÂÂ 
=>
ÂÂ  
ValidarYAsignarRed
ÂÂ (
(
ÂÂ( )
$str
ÂÂ) 2
,
ÂÂ2 3
	solicitud
ÂÂ4 =
.
ÂÂ= >
Discord
ÂÂ> E
,
ÂÂE F
s
ÊÊ 
=>
ÊÊ 
	solicitud
ÊÊ "
.
ÊÊ" #
Discord
ÊÊ# *
=
ÊÊ+ ,
s
ÊÊ- .
)
ÊÊ. /
}
ÁÁ 
;
ÁÁ 
return
ÈÈ "
EjecutarValidaciones
ÈÈ '
(
ÈÈ' (
validaciones
ÈÈ( 4
)
ÈÈ4 5
;
ÈÈ5 6
}
ÍÍ 	
private
 
static
 #
ResultadoOperacionDTO
 ,"
EjecutarValidaciones
- A
(
A B
Func
ÒÒ 
<
ÒÒ #
ResultadoOperacionDTO
ÒÒ &
>
ÒÒ& '
[
ÒÒ' (
]
ÒÒ( )
validaciones
ÒÒ* 6
)
ÒÒ6 7
{
ÚÚ 	
foreach
ÛÛ 
(
ÛÛ 
var
ÛÛ 

validacion
ÛÛ #
in
ÛÛ$ &
validaciones
ÛÛ' 3
)
ÛÛ3 4
{
ÙÙ 
var
ıı 
	resultado
ıı 
=
ıı 

validacion
ıı  *
(
ıı* +
)
ıı+ ,
;
ıı, -
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
	resultado
ˆˆ 
.
ˆˆ 
OperacionExitosa
ˆˆ /
)
ˆˆ/ 0
{
˜˜ 
return
¯¯ 
	resultado
¯¯ $
;
¯¯$ %
}
˘˘ 
}
˙˙ 
return
˚˚ %
CrearResultadoOperacion
˚˚ *
(
˚˚* +
true
˚˚+ /
)
˚˚/ 0
;
˚˚0 1
}
¸¸ 	
private
˛˛ 
static
˛˛ #
ResultadoOperacionDTO
˛˛ ,"
ValidarYAsignarCampo
˛˛- A
(
˛˛A B
string
ˇˇ 
valor
ˇˇ 
,
ˇˇ 
Func
ÄÄ 
<
ÄÄ 
string
ÄÄ 
,
ÄÄ 
bool
ÄÄ 
>
ÄÄ 
reglaValidacion
ÄÄ .
,
ÄÄ. /
string
ÅÅ 
mensajeError
ÅÅ 
,
ÅÅ  
Action
ÇÇ 
<
ÇÇ 
string
ÇÇ 
>
ÇÇ 
	asignador
ÇÇ $
)
ÇÇ$ %
{
ÉÉ 	
var
ÑÑ 
	resultado
ÑÑ 
=
ÑÑ %
ValidarCampoObligatorio
ÑÑ 3
(
ÑÑ3 4
valor
ÑÑ4 9
,
ÑÑ9 :
reglaValidacion
ÑÑ; J
,
ÑÑJ K
mensajeError
ÑÑL X
,
ÑÑX Y
out
ÖÖ 
string
ÖÖ 
normalizado
ÖÖ &
)
ÖÖ& '
;
ÖÖ' (
if
áá 
(
áá 
	resultado
áá 
.
áá 
OperacionExitosa
áá *
)
áá* +
{
àà 
	asignador
ââ 
(
ââ 
normalizado
ââ %
)
ââ% &
;
ââ& '
}
ää 
return
ãã 
	resultado
ãã 
;
ãã 
}
åå 	
private
éé 
static
éé #
ResultadoOperacionDTO
éé , 
ValidarYAsignarRed
éé- ?
(
éé? @
string
èè 
	nombreRed
èè 
,
èè 
string
êê 
valor
êê 
,
êê 
Action
ëë 
<
ëë 
string
ëë 
>
ëë 
	asignador
ëë $
)
ëë$ %
{
íí 	
var
ìì 
	resultado
ìì 
=
ìì 
ValidarRedSocial
ìì ,
(
ìì, -
	nombreRed
ìì- 6
,
ìì6 7
valor
ìì8 =
,
ìì= >
out
ìì? B
string
ììC I
normalizado
ììJ U
)
ììU V
;
ììV W
if
îî 
(
îî 
	resultado
îî 
.
îî 
OperacionExitosa
îî *
)
îî* +
{
ïï 
	asignador
ññ 
(
ññ 
normalizado
ññ %
)
ññ% &
;
ññ& '
}
óó 
return
òò 
	resultado
òò 
;
òò 
}
ôô 	
private
õõ 
static
õõ #
ResultadoOperacionDTO
õõ ,%
ValidarCampoObligatorio
õõ- D
(
õõD E
string
úú 
campo
úú 
,
úú 
Func
ùù 
<
ùù 
string
ùù 
,
ùù 
bool
ùù 
>
ùù 
regla
ùù $
,
ùù$ %
string
ûû 
mensajeError
ûû 
,
ûû  
out
üü 
string
üü 
campoNormalizado
üü '
)
üü' (
{
†† 	
campoNormalizado
°° 
=
°° 
NormalizarTexto
°° .
(
°°. /
campo
°°/ 4
)
°°4 5
;
°°5 6
if
¢¢ 
(
¢¢ 
!
¢¢ 
regla
¢¢ 
(
¢¢ 
campoNormalizado
¢¢ '
)
¢¢' (
)
¢¢( )
{
££ 
campoNormalizado
§§  
=
§§! "
null
§§# '
;
§§' (
return
•• %
CrearResultadoOperacion
•• .
(
••. /
false
••/ 4
,
••4 5
mensajeError
••6 B
)
••B C
;
••C D
}
¶¶ 
return
®® %
CrearResultadoOperacion
®® *
(
®®* +
true
®®+ /
)
®®/ 0
;
®®0 1
}
©© 	
private
´´ 
static
´´ #
ResultadoOperacionDTO
´´ ,
ValidarRedSocial
´´- =
(
´´= >
string
¨¨ 
nombre
¨¨ 
,
¨¨ 
string
≠≠ 
valor
≠≠ 
,
≠≠ 
out
ÆÆ 
string
ÆÆ 
valorNormalizado
ÆÆ '
)
ÆÆ' (
{
ØØ 	
valorNormalizado
∞∞ 
=
∞∞ 
NormalizarTexto
∞∞ .
(
∞∞. /
valor
∞∞/ 4
)
∞∞4 5
;
∞∞5 6
if
±± 
(
±± 
valorNormalizado
±±  
==
±±! #
null
±±$ (
)
±±( )
{
≤≤ 
return
≥≥ %
CrearResultadoOperacion
≥≥ .
(
≥≥. /
true
≥≥/ 3
)
≥≥3 4
;
≥≥4 5
}
¥¥ 
if
∂∂ 
(
∂∂ 
valorNormalizado
∂∂  
.
∂∂  !
Length
∂∂! '
>
∂∂( )!
LongitudMaximaTexto
∂∂* =
)
∂∂= >
{
∑∑ 
valorNormalizado
∏∏  
=
∏∏! "
null
∏∏# '
;
∏∏' (
return
ππ %
CrearResultadoOperacion
ππ .
(
ππ. /
false
∫∫ 
,
∫∫ 
string
ªª 
.
ªª 
Format
ªª !
(
ªª! "
$str
ªª" [
,
ªª[ \
nombre
ºº 
,
ºº !
LongitudMaximaTexto
ºº  3
)
ºº3 4
)
ºº4 5
;
ºº5 6
}
ΩΩ 
return
øø %
CrearResultadoOperacion
øø *
(
øø* +
true
øø+ /
)
øø/ 0
;
øø0 1
}
¿¿ 	
private
¬¬ 
static
¬¬ #
ResultadoOperacionDTO
¬¬ ,%
CrearResultadoOperacion
¬¬- D
(
¬¬D E
bool
¬¬E I
exitoso
¬¬J Q
,
¬¬Q R
string
√√ 
mensaje
√√ 
=
√√ 
null
√√ !
)
√√! "
{
ƒƒ 	
return
≈≈ 
new
≈≈ #
ResultadoOperacionDTO
≈≈ ,
{
∆∆ 
OperacionExitosa
««  
=
««! "
exitoso
««# *
,
««* +
Mensaje
»» 
=
»» 
mensaje
»» !
}
…… 
;
…… 
}
   	
}
ÀÀ 
}ÃÃ Ï~
vC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\InicioSesionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class !
InicioSesionManejador &
:' ("
IInicioSesionManejador) ?
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (!
InicioSesionManejador( =
)= >
)> ?
;? @
private 
const 
int #
LimiteReportesParaBaneo 1
=2 3
$num4 5
;5 6
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
public !
InicioSesionManejador $
($ %
)% &
:' (
this) -
(- .
new. 1
ContextoFactoria2 B
(B C
)C D
)D E
{ 	
}   	
public"" !
InicioSesionManejador"" $
(""$ %
IContextoFactoria""% 6
contextoFactory""7 F
)""F G
{## 	
_contextoFactory$$ 
=$$ 
contextoFactory$$ .
??$$/ 1
throw%% 
new%% !
ArgumentNullException%% /
(%%/ 0
nameof%%0 6
(%%6 7
contextoFactory%%7 F
)%%F G
)%%G H
;%%H I
}&& 	
public-- $
ResultadoInicioSesionDTO-- '
IniciarSesion--( 5
(--5 6'
CredencialesInicioSesionDTO.. '
credenciales..( 4
)..4 5
{// 	
if00 
(00 
credenciales00 
==00 
null00  $
)00$ %
{11 
throw22 
new22 !
ArgumentNullException22 /
(22/ 0
nameof220 6
(226 7
credenciales227 C
)22C D
)22D E
;22E F
}33 
if55 
(55 
!55 "
SonCredencialesValidas55 '
(55' (
credenciales55( 4
)554 5
)555 6
{66 
_logger77 
.77 
Warn77 
(77 
$str77 Y
)77Y Z
;77Z [
return88 (
CrearRespuestaDatosInvalidos88 3
(883 4
)884 5
;885 6
}99 
try;; 
{<< 
using== 
(== 
var== 
contexto== #
===$ %
_contextoFactory==& 6
.==6 7
CrearContexto==7 D
(==D E
)==E F
)==F G
{>> 
return?? !
ProcesarAutenticacion?? 0
(??0 1
contexto??1 9
,??9 :
credenciales??; G
)??G H
;??H I
}@@ 
}AA 
catchBB 
(BB 
EntityExceptionBB "
exBB# %
)BB% &
{CC 
_loggerDD 
.DD 
ErrorDD 
(DD 
$strDD S
,DDS T
exDDU W
)DDW X
;DDX Y
returnEE 
CrearErrorGenericoEE )
(EE) *
)EE* +
;EE+ ,
}FF 
catchGG 
(GG 
DataExceptionGG  
exGG! #
)GG# $
{HH 
_loggerII 
.II 
ErrorII 
(II 
$strII K
,IIK L
exIIM O
)IIO P
;IIP Q
returnJJ 
CrearErrorGenericoJJ )
(JJ) *
)JJ* +
;JJ+ ,
}KK 
catchLL 
(LL %
InvalidOperationExceptionLL ,
exLL- /
)LL/ 0
{MM 
_loggerNN 
.NN 
ErrorNN 
(NN 
$strNN O
,NNO P
exNNQ S
)NNS T
;NNT U
returnOO 
CrearErrorGenericoOO )
(OO) *
)OO* +
;OO+ ,
}PP 
}QQ 	
privateSS 
boolSS "
SonCredencialesValidasSS +
(SS+ ,'
CredencialesInicioSesionDTOSS, G
credencialesSSH T
)SST U
{TT 	
stringUU 
identificadorUU  
=UU! "!
EntradaComunValidadorUU# 8
.UU8 9
NormalizarTextoUU9 H
(UUH I
credencialesVV 
.VV 
IdentificadorVV *
)VV* +
;VV+ ,
stringXX 

contrasenaXX 
=XX 
credencialesXX  ,
.XX, -

ContrasenaXX- 7
?XX7 8
.XX8 9
TrimXX9 =
(XX= >
)XX> ?
;XX? @
ifZZ 
(ZZ 
!ZZ !
EntradaComunValidadorZZ &
.ZZ& '
EsLongitudValidaZZ' 7
(ZZ7 8
identificadorZZ8 E
)ZZE F
)ZZF G
{[[ 
return\\ 
false\\ 
;\\ 
}]] 
if__ 
(__ 
string__ 
.__ 
IsNullOrWhiteSpace__ )
(__) *

contrasena__* 4
)__4 5
)__5 6
{`` 
returnaa 
falseaa 
;aa 
}bb 
returndd 
truedd 
;dd 
}ee 	
privategg $
ResultadoInicioSesionDTOgg ((
CrearRespuestaDatosInvalidosgg) E
(ggE F
)ggF G
{hh 	
returnii 
newii $
ResultadoInicioSesionDTOii /
{jj 
CuentaEncontradakk  
=kk! "
truekk# '
,kk' (
Mensajell 
=ll 
MensajesErrorll '
.ll' (
Clientell( /
.ll/ 0!
CredencialesInvalidasll0 E
}mm 
;mm 
}nn 	
privatepp $
ResultadoInicioSesionDTOpp (!
ProcesarAutenticacionpp) >
(pp> ?#
BaseDatosPruebaEntitiesqq #
contextoqq$ ,
,qq, -'
CredencialesInicioSesionDTOrr '
credencialesrr( 4
)rr4 5
{ss 	
stringtt 
identificadortt  
=tt! "!
EntradaComunValidadortt# 8
.tt8 9
NormalizarTextott9 H
(ttH I
credencialesuu 
.uu 
Identificadoruu *
)uu* +
;uu+ ,
Usuarioww 
usuarioww 
;ww 
tryxx 
{yy 
usuariozz 
=zz '
ObtenerUsuarioPorCredencialzz 5
(zz5 6
contextozz6 >
,zz> ?
identificadorzz@ M
)zzM N
;zzN O
}{{ 
catch|| 
{}} 
_logger~~ 
.~~ 
Warn~~ 
(~~ 
$str~~ O
)~~O P
;~~P Q
return 
new $
ResultadoInicioSesionDTO 3
{
ÄÄ 
CuentaEncontrada
ÅÅ $
=
ÅÅ% &
false
ÅÅ' ,
,
ÅÅ, -
Mensaje
ÇÇ 
=
ÇÇ 
MensajesError
ÇÇ +
.
ÇÇ+ ,
Cliente
ÇÇ, 3
.
ÇÇ3 4%
CredencialesIncorrectas
ÇÇ4 K
}
ÉÉ 
;
ÉÉ 
}
ÑÑ 
if
ÜÜ 
(
ÜÜ 
!
ÜÜ !
VerificarContrasena
ÜÜ $
(
ÜÜ$ %
credenciales
ÜÜ% 1
.
ÜÜ1 2

Contrasena
ÜÜ2 <
,
ÜÜ< =
usuario
ÜÜ> E
.
ÜÜE F

Contrasena
ÜÜF P
)
ÜÜP Q
)
ÜÜQ R
{
áá 
_logger
àà 
.
àà 
Warn
àà 
(
àà 
$str
àà O
)
ààO P
;
ààP Q
return
ää 
new
ää &
ResultadoInicioSesionDTO
ää 3
{
ãã "
ContrasenaIncorrecta
åå (
=
åå) *
true
åå+ /
,
åå/ 0
Mensaje
çç 
=
çç 
MensajesError
çç +
.
çç+ ,
Cliente
çç, 3
.
çç3 4%
CredencialesIncorrectas
çç4 K
}
éé 
;
éé 
}
èè 
if
ëë 
(
ëë *
UsuarioAlcanzoLimiteReportes
ëë ,
(
ëë, -
contexto
ëë- 5
,
ëë5 6
usuario
ëë7 >
.
ëë> ?
	idUsuario
ëë? H
)
ëëH I
)
ëëI J
{
íí 
_logger
ìì 
.
ìì 

WarnFormat
ìì "
(
ìì" #
$str
îî R
,
îîR S
usuario
ïï 
.
ïï 
	idUsuario
ïï %
)
ïï% &
;
ïï& '
return
óó 
new
óó &
ResultadoInicioSesionDTO
óó 3
{
òò !
InicioSesionExitoso
ôô '
=
ôô( )
false
ôô* /
,
ôô/ 0
CuentaEncontrada
öö $
=
öö% &
true
öö' +
,
öö+ ,
Mensaje
õõ 
=
õõ 
MensajesError
õõ +
.
õõ+ ,
Cliente
õõ, 3
.
õõ3 4'
UsuarioBaneadoPorReportes
õõ4 M
}
úú 
;
úú 
}
ùù 
_logger
üü 
.
üü 

InfoFormat
üü 
(
üü 
$str
†† C
,
††C D
usuario
°° 
.
°° 
	idUsuario
°° !
)
°°! "
;
°°" #
return
££ 
new
££ &
ResultadoInicioSesionDTO
££ /
{
§§ !
InicioSesionExitoso
•• #
=
••$ %
true
••& *
,
••* +
Usuario
¶¶ 
=
¶¶ 
MapearUsuario
¶¶ '
(
¶¶' (
usuario
¶¶( /
)
¶¶/ 0
}
ßß 
;
ßß 
}
®® 	
private
™™ 
bool
™™ !
VerificarContrasena
™™ (
(
™™( )
string
™™) /
contrasenaEntrada
™™0 A
,
™™A B
string
™™C I
hashAlmacenado
™™J X
)
™™X Y
{
´´ 	
if
¨¨ 
(
¨¨ 
string
¨¨ 
.
¨¨  
IsNullOrWhiteSpace
¨¨ )
(
¨¨) *
contrasenaEntrada
¨¨* ;
)
¨¨; <
||
¨¨= ?
string
≠≠ 
.
≠≠  
IsNullOrWhiteSpace
≠≠ )
(
≠≠) *
hashAlmacenado
≠≠* 8
)
≠≠8 9
)
≠≠9 :
{
ÆÆ 
return
ØØ 
false
ØØ 
;
ØØ 
}
∞∞ 
return
≤≤ 
	BCryptNet
≤≤ 
.
≤≤ 
Verify
≤≤ #
(
≤≤# $
contrasenaEntrada
≤≤$ 5
.
≤≤5 6
Trim
≤≤6 :
(
≤≤: ;
)
≤≤; <
,
≤≤< =
hashAlmacenado
≤≤> L
)
≤≤L M
;
≤≤M N
}
≥≥ 	
private
µµ 
bool
µµ *
UsuarioAlcanzoLimiteReportes
µµ 1
(
µµ1 2%
BaseDatosPruebaEntities
µµ2 I
contexto
µµJ R
,
µµR S
int
µµT W
	usuarioId
µµX a
)
µµa b
{
∂∂ 	!
IReporteRepositorio
∑∑  
reporteRepositorio
∑∑  2
=
∑∑3 4
new
∑∑5 8 
ReporteRepositorio
∑∑9 K
(
∑∑K L
contexto
∑∑L T
)
∑∑T U
;
∑∑U V
int
∏∏ 
totalReportes
∏∏ 
=
∏∏  
reporteRepositorio
∏∏  2
.
∏∏2 3%
ContarReportesRecibidos
∏∏3 J
(
∏∏J K
	usuarioId
∏∏K T
)
∏∏T U
;
∏∏U V
return
∫∫ 
totalReportes
∫∫  
>=
∫∫! #%
LimiteReportesParaBaneo
∫∫$ ;
;
∫∫; <
}
ªª 	
private
ΩΩ 
static
ΩΩ &
ResultadoInicioSesionDTO
ΩΩ / 
CrearErrorGenerico
ΩΩ0 B
(
ΩΩB C
)
ΩΩC D
{
ææ 	
return
øø 
new
øø &
ResultadoInicioSesionDTO
øø /
{
¿¿ !
InicioSesionExitoso
¡¡ #
=
¡¡$ %
false
¡¡& +
,
¡¡+ ,
Mensaje
¬¬ 
=
¬¬ 
MensajesError
¬¬ '
.
¬¬' (
Cliente
¬¬( /
.
¬¬/ 0
ErrorInicioSesion
¬¬0 A
}
√√ 
;
√√ 
}
ƒƒ 	
private
∆∆ 
Usuario
∆∆ )
ObtenerUsuarioPorCredencial
∆∆ 3
(
∆∆3 4%
BaseDatosPruebaEntities
«« #
contexto
««$ ,
,
««, -
string
»» 
identificador
»»  
)
»»  !
{
…… 	
try
   
{
ÀÀ 
return
ÃÃ $
BuscarPorNombreUsuario
ÃÃ -
(
ÃÃ- .
contexto
ÃÃ. 6
,
ÃÃ6 7
identificador
ÃÃ8 E
)
ÃÃE F
;
ÃÃF G
}
ÕÕ 
catch
ŒŒ 
(
ŒŒ "
KeyNotFoundException
ŒŒ '
)
ŒŒ' (
{
œœ 
return
–– (
BuscarPorCorreoElectronico
–– 1
(
––1 2
contexto
––2 :
,
––: ;
identificador
––< I
)
––I J
;
––J K
}
—— 
}
““ 	
private
‘‘ 
Usuario
‘‘ $
BuscarPorNombreUsuario
‘‘ .
(
‘‘. /%
BaseDatosPruebaEntities
’’ #
contexto
’’$ ,
,
’’, -
string
÷÷ 
nombreUsuario
÷÷  
)
÷÷  !
{
◊◊ 	!
IUsuarioRepositorio
ÿÿ 
repositorio
ÿÿ  +
=
ÿÿ, -
new
ÿÿ. 1 
UsuarioRepositorio
ÿÿ2 D
(
ÿÿD E
contexto
ÿÿE M
)
ÿÿM N
;
ÿÿN O
return
ŸŸ 
repositorio
ŸŸ 
.
ŸŸ %
ObtenerPorNombreUsuario
ŸŸ 6
(
ŸŸ6 7
nombreUsuario
ŸŸ7 D
)
ŸŸD E
;
ŸŸE F
}
⁄⁄ 	
private
‹‹ 
Usuario
‹‹ (
BuscarPorCorreoElectronico
‹‹ 2
(
‹‹2 3%
BaseDatosPruebaEntities
›› #
contexto
››$ ,
,
››, -
string
ﬁﬁ 
correo
ﬁﬁ 
)
ﬁﬁ 
{
ﬂﬂ 	!
IUsuarioRepositorio
‡‡ 
repositorio
‡‡  +
=
‡‡, -
new
‡‡. 1 
UsuarioRepositorio
‡‡2 D
(
‡‡D E
contexto
‡‡E M
)
‡‡M N
;
‡‡N O
var
·· 
usuario
·· 
=
·· 
repositorio
·· %
.
··% &
ObtenerPorCorreo
··& 6
(
··6 7
correo
··7 =
)
··= >
;
··> ?
if
„„ 
(
„„ 
usuario
„„ 
==
„„ 
null
„„ 
)
„„  
{
‰‰ 
throw
ÂÂ 
new
ÂÂ "
KeyNotFoundException
ÂÂ .
(
ÂÂ. /
$str
ÂÂ/ R
)
ÂÂR S
;
ÂÂS T
}
ÊÊ 
return
ÁÁ 
usuario
ÁÁ 
;
ÁÁ 
}
ËË 	
private
ÍÍ 
static
ÍÍ 

UsuarioDTO
ÍÍ !
MapearUsuario
ÍÍ" /
(
ÍÍ/ 0
Usuario
ÍÍ0 7
usuario
ÍÍ8 ?
)
ÍÍ? @
{
ÎÎ 	
Jugador
ÏÏ 
jugador
ÏÏ 
=
ÏÏ 
usuario
ÏÏ %
.
ÏÏ% &
Jugador
ÏÏ& -
;
ÏÏ- .
return
ÓÓ 
new
ÓÓ 

UsuarioDTO
ÓÓ !
{
ÔÔ 
	UsuarioId
 
=
 
usuario
 #
.
# $
	idUsuario
$ -
,
- .
	JugadorId
ÒÒ 
=
ÒÒ 
jugador
ÒÒ #
?
ÒÒ# $
.
ÒÒ$ %
	idJugador
ÒÒ% .
??
ÒÒ/ 1
$num
ÒÒ2 3
,
ÒÒ3 4
NombreUsuario
ÚÚ 
=
ÚÚ 
usuario
ÚÚ  '
.
ÚÚ' (
Nombre_Usuario
ÚÚ( 6
,
ÚÚ6 7
Nombre
ÛÛ 
=
ÛÛ 
jugador
ÛÛ  
?
ÛÛ  !
.
ÛÛ! "
Nombre
ÛÛ" (
,
ÛÛ( )
Apellido
ÙÙ 
=
ÙÙ 
jugador
ÙÙ "
?
ÙÙ" #
.
ÙÙ# $
Apellido
ÙÙ$ ,
,
ÙÙ, -
Correo
ıı 
=
ıı 
jugador
ıı  
?
ıı  !
.
ıı! "
Correo
ıı" (
,
ıı( )
AvatarId
ˆˆ 
=
ˆˆ 
jugador
ˆˆ "
?
ˆˆ" #
.
ˆˆ# $
	Id_Avatar
ˆˆ$ -
??
ˆˆ. 0
$num
ˆˆ1 2
,
ˆˆ2 3
}
˜˜ 
;
˜˜ 
}
¯¯ 	
}
˘˘ 
}˙˙ ó˚
nC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\ChatManejador.cs
	namespace

 	%
PictionaryMusicalServidor


 #
.

# $
	Servicios

$ -
.

- .
	Servicios

. 7
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Multiple* 2
)2 3
]3 4
public 

class 
ChatManejador 
:  
IChatManejador! /
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
ChatManejadorK X
)X Y
)Y Z
;Z [
private 
static 
readonly 

Dictionary  *
<* +
string+ 1
,1 2
List3 7
<7 8
ClienteChat8 C
>C D
>D E
_clientesPorSalaF V
=W X
new 

Dictionary 
< 
string !
,! "
List# '
<' (
ClienteChat( 3
>3 4
>4 5
(5 6
StringComparer6 D
.D E
OrdinalIgnoreCaseE V
)V W
;W X
private 
static 
readonly 
object  &
_sincronizacion' 6
=7 8
new9 <
object= C
(C D
)D E
;E F
private 
readonly #
IValidadorNombreUsuario 0
_validadorUsuario1 B
;B C
public"" 
ChatManejador"" 
("" 
)"" 
:""  
this""! %
(""% &
new""& )"
ValidadorNombreUsuario""* @
(""@ A
)""A B
)""B C
{## 	
}$$ 	
public)) 
ChatManejador)) 
()) #
IValidadorNombreUsuario)) 4
validadorUsuario))5 E
)))E F
{** 	
_validadorUsuario++ 
=++ 
validadorUsuario++  0
??++1 3
throw,, 
new,, !
ArgumentNullException,, /
(,,/ 0
nameof,,0 6
(,,6 7
validadorUsuario,,7 G
),,G H
),,H I
;,,I J
}-- 	
public55 
void55 
UnirseChatSala55 "
(55" #
string55# )
idSala55* 0
,550 1
string552 8
nombreJugador559 F
)55F G
{66 	
try77 
{88  
ValidarEntradaUnirse99 $
(99$ %
idSala99% +
,99+ ,
nombreJugador99- :
)99: ;
;99; <
var;; 
callback;; 
=;; !
ObtenerCallbackActual;; 4
(;;4 5
);;5 6
;;;6 7
var<< 
idSalaNormalizado<< %
=<<& '
idSala<<( .
.<<. /
Trim<</ 3
(<<3 4
)<<4 5
;<<5 6
var== 
nombreNormalizado== %
===& '
nombreJugador==( 5
.==5 6
Trim==6 :
(==: ;
)==; <
;==< =
var?? 
clientesANotificar?? &
=??' ( 
GestionarIngresoSala??) =
(??= >
idSalaNormalizado@@ %
,@@% &
nombreNormalizadoAA %
,AA% &
callbackBB 
)BB 
;BB "
NotificarIngresoMasivoDD &
(DD& '
idSalaNormalizadoEE %
,EE% &
nombreNormalizadoFF %
,FF% &
clientesANotificarGG &
)GG& '
;GG' ("
ConfigurarEventosCanalII &
(II& '
idSalaNormalizadoII' 8
,II8 9
nombreNormalizadoII: K
)IIK L
;IIL M
}JJ 
catchKK 
(KK 
FaultExceptionKK !
)KK! "
{LL 
throwMM 
;MM 
}NN 
catchOO 
(OO 
ArgumentExceptionOO $
exOO% '
)OO' (
{PP 
_loggerQQ 
.QQ 
WarnQQ 
(QQ 
$strQQ A
,QQA B
exQQC E
)QQE F
;QQF G
throwRR 
newRR 
FaultExceptionRR (
(RR( )
exRR) +
.RR+ ,
MessageRR, 3
)RR3 4
;RR4 5
}SS 
catchTT 
(TT "
CommunicationExceptionTT )
exTT* ,
)TT, -
{UU 
_loggerVV 
.VV 
ErrorVV 
(VV 
$strVV H
,VVH I
exVVJ L
)VVL M
;VVM N
throwWW 
newWW 
FaultExceptionWW (
(WW( )
MensajesErrorWW) 6
.WW6 7
ClienteWW7 >
.WW> ?
ErrorInesperadoWW? N
)WWN O
;WWO P
}XX 
catchYY 
(YY 
TimeoutExceptionYY #
exYY$ &
)YY& '
{ZZ 
_logger[[ 
.[[ 
Error[[ 
([[ 
$str[[ K
,[[K L
ex[[M O
)[[O P
;[[P Q
throw\\ 
new\\ 
FaultException\\ (
(\\( )
MensajesError\\) 6
.\\6 7
Cliente\\7 >
.\\> ?
ErrorInesperado\\? N
)\\N O
;\\O P
}]] 
catch^^ 
(^^ #
ObjectDisposedException^^ *
ex^^+ -
)^^- .
{__ 
_logger`` 
.`` 
Error`` 
(`` 
$str`` C
,``C D
ex``E G
)``G H
;``H I
throwaa 
newaa 
FaultExceptionaa (
(aa( )
MensajesErroraa) 6
.aa6 7
Clienteaa7 >
.aa> ?
ErrorInesperadoaa? N
)aaN O
;aaO P
}bb 
}cc 	
publicll 
voidll 
EnviarMensajell !
(ll! "
stringll" (
idSalall) /
,ll/ 0
stringll1 7
mensajell8 ?
,ll? @
stringllA G
nombreJugadorllH U
)llU V
{mm 	
trynn 
{oo 
_validadorUsuariopp !
.pp! "
Validarpp" )
(pp) *
nombreJugadorpp* 7
,pp7 8
nameofpp9 ?
(pp? @
nombreJugadorpp@ M
)ppM N
)ppN O
;ppO P
ifrr 
(rr 
stringrr 
.rr 
IsNullOrWhiteSpacerr -
(rr- .
idSalarr. 4
)rr4 5
)rr5 6
{ss 
throwtt 
newtt 
FaultExceptiontt ,
(tt, -
MensajesErrortt- :
.tt: ;
Clientett; B
.ttB C!
CodigoSalaObligatoriottC X
)ttX Y
;ttY Z
}uu 
ifww 
(ww 
stringww 
.ww 
IsNullOrWhiteSpaceww -
(ww- .
mensajeww. 5
)ww5 6
)ww6 7
{xx 
returnyy 
;yy 
}zz 
var|| 
idSalaNormalizado|| %
=||& '
idSala||( .
.||. /
Trim||/ 3
(||3 4
)||4 5
;||5 6
var}} 
nombreNormalizado}} %
=}}& '
nombreJugador}}( 5
.}}5 6
Trim}}6 :
(}}: ;
)}}; <
;}}< =
var~~ 
mensajeNormalizado~~ &
=~~' (
mensaje~~) 0
.~~0 1
Trim~~1 5
(~~5 6
)~~6 7
;~~7 8$
NotificarMensajeATodos
ÄÄ &
(
ÄÄ& '
idSalaNormalizado
ÅÅ %
,
ÅÅ% &
nombreNormalizado
ÇÇ %
,
ÇÇ% & 
mensajeNormalizado
ÉÉ &
)
ÉÉ& '
;
ÉÉ' (
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
FaultException
ÖÖ !
)
ÖÖ! "
{
ÜÜ 
throw
áá 
;
áá 
}
àà 
catch
ââ 
(
ââ 
ArgumentException
ââ $
ex
ââ% '
)
ââ' (
{
ää 
_logger
ãã 
.
ãã 
Warn
ãã 
(
ãã 
$str
ãã A
,
ããA B
ex
ããC E
)
ããE F
;
ããF G
throw
åå 
new
åå 
FaultException
åå (
(
åå( )
ex
åå) +
.
åå+ ,
Message
åå, 3
)
åå3 4
;
åå4 5
}
çç 
catch
éé 
(
éé $
CommunicationException
éé )
ex
éé* ,
)
éé, -
{
èè 
_logger
êê 
.
êê 
Error
êê 
(
êê 
$str
êê P
,
êêP Q
ex
êêR T
)
êêT U
;
êêU V
throw
ëë 
new
ëë 
FaultException
ëë (
(
ëë( )
MensajesError
ëë) 6
.
ëë6 7
Cliente
ëë7 >
.
ëë> ?
ErrorInesperado
ëë? N
)
ëëN O
;
ëëO P
}
íí 
catch
ìì 
(
ìì 
TimeoutException
ìì #
ex
ìì$ &
)
ìì& '
{
îî 
_logger
ïï 
.
ïï 
Error
ïï 
(
ïï 
$str
ïï S
,
ïïS T
ex
ïïU W
)
ïïW X
;
ïïX Y
throw
ññ 
new
ññ 
FaultException
ññ (
(
ññ( )
MensajesError
ññ) 6
.
ññ6 7
Cliente
ññ7 >
.
ññ> ?
ErrorInesperado
ññ? N
)
ññN O
;
ññO P
}
óó 
catch
òò 
(
òò %
ObjectDisposedException
òò *
ex
òò+ -
)
òò- .
{
ôô 
_logger
öö 
.
öö 
Error
öö 
(
öö 
$str
öö K
,
ööK L
ex
ööM O
)
ööO P
;
ööP Q
throw
õõ 
new
õõ 
FaultException
õõ (
(
õõ( )
MensajesError
õõ) 6
.
õõ6 7
Cliente
õõ7 >
.
õõ> ?
ErrorInesperado
õõ? N
)
õõN O
;
õõO P
}
úú 
}
ùù 	
public
•• 
void
•• 
SalirChatSala
•• !
(
••! "
string
••" (
idSala
••) /
,
••/ 0
string
••1 7
nombreJugador
••8 E
)
••E F
{
¶¶ 	
try
ßß 
{
®® 
_validadorUsuario
©© !
.
©©! "
Validar
©©" )
(
©©) *
nombreJugador
©©* 7
,
©©7 8
nameof
©©9 ?
(
©©? @
nombreJugador
©©@ M
)
©©M N
)
©©N O
;
©©O P
if
´´ 
(
´´ 
string
´´ 
.
´´  
IsNullOrWhiteSpace
´´ -
(
´´- .
idSala
´´. 4
)
´´4 5
)
´´5 6
{
¨¨ 
throw
≠≠ 
new
≠≠ 
FaultException
≠≠ ,
(
≠≠, -
MensajesError
≠≠- :
.
≠≠: ;
Cliente
≠≠; B
.
≠≠B C#
CodigoSalaObligatorio
≠≠C X
)
≠≠X Y
;
≠≠Y Z
}
ÆÆ 
var
∞∞ 
idSalaNormalizado
∞∞ %
=
∞∞& '
idSala
∞∞( .
.
∞∞. /
Trim
∞∞/ 3
(
∞∞3 4
)
∞∞4 5
;
∞∞5 6
var
±± 
nombreNormalizado
±± %
=
±±& '
nombreJugador
±±( 5
.
±±5 6
Trim
±±6 :
(
±±: ;
)
±±; <
;
±±< =
RemoverCliente
≥≥ 
(
≥≥ 
idSalaNormalizado
≥≥ 0
,
≥≥0 1
nombreNormalizado
≥≥2 C
)
≥≥C D
;
≥≥D E
}
¥¥ 
catch
µµ 
(
µµ 
FaultException
µµ !
)
µµ! "
{
∂∂ 
throw
∑∑ 
;
∑∑ 
}
∏∏ 
catch
ππ 
(
ππ 
ArgumentException
ππ $
ex
ππ% '
)
ππ' (
{
∫∫ 
_logger
ªª 
.
ªª 
Warn
ªª 
(
ªª 
$str
ªª A
,
ªªA B
ex
ªªC E
)
ªªE F
;
ªªF G
throw
ºº 
new
ºº 
FaultException
ºº (
(
ºº( )
ex
ºº) +
.
ºº+ ,
Message
ºº, 3
)
ºº3 4
;
ºº4 5
}
ΩΩ 
catch
ææ 
(
ææ $
CommunicationException
ææ )
ex
ææ* ,
)
ææ, -
{
øø 
_logger
¿¿ 
.
¿¿ 
Error
¿¿ 
(
¿¿ 
$str
¿¿ H
,
¿¿H I
ex
¿¿J L
)
¿¿L M
;
¿¿M N
throw
¡¡ 
new
¡¡ 
FaultException
¡¡ (
(
¡¡( )
MensajesError
¡¡) 6
.
¡¡6 7
Cliente
¡¡7 >
.
¡¡> ?
ErrorInesperado
¡¡? N
)
¡¡N O
;
¡¡O P
}
¬¬ 
catch
√√ 
(
√√ 
TimeoutException
√√ #
ex
√√$ &
)
√√& '
{
ƒƒ 
_logger
≈≈ 
.
≈≈ 
Error
≈≈ 
(
≈≈ 
$str
≈≈ K
,
≈≈K L
ex
≈≈M O
)
≈≈O P
;
≈≈P Q
throw
∆∆ 
new
∆∆ 
FaultException
∆∆ (
(
∆∆( )
MensajesError
∆∆) 6
.
∆∆6 7
Cliente
∆∆7 >
.
∆∆> ?
ErrorInesperado
∆∆? N
)
∆∆N O
;
∆∆O P
}
«« 
catch
»» 
(
»» %
ObjectDisposedException
»» *
ex
»»+ -
)
»»- .
{
…… 
_logger
   
.
   
Error
   
(
   
$str
   C
,
  C D
ex
  E G
)
  G H
;
  H I
throw
ÀÀ 
new
ÀÀ 
FaultException
ÀÀ (
(
ÀÀ( )
MensajesError
ÀÀ) 6
.
ÀÀ6 7
Cliente
ÀÀ7 >
.
ÀÀ> ?
ErrorInesperado
ÀÀ? N
)
ÀÀN O
;
ÀÀO P
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ "
ValidarEntradaUnirse
œœ )
(
œœ) *
string
œœ* 0
idSala
œœ1 7
,
œœ7 8
string
œœ9 ?
nombreJugador
œœ@ M
)
œœM N
{
–– 	
_validadorUsuario
—— 
.
—— 
Validar
—— %
(
——% &
nombreJugador
——& 3
,
——3 4
nameof
——5 ;
(
——; <
nombreJugador
——< I
)
——I J
)
——J K
;
——K L
if
”” 
(
”” 
string
”” 
.
””  
IsNullOrWhiteSpace
”” )
(
””) *
idSala
””* 0
)
””0 1
)
””1 2
{
‘‘ 
throw
’’ 
new
’’ 
FaultException
’’ (
(
’’( )
MensajesError
’’) 6
.
’’6 7
Cliente
’’7 >
.
’’> ?#
CodigoSalaObligatorio
’’? T
)
’’T U
;
’’U V
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
List
ŸŸ 
<
ŸŸ 
ClienteChat
ŸŸ  
>
ŸŸ  !"
GestionarIngresoSala
ŸŸ" 6
(
ŸŸ6 7
string
⁄⁄ 
idSala
⁄⁄ 
,
⁄⁄ 
string
€€ 
nombreJugador
€€  
,
€€  !$
IChatManejadorCallback
‹‹ "
callback
‹‹# +
)
‹‹+ ,
{
›› 	
lock
ﬁﬁ 
(
ﬁﬁ 
_sincronizacion
ﬁﬁ !
)
ﬁﬁ! "
{
ﬂﬂ 
if
‡‡ 
(
‡‡ 
!
‡‡ 
_clientesPorSala
‡‡ %
.
‡‡% &
TryGetValue
‡‡& 1
(
‡‡1 2
idSala
‡‡2 8
,
‡‡8 9
out
‡‡: =
var
‡‡> A
clientesSala
‡‡B N
)
‡‡N O
)
‡‡O P
{
·· 
clientesSala
‚‚  
=
‚‚! "
new
‚‚# &
List
‚‚' +
<
‚‚+ ,
ClienteChat
‚‚, 7
>
‚‚7 8
(
‚‚8 9
)
‚‚9 :
;
‚‚: ;
_clientesPorSala
„„ $
[
„„$ %
idSala
„„% +
]
„„+ ,
=
„„- .
clientesSala
„„/ ;
;
„„; <
}
‰‰ 
var
ÊÊ 
clienteExistente
ÊÊ $
=
ÊÊ% &
clientesSala
ÊÊ' 3
.
ÊÊ3 4
Find
ÊÊ4 8
(
ÊÊ8 9
c
ÊÊ9 :
=>
ÊÊ; =
string
ÁÁ 
.
ÁÁ 
Equals
ÁÁ !
(
ÁÁ! "
c
ËË 
.
ËË 
NombreJugador
ËË '
,
ËË' (
nombreJugador
ÈÈ %
,
ÈÈ% &
StringComparison
ÍÍ (
.
ÍÍ( )
OrdinalIgnoreCase
ÍÍ) :
)
ÍÍ: ;
)
ÍÍ; <
;
ÍÍ< =
if
ÏÏ 
(
ÏÏ 
clienteExistente
ÏÏ $
!=
ÏÏ% '
null
ÏÏ( ,
)
ÏÏ, -
{
ÌÌ 
clienteExistente
ÓÓ $
.
ÓÓ$ %
Callback
ÓÓ% -
=
ÓÓ. /
callback
ÓÓ0 8
;
ÓÓ8 9
}
ÔÔ 
else
 
{
ÒÒ 
clientesSala
ÚÚ  
.
ÚÚ  !
Add
ÚÚ! $
(
ÚÚ$ %
new
ÚÚ% (
ClienteChat
ÚÚ) 4
(
ÚÚ4 5
nombreJugador
ÚÚ5 B
,
ÚÚB C
callback
ÚÚD L
)
ÚÚL M
)
ÚÚM N
;
ÚÚN O
}
ÛÛ 
return
ıı 
clientesSala
ıı #
.
ˆˆ 
Where
ˆˆ 
(
ˆˆ 
c
ˆˆ 
=>
ˆˆ 
!
ˆˆ  !
string
ˆˆ! '
.
ˆˆ' (
Equals
ˆˆ( .
(
ˆˆ. /
c
˜˜ 
.
˜˜ 
NombreJugador
˜˜ '
,
˜˜' (
nombreJugador
¯¯ %
,
¯¯% &
StringComparison
˘˘ (
.
˘˘( )
OrdinalIgnoreCase
˘˘) :
)
˘˘: ;
)
˘˘; <
.
˙˙ 
ToList
˙˙ 
(
˙˙ 
)
˙˙ 
;
˙˙ 
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ $
NotificarIngresoMasivo
˛˛ +
(
˛˛+ ,
string
ˇˇ 
idSala
ˇˇ 
,
ˇˇ 
string
ÄÄ 
nombreJugador
ÄÄ  
,
ÄÄ  !
List
ÅÅ 
<
ÅÅ 
ClienteChat
ÅÅ 
>
ÅÅ 
destinatarios
ÅÅ +
)
ÅÅ+ ,
{
ÇÇ 	
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
cliente
ÉÉ  
in
ÉÉ! #
destinatarios
ÉÉ$ 1
)
ÉÉ1 2
{
ÑÑ (
EjecutarNotificacionSegura
ÖÖ *
(
ÖÖ* +
idSala
ÜÜ 
,
ÜÜ 
cliente
áá 
,
áá 
cb
àà 
=>
àà 
cb
àà 
.
àà #
NotificarJugadorUnido
àà 2
(
àà2 3
nombreJugador
àà3 @
)
àà@ A
)
ààA B
;
ààB C
}
ââ 
}
ää 	
private
åå 
void
åå 
RemoverCliente
åå #
(
åå# $
string
åå$ *
idSala
åå+ 1
,
åå1 2
string
åå3 9
nombreJugador
åå: G
)
ååG H
{
çç 	
var
éé  
clientesANotificar
éé "
=
éé# $ 
ProcesarSalidaSala
éé% 7
(
éé7 8
idSala
éé8 >
,
éé> ?
nombreJugador
éé@ M
)
ééM N
;
ééN O
if
êê 
(
êê  
clientesANotificar
êê "
!=
êê# %
null
êê& *
&&
êê+ - 
clientesANotificar
êê. @
.
êê@ A
Count
êêA F
>
êêG H
$num
êêI J
)
êêJ K
{
ëë #
NotificarSalidaMasiva
íí %
(
íí% &
idSala
íí& ,
,
íí, -
nombreJugador
íí. ;
,
íí; < 
clientesANotificar
íí= O
)
ííO P
;
ííP Q
}
ìì 
}
îî 	
private
ññ 
List
ññ 
<
ññ 
ClienteChat
ññ  
>
ññ  ! 
ProcesarSalidaSala
ññ" 4
(
ññ4 5
string
ññ5 ;
idSala
ññ< B
,
ññB C
string
ññD J
nombreJugador
ññK X
)
ññX Y
{
óó 	
lock
òò 
(
òò 
_sincronizacion
òò !
)
òò! "
{
ôô 
if
öö 
(
öö 
!
öö 
_clientesPorSala
öö %
.
öö% &
TryGetValue
öö& 1
(
öö1 2
idSala
öö2 8
,
öö8 9
out
öö: =
var
öö> A
clientesSala
ööB N
)
ööN O
)
ööO P
{
õõ 
return
úú 
new
úú 
List
úú #
<
úú# $
ClienteChat
úú$ /
>
úú/ 0
(
úú0 1
)
úú1 2
;
úú2 3
}
ùù 
var
üü 
clienteRemovido
üü #
=
üü$ %
clientesSala
üü& 2
.
üü2 3
	RemoveAll
üü3 <
(
üü< =
c
üü= >
=>
üü? A
string
†† 
.
†† 
Equals
†† !
(
††! "
c
°° 
.
°° 
NombreJugador
°° '
,
°°' (
nombreJugador
¢¢ %
,
¢¢% &
StringComparison
££ (
.
££( )
OrdinalIgnoreCase
££) :
)
££: ;
)
££; <
>
££= >
$num
££? @
;
££@ A
if
•• 
(
•• 
!
•• 
clienteRemovido
•• $
)
••$ %
{
¶¶ 
return
ßß 
new
ßß 
List
ßß #
<
ßß# $
ClienteChat
ßß$ /
>
ßß/ 0
(
ßß0 1
)
ßß1 2
;
ßß2 3
}
®® 
var
™™ 

remanentes
™™ 
=
™™  
clientesSala
™™! -
.
™™- .
ToList
™™. 4
(
™™4 5
)
™™5 6
;
™™6 7
if
¨¨ 
(
¨¨ 
clientesSala
¨¨  
.
¨¨  !
Count
¨¨! &
==
¨¨' )
$num
¨¨* +
)
¨¨+ ,
{
≠≠ 
_clientesPorSala
ÆÆ $
.
ÆÆ$ %
Remove
ÆÆ% +
(
ÆÆ+ ,
idSala
ÆÆ, 2
)
ÆÆ2 3
;
ÆÆ3 4
}
ØØ 
return
±± 

remanentes
±± !
;
±±! "
}
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ #
NotificarSalidaMasiva
µµ *
(
µµ* +
string
∂∂ 
idSala
∂∂ 
,
∂∂ 
string
∑∑ 
nombreJugador
∑∑  
,
∑∑  !
List
∏∏ 
<
∏∏ 
ClienteChat
∏∏ 
>
∏∏ 
destinatarios
∏∏ +
)
∏∏+ ,
{
ππ 	
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
cliente
∫∫  
in
∫∫! #
destinatarios
∫∫$ 1
)
∫∫1 2
{
ªª (
EjecutarNotificacionSegura
ºº *
(
ºº* +
idSala
ΩΩ 
,
ΩΩ 
cliente
ææ 
,
ææ 
cb
øø 
=>
øø 
cb
øø 
.
øø #
NotificarJugadorSalio
øø 2
(
øø2 3
nombreJugador
øø3 @
)
øø@ A
)
øøA B
;
øøB C
}
¿¿ 
}
¡¡ 	
private
√√ 
static
√√ $
IChatManejadorCallback
√√ -#
ObtenerCallbackActual
√√. C
(
√√C D
)
√√D E
{
ƒƒ 	
var
≈≈ 
contexto
≈≈ 
=
≈≈ 
OperationContext
≈≈ +
.
≈≈+ ,
Current
≈≈, 3
;
≈≈3 4
if
∆∆ 
(
∆∆ 
contexto
∆∆ 
==
∆∆ 
null
∆∆  
)
∆∆  !
{
«« 
throw
»» 
new
»» 
FaultException
»» (
(
»»( )
MensajesError
»») 6
.
»»6 7
Cliente
»»7 >
.
»»> ?$
ErrorContextoOperacion
»»? U
)
»»U V
;
»»V W
}
…… 
var
ÀÀ 
callback
ÀÀ 
=
ÀÀ 
contexto
ÀÀ #
.
ÀÀ# $ 
GetCallbackChannel
ÀÀ$ 6
<
ÀÀ6 7$
IChatManejadorCallback
ÀÀ7 M
>
ÀÀM N
(
ÀÀN O
)
ÀÀO P
;
ÀÀP Q
if
ÃÃ 
(
ÃÃ 
callback
ÃÃ 
==
ÃÃ 
null
ÃÃ  
)
ÃÃ  !
{
ÕÕ 
throw
ŒŒ 
new
ŒŒ 
FaultException
ŒŒ (
(
ŒŒ( )
MensajesError
ŒŒ) 6
.
ŒŒ6 7
Cliente
ŒŒ7 >
.
ŒŒ> ?"
ErrorObtenerCallback
ŒŒ? S
)
ŒŒS T
;
ŒŒT U
}
œœ 
return
—— 
callback
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ $
ConfigurarEventosCanal
‘‘ +
(
‘‘+ ,
string
‘‘, 2
idSala
‘‘3 9
,
‘‘9 :
string
‘‘; A
nombreJugador
‘‘B O
)
‘‘O P
{
’’ 	
var
÷÷ 
canal
÷÷ 
=
÷÷ 
OperationContext
÷÷ (
.
÷÷( )
Current
÷÷) 0
?
÷÷0 1
.
÷÷1 2
Channel
÷÷2 9
;
÷÷9 :
if
◊◊ 
(
◊◊ 
canal
◊◊ 
!=
◊◊ 
null
◊◊ 
)
◊◊ 
{
ÿÿ 
canal
ŸŸ 
.
ŸŸ 
Closed
ŸŸ 
+=
ŸŸ 
(
ŸŸ  !
_
ŸŸ! "
,
ŸŸ" #
__
ŸŸ$ &
)
ŸŸ& '
=>
ŸŸ( *
RemoverCliente
ŸŸ+ 9
(
ŸŸ9 :
idSala
ŸŸ: @
,
ŸŸ@ A
nombreJugador
ŸŸB O
)
ŸŸO P
;
ŸŸP Q
canal
⁄⁄ 
.
⁄⁄ 
Faulted
⁄⁄ 
+=
⁄⁄  
(
⁄⁄! "
_
⁄⁄" #
,
⁄⁄# $
__
⁄⁄% '
)
⁄⁄' (
=>
⁄⁄) +
RemoverCliente
⁄⁄, :
(
⁄⁄: ;
idSala
⁄⁄; A
,
⁄⁄A B
nombreJugador
⁄⁄C P
)
⁄⁄P Q
;
⁄⁄Q R
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ $
NotificarMensajeATodos
ﬁﬁ +
(
ﬁﬁ+ ,
string
ﬂﬂ 
idSala
ﬂﬂ 
,
ﬂﬂ 
string
‡‡ 
nombreJugador
‡‡  
,
‡‡  !
string
·· 
mensaje
·· 
)
·· 
{
‚‚ 	
List
„„ 
<
„„ 
ClienteChat
„„ 
>
„„  
clientesANotificar
„„ 0
;
„„0 1
lock
ÂÂ 
(
ÂÂ 
_sincronizacion
ÂÂ !
)
ÂÂ! "
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
_clientesPorSala
ÁÁ %
.
ÁÁ% &
TryGetValue
ÁÁ& 1
(
ÁÁ1 2
idSala
ÁÁ2 8
,
ÁÁ8 9
out
ÁÁ: =
var
ÁÁ> A
clientesSala
ÁÁB N
)
ÁÁN O
)
ÁÁO P
{
ËË 
return
ÈÈ 
;
ÈÈ 
}
ÍÍ  
clientesANotificar
ÏÏ "
=
ÏÏ# $
clientesSala
ÏÏ% 1
.
ÏÏ1 2
ToList
ÏÏ2 8
(
ÏÏ8 9
)
ÏÏ9 :
;
ÏÏ: ;
}
ÌÌ 
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
cliente
ÔÔ  
in
ÔÔ! # 
clientesANotificar
ÔÔ$ 6
)
ÔÔ6 7
{
 (
EjecutarNotificacionSegura
ÒÒ *
(
ÒÒ* +
idSala
ÚÚ 
,
ÚÚ 
cliente
ÛÛ 
,
ÛÛ 
callback
ÙÙ 
=>
ÙÙ 
callback
ÙÙ  (
.
ÙÙ( )
RecibirMensaje
ÙÙ) 7
(
ÙÙ7 8
nombreJugador
ÙÙ8 E
,
ÙÙE F
mensaje
ÙÙG N
)
ÙÙN O
)
ÙÙO P
;
ÙÙP Q
}
ıı 
}
ˆˆ 	
private
¯¯ 
void
¯¯ (
EjecutarNotificacionSegura
¯¯ /
(
¯¯/ 0
string
˘˘ 
idSala
˘˘ 
,
˘˘ 
ClienteChat
˙˙ 
cliente
˙˙ 
,
˙˙  
Action
˚˚ 
<
˚˚ $
IChatManejadorCallback
˚˚ )
>
˚˚) *
accion
˚˚+ 1
)
˚˚1 2
{
¸¸ 	
try
˝˝ 
{
˛˛ 
accion
ˇˇ 
(
ˇˇ 
cliente
ˇˇ 
.
ˇˇ 
Callback
ˇˇ '
)
ˇˇ' (
;
ˇˇ( )
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ $
CommunicationException
ÅÅ )
ex
ÅÅ* ,
)
ÅÅ, -
{
ÇÇ 
_logger
ÉÉ 
.
ÉÉ 
Warn
ÉÉ 
(
ÉÉ 
$str
ÉÉ V
,
ÉÉV W
ex
ÉÉX Z
)
ÉÉZ [
;
ÉÉ[ \(
RemoverClienteSinNotificar
ÑÑ *
(
ÑÑ* +
idSala
ÑÑ+ 1
,
ÑÑ1 2
cliente
ÑÑ3 :
.
ÑÑ: ;
NombreJugador
ÑÑ; H
)
ÑÑH I
;
ÑÑI J
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
TimeoutException
ÜÜ #
ex
ÜÜ$ &
)
ÜÜ& '
{
áá 
_logger
àà 
.
àà 
Warn
àà 
(
àà 
$str
àà Q
,
ààQ R
ex
ààS U
)
ààU V
;
ààV W(
RemoverClienteSinNotificar
ââ *
(
ââ* +
idSala
ââ+ 1
,
ââ1 2
cliente
ââ3 :
.
ââ: ;
NombreJugador
ââ; H
)
ââH I
;
ââI J
}
ää 
catch
ãã 
(
ãã '
InvalidOperationException
ãã ,
ex
ãã- /
)
ãã/ 0
{
åå 
_logger
çç 
.
çç 
Warn
çç 
(
çç 
$str
éé K
,
ééK L
ex
èè 
)
èè 
;
èè (
RemoverClienteSinNotificar
êê *
(
êê* +
idSala
êê+ 1
,
êê1 2
cliente
êê3 :
.
êê: ;
NombreJugador
êê; H
)
êêH I
;
êêI J
}
ëë 
}
íí 	
private
îî 
void
îî (
RemoverClienteSinNotificar
îî /
(
îî/ 0
string
îî0 6
idSala
îî7 =
,
îî= >
string
îî? E
nombreJugador
îîF S
)
îîS T
{
ïï 	
lock
ññ 
(
ññ 
_sincronizacion
ññ !
)
ññ! "
{
óó 
if
òò 
(
òò 
_clientesPorSala
òò $
.
òò$ %
TryGetValue
òò% 0
(
òò0 1
idSala
òò1 7
,
òò7 8
out
òò9 <
var
òò= @
clientesSala
òòA M
)
òòM N
)
òòN O
{
ôô 
clientesSala
öö  
.
öö  !
	RemoveAll
öö! *
(
öö* +
c
öö+ ,
=>
öö- /
string
õõ 
.
õõ 
Equals
õõ %
(
õõ% &
c
úú 
.
úú 
NombreJugador
úú +
,
úú+ ,
nombreJugador
ùù )
,
ùù) *
StringComparison
ûû ,
.
ûû, -
OrdinalIgnoreCase
ûû- >
)
ûû> ?
)
ûû? @
;
ûû@ A
if
†† 
(
†† 
clientesSala
†† $
.
††$ %
Count
††% *
==
††+ -
$num
††. /
)
††/ 0
{
°° 
_clientesPorSala
¢¢ (
.
¢¢( )
Remove
¢¢) /
(
¢¢/ 0
idSala
¢¢0 6
)
¢¢6 7
;
¢¢7 8
}
££ 
}
§§ 
}
•• 
}
¶¶ 	
private
´´ 
sealed
´´ 
class
´´ 
ClienteChat
´´ (
{
¨¨ 	
public
≠≠ 
ClienteChat
≠≠ 
(
≠≠ 
string
≠≠ %
nombreJugador
≠≠& 3
,
≠≠3 4$
IChatManejadorCallback
≠≠5 K
callback
≠≠L T
)
≠≠T U
{
ÆÆ 
NombreJugador
ØØ 
=
ØØ 
nombreJugador
ØØ  -
;
ØØ- .
Callback
∞∞ 
=
∞∞ 
callback
∞∞ #
;
∞∞# $
}
±± 
public
≥≥ 
string
≥≥ 
NombreJugador
≥≥ '
{
≥≥( )
get
≥≥* -
;
≥≥- .
}
≥≥/ 0
public
¥¥ $
IChatManejadorCallback
¥¥ )
Callback
¥¥* 2
{
¥¥3 4
get
¥¥5 8
;
¥¥8 9
set
¥¥: =
;
¥¥= >
}
¥¥? @
}
µµ 	
}
∂∂ 
}∑∑ üÅ
yC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Constantes\MensajesError.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Constantes8 B
{ 
internal 
static 
class 
MensajesError '
{ 
public 
static 
class 
Cliente #
{ 	
public 
const 
string 
ErrorInesperado  /
=0 1
$str2 o
;o p
public 
const 
string 
OperacionExitosa  0
=1 2
$str3 \
;\ ]
public 
const 
string 
ErrorCrearReporte  1
=2 3
$str4 Z
;Z [
public 
const 
string 
ReporteRegistrado  1
=2 3
$str4 T
;T U
public 
const 
string 
ReporteDuplicado  0
=1 2
$str3 U
;U V
public 
const 
string $
ReporteMotivoObligatorio  8
=9 :
$str; b
;b c
public 
const 
string 
ReporteMismoUsuario  3
=4 5
$str6 X
;X Y
public 
const 
string !
ReporteMotivoLongitud  5
=6 7
$str8 o
;o p
public 
const 
string 
DatosInvalidos  .
=/ 0
$str	1 Ä
;
Ä Å
public 
const 
string !
CredencialesInvalidas  5
=6 7
$str8 i
;i j
public 
const 
string #
CredencialesIncorrectas  7
=8 9
$str: ]
;] ^
public 
const 
string 
UsuarioNoEncontrado  3
=4 5
$str6 _
;_ `
public 
const 
string !
UsuariosNoEncontrados  5
=6 7
$str8 m
;m n
public 
const 
string 
JugadorNoEncontrado  3
=4 5
$str6 b
;b c
public   
const   
string   *
UsuariosEspecificadosNoExisten    >
=  ? @
$str  A r
;  r s
public!! 
const!! 
string!! 
JugadorNoAsociado!!  1
=!!2 3
$str!!4 l
;!!l m
public"" 
const"" 
string"" 
CuentaNoVerificada""  2
=""3 4
$str""5 w
;""w x
public## 
const## 
string## 
CuentaNoEncontrada##  2
=##3 4
$str##5 n
;##n o
public$$ 
const$$ 
string$$ 
AvatarInvalido$$  .
=$$/ 0
$str$$1 W
;$$W X
public&& 
const&& 
string&&  
ErrorRegistrarCuenta&&  4
=&&5 6
$str&&7 }
;&&} ~
public'' 
const'' 
string'' 
ErrorInicioSesion''  1
=''2 3
$str''4 s
;''s t
public(( 
const(( 
string(( #
UsuarioRegistroInvalido((  7
=((8 9
$str	((: Ä
;
((Ä Å
public)) 
const)) 
string)) "
NombreRegistroInvalido))  6
=))7 8
$str))9 t
;))t u
public** 
const** 
string** $
ApellidoRegistroInvalido**  8
=**9 :
$str**; x
;**x y
public++ 
const++ 
string++ "
CorreoRegistroInvalido++  6
=++7 8
$str	++9 û
;
++û ü
public,, 
const,, 
string,, &
ContrasenaRegistroInvalida,,  :
=,,; <
$str	,,= Ø
;
,,Ø ∞
public.. 
const.. 
string.. 
ErrorObtenerPerfil..  2
=..3 4
$str..5 h
;..h i
public// 
const// 
string// !
ErrorActualizarPerfil//  5
=//6 7
$str//8 }
;//} ~
public00 
const00 
string00 "
PerfilActualizadoExito00  6
=007 8
$str009 \
;00\ ]
public22 
const22 
string22 %
ErrorRecuperarSolicitudes22  9
=22: ;
$str22< r
;22r s
public33 
const33 
string33 #
ErrorAlmacenarSolicitud33  7
=338 9
$str33: j
;33j k
public44 
const44 
string44 $
ErrorActualizarSolicitud44  8
=449 :
$str44; o
;44o p
public55 
const55 
string55  
ErrorEliminarAmistad55  4
=555 6
$str557 h
;55h i
public66 
const66 
string66 %
ErrorRecuperarListaAmigos66  9
=66: ;
$str66< j
;66j k
public77 
const77 
string77 "
ErrorSuscripcionAmigos77  6
=777 8
$str779 v
;77v w
public88 
const88 
string88 #
ErrorNotificarSolicitud88  7
=888 9
$str	88: Å
;
88Å Ç
public99 
const99 
string99 %
ErrorNotificarEliminacion99  9
=99: ;
$str	99< Ä
;
99Ä Å
public:: 
const:: 
string:: (
SolicitudAmistadMismoUsuario::  <
=::= >
$str::? |
;::| }
public;; 
const;; 
string;; $
RelacionAmistadExistente;;  8
=;;9 :
$str;;; ~
;;;~ 
public<< 
const<< 
string<< $
SolicitudAmistadNoExiste<<  8
=<<9 :
$str<<; s
;<<s t
public== 
const== 
string== !
ErrorAceptarSolicitud==  5
===6 7
$str==8 i
;==i j
public>> 
const>> 
string>> &
SolicitudAmistadYaAceptada>>  :
=>>; <
$str>>= x
;>>x y
public?? 
const?? 
string?? #
RelacionAmistadNoExiste??  7
=??8 9
$str??: q
;??q r
publicAA 
constAA 
stringAA  
ErrorRecuperarCuentaAA  4
=AA5 6
$strAA7 k
;AAk l
publicBB 
constBB 
stringBB 
ErrorReenviarCodigoBB  3
=BB4 5
$strBB6 j
;BBj k
publicCC 
constCC 
stringCC  
ErrorConfirmarCodigoCC  4
=CC5 6
$strCC7 l
;CCl m
publicDD 
constDD 
stringDD %
ErrorActualizarContrasenaDD  9
=DD: ;
$strDD< f
;DDf g
publicEE 
constEE 
stringEE &
DatosRecuperacionInvalidosEE  :
=EE; <
$strEE= h
;EEh i
publicFF 
constFF 
stringFF 
DatosReenvioCodigoFF  2
=FF3 4
$strFF5 h
;FFh i
publicGG 
constGG 
stringGG &
DatosConfirmacionInvalidosGG  :
=GG; <
$strGG= h
;GGh i
publicHH 
constHH 
stringHH (
DatosActualizacionContrasenaHH  <
=HH= >
$strHH? k
;HHk l
publicII 
constII 
stringII ,
 ErrorConfirmarCodigoRecuperacionII  @
=IIA B
$strIIC x
;IIx y
publicJJ 
constJJ 
stringJJ /
#DatosSolicitudVerificacionInvalidosJJ  C
=JJD E
$str	JJF â
;
JJâ ä
publicKK 
constKK 
stringKK 9
-SolicitudRecuperacionIdentificadorObligatorioKK  M
=KKN O
$str	KKP £
;
KK£ §
publicLL 
constLL 
stringLL 3
'SolicitudRecuperacionCuentaNoEncontradaLL  G
=LLH I
$str	LLJ å
;
LLå ç
publicMM 
constMM 
stringMM -
!SolicitudRecuperacionNoEncontradaMM  A
=MMB C
$strMMD z
;MMz {
publicNN 
constNN 
stringNN &
CodigoRecuperacionExpiradoNN  :
=NN; <
$strNN= y
;NNy z
publicOO 
constOO 
stringOO +
ErrorReenviarCodigoRecuperacionOO  ?
=OO@ A
$strOOB v
;OOv w
publicPP 
constPP 
stringPP (
CodigoRecuperacionIncorrectoPP  <
=PP= >
$strPP? d
;PPd e
publicQQ 
constQQ 
stringQQ *
SolicitudRecuperacionNoVigenteQQ  >
=QQ? @
$strQQA p
;QQp q
publicRR 
constRR 
stringRR )
SolicitudRecuperacionInvalidaRR  =
=RR> ?
$strRR@ l
;RRl m
publicTT 
constTT 
stringTT &
ErrorSolicitudVerificacionTT  :
=TT; <
$strTT= t
;TTt u
publicUU 
constUU 
stringUU +
ErrorReenviarCodigoVerificacionUU  ?
=UU@ A
$strUUB v
;UUv w
publicVV 
constVV 
stringVV -
!SolicitudVerificacionNoEncontradaVV  A
=VVB C
$strVVD z
;VVz {
publicWW 
constWW 
stringWW &
CodigoVerificacionExpiradoWW  :
=WW; <
$str	WW= É
;
WWÉ Ñ
publicXX 
constXX 
stringXX (
CodigoVerificacionIncorrectoXX  <
=XX= >
$strXX? d
;XXd e
publicYY 
constYY 
stringYY $
UsuarioOCorreoRegistradoYY  8
=YY9 :
$strYY; d
;YYd e
public[[ 
const[[ 
string[[ %
UsuarioBaneadoPorReportes[[  9
=[[: ;
$str[[< k
;[[k l
public]] 
const]] 
string]] 
ErrorCrearSala]]  .
=]]/ 0
$str]]1 P
;]]P Q
public^^ 
const^^ 
string^^ $
ErrorInesperadoCrearSala^^  8
=^^9 :
$str^^; _
;^^_ `
public__ 
const__ 
string__ !
ErrorInesperadoUnirse__  5
=__6 7
$str__8 _
;___ `
public`` 
const`` 
string`` $
ErrorInesperadoAbandonar``  8
=``9 :
$str``; c
;``c d
publicaa 
constaa 
stringaa #
ErrorInesperadoExpulsaraa  7
=aa8 9
$straa: d
;aad e
publicbb 
constbb 
stringbb &
ErrorInesperadoSuscripcionbb  :
=bb; <
$strbb= k
;bbk l
publiccc 
constcc 
stringcc 
SalaNoEncontradacc  0
=cc1 2
$strcc3 Y
;ccY Z
publicdd 
constdd 
stringdd 
ErrorGenerarCodigodd  2
=dd3 4
$strdd5 e
;dde f
publicee 
constee 
stringee 
	SalaLlenaee  )
=ee* +
$stree, A
;eeA B
publicff 
constff 
stringff $
SalaExpulsionRestringidaff  8
=ff9 :
$strff; q
;ffq r
publicgg 
constgg 
stringgg #
SalaCreadorNoExpulsablegg  7
=gg8 9
$strgg: i
;ggi j
publichh 
consthh 
stringhh 
SalaJugadorNoExistehh  3
=hh4 5
$strhh6 c
;hhc d
publicjj 
constjj 
stringjj 
InvitacionInvalidajj  2
=jj3 4
$strjj5 R
;jjR S
publickk 
constkk 
stringkk $
DatosInvitacionInvalidoskk  8
=kk9 :
$strkk; g
;kkg h
publicll 
constll 
stringll 
CorreoInvalidoll  .
=ll/ 0
$strll1 V
;llV W
publicmm 
constmm 
stringmm !
ErrorEnviarInvitacionmm  5
=mm6 7
$strmm8 ^
;mm^ _
publicnn 
constnn 
stringnn #
ErrorProcesarInvitacionnn  7
=nn8 9
$strnn: j
;nnj k
publicoo 
constoo 
stringoo %
ErrorInesperadoInvitacionoo  9
=oo: ;
$stroo< g
;oog h
publicpp 
constpp 
stringpp 
JugadorYaEnSalapp  /
=pp0 1
$strpp2 R
;ppR S
publicqq 
constqq 
stringqq "
InvitacionEnviadaExitoqq  6
=qq7 8
$strqq9 \
;qq\ ]
publicrr 
constrr 
stringrr '
SolicitudInvitacionInvalidarr  ;
=rr< =
$strrr> h
;rrh i
publicss 
constss 
stringss 
CorreoJugadorEnSalass  3
=ss4 5
$strss6 n
;ssn o
publictt 
consttt 
stringtt '
ErrorEnviarInvitacionCorreott  ;
=tt< =
$strtt> {
;tt{ |
publicvv 
constvv 
stringvv  
ErrorObtenerCallbackvv  4
=vv5 6
$strvv7 o
;vvo p
publicww 
constww 
stringww &
ErrorObtenerCallbackAmigosww  :
=ww; <
$strww= q
;wwq r
publicxx 
constxx 
stringxx "
ErrorContextoOperacionxx  6
=xx7 8
$strxx9 q
;xxq r
publicyy 
constyy 
stringyy (
ErrorContextoOperacionAmigosyy  <
=yy= >
$stryy? s
;yys t
public{{ 
const{{ 
string{{  
ParametroObligatorio{{  4
={{5 6
$str{{7 Y
;{{Y Z
public|| 
const|| 
string|| $
NombreUsuarioObligatorio||  8
=||9 :
$str||; a
;||a b
public}} 
const}} 
string}} ,
 NombreUsuarioObligatorioCancelar}}  @
=}}A B
$str	}}C Ü
;
}}Ü á
public~~ 
const~~ 
string~~ /
#NombreUsuarioObligatorioSuscripcion~~  C
=~~D E
$str	~~F í
;
~~í ì
public 
const 
string !
CodigoSalaObligatorio  5
=6 7
$str8 [
;[ \
public
ÅÅ 
const
ÅÅ 
string
ÅÅ &
ConfiguracionObligatoria
ÅÅ  8
=
ÅÅ9 :
$str
ÅÅ; k
;
ÅÅk l
public
ÇÇ 
const
ÇÇ 
string
ÇÇ "
NumeroRondasInvalido
ÇÇ  4
=
ÇÇ5 6
$str
ÇÇ7 c
;
ÇÇc d
public
ÉÉ 
const
ÉÉ 
string
ÉÉ !
TiempoRondaInvalido
ÉÉ  3
=
ÉÉ4 5
$str
ÉÉ6 b
;
ÉÉb c
public
ÑÑ 
const
ÑÑ 
string
ÑÑ 
IdiomaObligatorio
ÑÑ  1
=
ÑÑ2 3
$str
ÑÑ4 `
;
ÑÑ` a
public
ÖÖ 
const
ÖÖ 
string
ÖÖ #
DificultadObligatoria
ÖÖ  5
=
ÖÖ6 7
$str
ÖÖ8 W
;
ÖÖW X
public
áá 
const
áá 
string
áá ,
PartidaCanceladaFaltaJugadores
áá  >
=
áá? @
$str
ááA l
;
áál m
public
àà 
const
àà 
string
àà 
PartidaYaIniciada
àà  1
=
àà2 3
$str
àà4 J
;
ààJ K
public
ââ 
const
ââ 
string
ââ 
PartidaComenzo
ââ  .
=
ââ/ 0
$str
ââ1 H
;
ââH I
public
ää 
const
ää 
string
ää 
FaltanJugadores
ää  /
=
ää0 1
$str
ää2 E
;
ääE F
public
ãã 
const
ãã 
string
ãã 
SoloHost
ãã  (
=
ãã) *
$str
ãã+ 7
;
ãã7 8
}
åå 	
}
çç 
}éé ∫g
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\AmistadServicio.cs
	namespace

 	%
PictionaryMusicalServidor


 #
.

# $
	Servicios

$ -
.

- .
	Servicios

. 7
{ 
public 

class 
AmistadServicio  
:! "
IAmistadServicio# 3
{ 
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
public 
AmistadServicio 
( 
IContextoFactoria 0
contextoFactory1 @
)@ A
{ 	
_contextoFactory 
= 
contextoFactory .
??/ 1
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
contextoFactory7 F
)F G
)G H
;H I
} 	
public$$ 
List$$ 
<$$ 
SolicitudAmistadDTO$$ '
>$$' (+
ObtenerSolicitudesPendientesDTO$$) H
($$H I
int$$I L
	usuarioId$$M V
)$$V W
{%% 	
using&& 
(&& 
var&& 
contexto&& 
=&&  !
_contextoFactory&&" 2
.&&2 3
CrearContexto&&3 @
(&&@ A
)&&A B
)&&B C
{'' 
var(( 
repo(( 
=(( 
new(( 
AmigoRepositorio(( /
(((/ 0
contexto((0 8
)((8 9
;((9 :
var)) 
solicitudes)) 
=))  !
repo))" &
.))& '(
ObtenerSolicitudesPendientes))' C
())C D
	usuarioId))D M
)))M N
;))N O
if++ 
(++ 
solicitudes++ 
==++  "
null++# '
||++( *
solicitudes+++ 6
.++6 7
Count++7 <
==++= ?
$num++@ A
)++A B
{,, 
return-- 
new-- 
List-- #
<--# $
SolicitudAmistadDTO--$ 7
>--7 8
(--8 9
)--9 :
;--: ;
}.. 
return00 
MapearSolicitudes00 (
(00( )
solicitudes00) 4
,004 5
	usuarioId006 ?
)00? @
;00@ A
}11 
}22 	
public== 
void== 
CrearSolicitud== "
(==" #
int==# &
usuarioEmisorId==' 6
,==6 7
int==8 ;
usuarioReceptorId==< M
)==M N
{>> 	
if?? 
(?? 
usuarioEmisorId?? 
==??  "
usuarioReceptorId??# 4
)??4 5
{@@ 
throwAA 
newAA %
InvalidOperationExceptionAA 3
(AA3 4
MensajesErrorBB !
.BB! "
ClienteBB" )
.BB) *(
SolicitudAmistadMismoUsuarioBB* F
)BBF G
;BBG H
}CC 
usingEE 
(EE 
varEE 
contextoEE 
=EE  !
_contextoFactoryEE" 2
.EE2 3
CrearContextoEE3 @
(EE@ A
)EEA B
)EEB C
{FF 
varGG 
repoGG 
=GG 
newGG 
AmigoRepositorioGG /
(GG/ 0
contextoGG0 8
)GG8 9
;GG9 :
ifHH 
(HH 
repoHH 
.HH 
ExisteRelacionHH '
(HH' (
usuarioEmisorIdHH( 7
,HH7 8
usuarioReceptorIdHH9 J
)HHJ K
)HHK L
{II 
throwJJ 
newJJ %
InvalidOperationExceptionJJ 7
(JJ7 8
MensajesErrorKK %
.KK% &
ClienteKK& -
.KK- .$
RelacionAmistadExistenteKK. F
)KKF G
;KKG H
}LL 
repoNN 
.NN 
CrearSolicitudNN #
(NN# $
usuarioEmisorIdNN$ 3
,NN3 4
usuarioReceptorIdNN5 F
)NNF G
;NNG H
}OO 
}PP 	
public[[ 
void[[ 
AceptarSolicitud[[ $
([[$ %
int[[% (
usuarioEmisorId[[) 8
,[[8 9
int[[: =
usuarioReceptorId[[> O
)[[O P
{\\ 	
using]] 
(]] 
var]] 
contexto]] 
=]]  !
_contextoFactory]]" 2
.]]2 3
CrearContexto]]3 @
(]]@ A
)]]A B
)]]B C
{^^ 
var__ 
repo__ 
=__ 
new__ 
AmigoRepositorio__ /
(__/ 0
contexto__0 8
)__8 9
;__9 :
var`` 
relacion`` 
=`` 
repo`` #
.``# $
ObtenerRelacion``$ 3
(``3 4
usuarioEmisorId``4 C
,``C D
usuarioReceptorId``E V
)``V W
;``W X'
ValidarSolicitudParaAceptarbb +
(bb+ ,
relacionbb, 4
,bb4 5
usuarioReceptorIdbb6 G
)bbG H
;bbH I
repocc 
.cc 
ActualizarEstadocc %
(cc% &
relacioncc& .
,cc. /
truecc0 4
)cc4 5
;cc5 6
}dd 
}ee 	
publicoo 
Amigooo 
EliminarAmistadoo $
(oo$ %
intoo% (

usuarioAIdoo) 3
,oo3 4
intoo5 8

usuarioBIdoo9 C
)ooC D
{pp 	
ifqq 
(qq 

usuarioAIdqq 
==qq 

usuarioBIdqq (
)qq( )
{rr 
throwss 
newss %
InvalidOperationExceptionss 3
(ss3 4
MensajesErrorss4 A
.ssA B
ClientessB I
.ssI J 
ErrorEliminarAmistadssJ ^
)ss^ _
;ss_ `
}tt 
usingvv 
(vv 
varvv 
contextovv 
=vv  !
_contextoFactoryvv" 2
.vv2 3
CrearContextovv3 @
(vv@ A
)vvA B
)vvB C
{ww 
varxx 
repoxx 
=xx 
newxx 
AmigoRepositorioxx /
(xx/ 0
contextoxx0 8
)xx8 9
;xx9 :
varyy 
relacionyy 
=yy 
repoyy #
.yy# $
ObtenerRelacionyy$ 3
(yy3 4

usuarioAIdyy4 >
,yy> ?

usuarioBIdyy@ J
)yyJ K
;yyK L
if{{ 
({{ 
relacion{{ 
=={{ 
null{{  $
){{$ %
{|| 
throw}} 
new}} %
InvalidOperationException}} 7
(}}7 8
MensajesError~~ %
.~~% &
Cliente~~& -
.~~- .#
RelacionAmistadNoExiste~~. E
)~~E F
;~~F G
} 
repo
ÅÅ 
.
ÅÅ 
EliminarRelacion
ÅÅ %
(
ÅÅ% &
relacion
ÅÅ& .
)
ÅÅ. /
;
ÅÅ/ 0
return
ÇÇ 
relacion
ÇÇ 
;
ÇÇ  
}
ÉÉ 
}
ÑÑ 	
public
åå 
List
åå 
<
åå 
AmigoDTO
åå 
>
åå 
ObtenerAmigosDTO
åå .
(
åå. /
int
åå/ 2
	usuarioId
åå3 <
)
åå< =
{
çç 	
using
éé 
(
éé 
var
éé 
contexto
éé 
=
éé  !
_contextoFactory
éé" 2
.
éé2 3
CrearContexto
éé3 @
(
éé@ A
)
ééA B
)
ééB C
{
èè 
var
êê 
repo
êê 
=
êê 
new
êê 
AmigoRepositorio
êê /
(
êê/ 0
contexto
êê0 8
)
êê8 9
;
êê9 :
var
ëë 
amigos
ëë 
=
ëë 
repo
ëë !
.
ëë! "
ObtenerAmigos
ëë" /
(
ëë/ 0
	usuarioId
ëë0 9
)
ëë9 :
;
ëë: ;
if
ìì 
(
ìì 
amigos
ìì 
==
ìì 
null
ìì "
)
ìì" #
{
îî 
return
ïï 
new
ïï 
List
ïï #
<
ïï# $
AmigoDTO
ïï$ ,
>
ïï, -
(
ïï- .
)
ïï. /
;
ïï/ 0
}
ññ 
var
òò 
	resultado
òò 
=
òò 
new
òò  #
List
òò$ (
<
òò( )
AmigoDTO
òò) 1
>
òò1 2
(
òò2 3
)
òò3 4
;
òò4 5
foreach
ôô 
(
ôô 
var
ôô 
amigo
ôô "
in
ôô# %
amigos
ôô& ,
)
ôô, -
{
öö 
if
õõ 
(
õõ 
amigo
õõ 
!=
õõ  
null
õõ! %
)
õõ% &
{
úú 
	resultado
ùù !
.
ùù! "
Add
ùù" %
(
ùù% &
new
ùù& )
AmigoDTO
ùù* 2
{
ûû 
	UsuarioId
üü %
=
üü& '
amigo
üü( -
.
üü- .
	idUsuario
üü. 7
,
üü7 8
NombreUsuario
†† )
=
††* +
amigo
††, 1
.
††1 2
Nombre_Usuario
††2 @
}
°° 
)
°° 
;
°° 
}
¢¢ 
}
££ 
return
§§ 
	resultado
§§  
;
§§  !
}
•• 
}
¶¶ 	
private
®® 
List
®® 
<
®® !
SolicitudAmistadDTO
®® '
>
®®' (
MapearSolicitudes
®®) :
(
®®: ;
IList
®®; @
<
®®@ A
Amigo
®®A F
>
®®F G
solicitudes
®®H S
,
®®S T
int
©© 
	usuarioId
©© 
)
©© 
{
™™ 	
var
´´ 
resultadoDTOs
´´ 
=
´´ 
new
´´  #
List
´´$ (
<
´´( )!
SolicitudAmistadDTO
´´) <
>
´´< =
(
´´= >
)
´´> ?
;
´´? @
foreach
¨¨ 
(
¨¨ 
var
¨¨ 
	solicitud
¨¨ "
in
¨¨# %
solicitudes
¨¨& 1
)
¨¨1 2
{
≠≠ 
if
ÆÆ 
(
ÆÆ 
	solicitud
ÆÆ 
.
ÆÆ 
UsuarioReceptor
ÆÆ -
!=
ÆÆ. 0
	usuarioId
ÆÆ1 :
)
ÆÆ: ;
{
ØØ 
continue
∞∞ 
;
∞∞ 
}
±± 
string
≥≥ 
emisor
≥≥ 
=
≥≥ 
	solicitud
≥≥  )
.
≥≥) *
Usuario
≥≥* 1
?
≥≥1 2
.
≥≥2 3
Nombre_Usuario
≥≥3 A
;
≥≥A B
string
¥¥ 
receptor
¥¥ 
=
¥¥  !
	solicitud
¥¥" +
.
¥¥+ ,
Usuario1
¥¥, 4
?
¥¥4 5
.
¥¥5 6
Nombre_Usuario
¥¥6 D
;
¥¥D E
if
∂∂ 
(
∂∂ 
!
∂∂ 
string
∂∂ 
.
∂∂  
IsNullOrWhiteSpace
∂∂ .
(
∂∂. /
emisor
∂∂/ 5
)
∂∂5 6
&&
∂∂7 9
!
∂∂: ;
string
∂∂; A
.
∂∂A B 
IsNullOrWhiteSpace
∂∂B T
(
∂∂T U
receptor
∂∂U ]
)
∂∂] ^
)
∂∂^ _
{
∑∑ 
resultadoDTOs
∏∏ !
.
∏∏! "
Add
∏∏" %
(
∏∏% &
new
∏∏& )!
SolicitudAmistadDTO
∏∏* =
{
ππ 
UsuarioEmisor
∫∫ %
=
∫∫& '
emisor
∫∫( .
,
∫∫. /
UsuarioReceptor
ªª '
=
ªª( )
receptor
ªª* 2
,
ªª2 3
SolicitudAceptada
ºº )
=
ºº* +
	solicitud
ºº, 5
.
ºº5 6
Estado
ºº6 <
}
ΩΩ 
)
ΩΩ 
;
ΩΩ 
}
ææ 
}
øø 
return
¿¿ 
resultadoDTOs
¿¿  
;
¿¿  !
}
¡¡ 	
private
√√ 
void
√√ )
ValidarSolicitudParaAceptar
√√ 0
(
√√0 1
Amigo
√√1 6
relacion
√√7 ?
,
√√? @
int
√√A D
usuarioReceptorId
√√E V
)
√√V W
{
ƒƒ 	
if
≈≈ 
(
≈≈ 
relacion
≈≈ 
==
≈≈ 
null
≈≈  
)
≈≈  !
{
∆∆ 
throw
«« 
new
«« '
InvalidOperationException
«« 3
(
««3 4
MensajesError
»» !
.
»»! "
Cliente
»»" )
.
»») *&
SolicitudAmistadNoExiste
»»* B
)
»»B C
;
»»C D
}
…… 
if
ÀÀ 
(
ÀÀ 
relacion
ÀÀ 
.
ÀÀ 
UsuarioReceptor
ÀÀ (
!=
ÀÀ) +
usuarioReceptorId
ÀÀ, =
)
ÀÀ= >
{
ÃÃ 
throw
ÕÕ 
new
ÕÕ '
InvalidOperationException
ÕÕ 3
(
ÕÕ3 4
MensajesError
ÕÕ4 A
.
ÕÕA B
Cliente
ÕÕB I
.
ÕÕI J#
ErrorAceptarSolicitud
ÕÕJ _
)
ÕÕ_ `
;
ÕÕ` a
}
ŒŒ 
if
–– 
(
–– 
relacion
–– 
.
–– 
Estado
–– 
)
––  
{
—— 
throw
““ 
new
““ '
InvalidOperationException
““ 3
(
““3 4
MensajesError
”” !
.
””! "
Cliente
””" )
.
””) *(
SolicitudAmistadYaAceptada
””* D
)
””D E
;
””E F
}
‘‘ 
}
’’ 	
}
÷÷ 
}◊◊ Â%
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\ClasificacionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class "
ClasificacionManejador '
:( )#
IClasificacionManejador* A
{ 
private 
const 
int 
LimiteTopJugadores ,
=- .
$num/ 1
;1 2
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ("
ClasificacionManejador( >
)> ?
)? @
;@ A
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
public "
ClasificacionManejador %
(% &
)& '
:( )
this* .
(. /
new/ 2
ContextoFactoria3 C
(C D
)D E
)E F
{ 	
} 	
public"" "
ClasificacionManejador"" %
(""% &
IContextoFactoria""& 7
contextoFactory""8 G
)""G H
{## 	
_contextoFactory$$ 
=$$ 
contextoFactory$$ .
??%% 
throw%% 
new%% !
ArgumentNullException%% 2
(%%2 3
nameof%%3 9
(%%9 :
contextoFactory%%: I
)%%I J
)%%J K
;%%K L
}&& 	
public// 
IList// 
<// #
ClasificacionUsuarioDTO// ,
>//, -
ObtenerTopJugadores//. A
(//A B
)//B C
{00 	
try11 
{22 
using33 
(33 
var33 
contexto33 #
=33$ %
_contextoFactory33& 6
.336 7
CrearContexto337 D
(33D E
)33E F
)33F G
{44 %
IClasificacionRepositorio55 -
repositorio55. 9
=55: ;
new66 $
ClasificacionRepositorio66 4
(664 5
contexto665 =
)66= >
;66> ?
IList88 
<88 
Usuario88 !
>88! "
usuarios88# +
=88, -
repositorio88. 9
.889 :#
ObtenerMejoresJugadores88: Q
(88Q R
LimiteTopJugadores99 *
)99* +
;99+ ,
return;; 
usuarios;; #
.;;# $
Select;;$ *
(;;* +
u;;+ ,
=>;;- /
new;;0 3#
ClasificacionUsuarioDTO;;4 K
{<< 
Usuario== 
===  !
u==" #
.==# $
Nombre_Usuario==$ 2
,==2 3
Puntos>> 
=>>  
u>>! "
.>>" #
Jugador>># *
.>>* +
Clasificacion>>+ 8
.>>8 9
Puntos_Ganados>>9 G
??>>H J
$num>>K L
,>>L M
RondasGanadas?? %
=??& '
u??( )
.??) *
Jugador??* 1
.??1 2
Clasificacion??2 ?
.??? @
Rondas_Ganadas??@ N
????O Q
$num??R S
}@@ 
)@@ 
.@@ 
ToList@@ 
(@@ 
)@@ 
;@@  
}AA 
}BB 
catchCC 
(CC 
EntityExceptionCC "
exCC# %
)CC% &
{DD 
_loggerEE 
.EE 
ErrorEE 
(EE 
$strEE S
,EES T
exEEU W
)EEW X
;EEX Y
returnFF 
newFF 
ListFF 
<FF  #
ClasificacionUsuarioDTOFF  7
>FF7 8
(FF8 9
)FF9 :
;FF: ;
}GG 
catchHH 
(HH 
DataExceptionHH  
exHH! #
)HH# $
{II 
_loggerJJ 
.JJ 
ErrorJJ 
(JJ 
$strJJ K
,JJK L
exJJM O
)JJO P
;JJP Q
returnKK 
newKK 
ListKK 
<KK  #
ClasificacionUsuarioDTOKK  7
>KK7 8
(KK8 9
)KK9 :
;KK: ;
}LL 
catchMM 
(MM %
InvalidOperationExceptionMM ,
exMM- /
)MM/ 0
{NN 
_loggerOO 
.OO 
ErrorOO 
(OO 
$strOO O
,OOO P
exOOQ S
)OOS T
;OOT U
returnPP 
newPP 
ListPP 
<PP  #
ClasificacionUsuarioDTOPP  7
>PP7 8
(PP8 9
)PP9 :
;PP: ;
}QQ 
}RR 	
}SS 
}TT ßú
vC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\CursoPartidaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Multiple* 2
)2 3
]3 4
public 

class !
CursoPartidaManejador &
:' ("
ICursoPartidaManejador) ?
{ 
private 
const 
int )
TiempoRondaPorDefectoSegundos 7
=8 9
$num: <
;< =
private 
const 
int "
NumeroRondasPorDefecto 0
=1 2
$num3 4
;4 5
private 
const 
string  
DificultadPorDefecto 1
=2 3
$str4 ;
;; <
private 
const 
int #
LimiteCaracteresMensaje 1
=2 3
$num4 7
;7 8
private   
static   
readonly   
ILog    $
_logger  % ,
=  - .

LogManager!! 
.!! 
	GetLogger!!  
(!!  !
typeof!!! '
(!!' (!
CursoPartidaManejador!!( =
)!!= >
)!!> ?
;!!? @
private## 
static## 
readonly## 

Dictionary##  *
<##* +
string##+ 1
,##1 2
ControladorPartida##3 E
>##E F
_partidasActivas##G W
=##X Y
new$$ 

Dictionary$$ 
<$$ 
string$$ !
,$$! "
ControladorPartida$$# 5
>$$5 6
($$6 7
StringComparer$$7 E
.$$E F
OrdinalIgnoreCase$$F W
)$$W X
;$$X Y
private&& 
static&& 
readonly&& 

Dictionary&&  *
<&&* +
string&&+ 1
,&&1 2

Dictionary'' 
<'' 
string'' 
,'' *
ICursoPartidaManejadorCallback'' =
>''= >
>''> ?
_callbacksPorSala''@ Q
=''R S
new(( 

Dictionary(( 
<(( 
string(( !
,((! "

Dictionary((# -
<((- .
string((. 4
,((4 5*
ICursoPartidaManejadorCallback((6 T
>((T U
>((U V
(((V W
StringComparer)) 
.)) 
OrdinalIgnoreCase)) 0
)))0 1
;))1 2
private++ 
static++ 
readonly++ 
object++  &
_sincronizacion++' 6
=++7 8
new++9 <
object++= C
(++C D
)++D E
;++E F
private-- 
readonly-- 
IContextoFactoria-- *
_contextoFactory--+ ;
;--; <
private.. 
readonly.. 
ISalasManejador.. (
_salasManejador..) 8
;..8 9
private// 
readonly// 
ICatalogoCanciones// +
_catalogoCanciones//, >
;//> ?
public11 !
CursoPartidaManejador11 $
(11$ %
)11% &
:11' (
this11) -
(11- .
new22 
ContextoFactoria22  
(22  !
)22! "
,22" #
new33 
SalasManejador33 
(33 
)33  
,33  !
new44 
CatalogoCanciones44 !
(44! "
)44" #
)44# $
{55 	
}66 	
public88 !
CursoPartidaManejador88 $
(88$ %
IContextoFactoria99 
contextoFactory99 -
,99- .
ISalasManejador:: 
salasManejador:: *
,::* +
ICatalogoCanciones;; 
catalogoCanciones;; 0
);;0 1
{<< 	
_contextoFactory== 
=== 
contextoFactory== .
??>> 
throw>> 
new>> !
ArgumentNullException>> 2
(>>2 3
nameof>>3 9
(>>9 :
contextoFactory>>: I
)>>I J
)>>J K
;>>K L
_salasManejador@@ 
=@@ 
salasManejador@@ ,
??AA 
throwAA 
newAA !
ArgumentNullExceptionAA 2
(AA2 3
nameofAA3 9
(AA9 :
salasManejadorAA: H
)AAH I
)AAI J
;AAJ K
_catalogoCancionesCC 
=CC  
catalogoCancionesCC! 2
??DD 
throwDD 
newDD !
ArgumentNullExceptionDD 2
(DD2 3
nameofDD3 9
(DD9 :
catalogoCancionesDD: K
)DDK L
)DDL M
;DDM N
}EE 	
publicJJ 
voidJJ 
SuscribirJugadorJJ $
(JJ$ %
stringJJ% +
idSalaJJ, 2
,JJ2 3
stringJJ4 :
	idJugadorJJ; D
,JJD E
stringJJF L
nombreUsuarioJJM Z
,JJZ [
boolKK 
esHostKK 
)KK 
{LL 	
ifMM 
(MM 
stringMM 
.MM 
IsNullOrWhiteSpaceMM )
(MM) *
idSalaMM* 0
)MM0 1
)MM1 2
{NN 
throwOO 
newOO 
FaultExceptionOO (
(OO( )
$strOO) S
)OOS T
;OOT U
}PP 
ifRR 
(RR 
stringRR 
.RR 
IsNullOrWhiteSpaceRR )
(RR) *
	idJugadorRR* 3
)RR3 4
)RR4 5
{SS 
throwTT 
newTT 
FaultExceptionTT (
(TT( )
$strTT) V
)TTV W
;TTW X
}UU 
varWW 
callbackWW 
=WW !
ObtenerCallbackActualWW 0
(WW0 1
)WW1 2
;WW2 3
varXX 
controladorXX 
=XX $
ObtenerOCrearControladorXX 6
(XX6 7
idSalaXX7 =
.XX= >
TrimXX> B
(XXB C
)XXC D
)XXD E
;XXE F
controladorZZ 
.ZZ 
AgregarJugadorZZ &
(ZZ& '
	idJugador[[ 
.[[ 
Trim[[ 
([[ 
)[[  
,[[  !
nombreUsuario\\ 
?\\ 
.\\ 
Trim\\ #
(\\# $
)\\$ %
??\\& (
string\\) /
.\\/ 0
Empty\\0 5
,\\5 6
esHost]] 
)]] 
;]] 
RegistrarCallback__ 
(__ 
idSala__ $
.__$ %
Trim__% )
(__) *
)__* +
,__+ ,
	idJugador__- 6
.__6 7
Trim__7 ;
(__; <
)__< =
,__= >
callback__? G
)__G H
;__H I
_loggeraa 
.aa 

InfoFormataa 
(aa 
$strbb C
,bbC D
	idJugadorcc 
.cc 
Trimcc 
(cc 
)cc  
,cc  !
idSaladd 
.dd 
Trimdd 
(dd 
)dd 
)dd 
;dd 
}ee 	
publicmm 
voidmm 
IniciarPartidamm "
(mm" #
stringmm# )
idSalamm* 0
,mm0 1
stringmm2 8 
idJugadorSolicitantemm9 M
)mmM N
{nn 	
ifoo 
(oo 
stringoo 
.oo 
IsNullOrWhiteSpaceoo )
(oo) *
idSalaoo* 0
)oo0 1
)oo1 2
{pp 
throwqq 
newqq 
FaultExceptionqq (
(qq( )
$strqq) S
)qqS T
;qqT U
}rr 
_loggertt 
.tt 

InfoFormattt 
(tt 
$struu P
,uuP Q
idSalavv 
.vv 
Trimvv 
(vv 
)vv 
,vv  
idJugadorSolicitanteww $
?ww$ %
.ww% &
Trimww& *
(ww* +
)ww+ ,
)ww, -
;ww- .
_salasManejadoryy 
.yy %
MarcarPartidaComoIniciadayy 5
(yy5 6
idSalayy6 <
.yy< =
Trimyy= A
(yyA B
)yyB C
)yyC D
;yyD E
varzz 
controladorzz 
=zz $
ObtenerOCrearControladorzz 6
(zz6 7
idSalazz7 =
.zz= >
Trimzz> B
(zzB C
)zzC D
)zzD E
;zzE F
controlador{{ 
.{{ 
IniciarPartida{{ &
({{& ' 
idJugadorSolicitante{{' ;
?{{; <
.{{< =
Trim{{= A
({{A B
){{B C
){{C D
;{{D E
}|| 	
public
ÑÑ 
void
ÑÑ  
EnviarMensajeJuego
ÑÑ &
(
ÑÑ& '
string
ÑÑ' -
mensaje
ÑÑ. 5
,
ÑÑ5 6
string
ÑÑ7 =
idSala
ÑÑ> D
,
ÑÑD E
string
ÑÑF L
	idJugador
ÑÑM V
)
ÑÑV W
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
string
ÜÜ 
.
ÜÜ  
IsNullOrWhiteSpace
ÜÜ )
(
ÜÜ) *
idSala
ÜÜ* 0
)
ÜÜ0 1
)
ÜÜ1 2
{
áá 
throw
àà 
new
àà 
FaultException
àà (
(
àà( )
$str
àà) S
)
ààS T
;
ààT U
}
ââ 
if
ãã 
(
ãã $
SuperaLimiteCaracteres
ãã &
(
ãã& '
mensaje
ãã' .
)
ãã. /
)
ãã/ 0
{
åå 
throw
çç 
new
çç 
FaultException
çç (
(
çç( )
$str
çç) U
)
ççU V
;
ççV W
}
éé 
var
êê 
controlador
êê 
=
êê &
ObtenerOCrearControlador
êê 6
(
êê6 7
idSala
êê7 =
.
êê= >
Trim
êê> B
(
êêB C
)
êêC D
)
êêD E
;
êêE F
controlador
ëë 
.
ëë 
ProcesarMensaje
ëë '
(
ëë' (
	idJugador
ëë( 1
?
ëë1 2
.
ëë2 3
Trim
ëë3 7
(
ëë7 8
)
ëë8 9
,
ëë9 :
mensaje
ëë; B
)
ëëB C
;
ëëC D
}
íí 	
private
îî 
static
îî 
bool
îî $
SuperaLimiteCaracteres
îî 2
(
îî2 3
string
îî3 9
mensaje
îî: A
)
îîA B
{
ïï 	
if
ññ 
(
ññ 
string
ññ 
.
ññ  
IsNullOrWhiteSpace
ññ )
(
ññ) *
mensaje
ññ* 1
)
ññ1 2
)
ññ2 3
{
óó 
return
òò 
false
òò 
;
òò 
}
ôô 
return
õõ 
mensaje
õõ 
.
õõ 
Length
õõ !
>
õõ" #%
LimiteCaracteresMensaje
õõ$ ;
;
õõ; <
}
úú 	
public
°° 
void
°° 
EnviarTrazo
°° 
(
°°  
TrazoDTO
°°  (
trazo
°°) .
,
°°. /
string
°°0 6
idSala
°°7 =
,
°°= >
string
°°? E
	idJugador
°°F O
)
°°O P
{
¢¢ 	
if
££ 
(
££ 
string
££ 
.
££  
IsNullOrWhiteSpace
££ )
(
££) *
idSala
££* 0
)
££0 1
)
££1 2
{
§§ 
throw
•• 
new
•• 
FaultException
•• (
(
••( )
$str
••) S
)
••S T
;
••T U
}
¶¶ 
var
®® 
controlador
®® 
=
®® &
ObtenerOCrearControlador
®® 6
(
®®6 7
idSala
®®7 =
.
®®= >
Trim
®®> B
(
®®B C
)
®®C D
)
®®D E
;
®®E F
controlador
©© 
.
©© 
ProcesarTrazo
©© %
(
©©% &
	idJugador
©©& /
?
©©/ 0
.
©©0 1
Trim
©©1 5
(
©©5 6
)
©©6 7
,
©©7 8
trazo
©©9 >
)
©©> ?
;
©©? @
}
™™ 	
private
¨¨  
ControladorPartida
¨¨ "&
ObtenerOCrearControlador
¨¨# ;
(
¨¨; <
string
¨¨< B
idSala
¨¨C I
)
¨¨I J
{
≠≠ 	
lock
ÆÆ 
(
ÆÆ 
_sincronizacion
ÆÆ !
)
ÆÆ! "
{
ØØ 
if
∞∞ 
(
∞∞ 
_partidasActivas
∞∞ $
.
∞∞$ %
TryGetValue
∞∞% 0
(
∞∞0 1
idSala
∞∞1 7
,
∞∞7 8
out
∞∞9 <
var
∞∞= @
	existente
∞∞A J
)
∞∞J K
)
∞∞K L
{
±± 
return
≤≤ 
	existente
≤≤ $
;
≤≤$ %
}
≥≥ 
var
µµ 
configuracion
µµ !
=
µµ" #&
ObtenerConfiguracionSala
µµ$ <
(
µµ< =
idSala
µµ= C
)
µµC D
;
µµD E
var
∂∂ 
gestorJugadores
∂∂ #
=
∂∂$ %
new
∂∂& )$
GestorJugadoresPartida
∂∂* @
(
∂∂@ A
)
∂∂A B
;
∂∂B C
var
∏∏ 
controlador
∏∏ 
=
∏∏  !
new
∏∏" % 
ControladorPartida
∏∏& 8
(
∏∏8 9
configuracion
ππ !
?
ππ! "
.
ππ" #$
TiempoPorRondaSegundos
ππ# 9
??
ππ: <+
TiempoRondaPorDefectoSegundos
ππ= Z
,
ππZ [
configuracion
∫∫ !
?
∫∫! "
.
∫∫" #

Dificultad
∫∫# -
??
∫∫. 0"
DificultadPorDefecto
∫∫1 E
,
∫∫E F
configuracion
ªª !
?
ªª! "
.
ªª" #
NumeroRondas
ªª# /
??
ªª0 2$
NumeroRondasPorDefecto
ªª3 I
,
ªªI J 
_catalogoCanciones
ºº &
,
ºº& '
gestorJugadores
ΩΩ #
)
ΩΩ# $
;
ΩΩ$ %
if
øø 
(
øø 
!
øø 
string
øø 
.
øø  
IsNullOrWhiteSpace
øø .
(
øø. /
configuracion
øø/ <
?
øø< =
.
øø= >
IdiomaCanciones
øø> M
)
øøM N
)
øøN O
{
¿¿ 
controlador
¡¡ 
.
¡¡  '
ConfigurarIdiomaCanciones
¡¡  9
(
¡¡9 :
configuracion
¡¡: G
.
¡¡G H
IdiomaCanciones
¡¡H W
)
¡¡W X
;
¡¡X Y
}
¬¬ 
SuscribirEventos
ƒƒ  
(
ƒƒ  !
controlador
ƒƒ! ,
,
ƒƒ, -
idSala
ƒƒ. 4
)
ƒƒ4 5
;
ƒƒ5 6
_partidasActivas
≈≈  
[
≈≈  !
idSala
≈≈! '
]
≈≈' (
=
≈≈) *
controlador
≈≈+ 6
;
≈≈6 7
_callbacksPorSala
∆∆ !
[
∆∆! "
idSala
∆∆" (
]
∆∆( )
=
∆∆* +
new
«« 

Dictionary
«« "
<
««" #
string
««# )
,
««) *,
ICursoPartidaManejadorCallback
««+ I
>
««I J
(
««J K
StringComparer
»» &
.
»»& '
OrdinalIgnoreCase
»»' 8
)
»»8 9
;
»»9 :
return
   
controlador
   "
;
  " #
}
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ 
SuscribirEventos
ŒŒ %
(
ŒŒ% & 
ControladorPartida
ŒŒ& 8
controlador
ŒŒ9 D
,
ŒŒD E
string
ŒŒF L
idSala
ŒŒM S
)
ŒŒS T
{
œœ 	
controlador
–– 
.
–– 
PartidaIniciada
–– '
+=
––( *
(
––+ ,
)
––, -
=>
––. 0$
ManejarPartidaIniciada
––1 G
(
––G H
idSala
––H N
)
––N O
;
––O P
controlador
““ 
.
““ 
InicioRonda
““ #
+=
““$ &
(
““' (
ronda
““( -
)
““- .
=>
““/ 1
Task
”” 
.
”” 
Run
”” 
(
”” 
(
”” 
)
”” 
=>
””  
ManejarInicioRonda
”” 1
(
””1 2
idSala
””2 8
,
””8 9
ronda
””: ?
,
””? @
controlador
””A L
)
””L M
)
””M N
;
””N O
controlador
’’ 
.
’’ 
JugadorAdivino
’’ &
+=
’’' )
(
’’* +
jugador
’’+ 2
,
’’2 3
puntos
’’4 :
)
’’: ;
=>
’’< >#
ManejarJugadorAdivino
÷÷ %
(
÷÷% &
idSala
÷÷& ,
,
÷÷, -
jugador
÷÷. 5
,
÷÷5 6
puntos
÷÷7 =
)
÷÷= >
;
÷÷> ?
controlador
ÿÿ 
.
ÿÿ !
MensajeChatRecibido
ÿÿ +
+=
ÿÿ, .
(
ÿÿ/ 0
jugador
ÿÿ0 7
,
ÿÿ7 8
mensaje
ÿÿ9 @
)
ÿÿ@ A
=>
ÿÿB D 
ManejarMensajeChat
ŸŸ "
(
ŸŸ" #
idSala
ŸŸ# )
,
ŸŸ) *
jugador
ŸŸ+ 2
,
ŸŸ2 3
mensaje
ŸŸ4 ;
)
ŸŸ; <
;
ŸŸ< =
controlador
€€ 
.
€€ 
TrazoRecibido
€€ %
+=
€€& (
(
€€) *
trazo
€€* /
)
€€/ 0
=>
€€1 3"
ManejarTrazoRecibido
‹‹ $
(
‹‹$ %
idSala
‹‹% +
,
‹‹+ ,
trazo
‹‹- 2
)
‹‹2 3
;
‹‹3 4
controlador
ﬁﬁ 
.
ﬁﬁ 
FinRonda
ﬁﬁ  
+=
ﬁﬁ! #
(
ﬁﬁ$ %
)
ﬁﬁ% &
=>
ﬁﬁ' )
ManejarFinRonda
ﬁﬁ* 9
(
ﬁﬁ9 :
idSala
ﬁﬁ: @
)
ﬁﬁ@ A
;
ﬁﬁA B
controlador
‡‡ 
.
‡‡ 

FinPartida
‡‡ "
+=
‡‡# %
(
‡‡& '
	resultado
‡‡' 0
)
‡‡0 1
=>
‡‡2 4
ManejarFinPartida
·· !
(
··! "
idSala
··" (
,
··( )
	resultado
··* 3
,
··3 4
controlador
··5 @
)
··@ A
;
··A B
}
‚‚ 	
private
‰‰ 
void
‰‰ $
ManejarPartidaIniciada
‰‰ +
(
‰‰+ ,
string
‰‰, 2
idSala
‰‰3 9
)
‰‰9 :
{
ÂÂ 	 
NotificarCallbacks
ÊÊ 
(
ÊÊ 
idSala
ÊÊ %
,
ÊÊ% &
cb
ÊÊ' )
=>
ÊÊ* ,
cb
ÊÊ- /
.
ÊÊ/ 0&
NotificarPartidaIniciada
ÊÊ0 H
(
ÊÊH I
)
ÊÊI J
)
ÊÊJ K
;
ÊÊK L
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ  
ManejarInicioRonda
ÈÈ '
(
ÈÈ' (
string
ÍÍ 
idSala
ÍÍ 
,
ÍÍ 
RondaDTO
ÎÎ 
	rondaBase
ÎÎ 
,
ÎÎ  
ControladorPartida
ÏÏ 
controlador
ÏÏ *
)
ÏÏ* +
{
ÌÌ 	
var
ÓÓ 
jugadoresEstado
ÓÓ 
=
ÓÓ  !
controlador
ÓÓ" -
.
ÓÓ- .
ObtenerJugadores
ÓÓ. >
(
ÓÓ> ?
)
ÓÓ? @
;
ÓÓ@ A
var
ÔÔ 
	dibujante
ÔÔ 
=
ÔÔ 
jugadoresEstado
ÔÔ +
.
ÔÔ+ ,
FirstOrDefault
ÔÔ, :
(
ÔÔ: ;
j
ÔÔ; <
=>
ÔÔ= ?
j
ÔÔ@ A
.
ÔÔA B
EsDibujante
ÔÔB M
)
ÔÔM N
;
ÔÔN O
string
 
nombreDibujante
 "
=
# $
	dibujante
% .
?
. /
.
/ 0
NombreUsuario
0 =
??
> @
string
A G
.
G H
Empty
H M
;
M N
List
ÚÚ 
<
ÚÚ 
KeyValuePair
ÚÚ 
<
ÚÚ 
string
ÚÚ $
,
ÚÚ$ %,
ICursoPartidaManejadorCallback
ÚÚ& D
>
ÚÚD E
>
ÚÚE F
	callbacks
ÚÚG P
;
ÚÚP Q
lock
ÙÙ 
(
ÙÙ 
_sincronizacion
ÙÙ !
)
ÙÙ! "
{
ıı 
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
_callbacksPorSala
ˆˆ &
.
ˆˆ& '
TryGetValue
ˆˆ' 2
(
ˆˆ2 3
idSala
ˆˆ3 9
,
ˆˆ9 :
out
ˆˆ; >
var
ˆˆ? B
callbacksSala
ˆˆC P
)
ˆˆP Q
)
ˆˆQ R
{
˜˜ 
return
¯¯ 
;
¯¯ 
}
˘˘ 
	callbacks
˙˙ 
=
˙˙ 
callbacksSala
˙˙ )
.
˙˙) *
ToList
˙˙* 0
(
˙˙0 1
)
˙˙1 2
;
˙˙2 3
}
˚˚ 
var
˝˝ 
cancionActual
˝˝ 
=
˝˝  
_catalogoCanciones
˝˝  2
.
˝˝2 3!
ObtenerCancionPorId
˝˝3 F
(
˝˝F G
	rondaBase
˝˝G P
.
˝˝P Q
	IdCancion
˝˝Q Z
)
˝˝Z [
;
˝˝[ \
foreach
ˇˇ 
(
ˇˇ 
var
ˇˇ 
par
ˇˇ 
in
ˇˇ 
	callbacks
ˇˇ  )
)
ˇˇ) *
{
ÄÄ ,
NotificarInicioRondaIndividual
ÅÅ .
(
ÅÅ. /
idSala
ÇÇ 
,
ÇÇ 
par
ÉÉ 
.
ÉÉ 
Key
ÉÉ 
,
ÉÉ 
par
ÑÑ 
.
ÑÑ 
Value
ÑÑ 
,
ÑÑ 
	rondaBase
ÖÖ 
,
ÖÖ 
jugadoresEstado
ÜÜ #
,
ÜÜ# $
nombreDibujante
áá #
,
áá# $
cancionActual
àà !
)
àà! "
;
àà" #
}
ââ 
}
ää 	
private
åå 
void
åå ,
NotificarInicioRondaIndividual
åå 3
(
åå3 4
string
çç 
idSala
çç 
,
çç 
string
éé 
	idJugador
éé 
,
éé ,
ICursoPartidaManejadorCallback
èè *
callback
èè+ 3
,
èè3 4
RondaDTO
êê 
	rondaBase
êê 
,
êê 
IEnumerable
ëë 
<
ëë 
JugadorPartida
ëë &
>
ëë& '
jugadoresEstado
ëë( 7
,
ëë7 8
string
íí 
nombreDibujante
íí "
,
íí" #
Datos
ìì 
.
ìì 
	Entidades
ìì 
.
ìì 
Cancion
ìì #
cancionActual
ìì$ 1
)
ìì1 2
{
îî 	
var
ïï 
datosJugador
ïï 
=
ïï 
jugadoresEstado
ïï .
.
ïï. /
FirstOrDefault
ïï/ =
(
ïï= >
j
ïï> ?
=>
ïï@ B
string
ññ 
.
ññ 
Equals
ññ 
(
ññ 
j
óó 
.
óó 

IdConexion
óó  
,
óó  !
	idJugador
òò 
,
òò 
StringComparison
ôô $
.
ôô$ %
OrdinalIgnoreCase
ôô% 6
)
ôô6 7
)
ôô7 8
;
ôô8 9
bool
õõ 
esDibujante
õõ 
=
õõ 
datosJugador
õõ +
!=
õõ, .
null
õõ/ 3
&&
õõ4 6
datosJugador
õõ7 C
.
õõC D
EsDibujante
õõD O
;
õõO P
string
ùù 
pistaArtista
ùù 
=
ùù  !
	rondaBase
ùù" +
.
ùù+ ,
PistaArtista
ùù, 8
;
ùù8 9
string
ûû 
pistaGenero
ûû 
=
ûû  
	rondaBase
ûû! *
.
ûû* +
PistaGenero
ûû+ 6
;
ûû6 7
if
†† 
(
†† 
esDibujante
†† 
&&
†† 
cancionActual
†† ,
!=
††- /
null
††0 4
)
††4 5
{
°° 
pistaArtista
¢¢ 
=
¢¢ 
cancionActual
¢¢ ,
.
¢¢, -
Artista
¢¢- 4
;
¢¢4 5
pistaGenero
££ 
=
££ 
cancionActual
££ +
.
££+ ,
Genero
££, 2
;
££2 3
}
§§ 
var
¶¶  
rondaPersonalizada
¶¶ "
=
¶¶# $
new
¶¶% (
RondaDTO
¶¶) 1
{
ßß 
	IdCancion
®® 
=
®® 
	rondaBase
®® %
.
®®% &
	IdCancion
®®& /
,
®®/ 0
PistaArtista
©© 
=
©© 
pistaArtista
©© +
,
©©+ ,
PistaGenero
™™ 
=
™™ 
pistaGenero
™™ )
,
™™) *
TiempoSegundos
´´ 
=
´´  
	rondaBase
´´! *
.
´´* +
TiempoSegundos
´´+ 9
,
´´9 :
Rol
¨¨ 
=
¨¨ 
esDibujante
¨¨ !
?
¨¨" #
$str
¨¨$ /
:
¨¨0 1
$str
¨¨2 >
,
¨¨> ?
NombreDibujante
≠≠ 
=
≠≠  !
nombreDibujante
≠≠" 1
}
ÆÆ 
;
ÆÆ 
try
∞∞ 
{
±± 
callback
≤≤ 
.
≤≤ "
NotificarInicioRonda
≤≤ -
(
≤≤- . 
rondaPersonalizada
≤≤. @
)
≤≤@ A
;
≤≤A B
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ )
ex
¥¥* ,
)
¥¥, -
{
µµ 
_logger
∂∂ 
.
∂∂ 

WarnFormat
∂∂ "
(
∂∂" #
$str
∑∑ =
,
∑∑= >
	idJugador
∏∏ 
,
∏∏ 
ex
ππ 
)
ππ 
;
ππ 
RemoverCallback
ªª 
(
ªª  
idSala
ªª  &
,
ªª& '
	idJugador
ªª( 1
)
ªª1 2
;
ªª2 3
}
ºº 
catch
ΩΩ 
(
ΩΩ 
TimeoutException
ΩΩ #
ex
ΩΩ$ &
)
ΩΩ& '
{
ææ 
_logger
øø 
.
øø 

WarnFormat
øø "
(
øø" #
$str
¿¿ =
,
¿¿= >
	idJugador
¡¡ 
,
¡¡ 
ex
¬¬ 
)
¬¬ 
;
¬¬ 
RemoverCallback
ƒƒ 
(
ƒƒ  
idSala
ƒƒ  &
,
ƒƒ& '
	idJugador
ƒƒ( 1
)
ƒƒ1 2
;
ƒƒ2 3
}
≈≈ 
catch
∆∆ 
(
∆∆ %
ObjectDisposedException
∆∆ *
ex
∆∆+ -
)
∆∆- .
{
«« 
_logger
»» 
.
»» 

WarnFormat
»» "
(
»»" #
$str
…… =
,
……= >
	idJugador
   
,
   
ex
ÀÀ 
)
ÀÀ 
;
ÀÀ 
RemoverCallback
ÕÕ 
(
ÕÕ  
idSala
ÕÕ  &
,
ÕÕ& '
	idJugador
ÕÕ( 1
)
ÕÕ1 2
;
ÕÕ2 3
}
ŒŒ 
}
œœ 	
private
—— 
void
—— #
ManejarJugadorAdivino
—— *
(
——* +
string
——+ 1
idSala
——2 8
,
——8 9
string
——: @
jugador
——A H
,
——H I
int
——J M
puntos
——N T
)
——T U
{
““ 	 
NotificarCallbacks
”” 
(
”” 
idSala
‘‘ 
,
‘‘ 
cb
’’ 
=>
’’ 
cb
’’ 
.
’’ %
NotificarJugadorAdivino
’’ 0
(
’’0 1
jugador
’’1 8
,
’’8 9
puntos
’’: @
)
’’@ A
)
’’A B
;
’’B C
}
÷÷ 	
private
ÿÿ 
void
ÿÿ  
ManejarMensajeChat
ÿÿ '
(
ÿÿ' (
string
ÿÿ( .
idSala
ÿÿ/ 5
,
ÿÿ5 6
string
ÿÿ7 =
jugador
ÿÿ> E
,
ÿÿE F
string
ÿÿG M
mensaje
ÿÿN U
)
ÿÿU V
{
ŸŸ 	 
NotificarCallbacks
⁄⁄ 
(
⁄⁄ 
idSala
€€ 
,
€€ 
cb
‹‹ 
=>
‹‹ 
cb
‹‹ 
.
‹‹ "
NotificarMensajeChat
‹‹ -
(
‹‹- .
jugador
‹‹. 5
,
‹‹5 6
mensaje
‹‹7 >
)
‹‹> ?
)
‹‹? @
;
‹‹@ A
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ "
ManejarTrazoRecibido
ﬂﬂ )
(
ﬂﬂ) *
string
ﬂﬂ* 0
idSala
ﬂﬂ1 7
,
ﬂﬂ7 8
TrazoDTO
ﬂﬂ9 A
trazo
ﬂﬂB G
)
ﬂﬂG H
{
‡‡ 	 
NotificarCallbacks
·· 
(
·· 
idSala
·· %
,
··% &
cb
··' )
=>
··* ,
cb
··- /
.
··/ 0$
NotificarTrazoRecibido
··0 F
(
··F G
trazo
··G L
)
··L M
)
··M N
;
··N O
}
‚‚ 	
private
‰‰ 
void
‰‰ 
ManejarFinRonda
‰‰ $
(
‰‰$ %
string
‰‰% +
idSala
‰‰, 2
)
‰‰2 3
{
ÂÂ 	 
NotificarCallbacks
ÊÊ 
(
ÊÊ 
idSala
ÊÊ %
,
ÊÊ% &
cb
ÊÊ' )
=>
ÊÊ* ,
cb
ÊÊ- /
.
ÊÊ/ 0
NotificarFinRonda
ÊÊ0 A
(
ÊÊA B
)
ÊÊB C
)
ÊÊC D
;
ÊÊD E
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ 
ManejarFinPartida
ÈÈ &
(
ÈÈ& '
string
ÍÍ 
idSala
ÍÍ 
,
ÍÍ !
ResultadoPartidaDTO
ÎÎ 
	resultado
ÎÎ  )
,
ÎÎ) * 
ControladorPartida
ÏÏ 
controlador
ÏÏ *
)
ÏÏ* +
{
ÌÌ 	
_salasManejador
ÓÓ 
.
ÓÓ )
MarcarPartidaComoFinalizada
ÓÓ 7
(
ÓÓ7 8
idSala
ÓÓ8 >
)
ÓÓ> ?
;
ÓÓ? @
Task
ÔÔ 
.
ÔÔ 
Run
ÔÔ 
(
ÔÔ 
(
ÔÔ 
)
ÔÔ 
=>
ÔÔ ,
ActualizarClasificacionPartida
ÔÔ 9
(
ÔÔ9 :
controlador
ÔÔ: E
,
ÔÔE F
	resultado
ÔÔG P
)
ÔÔP Q
)
ÔÔQ R
;
ÔÔR S 
NotificarCallbacks
 
(
 
idSala
 %
,
% &
cb
' )
=>
* ,
cb
- /
.
/ 0!
NotificarFinPartida
0 C
(
C D
	resultado
D M
)
M N
)
N O
;
O P
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ ,
ActualizarClasificacionPartida
ÛÛ 3
(
ÛÛ3 4 
ControladorPartida
ÙÙ 
controlador
ÙÙ *
,
ÙÙ* +!
ResultadoPartidaDTO
ıı 
	resultado
ıı  )
)
ıı) *
{
ˆˆ 	
if
˜˜ 
(
˜˜ 
controlador
˜˜ 
==
˜˜ 
null
˜˜ #
||
˜˜$ &
	resultado
¯¯ 
?
¯¯ 
.
¯¯ 
Clasificacion
¯¯ (
==
¯¯) +
null
¯¯, 0
||
¯¯1 3
!
˘˘ 
	resultado
˘˘ 
.
˘˘ 
Clasificacion
˘˘ (
.
˘˘( )
Any
˘˘) ,
(
˘˘, -
)
˘˘- .
)
˘˘. /
{
˙˙ 
return
˚˚ 
;
˚˚ 
}
¸¸ 
if
˛˛ 
(
˛˛ 
!
˛˛ 
string
˛˛ 
.
˛˛  
IsNullOrWhiteSpace
˛˛ *
(
˛˛* +
	resultado
˛˛+ 4
.
˛˛4 5
Mensaje
˛˛5 <
)
˛˛< =
)
˛˛= >
{
ˇˇ 
_logger
ÄÄ 
.
ÄÄ 
Info
ÄÄ 
(
ÄÄ 
$str
ÄÄ Y
)
ÄÄY Z
;
ÄÄZ [
return
ÅÅ 
;
ÅÅ 
}
ÇÇ 
var
ÑÑ 
jugadoresFinales
ÑÑ  
=
ÑÑ! "%
ObtenerJugadoresFinales
ÑÑ# :
(
ÑÑ: ;
controlador
ÑÑ; F
)
ÑÑF G
;
ÑÑG H
if
ÜÜ 
(
ÜÜ 
jugadoresFinales
ÜÜ  
==
ÜÜ! #
null
ÜÜ$ (
||
ÜÜ) +
jugadoresFinales
ÜÜ, <
.
ÜÜ< =
Count
ÜÜ= B
==
ÜÜC E
$num
ÜÜF G
)
ÜÜG H
{
áá 
return
àà 
;
àà 
}
ââ 
var
ãã 
	ganadores
ãã 
=
ãã 
CalcularGanadores
ãã -
(
ãã- .
jugadoresFinales
ãã. >
)
ãã> ?
;
ãã? @
try
çç 
{
éé 
using
èè 
(
èè 
var
èè 
contexto
èè #
=
èè$ %
_contextoFactory
èè& 6
.
èè6 7
CrearContexto
èè7 D
(
èèD E
)
èèE F
)
èèF G
{
êê 
var
ëë &
clasificacionRepositorio
ëë 0
=
ëë1 2
new
ëë3 6&
ClasificacionRepositorio
ëë7 O
(
ëëO P
contexto
ëëP X
)
ëëX Y
;
ëëY Z
foreach
ìì 
(
ìì 
var
ìì  
jugador
ìì! (
in
ìì) +
jugadoresFinales
ìì, <
)
ìì< =
{
îî *
PersistirEstadisticasJugador
ïï 4
(
ïï4 5&
clasificacionRepositorio
ññ 4
,
ññ4 5
jugador
óó #
,
óó# $
	ganadores
òò %
)
òò% &
;
òò& '
}
ôô 
}
öö 
}
õõ 
catch
úú 
(
úú 
EntityException
úú "
ex
úú# %
)
úú% &
{
ùù 
_logger
ûû 
.
ûû 
Error
ûû 
(
ûû 
$str
ûû O
,
ûûO P
ex
ûûQ S
)
ûûS T
;
ûûT U
}
üü 
catch
†† 
(
†† 
DbUpdateException
†† $
ex
††% '
)
††' (
{
°° 
_logger
¢¢ 
.
¢¢ 
Error
¢¢ 
(
¢¢ 
$str
¢¢ O
,
¢¢O P
ex
¢¢Q S
)
¢¢S T
;
¢¢T U
}
££ 
catch
§§ 
(
§§ 
DataException
§§  
ex
§§! #
)
§§# $
{
•• 
_logger
¶¶ 
.
¶¶ 
Error
¶¶ 
(
¶¶ 
$str
¶¶ O
,
¶¶O P
ex
¶¶Q S
)
¶¶S T
;
¶¶T U
}
ßß 
}
©© 	
private
´´ 
List
´´ 
<
´´ 
JugadorPartida
´´ #
>
´´# $%
ObtenerJugadoresFinales
´´% <
(
´´< = 
ControladorPartida
´´= O
controlador
´´P [
)
´´[ \
{
¨¨ 	
try
≠≠ 
{
ÆÆ 
return
ØØ 
controlador
ØØ "
.
ØØ" #
ObtenerJugadores
ØØ# 3
(
ØØ3 4
)
ØØ4 5
?
ØØ5 6
.
ØØ6 7
ToList
ØØ7 =
(
ØØ= >
)
ØØ> ?
;
ØØ? @
}
∞∞ 
catch
±± 
(
±± 
EntityException
±± "
ex
±±# %
)
±±% &
{
≤≤ 
_logger
≥≥ 
.
≥≥ 
Error
≥≥ 
(
≥≥ 
$str
¥¥ O
,
¥¥O P
ex
µµ 
)
µµ 
;
µµ 
return
∂∂ 
new
∂∂ 
List
∂∂ 
<
∂∂  
JugadorPartida
∂∂  .
>
∂∂. /
(
∂∂/ 0
)
∂∂0 1
;
∂∂1 2
}
∑∑ 
catch
∏∏ 
(
∏∏ 
DbUpdateException
∏∏ $
ex
∏∏% '
)
∏∏' (
{
ππ 
_logger
∫∫ 
.
∫∫ 
Error
∫∫ 
(
∫∫ 
$str
ªª O
,
ªªO P
ex
ºº 
)
ºº 
;
ºº 
return
ΩΩ 
new
ΩΩ 
List
ΩΩ 
<
ΩΩ  
JugadorPartida
ΩΩ  .
>
ΩΩ. /
(
ΩΩ/ 0
)
ΩΩ0 1
;
ΩΩ1 2
}
ææ 
catch
øø 
(
øø 
DataException
øø  
ex
øø! #
)
øø# $
{
¿¿ 
_logger
¡¡ 
.
¡¡ 
Error
¡¡ 
(
¡¡ 
$str
¬¬ O
,
¬¬O P
ex
√√ 
)
√√ 
;
√√ 
return
ƒƒ 
new
ƒƒ 
List
ƒƒ 
<
ƒƒ  
JugadorPartida
ƒƒ  .
>
ƒƒ. /
(
ƒƒ/ 0
)
ƒƒ0 1
;
ƒƒ1 2
}
≈≈ 
}
«« 	
private
…… 
HashSet
…… 
<
…… 
string
…… 
>
…… 
CalcularGanadores
……  1
(
……1 2
List
……2 6
<
……6 7
JugadorPartida
……7 E
>
……E F
	jugadores
……G P
)
……P Q
{
   	
int
ÀÀ 
puntajeMaximo
ÀÀ 
=
ÀÀ 
	jugadores
ÀÀ  )
.
ÀÀ) *
Max
ÀÀ* -
(
ÀÀ- .
j
ÀÀ. /
=>
ÀÀ0 2
j
ÀÀ3 4
.
ÀÀ4 5
PuntajeTotal
ÀÀ5 A
)
ÀÀA B
;
ÀÀB C
return
ÕÕ 
	jugadores
ÕÕ 
.
ŒŒ 
Where
ŒŒ 
(
ŒŒ 
j
ŒŒ 
=>
ŒŒ 
j
ŒŒ 
.
ŒŒ 
PuntajeTotal
ŒŒ *
==
ŒŒ+ -
puntajeMaximo
ŒŒ. ;
)
ŒŒ; <
.
œœ 
Select
œœ 
(
œœ 
j
œœ 
=>
œœ 
j
œœ 
.
œœ 

IdConexion
œœ )
)
œœ) *
.
–– 
	ToHashSet
–– 
(
–– 
StringComparer
–– )
.
––) *
OrdinalIgnoreCase
––* ;
)
––; <
;
––< =
}
—— 	
private
”” 
void
”” *
PersistirEstadisticasJugador
”” 1
(
””1 2&
ClasificacionRepositorio
‘‘ $
repositorio
‘‘% 0
,
‘‘0 1
JugadorPartida
’’ 
jugador
’’ "
,
’’" #
HashSet
÷÷ 
<
÷÷ 
string
÷÷ 
>
÷÷ 
	ganadores
÷÷ %
)
÷÷% &
{
◊◊ 	
if
ÿÿ 
(
ÿÿ 
!
ÿÿ 
int
ÿÿ 
.
ÿÿ 
TryParse
ÿÿ 
(
ÿÿ 
jugador
ÿÿ %
.
ÿÿ% &

IdConexion
ÿÿ& 0
,
ÿÿ0 1
out
ÿÿ2 5
int
ÿÿ6 9
	jugadorId
ÿÿ: C
)
ÿÿC D
||
ÿÿE G
	jugadorId
ÿÿH Q
<=
ÿÿR T
$num
ÿÿU V
)
ÿÿV W
{
ŸŸ 
return
⁄⁄ 
;
⁄⁄ 
}
€€ 
bool
›› 
ganoPartida
›› 
=
›› 
	ganadores
›› (
.
››( )
Contains
››) 1
(
››1 2
jugador
››2 9
.
››9 :

IdConexion
››: D
)
››D E
;
››E F
try
ﬂﬂ 
{
‡‡ 
repositorio
·· 
.
·· $
ActualizarEstadisticas
·· 2
(
··2 3
	jugadorId
‚‚ 
,
‚‚ 
jugador
„„ 
.
„„ 
PuntajeTotal
„„ (
,
„„( )
ganoPartida
‰‰ 
)
‰‰  
;
‰‰  !
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
EntityException
ÊÊ "
ex
ÊÊ# %
)
ÊÊ% &
{
ÁÁ 
_logger
ËË 
.
ËË 
ErrorFormat
ËË #
(
ËË# $
$str
ÈÈ J
,
ÈÈJ K
	jugadorId
ÍÍ 
,
ÍÍ 
ex
ÎÎ 
)
ÎÎ 
;
ÎÎ 
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
DbUpdateException
ÌÌ $
ex
ÌÌ% '
)
ÌÌ' (
{
ÓÓ 
_logger
ÔÔ 
.
ÔÔ 
ErrorFormat
ÔÔ #
(
ÔÔ# $
$str
 J
,
J K
	jugadorId
ÒÒ 
,
ÒÒ 
ex
ÚÚ 
)
ÚÚ 
;
ÚÚ 
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
DataException
ÙÙ  
ex
ÙÙ! #
)
ÙÙ# $
{
ıı 
_logger
ˆˆ 
.
ˆˆ 
ErrorFormat
ˆˆ #
(
ˆˆ# $
$str
˜˜ J
,
˜˜J K
	jugadorId
¯¯ 
,
¯¯ 
ex
˘˘ 
)
˘˘ 
;
˘˘ 
}
˙˙ 
}
¸¸ 	
private
˛˛ 
void
˛˛  
NotificarCallbacks
˛˛ '
(
˛˛' (
string
ˇˇ 
idSala
ˇˇ 
,
ˇˇ 
Action
ÄÄ 
<
ÄÄ ,
ICursoPartidaManejadorCallback
ÄÄ 1
>
ÄÄ1 2
accion
ÄÄ3 9
)
ÄÄ9 :
{
ÅÅ 	
List
ÇÇ 
<
ÇÇ 
KeyValuePair
ÇÇ 
<
ÇÇ 
string
ÇÇ $
,
ÇÇ$ %,
ICursoPartidaManejadorCallback
ÇÇ& D
>
ÇÇD E
>
ÇÇE F
	callbacks
ÇÇG P
;
ÇÇP Q
lock
ÉÉ 
(
ÉÉ 
_sincronizacion
ÉÉ !
)
ÉÉ! "
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 
!
ÖÖ 
_callbacksPorSala
ÖÖ &
.
ÖÖ& '
TryGetValue
ÖÖ' 2
(
ÖÖ2 3
idSala
ÖÖ3 9
,
ÖÖ9 :
out
ÖÖ; >
var
ÖÖ? B
callbacksSala
ÖÖC P
)
ÖÖP Q
)
ÖÖQ R
{
ÜÜ 
return
áá 
;
áá 
}
àà 
	callbacks
ää 
=
ää 
callbacksSala
ää )
.
ää) *
ToList
ää* 0
(
ää0 1
)
ää1 2
;
ää2 3
}
ãã 
foreach
çç 
(
çç 
var
çç 
par
çç 
in
çç 
	callbacks
çç  )
)
çç) *
{
éé 
try
èè 
{
êê 
if
ëë 
(
ëë 
!
ëë 
CanalActivo
ëë $
(
ëë$ %
par
ëë% (
.
ëë( )
Value
ëë) .
)
ëë. /
)
ëë/ 0
{
íí 
_logger
ìì 
.
ìì  

WarnFormat
ìì  *
(
ìì* +
$str
îî V
,
îîV W
par
ïï 
.
ïï  
Key
ïï  #
,
ïï# $
idSala
ññ "
)
ññ" #
;
ññ# $
RemoverCallback
òò '
(
òò' (
idSala
òò( .
,
òò. /
par
òò0 3
.
òò3 4
Key
òò4 7
)
òò7 8
;
òò8 9
continue
ôô  
;
ôô  !
}
öö 
accion
õõ 
(
õõ 
par
õõ 
.
õõ 
Value
õõ $
)
õõ$ %
;
õõ% &
}
úú 
catch
ùù 
(
ùù %
ObjectDisposedException
ùù .
ex
ùù/ 1
)
ùù1 2
{
ûû 
_logger
üü 
.
üü 

WarnFormat
üü &
(
üü& '
$str
†† S
,
††S T
par
°° 
.
°° 
Key
°° 
,
°°  
idSala
¢¢ 
)
¢¢ 
;
¢¢  
_logger
££ 
.
££ 
Warn
££  
(
££  !
ex
££! #
)
££# $
;
££$ %
RemoverCallback
§§ #
(
§§# $
idSala
§§$ *
,
§§* +
par
§§, /
.
§§/ 0
Key
§§0 3
)
§§3 4
;
§§4 5
}
•• 
catch
¶¶ 
(
¶¶ 1
#CommunicationObjectFaultedException
¶¶ :
ex
¶¶; =
)
¶¶= >
{
ßß 
_logger
®® 
.
®® 

WarnFormat
®® &
(
®®& '
$str
©© R
,
©©R S
par
™™ 
.
™™ 
Key
™™ 
,
™™  
idSala
´´ 
)
´´ 
;
´´  
_logger
¨¨ 
.
¨¨ 
Warn
¨¨  
(
¨¨  !
ex
¨¨! #
)
¨¨# $
;
¨¨$ %
RemoverCallback
≠≠ #
(
≠≠# $
idSala
≠≠$ *
,
≠≠* +
par
≠≠, /
.
≠≠/ 0
Key
≠≠0 3
)
≠≠3 4
;
≠≠4 5
}
ÆÆ 
catch
ØØ 
(
ØØ $
CommunicationException
ØØ -
ex
ØØ. 0
)
ØØ0 1
{
∞∞ 
_logger
±± 
.
±± 

WarnFormat
±± &
(
±±& '
$str
≤≤ U
,
≤≤U V
par
≥≥ 
.
≥≥ 
Key
≥≥ 
,
≥≥  
idSala
¥¥ 
)
¥¥ 
;
¥¥  
_logger
µµ 
.
µµ 
Warn
µµ  
(
µµ  !
ex
µµ! #
)
µµ# $
;
µµ$ %
RemoverCallback
∂∂ #
(
∂∂# $
idSala
∂∂$ *
,
∂∂* +
par
∂∂, /
.
∂∂/ 0
Key
∂∂0 3
)
∂∂3 4
;
∂∂4 5
}
∑∑ 
catch
∏∏ 
(
∏∏ 
TimeoutException
∏∏ '
ex
∏∏( *
)
∏∏* +
{
ππ 
_logger
∫∫ 
.
∫∫ 

WarnFormat
∫∫ &
(
∫∫& '
$str
ªª J
,
ªªJ K
par
ºº 
.
ºº 
Key
ºº 
,
ºº  
idSala
ΩΩ 
)
ΩΩ 
;
ΩΩ  
_logger
ææ 
.
ææ 
Warn
ææ  
(
ææ  !
ex
ææ! #
)
ææ# $
;
ææ$ %
RemoverCallback
øø #
(
øø# $
idSala
øø$ *
,
øø* +
par
øø, /
.
øø/ 0
Key
øø0 3
)
øø3 4
;
øø4 5
}
¿¿ 
}
¡¡ 
}
¬¬ 	
private
ƒƒ 
static
ƒƒ 
bool
ƒƒ 
CanalActivo
ƒƒ '
(
ƒƒ' (,
ICursoPartidaManejadorCallback
ƒƒ( F
callback
ƒƒG O
)
ƒƒO P
{
≈≈ 	
if
∆∆ 
(
∆∆ 
callback
∆∆ 
is
∆∆ "
ICommunicationObject
∆∆ 0
canal
∆∆1 6
)
∆∆6 7
{
«« 
return
»» 
canal
»» 
.
»» 
State
»» "
==
»»# % 
CommunicationState
»»& 8
.
»»8 9
Opened
»»9 ?
;
»»? @
}
…… 
return
ÀÀ 
true
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ 
RegistrarCallback
ŒŒ &
(
ŒŒ& '
string
œœ 
idSala
œœ 
,
œœ 
string
–– 
	idJugador
–– 
,
–– ,
ICursoPartidaManejadorCallback
—— *
callback
——+ 3
)
——3 4
{
““ 	
lock
”” 
(
”” 
_sincronizacion
”” !
)
””! "
{
‘‘ 
if
’’ 
(
’’ 
!
’’ 
_callbacksPorSala
’’ &
.
’’& '
TryGetValue
’’' 2
(
’’2 3
idSala
’’3 9
,
’’9 :
out
’’; >
var
’’? B
	callbacks
’’C L
)
’’L M
)
’’M N
{
÷÷ 
	callbacks
◊◊ 
=
◊◊ 
new
◊◊  #

Dictionary
◊◊$ .
<
◊◊. /
string
◊◊/ 5
,
◊◊5 6,
ICursoPartidaManejadorCallback
◊◊7 U
>
◊◊U V
(
◊◊V W
StringComparer
ÿÿ &
.
ÿÿ& '
OrdinalIgnoreCase
ÿÿ' 8
)
ÿÿ8 9
;
ÿÿ9 :
_callbacksPorSala
⁄⁄ %
[
⁄⁄% &
idSala
⁄⁄& ,
]
⁄⁄, -
=
⁄⁄. /
	callbacks
⁄⁄0 9
;
⁄⁄9 :
}
€€ 
	callbacks
›› 
[
›› 
	idJugador
›› #
]
››# $
=
››% &
callback
››' /
;
››/ 0
}
ﬁﬁ 
var
‡‡ 
canal
‡‡ 
=
‡‡ 
OperationContext
‡‡ (
.
‡‡( )
Current
‡‡) 0
?
‡‡0 1
.
‡‡1 2
Channel
‡‡2 9
;
‡‡9 :
if
·· 
(
·· 
canal
·· 
!=
·· 
null
·· 
)
·· 
{
‚‚ 
canal
„„ 
.
„„ 
Closed
„„ 
+=
„„ 
(
„„  !
_
„„! "
,
„„" #
__
„„$ &
)
„„& '
=>
„„( *
RemoverCallback
„„+ :
(
„„: ;
idSala
„„; A
,
„„A B
	idJugador
„„C L
)
„„L M
;
„„M N
canal
‰‰ 
.
‰‰ 
Faulted
‰‰ 
+=
‰‰  
(
‰‰! "
_
‰‰" #
,
‰‰# $
__
‰‰% '
)
‰‰' (
=>
‰‰) +
RemoverCallback
‰‰, ;
(
‰‰; <
idSala
‰‰< B
,
‰‰B C
	idJugador
‰‰D M
)
‰‰M N
;
‰‰N O
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË 
RemoverCallback
ËË $
(
ËË$ %
string
ËË% +
idSala
ËË, 2
,
ËË2 3
string
ËË4 :
	idJugador
ËË; D
)
ËËD E
{
ÈÈ 	
lock
ÍÍ 
(
ÍÍ 
_sincronizacion
ÍÍ !
)
ÍÍ! "
{
ÎÎ 
if
ÏÏ 
(
ÏÏ 
_callbacksPorSala
ÏÏ %
.
ÏÏ% &
TryGetValue
ÏÏ& 1
(
ÏÏ1 2
idSala
ÏÏ2 8
,
ÏÏ8 9
out
ÏÏ: =
var
ÏÏ> A
	callbacks
ÏÏB K
)
ÏÏK L
)
ÏÏL M
{
ÌÌ 
	callbacks
ÓÓ 
.
ÓÓ 
Remove
ÓÓ $
(
ÓÓ$ %
	idJugador
ÓÓ% .
)
ÓÓ. /
;
ÓÓ/ 0
}
ÔÔ 
if
ÒÒ 
(
ÒÒ 
_partidasActivas
ÒÒ $
.
ÒÒ$ %
TryGetValue
ÒÒ% 0
(
ÒÒ0 1
idSala
ÒÒ1 7
,
ÒÒ7 8
out
ÒÒ9 <
var
ÒÒ= @
controlador
ÒÒA L
)
ÒÒL M
&&
ÚÚ 
!
ÚÚ 
controlador
ÚÚ #
.
ÚÚ# $
EstaFinalizada
ÚÚ$ 2
)
ÚÚ2 3
{
ÛÛ 
controlador
ÙÙ 
.
ÙÙ  
RemoverJugador
ÙÙ  .
(
ÙÙ. /
	idJugador
ÙÙ/ 8
)
ÙÙ8 9
;
ÙÙ9 :
}
ıı 
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
static
˘˘ ,
ICursoPartidaManejadorCallback
˘˘ 5#
ObtenerCallbackActual
˘˘6 K
(
˘˘K L
)
˘˘L M
{
˙˙ 	
var
˚˚ 
contexto
˚˚ 
=
˚˚ 
OperationContext
˚˚ +
.
˚˚+ ,
Current
˚˚, 3
;
˚˚3 4
if
¸¸ 
(
¸¸ 
contexto
¸¸ 
==
¸¸ 
null
¸¸  
)
¸¸  !
{
˝˝ 
throw
˛˛ 
new
˛˛ 
FaultException
˛˛ (
(
˛˛( )
$str
˛˛) Z
)
˛˛Z [
;
˛˛[ \
}
ˇˇ 
var
ÅÅ 
callback
ÅÅ 
=
ÅÅ 
contexto
ÅÅ #
.
ÅÅ# $ 
GetCallbackChannel
ÅÅ$ 6
<
ÅÅ6 7,
ICursoPartidaManejadorCallback
ÅÅ7 U
>
ÅÅU V
(
ÅÅV W
)
ÅÅW X
;
ÅÅX Y
if
ÇÇ 
(
ÇÇ 
callback
ÇÇ 
==
ÇÇ 
null
ÇÇ  
)
ÇÇ  !
{
ÉÉ 
throw
ÑÑ 
new
ÑÑ 
FaultException
ÑÑ (
(
ÑÑ( )
$str
ÑÑ) V
)
ÑÑV W
;
ÑÑW X
}
ÖÖ 
return
áá 
callback
áá 
;
áá 
}
àà 	
private
ää %
ConfiguracionPartidaDTO
ää '&
ObtenerConfiguracionSala
ää( @
(
ää@ A
string
ääA G
idSala
ääH N
)
ääN O
{
ãã 	
try
åå 
{
çç 
return
éé 
_salasManejador
éé &
.
éé& '"
ObtenerSalaPorCodigo
éé' ;
(
éé; <
idSala
éé< B
)
ééB C
?
ééC D
.
ééD E
Configuracion
ééE R
;
ééR S
}
èè 
catch
êê 
(
êê $
CommunicationException
êê )
ex
êê* ,
)
êê, -
{
ëë 
_logger
íí 
.
íí 

WarnFormat
íí "
(
íí" #
$str
ìì [
,
ìì[ \
idSala
îî 
)
îî 
;
îî 
_logger
ïï 
.
ïï 
Warn
ïï 
(
ïï 
ex
ïï 
)
ïï  
;
ïï  !
return
ññ *
CrearConfiguracionPorDefecto
ññ 3
(
ññ3 4
)
ññ4 5
;
ññ5 6
}
óó 
catch
òò 
(
òò 
TimeoutException
òò #
ex
òò$ &
)
òò& '
{
ôô 
_logger
öö 
.
öö 

WarnFormat
öö "
(
öö" #
$str
õõ [
,
õõ[ \
idSala
úú 
)
úú 
;
úú 
_logger
ùù 
.
ùù 
Warn
ùù 
(
ùù 
ex
ùù 
)
ùù  
;
ùù  !
return
ûû *
CrearConfiguracionPorDefecto
ûû 3
(
ûû3 4
)
ûû4 5
;
ûû5 6
}
üü 
catch
†† 
(
†† %
ObjectDisposedException
†† *
ex
††+ -
)
††- .
{
°° 
_logger
¢¢ 
.
¢¢ 

WarnFormat
¢¢ "
(
¢¢" #
$str
££ [
,
££[ \
idSala
§§ 
)
§§ 
;
§§ 
_logger
•• 
.
•• 
Warn
•• 
(
•• 
ex
•• 
)
••  
;
••  !
return
¶¶ *
CrearConfiguracionPorDefecto
¶¶ 3
(
¶¶3 4
)
¶¶4 5
;
¶¶5 6
}
ßß 
}
®® 	
private
™™ %
ConfiguracionPartidaDTO
™™ '*
CrearConfiguracionPorDefecto
™™( D
(
™™D E
)
™™E F
{
´´ 	
return
¨¨ 
new
¨¨ %
ConfiguracionPartidaDTO
¨¨ .
{
≠≠ $
TiempoPorRondaSegundos
ÆÆ &
=
ÆÆ' (+
TiempoRondaPorDefectoSegundos
ÆÆ) F
,
ÆÆF G
NumeroRondas
ØØ 
=
ØØ $
NumeroRondasPorDefecto
ØØ 5
,
ØØ5 6

Dificultad
∞∞ 
=
∞∞ "
DificultadPorDefecto
∞∞ 1
,
∞∞1 2
IdiomaCanciones
±± 
=
±±  !
$str
±±" +
}
≤≤ 
;
≤≤ 
}
≥≥ 	
}
¥¥ 
}µµ øà
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\CuentaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class 
CuentaManejador  
:! "
ICuentaManejador# 3
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
CuentaManejadorK Z
)Z [
)[ \
;\ ]
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
private 
readonly )
IVerificacionRegistroServicio 6!
_verificacionServicio7 L
;L M
public 
CuentaManejador 
( 
)  
:! "
this# '
(' (
new 
ContextoFactoria  
(  !
)! "
," #
new (
VerificacionRegistroServicio ,
(, -
new   
ContextoFactoria   $
(  $ %
)  % &
,  & '
new!! '
NotificacionCodigosServicio!! /
(!!/ 0
new!!0 3/
#CorreoCodigoVerificacionNotificador!!4 W
(!!W X
)!!X Y
)!!Y Z
)!!Z [
)!![ \
{"" 	
}## 	
public%% 
CuentaManejador%% 
(%% 
IContextoFactoria&& 
contextoFactory&& -
,&&- .)
IVerificacionRegistroServicio'' ) 
verificacionServicio''* >
)''> ?
{(( 	
_contextoFactory)) 
=)) 
contextoFactory)) .
??))/ 1
throw** 
new** !
ArgumentNullException** /
(**/ 0
nameof**0 6
(**6 7
contextoFactory**7 F
)**F G
)**G H
;**H I!
_verificacionServicio,, !
=,," # 
verificacionServicio,,$ 8
??,,9 ;
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
nameof--0 6
(--6 7 
verificacionServicio--7 K
)--K L
)--L M
;--M N
}.. 	
public44 &
ResultadoRegistroCuentaDTO44 )
RegistrarCuenta44* 9
(449 :
NuevaCuentaDTO44: H
nuevaCuenta44I T
)44T U
{55 	
var66 
validacionInicial66 !
=66" #
ValidarDatosEntrada66$ 7
(667 8
nuevaCuenta668 C
)66C D
;66D E
if77 
(77 
!77 
validacionInicial77 "
.77" #
OperacionExitosa77# 3
)773 4
{88 
return99 
new99 &
ResultadoRegistroCuentaDTO99 5
{:: 
RegistroExitoso;; #
=;;$ %
false;;& +
,;;+ ,
Mensaje<< 
=<< 
validacionInicial<< /
.<</ 0
Mensaje<<0 7
}== 
;== 
}>> 
try@@ 
{AA 
usingBB 
(BB 
varBB 
contextoBB #
=BB$ %
_contextoFactoryBB& 6
.BB6 7
CrearContextoBB7 D
(BBD E
)BBE F
)BBF G
{CC 
varDD 
validacionNegocioDD )
=DD* +$
VerificarReglasDeNegocioDD, D
(DDD E
contextoDDE M
,DDM N
nuevaCuentaDDO Z
)DDZ [
;DD[ \
ifEE 
(EE 
!EE 
validacionNegocioEE *
.EE* +
RegistroExitosoEE+ :
)EE: ;
{FF 
returnGG 
validacionNegocioGG 0
;GG0 1
}HH '
EjecutarTransaccionRegistroJJ /
(JJ/ 0
contextoJJ0 8
,JJ8 9
nuevaCuentaJJ: E
)JJE F
;JJF G!
_verificacionServicioLL )
.LL) *
LimpiarVerificacionLL* =
(LL= >
nuevaCuentaLL> I
)LLI J
;LLJ K
returnNN 
newNN &
ResultadoRegistroCuentaDTONN 9
{OO 
RegistroExitosoPP '
=PP( )
truePP* .
}QQ 
;QQ 
}RR 
}SS 
catchTT 
(TT '
DbEntityValidationExceptionTT .
exTT/ 1
)TT1 2
{UU 
_loggerVV 
.VV 
ErrorVV 
(VV 
$strVV R
,VVR S
exVVT V
)VVV W
;VVW X
returnWW 
CrearFalloRegistroWW )
(WW) *
MensajesErrorWW* 7
.WW7 8
ClienteWW8 ?
.WW? @ 
ErrorRegistrarCuentaWW@ T
)WWT U
;WWU V
}XX 
catchYY 
(YY 
DbUpdateExceptionYY $
exYY% '
)YY' (
{ZZ 
_logger[[ 
.[[ 
Error[[ 
([[ 
$str[[ Q
,[[Q R
ex[[S U
)[[U V
;[[V W
return\\ 
CrearFalloRegistro\\ )
(\\) *
MensajesError\\* 7
.\\7 8
Cliente\\8 ?
.\\? @ 
ErrorRegistrarCuenta\\@ T
)\\T U
;\\U V
}]] 
catch^^ 
(^^ 
EntityException^^ "
ex^^# %
)^^% &
{__ 
_logger`` 
.`` 
Error`` 
(`` 
$str`` K
,``K L
ex``M O
)``O P
;``P Q
returnaa 
CrearFalloRegistroaa )
(aa) *
MensajesErroraa* 7
.aa7 8
Clienteaa8 ?
.aa? @ 
ErrorRegistrarCuentaaa@ T
)aaT U
;aaU V
}bb 
catchcc 
(cc 
DataExceptioncc  
excc! #
)cc# $
{dd 
_loggeree 
.ee 
Erroree 
(ee 
$stree C
,eeC D
exeeE G
)eeG H
;eeH I
returnff 
CrearFalloRegistroff )
(ff) *
MensajesErrorff* 7
.ff7 8
Clienteff8 ?
.ff? @ 
ErrorRegistrarCuentaff@ T
)ffT U
;ffU V
}gg 
catchhh 
(hh %
InvalidOperationExceptionhh ,
exhh- /
)hh/ 0
{ii 
_loggerjj 
.jj 
Errorjj 
(jj 
$strjj G
,jjG H
exjjI K
)jjK L
;jjL M
returnkk 
CrearFalloRegistrokk )
(kk) *
MensajesErrorkk* 7
.kk7 8
Clientekk8 ?
.kk? @ 
ErrorRegistrarCuentakk@ T
)kkT U
;kkU V
}ll 
}mm 	
publicrr '
ResultadoSolicitudCodigoDTOrr *'
SolicitarCodigoVerificacionrr+ F
(rrF G
NuevaCuentaDTOrrG U
nuevaCuentarrV a
)rra b
{ss 	
returntt !
_verificacionServiciott (
.tt( )
SolicitarCodigott) 8
(tt8 9
nuevaCuentatt9 D
)ttD E
;ttE F
}uu 	
publiczz '
ResultadoSolicitudCodigoDTOzz *&
ReenviarCodigoVerificacionzz+ E
(zzE F(
ReenvioCodigoVerificacionDTO{{ (
	solicitud{{) 2
){{2 3
{|| 	
return}} !
_verificacionServicio}} (
.}}( )
ReenviarCodigo}}) 7
(}}7 8
	solicitud}}8 A
)}}A B
;}}B C
}~~ 	
public
ÉÉ (
ResultadoRegistroCuentaDTO
ÉÉ ))
ConfirmarCodigoVerificacion
ÉÉ* E
(
ÉÉE F#
ConfirmacionCodigoDTO
ÑÑ !
confirmacion
ÑÑ" .
)
ÑÑ. /
{
ÖÖ 	
return
ÜÜ #
_verificacionServicio
ÜÜ (
.
ÜÜ( )
ConfirmarCodigo
ÜÜ) 8
(
ÜÜ8 9
confirmacion
ÜÜ9 E
)
ÜÜE F
;
ÜÜF G
}
áá 	
private
ââ #
ResultadoOperacionDTO
ââ %!
ValidarDatosEntrada
ââ& 9
(
ââ9 :
NuevaCuentaDTO
ââ: H
nuevaCuenta
ââI T
)
ââT U
{
ää 	
if
ãã 
(
ãã 
nuevaCuenta
ãã 
==
ãã 
null
ãã #
)
ãã# $
{
åå 
throw
çç 
new
çç #
ArgumentNullException
çç /
(
çç/ 0
nameof
çç0 6
(
çç6 7
nuevaCuenta
çç7 B
)
ççB C
)
ççC D
;
ççD E
}
éé 
return
êê #
EntradaComunValidador
êê (
.
êê( ) 
ValidarNuevaCuenta
êê) ;
(
êê; <
nuevaCuenta
êê< G
)
êêG H
;
êêH I
}
ëë 	
private
ìì (
ResultadoRegistroCuentaDTO
ìì *&
VerificarReglasDeNegocio
ìì+ C
(
ììC D%
BaseDatosPruebaEntities
îî #
contexto
îî$ ,
,
îî, -
NuevaCuentaDTO
ïï 
nuevaCuenta
ïï &
)
ïï& '
{
ññ 	
if
óó 
(
óó 
!
óó '
VerificarEstadoValidacion
óó *
(
óó* +
nuevaCuenta
óó+ 6
)
óó6 7
)
óó7 8
{
òò 
return
ôô 
new
ôô (
ResultadoRegistroCuentaDTO
ôô 5
{
öö 
RegistroExitoso
õõ #
=
õõ$ %
false
õõ& +
,
õõ+ ,
Mensaje
úú 
=
úú 
MensajesError
úú +
.
úú+ ,
Cliente
úú, 3
.
úú3 4 
CuentaNoVerificada
úú4 F
}
ùù 
;
ùù 
}
ûû 
if
†† 
(
†† !
VerificarDuplicados
†† #
(
††# $
contexto
††$ ,
,
††, -
nuevaCuenta
††. 9
)
††9 :
)
††: ;
{
°° 
return
¢¢ 
new
¢¢ (
ResultadoRegistroCuentaDTO
¢¢ 5
{
££ 
RegistroExitoso
§§ #
=
§§$ %
false
§§& +
,
§§+ ,
UsuarioRegistrado
•• %
=
••& '
true
••( ,
,
••, -
CorreoRegistrado
¶¶ $
=
¶¶% &
true
¶¶' +
,
¶¶+ ,
Mensaje
ßß 
=
ßß 
null
ßß "
}
®® 
;
®® 
}
©© 
if
´´ 
(
´´ 
nuevaCuenta
´´ 
.
´´ 
AvatarId
´´ $
<=
´´% '
$num
´´( )
)
´´) *
{
¨¨ 
return
≠≠ 
new
≠≠ (
ResultadoRegistroCuentaDTO
≠≠ 5
{
ÆÆ 
RegistroExitoso
ØØ #
=
ØØ$ %
false
ØØ& +
,
ØØ+ ,
Mensaje
∞∞ 
=
∞∞ 
MensajesError
∞∞ +
.
∞∞+ ,
Cliente
∞∞, 3
.
∞∞3 4
AvatarInvalido
∞∞4 B
}
±± 
;
±± 
}
≤≤ 
return
¥¥ 
new
¥¥ (
ResultadoRegistroCuentaDTO
¥¥ 1
{
¥¥2 3
RegistroExitoso
¥¥4 C
=
¥¥D E
true
¥¥F J
}
¥¥K L
;
¥¥L M
}
µµ 	
private
∑∑ 
bool
∑∑ '
VerificarEstadoValidacion
∑∑ .
(
∑∑. /
NuevaCuentaDTO
∑∑/ =
nuevaCuenta
∑∑> I
)
∑∑I J
{
∏∏ 	
if
ππ 
(
ππ 
!
ππ #
_verificacionServicio
ππ &
.
ππ& '(
EstaVerificacionConfirmada
ππ' A
(
ππA B
nuevaCuenta
ππB M
)
ππM N
)
ππN O
{
∫∫ 
_logger
ªª 
.
ªª 
Warn
ªª 
(
ªª 
$str
ªª O
)
ªªO P
;
ªªP Q
return
ºº 
false
ºº 
;
ºº 
}
ΩΩ 
return
ææ 
true
ææ 
;
ææ 
}
øø 	
private
¡¡ 
bool
¡¡ !
VerificarDuplicados
¡¡ (
(
¡¡( )%
BaseDatosPruebaEntities
¬¬ #
contexto
¬¬$ ,
,
¬¬, -
NuevaCuentaDTO
√√ 
nuevaCuenta
√√ &
)
√√& '
{
ƒƒ 	
bool
≈≈ 
usuarioRegistrado
≈≈ "
=
≈≈# $
contexto
≈≈% -
.
≈≈- .
Usuario
≈≈. 5
.
≈≈5 6
Any
≈≈6 9
(
≈≈9 :
u
∆∆ 
=>
∆∆ 
u
∆∆ 
.
∆∆ 
Nombre_Usuario
∆∆ %
==
∆∆& (
nuevaCuenta
∆∆) 4
.
∆∆4 5
Usuario
∆∆5 <
)
∆∆< =
;
∆∆= >
bool
»» 
correoRegistrado
»» !
=
»»" #
contexto
»»$ ,
.
»», -
Jugador
»»- 4
.
»»4 5
Any
»»5 8
(
»»8 9
j
…… 
=>
…… 
j
…… 
.
…… 
Correo
…… 
==
……  
nuevaCuenta
……! ,
.
……, -
Correo
……- 3
)
……3 4
;
……4 5
if
ÀÀ 
(
ÀÀ 
usuarioRegistrado
ÀÀ !
||
ÀÀ" $
correoRegistrado
ÀÀ% 5
)
ÀÀ5 6
{
ÃÃ 
_logger
ÕÕ 
.
ÕÕ 
Warn
ÕÕ 
(
ÕÕ 
$str
ÕÕ Y
)
ÕÕY Z
;
ÕÕZ [
return
ŒŒ 
true
ŒŒ 
;
ŒŒ 
}
œœ 
return
—— 
false
—— 
;
—— 
}
““ 	
private
‘‘ 
void
‘‘ )
EjecutarTransaccionRegistro
‘‘ 0
(
‘‘0 1%
BaseDatosPruebaEntities
’’ #
contexto
’’$ ,
,
’’, -
NuevaCuentaDTO
÷÷ 
nuevaCuenta
÷÷ &
)
÷÷& '
{
◊◊ 	
using
ÿÿ 
(
ÿÿ 
var
ÿÿ 
transaccion
ÿÿ "
=
ÿÿ# $
contexto
ÿÿ% -
.
ÿÿ- .
Database
ÿÿ. 6
.
ÿÿ6 7
BeginTransaction
ÿÿ7 G
(
ÿÿG H
)
ÿÿH I
)
ÿÿI J
{
ŸŸ 
var
⁄⁄ &
clasificacionRepositorio
⁄⁄ ,
=
⁄⁄- .
new
⁄⁄/ 2&
ClasificacionRepositorio
⁄⁄3 K
(
⁄⁄K L
contexto
⁄⁄L T
)
⁄⁄T U
;
⁄⁄U V
var
€€ 
clasificacion
€€ !
=
€€" #&
clasificacionRepositorio
€€$ <
.
€€< ='
CrearClasificacionInicial
€€= V
(
€€V W
)
€€W X
;
€€X Y
var
››  
jugadorRepositorio
›› &
=
››' (
new
››) , 
JugadorRepositorio
››- ?
(
››? @
contexto
››@ H
)
››H I
;
››I J
var
ﬁﬁ 
jugador
ﬁﬁ 
=
ﬁﬁ  
jugadorRepositorio
ﬁﬁ 0
.
ﬁﬁ0 1
CrearJugador
ﬁﬁ1 =
(
ﬁﬁ= >
new
ﬁﬁ> A
Jugador
ﬁﬁB I
{
ﬂﬂ 
Nombre
‡‡ 
=
‡‡ 
nuevaCuenta
‡‡ (
.
‡‡( )
Nombre
‡‡) /
,
‡‡/ 0
Apellido
·· 
=
·· 
nuevaCuenta
·· *
.
··* +
Apellido
··+ 3
,
··3 4
Correo
‚‚ 
=
‚‚ 
nuevaCuenta
‚‚ (
.
‚‚( )
Correo
‚‚) /
,
‚‚/ 0
	Id_Avatar
„„ 
=
„„ 
nuevaCuenta
„„  +
.
„„+ ,
AvatarId
„„, 4
,
„„4 5+
Clasificacion_idClasificacion
‰‰ 1
=
‰‰2 3
clasificacion
‰‰4 A
.
‰‰A B
idClasificacion
‰‰B Q
}
ÂÂ 
)
ÂÂ 
;
ÂÂ 
var
ÁÁ  
usuarioRepositorio
ÁÁ &
=
ÁÁ' (
new
ÁÁ) , 
UsuarioRepositorio
ÁÁ- ?
(
ÁÁ? @
contexto
ÁÁ@ H
)
ÁÁH I
;
ÁÁI J
var
ËË 
usuarioCreado
ËË !
=
ËË" # 
usuarioRepositorio
ËË$ 6
.
ËË6 7
CrearUsuario
ËË7 C
(
ËËC D
new
ËËD G
Usuario
ËËH O
{
ÈÈ 
Nombre_Usuario
ÍÍ "
=
ÍÍ# $
nuevaCuenta
ÍÍ% 0
.
ÍÍ0 1
Usuario
ÍÍ1 8
,
ÍÍ8 9

Contrasena
ÎÎ 
=
ÎÎ  
	BCryptNet
ÎÎ! *
.
ÎÎ* +
HashPassword
ÎÎ+ 7
(
ÎÎ7 8
nuevaCuenta
ÎÎ8 C
.
ÎÎC D

Contrasena
ÎÎD N
)
ÎÎN O
,
ÎÎO P
Jugador_idJugador
ÏÏ %
=
ÏÏ& '
jugador
ÏÏ( /
.
ÏÏ/ 0
	idJugador
ÏÏ0 9
}
ÌÌ 
)
ÌÌ 
;
ÌÌ 
transaccion
ÔÔ 
.
ÔÔ 
Commit
ÔÔ "
(
ÔÔ" #
)
ÔÔ# $
;
ÔÔ$ %
_logger
ÒÒ 
.
ÒÒ 

InfoFormat
ÒÒ "
(
ÒÒ" #
$str
ÚÚ U
,
ÚÚU V
usuarioCreado
ÛÛ !
.
ÛÛ! "
	idUsuario
ÛÛ" +
,
ÛÛ+ ,
jugador
ÙÙ 
.
ÙÙ 
	idJugador
ÙÙ %
)
ÙÙ% &
;
ÙÙ& '
}
ıı 
}
ˆˆ 	
private
¯¯ 
static
¯¯ (
ResultadoRegistroCuentaDTO
¯¯ 1 
CrearFalloRegistro
¯¯2 D
(
¯¯D E
string
¯¯E K
mensaje
¯¯L S
)
¯¯S T
{
˘˘ 	
return
˙˙ 
new
˙˙ (
ResultadoRegistroCuentaDTO
˙˙ 1
{
˚˚ 
RegistroExitoso
¸¸ 
=
¸¸  !
false
¸¸" '
,
¸¸' (
Mensaje
˝˝ 
=
˝˝ 
mensaje
˝˝ !
}
˛˛ 
;
˛˛ 
}
ˇˇ 	
}
ÄÄ 
}ÅÅ Õn
uC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\ListaAmigosManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyMode 
= 
ConcurrencyMode )
.) *
Multiple* 2
)2 3
]3 4
public 

class  
ListaAmigosManejador %
:& '!
IListaAmigosManejador( =
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' ( 
ListaAmigosManejador( <
)< =
)= >
;> ?
private 
readonly 
ManejadorCallback *
<* +)
IListaAmigosManejadorCallback+ H
>H I
_manejadorCallbackJ \
;\ ]
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
private   
readonly   
IAmistadServicio   )
_amistadServicio  * :
;  : ;
private!! 
readonly!! #
INotificadorListaAmigos!! 0
_notificador!!1 =
;!!= >
private"" 
readonly"" #
IValidadorNombreUsuario"" 0
_validadorUsuario""1 B
;""B C
public((  
ListaAmigosManejador(( #
(((# $
)(($ %
:((& '
this((( ,
(((, -
new)) 
ContextoFactoria))  
())  !
)))! "
,))" #
new** 
AmistadServicio** 
(**  
new**  #
ContextoFactoria**$ 4
(**4 5
)**5 6
)**6 7
,**7 8
new++ "
NotificadorListaAmigos++ &
(++& '
new,, 
ManejadorCallback,, %
<,,% &)
IListaAmigosManejadorCallback,,& C
>,,C D
(,,D E
StringComparer-- "
.--" #
OrdinalIgnoreCase--# 4
)--4 5
,--5 6
new.. 
AmistadServicio.. #
(..# $
new..$ '
ContextoFactoria..( 8
(..8 9
)..9 :
)..: ;
,..; <
new// 
UsuarioRepositorio// &
(//& '
new//' *
ContextoFactoria//+ ;
(//; <
)//< =
.//= >
CrearContexto//> K
(//K L
)//L M
)//M N
)//N O
,//O P
new00 "
ValidadorNombreUsuario00 &
(00& '
)00' (
)00( )
{11 	
}22 	
public77  
ListaAmigosManejador77 #
(77# $
IContextoFactoria88 
contextoFactory88 -
,88- .
IAmistadServicio99 
amistadServicio99 ,
,99, -#
INotificadorListaAmigos:: #
notificador::$ /
,::/ 0#
IValidadorNombreUsuario;; #
validadorUsuario;;$ 4
);;4 5
{<< 	
_contextoFactory== 
=== 
contextoFactory== .
??==/ 1
throw>> 
new>> !
ArgumentNullException>> /
(>>/ 0
nameof>>0 6
(>>6 7
contextoFactory>>7 F
)>>F G
)>>G H
;>>H I
_amistadServicio?? 
=?? 
amistadServicio?? .
????/ 1
throw@@ 
new@@ !
ArgumentNullException@@ /
(@@/ 0
nameof@@0 6
(@@6 7
amistadServicio@@7 F
)@@F G
)@@G H
;@@H I
_validadorUsuarioAA 
=AA 
validadorUsuarioAA  0
??AA1 3
throwBB 
newBB !
ArgumentNullExceptionBB /
(BB/ 0
nameofBB0 6
(BB6 7
validadorUsuarioBB7 G
)BBG H
)BBH I
;BBI J
_notificadorCC 
=CC 
notificadorCC &
??CC' )
throwDD 
newDD !
ArgumentNullExceptionDD /
(DD/ 0
nameofDD0 6
(DD6 7
notificadorDD7 B
)DDB C
)DDC D
;DDD E
_manejadorCallbackFF 
=FF  
newFF! $
ManejadorCallbackFF% 6
<FF6 7)
IListaAmigosManejadorCallbackFF7 T
>FFT U
(FFU V
StringComparerGG 
.GG 
OrdinalIgnoreCaseGG 0
)GG0 1
;GG1 2
}HH 	
publicOO 
voidOO 
	SuscribirOO 
(OO 
stringOO $
nombreUsuarioOO% 2
)OO2 3
{PP 	
tryQQ 
{RR 
_validadorUsuarioSS !
.SS! "
ValidarSS" )
(SS) *
nombreUsuarioSS* 7
,SS7 8
nameofSS9 ?
(SS? @
nombreUsuarioSS@ M
)SSM N
)SSN O
;SSO P
varUU 
amigosActualesUU "
=UU# $"
ObtenerAmigosPorNombreUU% ;
(UU; <
nombreUsuarioUU< I
)UUI J
;UUJ K)
IListaAmigosManejadorCallbackWW -
callbackWW. 6
=WW7 8
ManejadorCallbackXX %
<XX% &)
IListaAmigosManejadorCallbackXX& C
>XXC D
.XXD E!
ObtenerCallbackActualXXE Z
(XXZ [
)XX[ \
;XX\ ]
_manejadorCallbackZZ "
.ZZ" #
	SuscribirZZ# ,
(ZZ, -
nombreUsuarioZZ- :
,ZZ: ;
callbackZZ< D
)ZZD E
;ZZE F
_manejadorCallback[[ "
.[[" #"
ConfigurarEventosCanal[[# 9
([[9 :
nombreUsuario[[: G
)[[G H
;[[H I
_notificador]] 
.]] 
NotificarLista]] +
(]]+ ,
nombreUsuario]], 9
,]]9 :
amigosActuales]]; I
)]]I J
;]]J K
}^^ 
catch__ 
(__ '
ArgumentOutOfRangeException__ .
ex__/ 1
)__1 2
{`` 
_loggeraa 
.aa 
Warnaa 
(aa 
$straa Z
,aaZ [
exaa\ ^
)aa^ _
;aa_ `
throwbb 
newbb 
FaultExceptionbb (
(bb( )
exbb) +
.bb+ ,
Messagebb, 3
)bb3 4
;bb4 5
}cc 
catchdd 
(dd 
ArgumentExceptiondd $
exdd% '
)dd' (
{ee 
_loggerff 
.ff 
Warnff 
(ff 
$strff S
,ffS T
exffU W
)ffW X
;ffX Y
throwgg 
newgg 
FaultExceptiongg (
(gg( )
exgg) +
.gg+ ,
Messagegg, 3
)gg3 4
;gg4 5
}hh 
catchii 
(ii 
EntityExceptionii "
exii# %
)ii% &
{jj 
_loggerkk 
.kk 
Errorkk 
(kk 
$strll U
,llU V
exmm 
)mm 
;mm 
thrownn 
newnn 
FaultExceptionnn (
(nn( )
MensajesErrornn) 6
.nn6 7
Clientenn7 >
.nn> ?"
ErrorSuscripcionAmigosnn? U
)nnU V
;nnV W
}oo 
catchpp 
(pp 
DbUpdateExceptionpp $
expp% '
)pp' (
{qq 
_loggerrr 
.rr 
Errorrr 
(rr 
$strss U
,ssU V
extt 
)tt 
;tt 
throwuu 
newuu 
FaultExceptionuu (
(uu( )
MensajesErroruu) 6
.uu6 7
Clienteuu7 >
.uu> ?"
ErrorSuscripcionAmigosuu? U
)uuU V
;uuV W
}vv 
catchww 
(ww 
DataExceptionww  
exww! #
)ww# $
{xx 
_loggeryy 
.yy 
Erroryy 
(yy 
$strzz U
,zzU V
ex{{ 
){{ 
;{{ 
throw|| 
new|| 
FaultException|| (
(||( )
MensajesError||) 6
.||6 7
Cliente||7 >
.||> ?"
ErrorSuscripcionAmigos||? U
)||U V
;||V W
}}} 
} 	
public
ÜÜ 
void
ÜÜ !
CancelarSuscripcion
ÜÜ '
(
ÜÜ' (
string
ÜÜ( .
nombreUsuario
ÜÜ/ <
)
ÜÜ< =
{
áá 	
try
àà 
{
ââ 
_validadorUsuario
ää !
.
ää! "
Validar
ää" )
(
ää) *
nombreUsuario
ää* 7
,
ää7 8
nameof
ää9 ?
(
ää? @
nombreUsuario
ää@ M
)
ääM N
)
ääN O
;
ääO P 
_manejadorCallback
ãã "
.
ãã" #
Desuscribir
ãã# .
(
ãã. /
nombreUsuario
ãã/ <
)
ãã< =
;
ãã= >
}
åå 
catch
çç 
(
çç 
ArgumentException
çç $
ex
çç% '
)
çç' (
{
éé 
_logger
èè 
.
èè 
Warn
èè 
(
èè 
$str
èè G
,
èèG H
ex
èèI K
)
èèK L
;
èèL M
throw
êê 
new
êê 
FaultException
êê (
(
êê( )
ex
êê) +
.
êê+ ,
Message
êê, 3
)
êê3 4
;
êê4 5
}
ëë 
}
íí 	
public
öö 
List
öö 
<
öö 
AmigoDTO
öö 
>
öö 
ObtenerAmigos
öö +
(
öö+ ,
string
öö, 2
nombreUsuario
öö3 @
)
öö@ A
{
õõ 	
try
úú 
{
ùù 
_validadorUsuario
ûû !
.
ûû! "
Validar
ûû" )
(
ûû) *
nombreUsuario
ûû* 7
,
ûû7 8
nameof
ûû9 ?
(
ûû? @
nombreUsuario
ûû@ M
)
ûûM N
)
ûûN O
;
ûûO P
return
üü $
ObtenerAmigosPorNombre
üü -
(
üü- .
nombreUsuario
üü. ;
)
üü; <
;
üü< =
}
†† 
catch
°° 
(
°° 
ArgumentException
°° $
ex
°°% '
)
°°' (
{
¢¢ 
_logger
££ 
.
££ 
Warn
££ 
(
££ 
$str
££ M
,
££M N
ex
££O Q
)
££Q R
;
££R S
throw
§§ 
new
§§ 
FaultException
§§ (
(
§§( )
ex
§§) +
.
§§+ ,
Message
§§, 3
)
§§3 4
;
§§4 5
}
•• 
catch
¶¶ 
(
¶¶ 
EntityException
¶¶ "
ex
¶¶# %
)
¶¶% &
{
ßß 
_logger
®® 
.
®® 
Error
®® 
(
®® 
$str
®® O
,
®®O P
ex
®®Q S
)
®®S T
;
®®T U
throw
©© 
new
©© 
FaultException
©© (
(
©©( )
MensajesError
©©) 6
.
©©6 7
Cliente
©©7 >
.
©©> ?'
ErrorRecuperarListaAmigos
©©? X
)
©©X Y
;
©©Y Z
}
™™ 
catch
´´ 
(
´´ 
DbUpdateException
´´ $
ex
´´% '
)
´´' (
{
¨¨ 
_logger
≠≠ 
.
≠≠ 
Error
≠≠ 
(
≠≠ 
$str
≠≠ O
,
≠≠O P
ex
≠≠Q S
)
≠≠S T
;
≠≠T U
throw
ÆÆ 
new
ÆÆ 
FaultException
ÆÆ (
(
ÆÆ( )
MensajesError
ÆÆ) 6
.
ÆÆ6 7
Cliente
ÆÆ7 >
.
ÆÆ> ?'
ErrorRecuperarListaAmigos
ÆÆ? X
)
ÆÆX Y
;
ÆÆY Z
}
ØØ 
catch
∞∞ 
(
∞∞ 
DataException
∞∞  
ex
∞∞! #
)
∞∞# $
{
±± 
_logger
≤≤ 
.
≤≤ 
Error
≤≤ 
(
≤≤ 
$str
≤≤ O
,
≤≤O P
ex
≤≤Q S
)
≤≤S T
;
≤≤T U
throw
≥≥ 
new
≥≥ 
FaultException
≥≥ (
(
≥≥( )
MensajesError
≥≥) 6
.
≥≥6 7
Cliente
≥≥7 >
.
≥≥> ?'
ErrorRecuperarListaAmigos
≥≥? X
)
≥≥X Y
;
≥≥Y Z
}
¥¥ 
}
∂∂ 	
private
∏∏ 
List
∏∏ 
<
∏∏ 
AmigoDTO
∏∏ 
>
∏∏ $
ObtenerAmigosPorNombre
∏∏ 5
(
∏∏5 6
string
∏∏6 <
nombreUsuario
∏∏= J
)
∏∏J K
{
ππ 	
using
∫∫ 
(
∫∫ 
var
∫∫ 
contexto
∫∫ 
=
∫∫  !
_contextoFactory
∫∫" 2
.
∫∫2 3
CrearContexto
∫∫3 @
(
∫∫@ A
)
∫∫A B
)
∫∫B C
{
ªª 
var
ºº  
usuarioRepositorio
ºº &
=
ºº' (
new
ºº) , 
UsuarioRepositorio
ºº- ?
(
ºº? @
contexto
ºº@ H
)
ººH I
;
ººI J
Usuario
ΩΩ 
usuario
ΩΩ 
=
ΩΩ  ! 
usuarioRepositorio
ΩΩ" 4
.
ΩΩ4 5%
ObtenerPorNombreUsuario
ΩΩ5 L
(
ΩΩL M
nombreUsuario
ΩΩM Z
)
ΩΩZ [
;
ΩΩ[ \
if
øø 
(
øø 
usuario
øø 
==
øø 
null
øø #
)
øø# $
{
¿¿ 
throw
¡¡ 
new
¡¡ 
FaultException
¡¡ ,
(
¡¡, -
MensajesError
¡¡- :
.
¡¡: ;
Cliente
¡¡; B
.
¡¡B C!
UsuarioNoEncontrado
¡¡C V
)
¡¡V W
;
¡¡W X
}
¬¬ 
return
ƒƒ 
_amistadServicio
ƒƒ '
.
ƒƒ' (
ObtenerAmigosDTO
ƒƒ( 8
(
ƒƒ8 9
usuario
ƒƒ9 @
.
ƒƒ@ A
	idUsuario
ƒƒA J
)
ƒƒJ K
;
ƒƒK L
}
≈≈ 
}
∆∆ 	
}
«« 
}»» ÷≥
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\AmigosManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
[ 
ServiceBehavior 
( 
InstanceContextMode (
=) *
InstanceContextMode+ >
.> ?
Single? E
,E F
ConcurrencyModeG V
=W X
ConcurrencyMode 
. 
Multiple  
)  !
]! "
public 

class 
AmigosManejador  
:! "
IAmigosManejador# 3
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
AmigosManejadorK Z
)Z [
)[ \
;\ ]
private 
readonly 
ManejadorCallback *
<* +$
IAmigosManejadorCallback+ C
>C D
_manejadorCallbackE W
;W X
private 
readonly 
INotificadorAmigos +
_notificador, 8
;8 9
private 
readonly #
INotificadorListaAmigos 0#
_notificadorListaAmigos1 H
;H I
private   
readonly   
IContextoFactoria   *
_contextoFactory  + ;
;  ; <
private!! 
readonly!! 
IAmistadServicio!! )
_amistadServicio!!* :
;!!: ;
private"" 
readonly"" #
IValidadorNombreUsuario"" 0
_validadorUsuario""1 B
;""B C
public$$ 
AmigosManejador$$ 
($$ 
)$$  
:$$! "
this$$# '
($$' (
new%% 
ContextoFactoria%%  
(%%  !
)%%! "
,%%" #
new&& 
AmistadServicio&& 
(&&  
new&&  #
ContextoFactoria&&$ 4
(&&4 5
)&&5 6
)&&6 7
,&&7 8
new'' "
NotificadorListaAmigos'' &
(''& '
new(( 
ManejadorCallback(( %
<((% &)
IListaAmigosManejadorCallback((& C
>((C D
(((D E
StringComparer)) "
.))" #
OrdinalIgnoreCase))# 4
)))4 5
,))5 6
new** 
AmistadServicio** #
(**# $
new**$ '
ContextoFactoria**( 8
(**8 9
)**9 :
)**: ;
,**; <
new++ 
UsuarioRepositorio++ &
(++& '
new++' *
ContextoFactoria+++ ;
(++; <
)++< =
.++= >
CrearContexto++> K
(++K L
)++L M
)++M N
)++N O
,++O P
new,, "
ValidadorNombreUsuario,, &
(,,& '
),,' (
),,( )
{-- 	
}.. 	
public33 
AmigosManejador33 
(33 
IContextoFactoria44 
contextoFactory44 -
,44- .
IAmistadServicio55 
amistadServicio55 ,
,55, -#
INotificadorListaAmigos66 #
notificadorLista66$ 4
,664 5#
IValidadorNombreUsuario77 #
validadorUsuario77$ 4
)774 5
{88 	
_contextoFactory99 
=99 
contextoFactory99 .
??99/ 1
throw:: 
new:: !
ArgumentNullException:: /
(::/ 0
nameof::0 6
(::6 7
contextoFactory::7 F
)::F G
)::G H
;::H I
_amistadServicio<< 
=<< 
amistadServicio<< .
??<</ 1
throw== 
new== !
ArgumentNullException== /
(==/ 0
nameof==0 6
(==6 7
amistadServicio==7 F
)==F G
)==G H
;==H I
_validadorUsuario?? 
=?? 
validadorUsuario??  0
????1 3
throw@@ 
new@@ !
ArgumentNullException@@ /
(@@/ 0
nameof@@0 6
(@@6 7
validadorUsuario@@7 G
)@@G H
)@@H I
;@@I J#
_notificadorListaAmigosBB #
=BB$ %
notificadorListaBB& 6
??BB7 9
throwCC 
newCC !
ArgumentNullExceptionCC /
(CC/ 0
nameofCC0 6
(CC6 7
notificadorListaCC7 G
)CCG H
)CCH I
;CCI J
_manejadorCallbackEE 
=EE  
newEE! $
ManejadorCallbackEE% 6
<EE6 7$
IAmigosManejadorCallbackEE7 O
>EEO P
(EEP Q
StringComparerFF 
.FF 
OrdinalIgnoreCaseFF 0
)FF0 1
;FF1 2
_notificadorHH 
=HH 
newHH 
NotificadorAmigosHH 0
(HH0 1
_manejadorCallbackHH1 C
,HHC D
_amistadServicioHHE U
)HHU V
;HHV W
}II 	
publicPP 
voidPP 
	SuscribirPP 
(PP 
stringPP $
nombreUsuarioPP% 2
)PP2 3
{QQ 	%
ValidarEntradaSuscripcionRR %
(RR% &
nombreUsuarioRR& 3
)RR3 4
;RR4 5
tryTT 
{UU 
varVV 
datosUsuarioVV  
=VV! "*
ObtenerDatosUsuarioSuscripcionVV# A
(VVA B
nombreUsuarioVVB O
)VVO P
;VVP Q
RegistrarCallbackXX !
(XX! "
nombreUsuarioXX" /
,XX/ 0
datosUsuarioXX1 =
.XX= >
NombreNormalizadoXX> O
)XXO P
;XXP Q
_notificadorZZ 
.ZZ 5
)NotificarSolicitudesPendientesAlSuscribirZZ F
(ZZF G
datosUsuario[[  
.[[  !
NombreNormalizado[[! 2
,[[2 3
datosUsuario\\  
.\\  !
	IdUsuario\\! *
)\\* +
;\\+ ,
}]] 
catch^^ 
(^^ 
EntityException^^ "
ex^^# %
)^^% &
{__ 
_logger`` 
.`` 
Error`` 
(`` 
$straa V
,aaV W
exbb 
)bb 
;bb 
throwcc 
newcc 
FaultExceptioncc (
(cc( )
MensajesErrorcc) 6
.cc6 7
Clientecc7 >
.cc> ?%
ErrorRecuperarSolicitudescc? X
)ccX Y
;ccY Z
}dd 
catchee 
(ee 
DataExceptionee  
exee! #
)ee# $
{ff 
_loggergg 
.gg 
Errorgg 
(gg 
$strgg X
,ggX Y
exggZ \
)gg\ ]
;gg] ^
throwhh 
newhh 
FaultExceptionhh (
(hh( )
MensajesErrorhh) 6
.hh6 7
Clientehh7 >
.hh> ?%
ErrorRecuperarSolicitudeshh? X
)hhX Y
;hhY Z
}ii 
}jj 	
publicqq 
voidqq 
CancelarSuscripcionqq '
(qq' (
stringqq( .
nombreUsuarioqq/ <
)qq< =
{rr 	
ifss 
(ss 
stringss 
.ss 
IsNullOrWhiteSpacess )
(ss) *
nombreUsuarioss* 7
)ss7 8
)ss8 9
{tt 
throwuu 
newuu 
FaultExceptionuu (
(uu( )
MensajesErrorvv !
.vv! "
Clientevv" )
.vv) *,
 NombreUsuarioObligatorioCancelarvv* J
)vvJ K
;vvK L
}ww 
_manejadorCallbackyy 
.yy 
Desuscribiryy *
(yy* +
nombreUsuarioyy+ 8
)yy8 9
;yy9 :
}zz 	
public
ÇÇ 
void
ÇÇ $
EnviarSolicitudAmistad
ÇÇ *
(
ÇÇ* +
string
ÉÉ !
nombreUsuarioEmisor
ÉÉ &
,
ÉÉ& '
string
ÑÑ #
nombreUsuarioReceptor
ÑÑ (
)
ÑÑ( )
{
ÖÖ 	
try
ÜÜ 
{
áá (
ValidarEntradasInteraccion
àà *
(
àà* +!
nombreUsuarioEmisor
àà+ >
,
àà> ?#
nombreUsuarioReceptor
àà@ U
)
ààU V
;
ààV W
var
ää 
usuarios
ää 
=
ää 2
$EjecutarCreacionSolicitudEnBaseDatos
ää C
(
ääC D!
nombreUsuarioEmisor
ãã '
,
ãã' (#
nombreUsuarioReceptor
åå )
)
åå) *
;
åå* +%
NotificarSolicitudNueva
éé '
(
éé' (
usuarios
èè 
.
èè 
Emisor
èè #
,
èè# $!
nombreUsuarioEmisor
êê '
,
êê' (
usuarios
ëë 
.
ëë 
Receptor
ëë %
,
ëë% &#
nombreUsuarioReceptor
íí )
)
íí) *
;
íí* +
}
ìì 
catch
îî 
(
îî "
KeyNotFoundException
îî '
ex
îî( *
)
îî* +
{
ïï 
_logger
ññ 
.
ññ 
Warn
ññ 
(
ññ 
$str
ññ Q
,
ññQ R
ex
ññS U
)
ññU V
;
ññV W
throw
óó 
new
óó 
FaultException
óó (
(
óó( )
MensajesError
óó) 6
.
óó6 7
Cliente
óó7 >
.
óó> ?,
UsuariosEspecificadosNoExisten
óó? ]
)
óó] ^
;
óó^ _
}
òò 
catch
ôô 
(
ôô 
FaultException
ôô !
)
ôô! "
{
öö 
throw
õõ 
;
õõ 
}
úú 
catch
ùù 
(
ùù '
InvalidOperationException
ùù ,
ex
ùù- /
)
ùù/ 0
{
ûû 
_logger
üü 
.
üü 
Warn
üü 
(
üü 
$str
üü W
,
üüW X
ex
üüY [
)
üü[ \
;
üü\ ]
throw
†† 
new
†† 
FaultException
†† (
(
††( )
ex
††) +
.
††+ ,
Message
††, 3
)
††3 4
;
††4 5
}
°° 
catch
¢¢ 
(
¢¢ 
ArgumentException
¢¢ $
ex
¢¢% '
)
¢¢' (
{
££ 
_logger
§§ 
.
§§ 
Warn
§§ 
(
§§ 
$str
§§ N
,
§§N O
ex
§§P R
)
§§R S
;
§§S T
throw
•• 
new
•• 
FaultException
•• (
(
••( )
ex
••) +
.
••+ ,
Message
••, 3
)
••3 4
;
••4 5
}
¶¶ 
catch
ßß 
(
ßß 
EntityException
ßß "
ex
ßß# %
)
ßß% &
{
®® 
_logger
©© 
.
©© 
Error
©© 
(
©© 
$str
©© P
,
©©P Q
ex
©©R T
)
©©T U
;
©©U V
throw
™™ 
new
™™ 
FaultException
™™ (
(
™™( )
MensajesError
™™) 6
.
™™6 7
Cliente
™™7 >
.
™™> ?%
ErrorAlmacenarSolicitud
™™? V
)
™™V W
;
™™W X
}
´´ 
catch
¨¨ 
(
¨¨ 
DbUpdateException
¨¨ $
ex
¨¨% '
)
¨¨' (
{
≠≠ 
_logger
ÆÆ 
.
ÆÆ 
Error
ÆÆ 
(
ÆÆ 
$str
ÆÆ P
,
ÆÆP Q
ex
ÆÆR T
)
ÆÆT U
;
ÆÆU V
throw
ØØ 
new
ØØ 
FaultException
ØØ (
(
ØØ( )
MensajesError
ØØ) 6
.
ØØ6 7
Cliente
ØØ7 >
.
ØØ> ?%
ErrorAlmacenarSolicitud
ØØ? V
)
ØØV W
;
ØØW X
}
∞∞ 
catch
±± 
(
±± 
DataException
±±  
ex
±±! #
)
±±# $
{
≤≤ 
_logger
≥≥ 
.
≥≥ 
Error
≥≥ 
(
≥≥ 
$str
≥≥ P
,
≥≥P Q
ex
≥≥R T
)
≥≥T U
;
≥≥U V
throw
¥¥ 
new
¥¥ 
FaultException
¥¥ (
(
¥¥( )
MensajesError
¥¥) 6
.
¥¥6 7
Cliente
¥¥7 >
.
¥¥> ?%
ErrorAlmacenarSolicitud
¥¥? V
)
¥¥V W
;
¥¥W X
}
µµ 
}
∑∑ 	
public
øø 
void
øø '
ResponderSolicitudAmistad
øø -
(
øø- .
string
¿¿ !
nombreUsuarioEmisor
¿¿ &
,
¿¿& '
string
¡¡ #
nombreUsuarioReceptor
¡¡ (
)
¡¡( )
{
¬¬ 	
try
√√ 
{
ƒƒ (
ValidarEntradasInteraccion
≈≈ *
(
≈≈* +!
nombreUsuarioEmisor
≈≈+ >
,
≈≈> ?#
nombreUsuarioReceptor
≈≈@ U
)
≈≈U V
;
≈≈V W
var
«« !
nombresNormalizados
«« '
=
««( )4
&EjecutarAceptacionSolicitudEnBaseDatos
««* P
(
««P Q!
nombreUsuarioEmisor
»» '
,
»»' (#
nombreUsuarioReceptor
…… )
)
……) *
;
……* +-
EjecutarNotificacionesRespuesta
ÀÀ /
(
ÀÀ/ 0!
nombresNormalizados
ÀÀ0 C
)
ÀÀC D
;
ÀÀD E
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ '
InvalidOperationException
ÕÕ ,
ex
ÕÕ- /
)
ÕÕ/ 0
{
ŒŒ 
_logger
œœ 
.
œœ 
Warn
œœ 
(
œœ 
$str
œœ X
,
œœX Y
ex
œœZ \
)
œœ\ ]
;
œœ] ^
throw
–– 
new
–– 
FaultException
–– (
(
––( )
ex
––) +
.
––+ ,
Message
––, 3
)
––3 4
;
––4 5
}
—— 
catch
““ 
(
““ 
ArgumentException
““ $
ex
““% '
)
““' (
{
”” 
_logger
‘‘ 
.
‘‘ 
Warn
‘‘ 
(
‘‘ 
$str
‘‘ O
,
‘‘O P
ex
‘‘Q S
)
‘‘S T
;
‘‘T U
throw
’’ 
new
’’ 
FaultException
’’ (
(
’’( )
ex
’’) +
.
’’+ ,
Message
’’, 3
)
’’3 4
;
’’4 5
}
÷÷ 
catch
◊◊ 
(
◊◊ 
EntityException
◊◊ "
ex
◊◊# %
)
◊◊% &
{
ÿÿ 
_logger
ŸŸ 
.
ŸŸ 
Error
ŸŸ 
(
ŸŸ 
$str
ŸŸ H
,
ŸŸH I
ex
ŸŸJ L
)
ŸŸL M
;
ŸŸM N
throw
⁄⁄ 
new
⁄⁄ 
FaultException
⁄⁄ (
(
⁄⁄( )
MensajesError
⁄⁄) 6
.
⁄⁄6 7
Cliente
⁄⁄7 >
.
⁄⁄> ?&
ErrorActualizarSolicitud
⁄⁄? W
)
⁄⁄W X
;
⁄⁄X Y
}
€€ 
catch
‹‹ 
(
‹‹ 
DbUpdateException
‹‹ $
ex
‹‹% '
)
‹‹' (
{
›› 
_logger
ﬁﬁ 
.
ﬁﬁ 
Error
ﬁﬁ 
(
ﬁﬁ 
$str
ﬁﬁ H
,
ﬁﬁH I
ex
ﬁﬁJ L
)
ﬁﬁL M
;
ﬁﬁM N
throw
ﬂﬂ 
new
ﬂﬂ 
FaultException
ﬂﬂ (
(
ﬂﬂ( )
MensajesError
ﬂﬂ) 6
.
ﬂﬂ6 7
Cliente
ﬂﬂ7 >
.
ﬂﬂ> ?&
ErrorActualizarSolicitud
ﬂﬂ? W
)
ﬂﬂW X
;
ﬂﬂX Y
}
‡‡ 
catch
·· 
(
·· 
DataException
··  
ex
··! #
)
··# $
{
‚‚ 
_logger
„„ 
.
„„ 
Error
„„ 
(
„„ 
$str
„„ H
,
„„H I
ex
„„J L
)
„„L M
;
„„M N
throw
‰‰ 
new
‰‰ 
FaultException
‰‰ (
(
‰‰( )
MensajesError
‰‰) 6
.
‰‰6 7
Cliente
‰‰7 >
.
‰‰> ?&
ErrorActualizarSolicitud
‰‰? W
)
‰‰W X
;
‰‰X Y
}
ÂÂ 
}
ÁÁ 	
public
ÔÔ 
void
ÔÔ 
EliminarAmigo
ÔÔ !
(
ÔÔ! "
string
ÔÔ" (
nombreUsuarioA
ÔÔ) 7
,
ÔÔ7 8
string
ÔÔ9 ?
nombreUsuarioB
ÔÔ@ N
)
ÔÔN O
{
 	
try
ÒÒ 
{
ÚÚ (
ValidarEntradasInteraccion
ÛÛ *
(
ÛÛ* +
nombreUsuarioA
ÛÛ+ 9
,
ÛÛ9 :
nombreUsuarioB
ÛÛ; I
)
ÛÛI J
;
ÛÛJ K
var
ıı "
resultadoEliminacion
ıı (
=
ıı) *,
EjecutarEliminacionEnBaseDatos
ıı+ I
(
ııI J
nombreUsuarioA
ˆˆ "
,
ˆˆ" #
nombreUsuarioB
˜˜ "
)
˜˜" #
;
˜˜# $/
!EjecutarNotificacionesEliminacion
˘˘ 1
(
˘˘1 2"
resultadoEliminacion
˘˘2 F
)
˘˘F G
;
˘˘G H
}
˙˙ 
catch
˚˚ 
(
˚˚ '
InvalidOperationException
˚˚ ,
ex
˚˚- /
)
˚˚/ 0
{
¸¸ 
_logger
˝˝ 
.
˝˝ 
Warn
˝˝ 
(
˝˝ 
$str
˝˝ L
,
˝˝L M
ex
˝˝N P
)
˝˝P Q
;
˝˝Q R
throw
˛˛ 
new
˛˛ 
FaultException
˛˛ (
(
˛˛( )
ex
˛˛) +
.
˛˛+ ,
Message
˛˛, 3
)
˛˛3 4
;
˛˛4 5
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ 
EntityException
ÄÄ "
ex
ÄÄ# %
)
ÄÄ% &
{
ÅÅ 
_logger
ÇÇ 
.
ÇÇ 
Error
ÇÇ 
(
ÇÇ 
$str
ÇÇ E
,
ÇÇE F
ex
ÇÇG I
)
ÇÇI J
;
ÇÇJ K
throw
ÉÉ 
new
ÉÉ 
FaultException
ÉÉ (
(
ÉÉ( )
MensajesError
ÉÉ) 6
.
ÉÉ6 7
Cliente
ÉÉ7 >
.
ÉÉ> ?"
ErrorEliminarAmistad
ÉÉ? S
)
ÉÉS T
;
ÉÉT U
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ 
DbUpdateException
ÖÖ $
ex
ÖÖ% '
)
ÖÖ' (
{
ÜÜ 
_logger
áá 
.
áá 
Error
áá 
(
áá 
$str
áá E
,
ááE F
ex
ááG I
)
ááI J
;
ááJ K
throw
àà 
new
àà 
FaultException
àà (
(
àà( )
MensajesError
àà) 6
.
àà6 7
Cliente
àà7 >
.
àà> ?"
ErrorEliminarAmistad
àà? S
)
ààS T
;
ààT U
}
ââ 
catch
ää 
(
ää 
DataException
ää  
ex
ää! #
)
ää# $
{
ãã 
_logger
åå 
.
åå 
Error
åå 
(
åå 
$str
åå E
,
ååE F
ex
ååG I
)
ååI J
;
ååJ K
throw
çç 
new
çç 
FaultException
çç (
(
çç( )
MensajesError
çç) 6
.
çç6 7
Cliente
çç7 >
.
çç> ?"
ErrorEliminarAmistad
çç? S
)
ççS T
;
ççT U
}
éé 
}
êê 	
private
íí 
void
íí '
ValidarEntradaSuscripcion
íí .
(
íí. /
string
íí/ 5
nombreUsuario
íí6 C
)
ííC D
{
ìì 	
if
îî 
(
îî 
string
îî 
.
îî  
IsNullOrWhiteSpace
îî )
(
îî) *
nombreUsuario
îî* 7
)
îî7 8
)
îî8 9
{
ïï 
throw
ññ 
new
ññ 
FaultException
ññ (
(
ññ( )
MensajesError
óó !
.
óó! "
Cliente
óó" )
.
óó) *1
#NombreUsuarioObligatorioSuscripcion
óó* M
)
óóM N
;
óóN O
}
òò 
}
ôô 	
private
õõ 
(
õõ 
int
õõ 
	IdUsuario
õõ 
,
õõ 
string
õõ  &
NombreNormalizado
õõ' 8
)
õõ8 9,
ObtenerDatosUsuarioSuscripcion
õõ: X
(
õõX Y
string
úú 
nombreUsuario
úú  
)
úú  !
{
ùù 	
using
ûû 
(
ûû 
var
ûû 
contexto
ûû 
=
ûû  !
_contextoFactory
ûû" 2
.
ûû2 3
CrearContexto
ûû3 @
(
ûû@ A
)
ûûA B
)
ûûB C
{
üü 
var
††  
usuarioRepositorio
†† &
=
††' (
new
††) , 
UsuarioRepositorio
††- ?
(
††? @
contexto
††@ H
)
††H I
;
††I J
var
°° 
usuario
°° 
=
°°  
usuarioRepositorio
°° 0
.
°°0 1%
ObtenerPorNombreUsuario
°°1 H
(
°°H I
nombreUsuario
°°I V
)
°°V W
;
°°W X
if
££ 
(
££ 
usuario
££ 
==
££ 
null
££ #
)
££# $
{
§§ 
throw
•• 
new
•• 
FaultException
•• ,
(
••, -
MensajesError
••- :
.
••: ;
Cliente
••; B
.
••B C!
UsuarioNoEncontrado
••C V
)
••V W
;
••W X
}
¶¶ 
string
®® 
nombreNormalizado
®® (
=
®®) *
_validadorUsuario
®®+ <
.
®®< =&
ObtenerNombreNormalizado
®®= U
(
®®U V
usuario
©© 
.
©© 
Nombre_Usuario
©© *
,
©©* +
nombreUsuario
™™ !
)
™™! "
;
™™" #
if
¨¨ 
(
¨¨ 
string
¨¨ 
.
¨¨  
IsNullOrWhiteSpace
¨¨ -
(
¨¨- .
nombreNormalizado
¨¨. ?
)
¨¨? @
)
¨¨@ A
{
≠≠ 
throw
ÆÆ 
new
ÆÆ 
FaultException
ÆÆ ,
(
ÆÆ, -
MensajesError
ÆÆ- :
.
ÆÆ: ;
Cliente
ÆÆ; B
.
ÆÆB C!
UsuarioNoEncontrado
ÆÆC V
)
ÆÆV W
;
ÆÆW X
}
ØØ 
return
±± 
(
±± 
usuario
±± 
.
±±  
	idUsuario
±±  )
,
±±) *
nombreNormalizado
±±+ <
)
±±< =
;
±±= >
}
≤≤ 
}
≥≥ 	
private
µµ 
void
µµ 
RegistrarCallback
µµ &
(
µµ& '
string
µµ' -
nombreUsuario
µµ. ;
,
µµ; <
string
µµ= C
nombreNormalizado
µµD U
)
µµU V
{
∂∂ 	
var
∑∑ 
callback
∑∑ 
=
∑∑ 
ManejadorCallback
∑∑ ,
<
∑∑, -&
IAmigosManejadorCallback
∑∑- E
>
∑∑E F
.
∑∑F G#
ObtenerCallbackActual
∑∑G \
(
∑∑\ ]
)
∑∑] ^
;
∑∑^ _ 
_manejadorCallback
∏∏ 
.
∏∏ 
	Suscribir
∏∏ (
(
∏∏( )
nombreNormalizado
∏∏) :
,
∏∏: ;
callback
∏∏< D
)
∏∏D E
;
∏∏E F
if
∫∫ 
(
∫∫ 
!
∫∫ 
string
∫∫ 
.
∫∫ 
Equals
∫∫ 
(
∫∫ 
nombreUsuario
ªª 
,
ªª 
nombreNormalizado
ºº !
,
ºº! "
StringComparison
ΩΩ  
.
ΩΩ  !
Ordinal
ΩΩ! (
)
ΩΩ( )
)
ΩΩ) *
{
ææ  
_manejadorCallback
øø "
.
øø" #
Desuscribir
øø# .
(
øø. /
nombreUsuario
øø/ <
)
øø< =
;
øø= >
}
¿¿  
_manejadorCallback
¬¬ 
.
¬¬ $
ConfigurarEventosCanal
¬¬ 5
(
¬¬5 6
nombreNormalizado
¬¬6 G
)
¬¬G H
;
¬¬H I
}
√√ 	
private
≈≈ 
void
≈≈ (
ValidarEntradasInteraccion
≈≈ /
(
≈≈/ 0
string
≈≈0 6
usuarioA
≈≈7 ?
,
≈≈? @
string
≈≈A G
usuarioB
≈≈H P
)
≈≈P Q
{
∆∆ 	
_validadorUsuario
«« 
.
«« 
Validar
«« %
(
««% &
usuarioA
««& .
,
««. /
nameof
««0 6
(
««6 7
usuarioA
««7 ?
)
««? @
)
««@ A
;
««A B
_validadorUsuario
»» 
.
»» 
Validar
»» %
(
»»% &
usuarioB
»»& .
,
»». /
nameof
»»0 6
(
»»6 7
usuarioB
»»7 ?
)
»»? @
)
»»@ A
;
»»A B
}
…… 	
private
ÀÀ 
(
ÀÀ 
Usuario
ÀÀ 
Emisor
ÀÀ 
,
ÀÀ  
Usuario
ÀÀ! (
Receptor
ÀÀ) 1
)
ÀÀ1 22
$EjecutarCreacionSolicitudEnBaseDatos
ÀÀ3 W
(
ÀÀW X
string
ÃÃ 
nombreEmisor
ÃÃ 
,
ÃÃ  
string
ÕÕ 
nombreReceptor
ÕÕ !
)
ÕÕ! "
{
ŒŒ 	
using
œœ 
(
œœ 
var
œœ 
contexto
œœ 
=
œœ  !
_contextoFactory
œœ" 2
.
œœ2 3
CrearContexto
œœ3 @
(
œœ@ A
)
œœA B
)
œœB C
{
–– 
var
—— 
(
—— 
emisor
—— 
,
—— 
receptor
—— %
)
——% &
=
——' (,
ObtenerUsuariosParaInteraccion
——) G
(
——G H
contexto
““ 
,
““ 
nombreEmisor
””  
,
””  !
nombreReceptor
‘‘ "
)
‘‘" #
;
‘‘# $
_amistadServicio
÷÷  
.
÷÷  !
CrearSolicitud
÷÷! /
(
÷÷/ 0
emisor
÷÷0 6
.
÷÷6 7
	idUsuario
÷÷7 @
,
÷÷@ A
receptor
÷÷B J
.
÷÷J K
	idUsuario
÷÷K T
)
÷÷T U
;
÷÷U V
return
ÿÿ 
(
ÿÿ 
emisor
ÿÿ 
,
ÿÿ 
receptor
ÿÿ  (
)
ÿÿ( )
;
ÿÿ) *
}
ŸŸ 
}
⁄⁄ 	
private
‹‹ 
(
‹‹ 
string
‹‹ 
NormalizadoEmisor
‹‹ )
,
‹‹) *
string
‹‹+ 1!
NormalizadoReceptor
‹‹2 E
)
‹‹E F4
&EjecutarAceptacionSolicitudEnBaseDatos
›› 2
(
››2 3
string
ﬁﬁ 
nombreEmisor
ﬁﬁ #
,
ﬁﬁ# $
string
ﬂﬂ 
nombreReceptor
ﬂﬂ %
)
ﬂﬂ% &
{
‡‡ 	
using
·· 
(
·· 
var
·· 
contexto
·· 
=
··  !
_contextoFactory
··" 2
.
··2 3
CrearContexto
··3 @
(
··@ A
)
··A B
)
··B C
{
‚‚ 
var
„„ 
(
„„ 
usuarioEmisor
„„ "
,
„„" #
usuarioReceptor
„„$ 3
)
„„3 4
=
„„5 6,
ObtenerUsuariosParaInteraccion
„„7 U
(
„„U V
contexto
‰‰ 
,
‰‰ 
nombreEmisor
ÂÂ  
,
ÂÂ  !
nombreReceptor
ÊÊ "
)
ÊÊ" #
;
ÊÊ# $
_amistadServicio
ËË  
.
ËË  !
AceptarSolicitud
ËË! 1
(
ËË1 2
usuarioEmisor
ÈÈ !
.
ÈÈ! "
	idUsuario
ÈÈ" +
,
ÈÈ+ ,
usuarioReceptor
ÍÍ #
.
ÍÍ# $
	idUsuario
ÍÍ$ -
)
ÍÍ- .
;
ÍÍ. /
string
ÏÏ 

normEmisor
ÏÏ !
=
ÏÏ" #
_validadorUsuario
ÏÏ$ 5
.
ÏÏ5 6&
ObtenerNombreNormalizado
ÏÏ6 N
(
ÏÏN O
usuarioEmisor
ÌÌ !
.
ÌÌ! "
Nombre_Usuario
ÌÌ" 0
,
ÌÌ0 1
nombreEmisor
ÓÓ  
)
ÓÓ  !
;
ÓÓ! "
string
 
normReceptor
 #
=
$ %
_validadorUsuario
& 7
.
7 8&
ObtenerNombreNormalizado
8 P
(
P Q
usuarioReceptor
ÒÒ #
.
ÒÒ# $
Nombre_Usuario
ÒÒ$ 2
,
ÒÒ2 3
nombreReceptor
ÚÚ "
)
ÚÚ" #
;
ÚÚ# $
return
ÙÙ 
(
ÙÙ 

normEmisor
ÙÙ "
,
ÙÙ" #
normReceptor
ÙÙ$ 0
)
ÙÙ0 1
;
ÙÙ1 2
}
ıı 
}
ˆˆ 	
private
¯¯ )
ResultadoEliminacionAmistad
¯¯ +,
EjecutarEliminacionEnBaseDatos
¯¯, J
(
¯¯J K
string
˘˘ 
nombreA
˘˘ 
,
˘˘ 
string
˙˙ 
nombreB
˙˙ 
)
˙˙ 
{
˚˚ 	
using
¸¸ 
(
¸¸ 
var
¸¸ 
contexto
¸¸ 
=
¸¸  !
_contextoFactory
¸¸" 2
.
¸¸2 3
CrearContexto
¸¸3 @
(
¸¸@ A
)
¸¸A B
)
¸¸B C
{
˝˝ 
var
˛˛ 
(
˛˛ 
usuarioA
˛˛ 
,
˛˛ 
usuarioB
˛˛ '
)
˛˛' (
=
˛˛) *,
ObtenerUsuariosParaInteraccion
˛˛+ I
(
˛˛I J
contexto
ˇˇ 
,
ˇˇ 
nombreA
ÄÄ 
,
ÄÄ 
nombreB
ÅÅ 
)
ÅÅ 
;
ÅÅ 
var
ÉÉ 
relacion
ÉÉ 
=
ÉÉ 
_amistadServicio
ÉÉ /
.
ÉÉ/ 0
EliminarAmistad
ÉÉ0 ?
(
ÉÉ? @
usuarioA
ÑÑ 
.
ÑÑ 
	idUsuario
ÑÑ &
,
ÑÑ& '
usuarioB
ÖÖ 
.
ÖÖ 
	idUsuario
ÖÖ &
)
ÖÖ& '
;
ÖÖ' (
string
áá 
normA
áá 
=
áá 
_validadorUsuario
áá 0
.
áá0 1&
ObtenerNombreNormalizado
áá1 I
(
ááI J
usuarioA
àà 
.
àà 
Nombre_Usuario
àà +
,
àà+ ,
nombreA
ââ 
)
ââ 
;
ââ 
string
ãã 
normB
ãã 
=
ãã 
_validadorUsuario
ãã 0
.
ãã0 1&
ObtenerNombreNormalizado
ãã1 I
(
ããI J
usuarioB
åå 
.
åå 
Nombre_Usuario
åå +
,
åå+ ,
nombreB
çç 
)
çç 
;
çç 
return
èè 
new
èè )
ResultadoEliminacionAmistad
èè 6
{
êê 
Relacion
ëë 
=
ëë 
relacion
ëë '
,
ëë' ( 
NombreANormalizado
íí &
=
íí' (
normA
íí) .
,
íí. / 
NombreBNormalizado
ìì &
=
ìì' (
normB
ìì) .
}
îî 
;
îî 
}
ïï 
}
ññ 	
private
òò 
(
òò 
Usuario
òò 
Emisor
òò 
,
òò  
Usuario
òò! (
Receptor
òò) 1
)
òò1 2,
ObtenerUsuariosParaInteraccion
òò3 Q
(
òòQ R%
BaseDatosPruebaEntities
ôô #
contexto
ôô$ ,
,
ôô, -
string
öö 
nombreEmisor
öö 
,
öö  
string
õõ 
nombreReceptor
õõ !
)
õõ! "
{
úú 	
var
ùù  
usuarioRepositorio
ùù "
=
ùù# $
new
ùù% ( 
UsuarioRepositorio
ùù) ;
(
ùù; <
contexto
ùù< D
)
ùùD E
;
ùùE F
var
ûû 
usuarioEmisor
ûû 
=
ûû  
usuarioRepositorio
ûû  2
.
ûû2 3%
ObtenerPorNombreUsuario
ûû3 J
(
ûûJ K
nombreEmisor
ûûK W
)
ûûW X
;
ûûX Y
var
üü 
usuarioReceptor
üü 
=
üü  ! 
usuarioRepositorio
üü" 4
.
üü4 5%
ObtenerPorNombreUsuario
üü5 L
(
üüL M
nombreReceptor
üüM [
)
üü[ \
;
üü\ ]'
ValidarUsuariosExistentes
°° %
(
°°% &
usuarioEmisor
°°& 3
,
°°3 4
usuarioReceptor
°°5 D
)
°°D E
;
°°E F
return
££ 
(
££ 
usuarioEmisor
££ !
,
££! "
usuarioReceptor
££# 2
)
££2 3
;
££3 4
}
§§ 	
private
¶¶ 
void
¶¶ '
ValidarUsuariosExistentes
¶¶ .
(
¶¶. /
Usuario
¶¶/ 6
emisor
¶¶7 =
,
¶¶= >
Usuario
¶¶? F
receptor
¶¶G O
)
¶¶O P
{
ßß 	
if
®® 
(
®® 
emisor
®® 
==
®® 
null
®® 
)
®® 
{
©© 
throw
™™ 
new
™™ 
FaultException
™™ (
(
™™( )
MensajesError
´´ !
.
´´! "
Cliente
´´" )
.
´´) *,
UsuariosEspecificadosNoExisten
´´* H
)
´´H I
;
´´I J
}
¨¨ 
if
≠≠ 
(
≠≠ 
receptor
≠≠ 
==
≠≠ 
null
≠≠  
)
≠≠  !
{
ÆÆ 
throw
ØØ 
new
ØØ 
FaultException
ØØ (
(
ØØ( )
MensajesError
∞∞ !
.
∞∞! "
Cliente
∞∞" )
.
∞∞) *,
UsuariosEspecificadosNoExisten
∞∞* H
)
∞∞H I
;
∞∞I J
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ %
NotificarSolicitudNueva
¥¥ ,
(
¥¥, -
Usuario
µµ 
emisor
µµ 
,
µµ 
string
∂∂ 
nombreEmisorInput
∂∂ $
,
∂∂$ %
Usuario
∑∑ 
receptor
∑∑ 
,
∑∑ 
string
∏∏ !
nombreReceptorInput
∏∏ &
)
∏∏& '
{
ππ 	
string
∫∫ 
nombreEmisor
∫∫ 
=
∫∫  !
_validadorUsuario
∫∫" 3
.
∫∫3 4&
ObtenerNombreNormalizado
∫∫4 L
(
∫∫L M
emisor
ªª 
.
ªª 
Nombre_Usuario
ªª %
,
ªª% &
nombreEmisorInput
ºº !
)
ºº! "
;
ºº" #
string
ææ 
nombreReceptor
ææ !
=
ææ" #
_validadorUsuario
ææ$ 5
.
ææ5 6&
ObtenerNombreNormalizado
ææ6 N
(
ææN O
receptor
øø 
.
øø 
Nombre_Usuario
øø '
,
øø' (!
nombreReceptorInput
¿¿ #
)
¿¿# $
;
¿¿$ %
var
¬¬ 
	solicitud
¬¬ 
=
¬¬ 
new
¬¬ !
SolicitudAmistadDTO
¬¬  3
{
√√ 
UsuarioEmisor
ƒƒ 
=
ƒƒ 
nombreEmisor
ƒƒ  ,
,
ƒƒ, -
UsuarioReceptor
≈≈ 
=
≈≈  !
nombreReceptor
≈≈" 0
,
≈≈0 1
SolicitudAceptada
∆∆ !
=
∆∆" #
false
∆∆$ )
}
«« 
;
«« 
_notificador
…… 
.
…… +
NotificarSolicitudActualizada
…… 6
(
……6 7
nombreReceptor
……7 E
,
……E F
	solicitud
……G P
)
……P Q
;
……Q R
}
   	
private
ÃÃ 
void
ÃÃ -
EjecutarNotificacionesRespuesta
ÃÃ 4
(
ÃÃ4 5
(
ÕÕ 
string
ÕÕ 
Emisor
ÕÕ 
,
ÕÕ 
string
ÕÕ "
Receptor
ÕÕ# +
)
ÕÕ+ ,
nombres
ÕÕ- 4
)
ÕÕ4 5
{
ŒŒ 	(
NotificarSolicitudAceptada
œœ &
(
œœ& '
nombres
œœ' .
.
œœ. /
Emisor
œœ/ 5
,
œœ5 6
nombres
œœ7 >
.
œœ> ?
Receptor
œœ? G
)
œœG H
;
œœH I%
_notificadorListaAmigos
–– #
.
––# $$
NotificarCambioAmistad
––$ :
(
––: ;
nombres
––; B
.
––B C
Emisor
––C I
)
––I J
;
––J K%
_notificadorListaAmigos
—— #
.
——# $$
NotificarCambioAmistad
——$ :
(
——: ;
nombres
——; B
.
——B C
Receptor
——C K
)
——K L
;
——L M
}
““ 	
private
‘‘ 
void
‘‘ (
NotificarSolicitudAceptada
‘‘ /
(
‘‘/ 0
string
‘‘0 6
emisor
‘‘7 =
,
‘‘= >
string
‘‘? E
receptor
‘‘F N
)
‘‘N O
{
’’ 	
var
÷÷ 
	solicitud
÷÷ 
=
÷÷ 
new
÷÷ !
SolicitudAmistadDTO
÷÷  3
{
◊◊ 
UsuarioEmisor
ÿÿ 
=
ÿÿ 
emisor
ÿÿ  &
,
ÿÿ& '
UsuarioReceptor
ŸŸ 
=
ŸŸ  !
receptor
ŸŸ" *
,
ŸŸ* +
SolicitudAceptada
⁄⁄ !
=
⁄⁄" #
true
⁄⁄$ (
}
€€ 
;
€€ 
_notificador
›› 
.
›› +
NotificarSolicitudActualizada
›› 6
(
››6 7
emisor
››7 =
,
››= >
	solicitud
››? H
)
››H I
;
››I J
_notificador
ﬁﬁ 
.
ﬁﬁ +
NotificarSolicitudActualizada
ﬁﬁ 6
(
ﬁﬁ6 7
receptor
ﬁﬁ7 ?
,
ﬁﬁ? @
	solicitud
ﬁﬁA J
)
ﬁﬁJ K
;
ﬁﬁK L
}
ﬂﬂ 	
private
·· 
void
·· /
!EjecutarNotificacionesEliminacion
·· 6
(
··6 7)
ResultadoEliminacionAmistad
··7 R
	resultado
··S \
)
··\ ]
{
‚‚ 	"
NotificarEliminacion
„„  
(
„„  !
	resultado
‰‰ 
.
‰‰ 
Relacion
‰‰ "
,
‰‰" #
	resultado
ÂÂ 
.
ÂÂ  
NombreANormalizado
ÂÂ ,
,
ÂÂ, -
	resultado
ÊÊ 
.
ÊÊ  
NombreBNormalizado
ÊÊ ,
)
ÊÊ, -
;
ÊÊ- .%
_notificadorListaAmigos
ËË #
.
ËË# $$
NotificarCambioAmistad
ËË$ :
(
ËË: ;
	resultado
ËË; D
.
ËËD E 
NombreANormalizado
ËËE W
)
ËËW X
;
ËËX Y%
_notificadorListaAmigos
ÈÈ #
.
ÈÈ# $$
NotificarCambioAmistad
ÈÈ$ :
(
ÈÈ: ;
	resultado
ÈÈ; D
.
ÈÈD E 
NombreBNormalizado
ÈÈE W
)
ÈÈW X
;
ÈÈX Y
}
ÍÍ 	
private
ÏÏ 
void
ÏÏ "
NotificarEliminacion
ÏÏ )
(
ÏÏ) *
Amigo
ÏÏ* /
relacion
ÏÏ0 8
,
ÏÏ8 9
string
ÏÏ: @
usuarioA
ÏÏA I
,
ÏÏI J
string
ÏÏK Q
usuarioB
ÏÏR Z
)
ÏÏZ [
{
ÌÌ 	
if
ÓÓ 
(
ÓÓ 
relacion
ÓÓ 
==
ÓÓ 
null
ÓÓ  
)
ÓÓ  !
{
ÔÔ 
_logger
 
.
 
Warn
 
(
 
$str
 ]
)
] ^
;
^ _
return
ÒÒ 
;
ÒÒ 
}
ÚÚ 
var
ÙÙ 
	solicitud
ÙÙ 
=
ÙÙ 
new
ÙÙ !
SolicitudAmistadDTO
ÙÙ  3
{
ıı 
UsuarioEmisor
ˆˆ 
=
ˆˆ 
usuarioA
ˆˆ  (
,
ˆˆ( )
UsuarioReceptor
˜˜ 
=
˜˜  !
usuarioB
˜˜" *
,
˜˜* +
SolicitudAceptada
¯¯ !
=
¯¯" #
false
¯¯$ )
}
˘˘ 
;
˘˘ 
_notificador
˚˚ 
.
˚˚ '
NotificarAmistadEliminada
˚˚ 2
(
˚˚2 3
usuarioA
˚˚3 ;
,
˚˚; <
	solicitud
˚˚= F
)
˚˚F G
;
˚˚G H
_notificador
¸¸ 
.
¸¸ '
NotificarAmistadEliminada
¸¸ 2
(
¸¸2 3
usuarioB
¸¸3 ;
,
¸¸; <
	solicitud
¸¸= F
)
¸¸F G
;
¸¸G H
}
˝˝ 	
private
ÇÇ 
class
ÇÇ )
ResultadoEliminacionAmistad
ÇÇ 1
{
ÉÉ 	
public
ÑÑ 
Amigo
ÑÑ 
Relacion
ÑÑ !
{
ÑÑ" #
get
ÑÑ$ '
;
ÑÑ' (
set
ÑÑ) ,
;
ÑÑ, -
}
ÑÑ. /
public
ÖÖ 
string
ÖÖ  
NombreANormalizado
ÖÖ ,
{
ÖÖ- .
get
ÖÖ/ 2
;
ÖÖ2 3
set
ÖÖ4 7
;
ÖÖ7 8
}
ÖÖ9 :
public
ÜÜ 
string
ÜÜ  
NombreBNormalizado
ÜÜ ,
{
ÜÜ- .
get
ÜÜ/ 2
;
ÜÜ2 3
set
ÜÜ4 7
;
ÜÜ7 8
}
ÜÜ9 :
}
áá 	
}
àà 
}ââ ™
nC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str $
)$ %
]% &
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
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str &
)& '
]' (
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 1
)1 2
]2 3
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
[ 
assembly 	
:	 

InternalsVisibleTo 
( 
$str A
)A B
]B C
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[!! 
assembly!! 	
:!!	 

AssemblyVersion!! 
(!! 
$str!! $
)!!$ %
]!!% &
["" 
assembly"" 	
:""	 

AssemblyFileVersion"" 
("" 
$str"" (
)""( )
]"") *Ã
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\InvitacionSalaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
InvitacionSalaDTO

 "
{ 
[ 	

DataMember	 
] 
public 
string 

CodigoSala  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

DataMember	 
] 
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
Idioma 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} Ï
nC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\TrazoDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[ 
DataContract 
] 
public		 

class		 
TrazoDTO		 
{

 
[ 	

DataMember	 
] 
public 
double 
[ 
] 
PuntosX 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
double 
[ 
] 
PuntosY 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
string 
ColorHex 
{  
get! $
;$ %
set& )
;) *
}+ ,
[   	

DataMember  	 
]   
public!! 
double!! 
Grosor!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
[&& 	

DataMember&&	 
]&& 
public'' 
bool'' 
	EsBorrado'' 
{'' 
get''  #
;''# $
set''% (
;''( )
}''* +
[,, 	

DataMember,,	 
],, 
public-- 
bool-- 
EsLimpiarTodo-- !
{--" #
get--$ '
;--' (
set--) ,
;--, -
}--. /
}.. 
}// º
nC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\RondaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[ 
DataContract 
] 
public		 

class		 
RondaDTO		 
{

 
[ 	

DataMember	 
] 
public 
int 
	IdCancion 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
Rol 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
string 
PistaArtista "
{# $
get% (
;( )
set* -
;- .
}/ 0
[   	

DataMember  	 
]   
public!! 
string!! 
PistaGenero!! !
{!!" #
get!!$ '
;!!' (
set!!) ,
;!!, -
}!!. /
[&& 	

DataMember&&	 
]&& 
public'' 
int'' 
TiempoSegundos'' !
{''" #
get''$ '
;''' (
set'') ,
;'', -
}''. /
[,, 	

DataMember,,	 
],, 
public-- 
string-- 
NombreDibujante-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
}.. 
}// √
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\UsuarioDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 

UsuarioDTO

 
{ 
[ 	

DataMember	 
] 
public 
int 
	UsuarioId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
int 
	JugadorId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 
Nombre"" 
{"" 
get"" "
;""" #
set""$ '
;""' (
}"") *
['' 	

DataMember''	 
]'' 
public(( 
string(( 
Apellido(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
[-- 	

DataMember--	 
]-- 
public.. 
string.. 
Correo.. 
{.. 
get.. "
;.." #
set..$ '
;..' (
}..) *
[33 	

DataMember33	 
]33 
public44 
int44 
AvatarId44 
{44 
get44 !
;44! "
set44# &
;44& '
}44( )
[99 	

DataMember99	 
]99 
public:: 
string:: 
	Instagram:: 
{::  !
get::" %
;::% &
set::' *
;::* +
}::, -
[?? 	

DataMember??	 
]?? 
public@@ 
string@@ 
Facebook@@ 
{@@  
get@@! $
;@@$ %
set@@& )
;@@) *
}@@+ ,
[EE 	

DataMemberEE	 
]EE 
publicFF 
stringFF 
XFF 
{FF 
getFF 
;FF 
setFF "
;FF" #
}FF$ %
[KK 	

DataMemberKK	 
]KK 
publicLL 
stringLL 
DiscordLL 
{LL 
getLL  #
;LL# $
setLL% (
;LL( )
}LL* +
}MM 
}NN Ì
nC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\AmigoDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
AmigoDTO

 
{ 
[ 	

DataMember	 
] 
public 
int 
	UsuarioId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Â
yC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\SolicitudAmistadDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
SolicitudAmistadDTO

 $
{ 
[ 	

DataMember	 
] 
public 
string 
UsuarioEmisor #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
string 
UsuarioReceptor %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	

DataMember	 
] 
public 
bool 
SolicitudAceptada %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Î
ÅC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\SolicitudRecuperarCuentaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 '
SolicitudRecuperarCuentaDTO

 ,
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
Identificador #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
string 
Idioma 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} £
áC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoSolicitudRecuperacionDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[

 
DataContract

 
]

 
public 

class -
!ResultadoSolicitudRecuperacionDTO 2
{ 
[ 	

DataMember	 
] 
public 
bool 
CuentaEncontrada $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
bool 
CodigoEnviado !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
string 
CorreoDestino #
{$ %
get& )
;) *
set+ .
;. /
}0 1
["" 	

DataMember""	 
]"" 
public## 
string## 
Mensaje## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
[(( 	

DataMember((	 
](( 
public)) 
string)) 
TokenCodigo)) !
{))" #
get))$ '
;))' (
set))) ,
;)), -
})). /
}** 
}++ ô
ÅC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoSolicitudCodigoDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[

 
DataContract

 
]

 
public 

class '
ResultadoSolicitudCodigoDTO ,
{ 
[ 	

DataMember	 
] 
public 
bool 
CodigoEnviado !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
] 
public 
bool 
UsuarioRegistrado %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	

DataMember	 
] 
public 
bool 
CorreoRegistrado $
{% &
get' *
;* +
set, /
;/ 0
}1 2
["" 	

DataMember""	 
]"" 
public## 
string## 
Mensaje## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
[(( 	

DataMember((	 
](( 
public)) 
string)) 
TokenCodigo)) !
{))" #
get))$ '
;))' (
set))) ,
;)), -
})). /
}** 
}++ ƒ

ÄC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoRegistroCuentaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 &
ResultadoRegistroCuentaDTO

 +
{ 
[ 	

DataMember	 
] 
public 
bool 
RegistroExitoso #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
bool 
UsuarioRegistrado %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	

DataMember	 
] 
public 
bool 
CorreoRegistrado $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 
Mensaje"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
}## 
}$$ â
{C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoOperacionDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 !
ResultadoOperacionDTO

 &
{ 
[ 	

DataMember	 
] 
public 
bool 
OperacionExitosa $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ‰
|C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ActualizacionPerfilDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 "
ActualizacionPerfilDTO

 '
{ 
[ 	

DataMember	 
] 
public 
int 
	UsuarioId 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
Apellido 
{  
get! $
;$ %
set& )
;) *
}+ ,
[!! 	

DataMember!!	 
]!! 
public"" 
int"" 
AvatarId"" 
{"" 
get"" !
;""! "
set""# &
;""& '
}""( )
['' 	

DataMember''	 
]'' 
public(( 
string(( 
	Instagram(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
[-- 	

DataMember--	 
]-- 
public.. 
string.. 
Facebook.. 
{..  
get..! $
;..$ %
set..& )
;..) *
}..+ ,
[33 	

DataMember33	 
]33 
public44 
string44 
X44 
{44 
get44 
;44 
set44 "
;44" #
}44$ %
[99 	

DataMember99	 
]99 
public:: 
string:: 
Discord:: 
{:: 
get::  #
;::# $
set::% (
;::( )
}::* +
};; 
}<< ≈
yC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoPartidaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
ResultadoPartidaDTO

 $
{ 
[ 	

DataMember	 
] 
public 
List 
< #
ClasificacionUsuarioDTO +
>+ ,
Clasificacion- :
{; <
get= @
;@ A
setB E
;E F
}G H
[ 	

DataMember	 
] 
public 
string 
Mensaje 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} õ
~C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ResultadoInicioSesionDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[

 
DataContract

 
]

 
public 

class $
ResultadoInicioSesionDTO )
{ 
[ 	

DataMember	 
] 
public 
bool 
InicioSesionExitoso '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public 
bool 
CuentaEncontrada $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	

DataMember	 
] 
public 
bool  
ContrasenaIncorrecta (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
["" 	

DataMember""	 
]"" 
public## 
string## 
Mensaje## 
{## 
get##  #
;### $
set##% (
;##( )
}##* +
[(( 	

DataMember((	 
](( 
public)) 

UsuarioDTO)) 
Usuario)) !
{))" #
get))$ '
;))' (
set))) ,
;)), -
})). /
}** 
}++ õ
ÇC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ReenvioCodigoVerificacionDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[

 
DataContract

 
]

 
public 

class (
ReenvioCodigoVerificacionDTO -
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
TokenCodigo !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} Ç
vC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ReenvioCodigoDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
ReenvioCodigoDTO

 !
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
TokenCodigo !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} í
tC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\NuevaCuentaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
NuevaCuentaDTO

 
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
Usuario 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
Correo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
Nombre 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	

DataMember!!	 
(!! 

IsRequired!! 
=!!  
true!!! %
)!!% &
]!!& '
public"" 
string"" 
Apellido"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
['' 	

DataMember''	 
('' 

IsRequired'' 
=''  
true''! %
)''% &
]''& '
public(( 
string(( 

Contrasena((  
{((! "
get((# &
;((& '
set((( +
;((+ ,
}((- .
[-- 	

DataMember--	 
(-- 

IsRequired-- 
=--  
true--! %
)--% &
]--& '
public.. 
int.. 
AvatarId.. 
{.. 
get.. !
;..! "
set..# &
;..& '
}..( )
[33 	

DataMember33	 
]33 
public44 
string44 
Idioma44 
{44 
get44 "
;44" #
set44$ '
;44' (
}44) *
}66 
}77 ∆
ÅC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\CredencialesInicioSesionDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 '
CredencialesInicioSesionDTO

 ,
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
Identificador #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 

Contrasena  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} º
{C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ConfirmacionCodigoDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 !
ConfirmacionCodigoDTO

 &
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
TokenCodigo !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
CodigoIngresado %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ÷
}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ClasificacionUsuarioDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 #
ClasificacionUsuarioDTO

 (
{ 
[ 	

DataMember	 
] 
public 
string 
Usuario 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
] 
public 
int 
Puntos 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
int 
RondasGanadas  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} «
ÄC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ActualizacionContrasenaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 &
ActualizacionContrasenaDTO

 +
{ 
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
TokenCodigo !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	

DataMember	 
( 

IsRequired 
=  
true! %
)% &
]& '
public 
string 
NuevaContrasena %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} Ö*
xC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\LogicaNegocio\GestorTiempoPartida.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
LogicaNegocio. ;
{ 
public 

class  
GestorTiemposPartida %
:& '
IDisposable( 3
{ 
private 
readonly 
Timer 
_timerRonda *
;* +
private 
readonly 
Timer 
_timerTransicion /
;/ 0
private 
DateTime 
_inicioRonda %
;% &
private 
int "
_duracionRondaSegundos *
;* +
public 
event 
Action 
TiempoRondaAgotado .
;. /
public 
event 
Action #
TiempoTransicionAgotado 3
;3 4
public%%  
GestorTiemposPartida%% #
(%%# $
int%%$ '!
duracionRondaSegundos%%( =
,%%= >
int%%? B&
duracionTransicionSegundos%%C ]
)%%] ^
{&& 	"
_duracionRondaSegundos'' "
=''# $!
duracionRondaSegundos''% :
;'': ;
_timerRonda)) 
=)) 
new)) 
Timer)) #
{** 
	AutoReset++ 
=++ 
false++ !
},, 
;,, 
_timerRonda.. 
... 
Elapsed.. 
+=..  "
(..# $
s..$ %
,..% &
e..' (
)..( )
=>..* ,
{// 
TiempoRondaAgotado00 "
?00" #
.00# $
Invoke00$ *
(00* +
)00+ ,
;00, -
}11 
;11 
_timerTransicion33 
=33 
new33 "
Timer33# (
{44 
	AutoReset55 
=55 
false55 !
,55! "
Interval66 
=66 &
duracionTransicionSegundos66 5
*666 7
$num668 <
}77 
;77 
_timerTransicion99 
.99 
Elapsed99 $
+=99% '
(99( )
s99) *
,99* +
e99, -
)99- .
=>99/ 1
{:: #
TiempoTransicionAgotado;; '
?;;' (
.;;( )
Invoke;;) /
(;;/ 0
);;0 1
;;;1 2
}<< 
;<< 
}== 	
publicBB 
voidBB 
IniciarRondaBB  
(BB  !
)BB! "
{CC 	
_timerTransicionDD 
.DD 
StopDD !
(DD! "
)DD" #
;DD# $
_timerRondaEE 
.EE 
IntervalEE  
=EE! ""
_duracionRondaSegundosEE# 9
*EE: ;
$numEE< @
;EE@ A
_inicioRondaFF 
=FF 
DateTimeFF #
.FF# $
UtcNowFF$ *
;FF* +
_timerRondaGG 
.GG 
StartGG 
(GG 
)GG 
;GG  
}HH 	
publicMM 
voidMM 
IniciarTransicionMM %
(MM% &
)MM& '
{NN 	
DetenerRondaOO 
(OO 
)OO 
;OO 
_timerTransicionPP 
.PP 
StartPP "
(PP" #
)PP# $
;PP$ %
}QQ 	
publicVV 
voidVV 
DetenerTodoVV 
(VV  
)VV  !
{WW 	
DetenerRondaXX 
(XX 
)XX 
;XX 
_timerTransicionYY 
.YY 
StopYY !
(YY! "
)YY" #
;YY# $
}ZZ 	
publicaa 
intaa #
CalcularPuntosPorTiempoaa *
(aa* +
)aa+ ,
{bb 	
ifcc 
(cc 
!cc 
_timerRondacc 
.cc 
Enabledcc $
)cc$ %
{dd 
returnee 
$numee 
;ee 
}ff 
varhh 
transcurridohh 
=hh 
(hh  
inthh  #
)hh# $
(hh$ %
DateTimehh% -
.hh- .
UtcNowhh. 4
-hh5 6
_inicioRondahh7 C
)hhC D
.hhD E
TotalSecondshhE Q
;hhQ R
varii 
restanteii 
=ii "
_duracionRondaSegundosii 1
-ii2 3
transcurridoii4 @
;ii@ A
returnjj 
Mathjj 
.jj 
Maxjj 
(jj 
$numjj 
,jj 
restantejj '
)jj' (
;jj( )
}kk 	
publicpp 
voidpp 
Disposepp 
(pp 
)pp 
{qq 	
_timerRondarr 
?rr 
.rr 
Disposerr  
(rr  !
)rr! "
;rr" #
_timerTransicionss 
?ss 
.ss 
Disposess %
(ss% &
)ss& '
;ss' (
}tt 	
privatevv 
voidvv 
DetenerRondavv !
(vv! "
)vv" #
{ww 	
_timerRondaxx 
.xx 
Stopxx 
(xx 
)xx 
;xx 
_inicioRondayy 
=yy 
defaultyy "
;yy" #
}zz 	
}{{ 
}|| »
sC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\LogicaNegocio\JugadorPartida.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
LogicaNegocio. ;
{ 
public 

class 
JugadorPartida 
{ 
public 
string 
NombreUsuario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 

IdConexion  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
EsHost 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
EsDibujante 
{  !
get" %
;% &
set' *
;* +
}, -
public   
bool   
	YaAdivino   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public%% 
int%% 
PuntajeTotal%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public++ 
JugadorPartida++ 
CopiarDatosBasicos++ 0
(++0 1
)++1 2
{,, 	
return-- 
new-- 
JugadorPartida-- %
{.. 
NombreUsuario// 
=// 
NombreUsuario//  -
,//- .

IdConexion00 
=00 

IdConexion00 '
,00' (
EsHost11 
=11 
EsHost11 
,11  
EsDibujante22 
=22 
EsDibujante22 )
,22) *
	YaAdivino33 
=33 
	YaAdivino33 %
,33% &
PuntajeTotal44 
=44 
PuntajeTotal44 +
}55 
;55 
}66 	
public<< 
override<< 
string<< 
ToString<< '
(<<' (
)<<( )
{== 	
return>> 
string>> 
.>> 
Format>>  
(>>  !
$str?? U
,??U V
NombreUsuario@@ 
,@@ 

IdConexionAA 
,AA 
EsHostBB 
,BB 
EsDibujanteCC 
,CC 
PuntajeTotalDD 
)DD 
;DD 
}EE 	
}FF 
}GG —	
~C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IVerificacionRegistroServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
public 

	interface )
IVerificacionRegistroServicio 2
{		 '
ResultadoSolicitudCodigoDTO #
SolicitarCodigo$ 3
(3 4
NuevaCuentaDTO4 B
nuevaCuentaC N
)N O
;O P'
ResultadoSolicitudCodigoDTO #
ReenviarCodigo$ 2
(2 3(
ReenvioCodigoVerificacionDTO3 O
	solicitudP Y
)Y Z
;Z [&
ResultadoRegistroCuentaDTO "
ConfirmarCodigo# 2
(2 3!
ConfirmacionCodigoDTO3 H
confirmacionI U
)U V
;V W
bool &
EstaVerificacionConfirmada '
(' (
NuevaCuentaDTO( 6
nuevaCuenta7 B
)B C
;C D
void!! 
LimpiarVerificacion!!  
(!!  !
NuevaCuentaDTO!!! /
nuevaCuenta!!0 ;
)!!; <
;!!< =
}"" 
}## ﬁ
rC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\LogicaNegocio\EstadoPartida.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
LogicaNegocio. ;
{ 
public 

enum 
EstadoPartida 
{ 
EnSalaEspera 
, 
Jugando		 
,		 

Finalizada

 
} 
} à^
{C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\LogicaNegocio\GestorJugadoresPartida.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
LogicaNegocio. ;
{ 
public 

class "
GestorJugadoresPartida '
{ 
private 
readonly 

Dictionary #
<# $
string$ *
,* +
JugadorPartida, :
>: ;

_jugadores< F
;F G
private 
readonly 
Queue 
< 
string %
>% &
_colaDibujantes' 6
;6 7
private 
readonly 
Random 
_random  '
;' (
public "
GestorJugadoresPartida %
(% &
)& '
{ 	

_jugadores 
= 
new 

Dictionary '
<' (
string( .
,. /
JugadorPartida0 >
>> ?
(? @
StringComparer@ N
.N O
OrdinalO V
)V W
;W X
_colaDibujantes 
= 
new !
Queue" '
<' (
string( .
>. /
(/ 0
)0 1
;1 2
_random 
= 
new 
Random  
(  !
)! "
;" #
} 	
public 
bool #
HaySuficientesJugadores +
{   	
get!! 
{!! 
return!! 

_jugadores!! #
.!!# $
Count!!$ )
>=!!* ,
$num!!- .
;!!. /
}!!0 1
}"" 	
public** 
void** 
Agregar** 
(** 
string** "

idConexion**# -
,**- .
string**/ 5
nombre**6 <
,**< =
bool**> B
esHost**C I
)**I J
{++ 	
if,, 
(,, 

_jugadores,, 
.,, 
ContainsKey,, &
(,,& '

idConexion,,' 1
),,1 2
),,2 3
{-- 
var.. 
	existente.. 
=.. 

_jugadores..  *
[..* +

idConexion..+ 5
]..5 6
;..6 7
	existente// 
.// 
NombreUsuario// '
=//( )
nombre//* 0
;//0 1
	existente00 
.00 
EsHost00  
=00! "
esHost00# )
;00) *
return11 
;11 
}22 

_jugadores44 
.44 
Add44 
(44 

idConexion44 %
,44% &
new44' *
JugadorPartida44+ 9
{55 

IdConexion66 
=66 

idConexion66 '
,66' (
NombreUsuario77 
=77 
nombre77  &
,77& '
EsHost88 
=88 
esHost88 
,88  
PuntajeTotal99 
=99 
$num99  
}:: 
):: 
;:: 
};; 	
publicBB 
JugadorPartidaBB 
ObtenerBB %
(BB% &
stringBB& ,

idConexionBB- 7
)BB7 8
{CC 	

_jugadoresDD 
.DD 
TryGetValueDD "
(DD" #

idConexionDD# -
,DD- .
outDD/ 2
varDD3 6
jugadorDD7 >
)DD> ?
;DD? @
returnEE 
jugadorEE 
;EE 
}FF 	
publicOO 
boolOO 
RemoverOO 
(OO 
stringOO "

idConexionOO# -
,OO- .
outOO/ 2
boolOO3 7
eraDibujanteOO8 D
)OOD E
{PP 	
eraDibujanteQQ 
=QQ 
falseQQ  
;QQ  !
ifRR 
(RR 

_jugadoresRR 
.RR 
TryGetValueRR &
(RR& '

idConexionRR' 1
,RR1 2
outRR3 6
varRR7 :
jugadorRR; B
)RRB C
)RRC D
{SS 
eraDibujanteTT 
=TT 
jugadorTT &
.TT& '
EsDibujanteTT' 2
;TT2 3

_jugadoresUU 
.UU 
RemoveUU !
(UU! "

idConexionUU" ,
)UU, -
;UU- .%
ReconstruirColaDibujantesVV )
(VV) *

idConexionVV* 4
)VV4 5
;VV5 6
returnWW 
trueWW 
;WW 
}XX 
returnYY 
falseYY 
;YY 
}ZZ 	
publicaa 
boolaa 
EsHostaa 
(aa 
stringaa !

idConexionaa" ,
)aa, -
{bb 	
returncc 

_jugadorescc 
.cc 
TryGetValuecc )
(cc) *

idConexioncc* 4
,cc4 5
outcc6 9
varcc: =
jugadorcc> E
)ccE F
&&ccG I
jugadorccJ Q
.ccQ R
EsHostccR X
;ccX Y
}dd 	
publicjj 
voidjj "
PrepararColaDibujantesjj *
(jj* +
)jj+ ,
{kk 	
_colaDibujantesll 
.ll 
Clearll !
(ll! "
)ll" #
;ll# $
varmm 
idsAleatoriosmm 
=mm 

_jugadoresmm  *
.mm* +
Keysmm+ /
.mm/ 0
OrderBymm0 7
(mm7 8
xmm8 9
=>mm: <
_randommm= D
.mmD E
NextmmE I
(mmI J
)mmJ K
)mmK L
.mmL M
ToListmmM S
(mmS T
)mmT U
;mmU V
foreachoo 
(oo 
varoo 
idoo 
inoo 
idsAleatoriosoo ,
)oo, -
{pp 
_colaDibujantesqq 
.qq  
Enqueueqq  '
(qq' (
idqq( *
)qq* +
;qq+ ,
}rr 
}ss 	
public{{ 
bool{{ )
SeleccionarSiguienteDibujante{{ 1
({{1 2
){{2 3
{|| 	)
ReiniciarEstadoRondaJugadores}} )
(}}) *
)}}* +
;}}+ ,
while 
( 
_colaDibujantes "
." #
Count# (
>) *
$num+ ,
), -
{
ÄÄ 
var
ÅÅ 
id
ÅÅ 
=
ÅÅ 
_colaDibujantes
ÅÅ (
.
ÅÅ( )
Dequeue
ÅÅ) 0
(
ÅÅ0 1
)
ÅÅ1 2
;
ÅÅ2 3
if
ÇÇ 
(
ÇÇ 

_jugadores
ÇÇ 
.
ÇÇ 
TryGetValue
ÇÇ *
(
ÇÇ* +
id
ÇÇ+ -
,
ÇÇ- .
out
ÇÇ/ 2
var
ÇÇ3 6
jugador
ÇÇ7 >
)
ÇÇ> ?
)
ÇÇ? @
{
ÉÉ 
jugador
ÑÑ 
.
ÑÑ 
EsDibujante
ÑÑ '
=
ÑÑ( )
true
ÑÑ* .
;
ÑÑ. /
jugador
ÖÖ 
.
ÖÖ 
	YaAdivino
ÖÖ %
=
ÖÖ& '
true
ÖÖ( ,
;
ÖÖ, -
return
ÜÜ 
true
ÜÜ 
;
ÜÜ  
}
áá 
}
àà 
return
ââ 
false
ââ 
;
ââ 
}
ää 	
public
êê 
bool
êê 
TodosAdivinaron
êê #
(
êê# $
)
êê$ %
{
ëë 	
var
íí 
adivinadores
íí 
=
íí 

_jugadores
íí )
.
íí) *
Values
íí* 0
.
íí0 1
Where
íí1 6
(
íí6 7
j
íí7 8
=>
íí9 ;
!
íí< =
j
íí= >
.
íí> ?
EsDibujante
íí? J
)
ííJ K
.
ííK L
ToList
ííL R
(
ííR S
)
ííS T
;
ííT U
return
ìì 
adivinadores
ìì 
.
ìì  
Count
ìì  %
>
ìì& '
$num
ìì( )
&&
ìì* ,
adivinadores
ìì- 9
.
ìì9 :
All
ìì: =
(
ìì= >
j
ìì> ?
=>
ìì@ B
j
ììC D
.
ììD E
	YaAdivino
ììE N
)
ììN O
;
ììO P
}
îî 	
public
öö 
List
öö 
<
öö %
ClasificacionUsuarioDTO
öö +
>
öö+ ,"
GenerarClasificacion
öö- A
(
ööA B
)
ööB C
{
õõ 	
return
úú 

_jugadores
úú 
.
úú 
Values
úú $
.
ùù 
Select
ùù 
(
ùù 
jugador
ùù 
=>
ùù  "
new
ùù# &%
ClasificacionUsuarioDTO
ùù' >
{
ûû 
Usuario
üü 
=
üü 
jugador
üü %
.
üü% &
NombreUsuario
üü& 3
,
üü3 4
Puntos
†† 
=
†† 
jugador
†† $
.
††$ %
PuntajeTotal
††% 1
}
°° 
)
°° 
.
¢¢ 
OrderByDescending
¢¢ "
(
¢¢" #
j
¢¢# $
=>
¢¢% '
j
¢¢( )
.
¢¢) *
Puntos
¢¢* 0
)
¢¢0 1
.
££ 
ToList
££ 
(
££ 
)
££ 
;
££ 
}
§§ 	
public
´´ !
IReadOnlyCollection
´´ "
<
´´" #
JugadorPartida
´´# 1
>
´´1 2
ObtenerCopiaLista
´´3 D
(
´´D E
)
´´E F
{
¨¨ 	
return
≠≠ 

_jugadores
≠≠ 
.
≠≠ 
Values
≠≠ $
.
≠≠$ %
Select
≠≠% +
(
≠≠+ ,
jugador
≠≠, 3
=>
≠≠4 6
jugador
≠≠7 >
.
≠≠> ? 
CopiarDatosBasicos
≠≠? Q
(
≠≠Q R
)
≠≠R S
)
≠≠S T
.
≠≠T U
ToList
≠≠U [
(
≠≠[ \
)
≠≠\ ]
;
≠≠] ^
}
ÆÆ 	
public
¥¥ 
bool
¥¥ (
QuedanDibujantesPendientes
¥¥ .
(
¥¥. /
)
¥¥/ 0
{
µµ 	
return
∂∂ 
_colaDibujantes
∂∂ "
.
∂∂" #
Count
∂∂# (
>
∂∂) *
$num
∂∂+ ,
;
∂∂, -
}
∑∑ 	
private
ππ 
void
ππ +
ReiniciarEstadoRondaJugadores
ππ 2
(
ππ2 3
)
ππ3 4
{
∫∫ 	
foreach
ªª 
(
ªª 
var
ªª 
jugador
ªª  
in
ªª! #

_jugadores
ªª$ .
.
ªª. /
Values
ªª/ 5
)
ªª5 6
{
ºº 
jugador
ΩΩ 
.
ΩΩ 
EsDibujante
ΩΩ #
=
ΩΩ$ %
false
ΩΩ& +
;
ΩΩ+ ,
jugador
ææ 
.
ææ 
	YaAdivino
ææ !
=
ææ" #
false
ææ$ )
;
ææ) *
}
øø 
}
¿¿ 	
private
¬¬ 
void
¬¬ '
ReconstruirColaDibujantes
¬¬ .
(
¬¬. /
string
¬¬/ 5

idExcluido
¬¬6 @
)
¬¬@ A
{
√√ 	
if
ƒƒ 
(
ƒƒ 
_colaDibujantes
ƒƒ 
.
ƒƒ  
Count
ƒƒ  %
==
ƒƒ& (
$num
ƒƒ) *
)
ƒƒ* +
{
≈≈ 
return
∆∆ 
;
∆∆ 
}
«« 
var
…… 
lista
…… 
=
…… 
_colaDibujantes
…… '
.
   
Where
   
(
   
id
   
=>
   
id
   
!=
    "

idExcluido
  # -
&&
  . 0

_jugadores
  1 ;
.
  ; <
ContainsKey
  < G
(
  G H
id
  H J
)
  J K
)
  K L
.
ÀÀ 
ToList
ÀÀ 
(
ÀÀ 
)
ÀÀ 
;
ÀÀ 
_colaDibujantes
ÕÕ 
.
ÕÕ 
Clear
ÕÕ !
(
ÕÕ! "
)
ÕÕ" #
;
ÕÕ# $
foreach
œœ 
(
œœ 
var
œœ 
id
œœ 
in
œœ 
lista
œœ $
)
œœ$ %
{
–– 
_colaDibujantes
—— 
.
——  
Enqueue
——  '
(
——' (
id
——( *
)
——* +
;
——+ ,
}
““ 
}
”” 	
}
‘‘ 
}’’ ù
}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\Utilidades\IContextoFactoria.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
.7 8

Utilidades8 B
{ 
public		 

	interface		 
IContextoFactoria		 &
{

 #
BaseDatosPruebaEntities 
CrearContexto  -
(- .
). /
;/ 0
} 
} îë
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\LogicaNegocio\ControladorPartida.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
LogicaNegocio. ;
{ 
public 

class 
ControladorPartida #
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager 
. 
	GetLogger  
(  !
typeof! '
(' (
ControladorPartida( :
): ;
); <
;< =
private 
const 
string 
RolDibujante )
=* +
$str, 7
;7 8
private 
const 
int !
LimitePalabrasMensaje /
=0 1
$num2 5
;5 6
private 
const 
int (
TiempoOverlayClienteSegundos 6
=7 8
$num9 :
;: ;
private 
readonly 
object 
_sincronizacion  /
=0 1
new2 5
object6 <
(< =
)= >
;> ?
private 
readonly 
ICatalogoCanciones +
_catalogoCanciones, >
;> ?
private 
readonly "
GestorJugadoresPartida /
_gestorJugadores0 @
;@ A
private 
readonly  
GestorTiemposPartida -
_gestorTiempos. <
;< =
private   
readonly   
HashSet    
<    !
int  ! $
>  $ %
_cancionesUsadas  & 6
;  6 7
private"" 
readonly"" 
int"" "
_duracionRondaSegundos"" 3
;""3 4
private## 
readonly## 
string## 
_dificultad##  +
;##+ ,
private$$ 
readonly$$ 
int$$ 
_totalRondas$$ )
;$$) *
private%% 
string%% 
_idiomaCanciones%% '
=%%( )
$str%%* 3
;%%3 4
private'' 
EstadoPartida'' 
_estadoActual'' +
;''+ ,
private(( 
int(( 
_rondaActual((  
;((  !
private)) 
int)) 
_cancionActualId)) $
;))$ %
private** 
bool** '
_rondaFinalizadaPorAciertos** 0
;**0 1
public77 
ControladorPartida77 !
(77! "
int77" %
tiempoRonda77& 1
,771 2
string773 9

dificultad77: D
,77D E
int77F I
totalRondas77J U
,77U V
ICatalogoCanciones88 
catalogo88 '
,88' ("
GestorJugadoresPartida88) ?
gestorJugadores88@ O
)88O P
{99 	
if:: 
(:: 
tiempoRonda:: 
<=:: 
$num::  
||::! #
totalRondas::$ /
<=::0 2
$num::3 4
)::4 5
{;; 
throw<< 
new<< '
ArgumentOutOfRangeException<< 5
(<<5 6
)<<6 7
;<<7 8
}== 
if?? 
(?? 
string?? 
.?? 
IsNullOrWhiteSpace?? )
(??) *

dificultad??* 4
)??4 5
)??5 6
{@@ 
throwAA 
newAA 
ArgumentExceptionAA +
(AA+ ,
nameofAA, 2
(AA2 3

dificultadAA3 =
)AA= >
)AA> ?
;AA? @
}BB 
_catalogoCancionesDD 
=DD  
catalogoDD! )
??DD* ,
throwEE 
newEE !
ArgumentNullExceptionEE /
(EE/ 0
nameofEE0 6
(EE6 7
catalogoEE7 ?
)EE? @
)EE@ A
;EEA B
_gestorJugadoresGG 
=GG 
gestorJugadoresGG .
??GG/ 1
throwHH 
newHH !
ArgumentNullExceptionHH /
(HH/ 0
nameofHH0 6
(HH6 7
gestorJugadoresHH7 F
)HHF G
)HHG H
;HHH I"
_duracionRondaSegundosJJ "
=JJ# $
tiempoRondaJJ% 0
;JJ0 1
_dificultadKK 
=KK 

dificultadKK $
.KK$ %
TrimKK% )
(KK) *
)KK* +
;KK+ ,
_totalRondasLL 
=LL 
totalRondasLL &
;LL& '
_gestorTiemposNN 
=NN 
newNN   
GestorTiemposPartidaNN! 5
(NN5 6
tiempoRondaNN6 A
,NNA B(
TiempoOverlayClienteSegundosNNC _
)NN_ `
;NN` a
_cancionesUsadasOO 
=OO 
newOO "
HashSetOO# *
<OO* +
intOO+ .
>OO. /
(OO/ 0
)OO0 1
;OO1 2
_estadoActualPP 
=PP 
EstadoPartidaPP )
.PP) *
EnSalaEsperaPP* 6
;PP6 7"
SuscribirEventosTiempoRR "
(RR" #
)RR# $
;RR$ %
}SS 	
publicXX 
eventXX 
ActionXX 
PartidaIniciadaXX +
;XX+ ,
public]] 
event]] 
Action]] 
<]] 
RondaDTO]] $
>]]$ %
InicioRonda]]& 1
;]]1 2
publicbb 
eventbb 
Actionbb 
<bb 
stringbb "
,bb" #
intbb$ '
>bb' (
JugadorAdivinobb) 7
;bb7 8
publicgg 
eventgg 
Actiongg 
<gg 
stringgg "
,gg" #
stringgg$ *
>gg* +
MensajeChatRecibidogg, ?
;gg? @
publicll 
eventll 
Actionll 
<ll 
TrazoDTOll $
>ll$ %
TrazoRecibidoll& 3
;ll3 4
publicqq 
eventqq 
Actionqq 
FinRondaqq $
;qq$ %
publicvv 
eventvv 
Actionvv 
<vv 
ResultadoPartidaDTOvv /
>vv/ 0

FinPartidavv1 ;
;vv; <
public{{ 
bool{{ 
EstaFinalizada{{ "
{|| 	
get}} 
{~~ 
lock 
( 
_sincronizacion %
)% &
{
ÄÄ 
return
ÅÅ 
_estadoActual
ÅÅ (
==
ÅÅ) +
EstadoPartida
ÅÅ, 9
.
ÅÅ9 :

Finalizada
ÅÅ: D
;
ÅÅD E
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
public
ää 
void
ää '
ConfigurarIdiomaCanciones
ää -
(
ää- .
string
ää. 4
idioma
ää5 ;
)
ää; <
{
ãã 	
lock
åå 
(
åå 
_sincronizacion
åå !
)
åå! "
{
çç 
_idiomaCanciones
éé  
=
éé! "
idioma
éé# )
;
éé) *
}
èè 
}
êê 	
public
öö 
void
öö 
AgregarJugador
öö "
(
öö" #
string
öö# )
id
öö* ,
,
öö, -
string
öö. 4
nombre
öö5 ;
,
öö; <
bool
öö= A
esHost
ööB H
)
ööH I
{
õõ 	
lock
úú 
(
úú 
_sincronizacion
úú !
)
úú! "
{
ùù 
if
ûû 
(
ûû 
_estadoActual
ûû !
!=
ûû" $
EstadoPartida
ûû% 2
.
ûû2 3
EnSalaEspera
ûû3 ?
)
ûû? @
{
üü 
throw
†† 
new
†† '
InvalidOperationException
†† 7
(
††7 8
MensajesError
††8 E
.
††E F
Cliente
††F M
.
††M N
PartidaYaIniciada
††N _
)
††_ `
;
††` a
}
°° 
_gestorJugadores
££  
.
££  !
Agregar
££! (
(
££( )
id
££) +
,
££+ ,
nombre
££- 3
,
££3 4
esHost
££5 ;
)
££; <
;
££< =
}
§§ 
}
•• 	
public
´´ 
void
´´ 
RemoverJugador
´´ "
(
´´" #
string
´´# )
id
´´* ,
)
´´, -
{
¨¨ 	
bool
≠≠ 
eraDibujante
≠≠ 
;
≠≠ 
bool
ÆÆ 
debeCancelar
ÆÆ 
=
ÆÆ 
false
ÆÆ  %
;
ÆÆ% &
bool
ØØ 
debeAvanzar
ØØ 
=
ØØ 
false
ØØ $
;
ØØ$ %
lock
±± 
(
±± 
_sincronizacion
±± !
)
±±! "
{
≤≤ 
if
≥≥ 
(
≥≥ 
!
≥≥ 
_gestorJugadores
≥≥ %
.
≥≥% &
Remover
≥≥& -
(
≥≥- .
id
≥≥. 0
,
≥≥0 1
out
≥≥2 5
eraDibujante
≥≥6 B
)
≥≥B C
)
≥≥C D
{
¥¥ 
return
µµ 
;
µµ 
}
∂∂ 
if
∑∑ 
(
∑∑ 
_estadoActual
∑∑ !
==
∑∑" $
EstadoPartida
∑∑% 2
.
∑∑2 3
Jugando
∑∑3 :
)
∑∑: ;
{
∏∏ 
if
ππ 
(
ππ 
!
ππ 
_gestorJugadores
ππ )
.
ππ) *%
HaySuficientesJugadores
ππ* A
)
ππA B
{
∫∫ 
debeCancelar
ªª $
=
ªª% &
true
ªª' +
;
ªª+ ,
}
ºº 
else
ΩΩ 
if
ΩΩ 
(
ΩΩ 
eraDibujante
ΩΩ )
)
ΩΩ) *
{
ææ 
debeAvanzar
øø #
=
øø$ %
true
øø& *
;
øø* +
}
¿¿ 
}
¡¡ 
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
debeCancelar
ƒƒ 
)
ƒƒ 
{
≈≈ 
CancelarPartida
∆∆ 
(
∆∆  
)
∆∆  !
;
∆∆! "
}
«« 
else
»» 
if
»» 
(
»» 
debeAvanzar
»»  
)
»»  !
{
…… "
FinalizarRondaActual
   $
(
  $ %
)
  % &
;
  & '
}
ÀÀ 
}
ÃÃ 	
public
““ 
void
““ 
IniciarPartida
““ "
(
““" #
string
““# )
idSolicitante
““* 7
)
““7 8
{
”” 	
lock
‘‘ 
(
‘‘ 
_sincronizacion
‘‘ !
)
‘‘! "
{
’’ "
ValidarInicioPartida
÷÷ $
(
÷÷$ %
idSolicitante
÷÷% 2
)
÷÷2 3
;
÷÷3 4
_estadoActual
◊◊ 
=
◊◊ 
EstadoPartida
◊◊  -
.
◊◊- .
Jugando
◊◊. 5
;
◊◊5 6
}
ÿÿ 
PartidaIniciada
⁄⁄ 
?
⁄⁄ 
.
⁄⁄ 
Invoke
⁄⁄ #
(
⁄⁄# $
)
⁄⁄$ %
;
⁄⁄% &$
PrepararSiguienteRonda
€€ "
(
€€" #
)
€€# $
;
€€$ %
}
‹‹ 	
public
„„ 
void
„„ 
ProcesarMensaje
„„ #
(
„„# $
string
„„$ *
id
„„+ -
,
„„- .
string
„„/ 5
mensaje
„„6 =
)
„„= >
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
EsMensajeInvalido
ÂÂ !
(
ÂÂ! "
id
ÂÂ" $
,
ÂÂ$ %
mensaje
ÂÂ& -
)
ÂÂ- .
)
ÂÂ. /
{
ÊÊ 
return
ÁÁ 
;
ÁÁ 
}
ËË 
JugadorPartida
ÍÍ 
jugador
ÍÍ "
;
ÍÍ" #
lock
ÎÎ 
(
ÎÎ 
_sincronizacion
ÎÎ !
)
ÎÎ! "
{
ÏÏ 
jugador
ÌÌ 
=
ÌÌ 
_gestorJugadores
ÌÌ *
.
ÌÌ* +
Obtener
ÌÌ+ 2
(
ÌÌ2 3
id
ÌÌ3 5
)
ÌÌ5 6
;
ÌÌ6 7
if
ÓÓ 
(
ÓÓ 
jugador
ÓÓ 
==
ÓÓ 
null
ÓÓ #
)
ÓÓ# $
{
ÔÔ 
return
 
;
 
}
ÒÒ 
}
ÚÚ 
if
ÙÙ 
(
ÙÙ 
_estadoActual
ÙÙ 
==
ÙÙ  
EstadoPartida
ÙÙ! .
.
ÙÙ. /
EnSalaEspera
ÙÙ/ ;
)
ÙÙ; <
{
ıı !
MensajeChatRecibido
ˆˆ #
?
ˆˆ# $
.
ˆˆ$ %
Invoke
ˆˆ% +
(
ˆˆ+ ,
jugador
ˆˆ, 3
.
ˆˆ3 4
NombreUsuario
ˆˆ4 A
,
ˆˆA B
mensaje
ˆˆC J
)
ˆˆJ K
;
ˆˆK L
return
˜˜ 
;
˜˜ 
}
¯¯ '
ProcesarIntentoAdivinanza
˙˙ %
(
˙˙% &
jugador
˙˙& -
,
˙˙- .
mensaje
˙˙/ 6
)
˙˙6 7
;
˙˙7 8
}
˚˚ 	
public
ÇÇ 
void
ÇÇ 
ProcesarTrazo
ÇÇ !
(
ÇÇ! "
string
ÇÇ" (
id
ÇÇ) +
,
ÇÇ+ ,
TrazoDTO
ÇÇ- 5
trazo
ÇÇ6 ;
)
ÇÇ; <
{
ÉÉ 	
lock
ÑÑ 
(
ÑÑ 
_sincronizacion
ÑÑ !
)
ÑÑ! "
{
ÖÖ 
var
ÜÜ 
jugador
ÜÜ 
=
ÜÜ 
_gestorJugadores
ÜÜ .
.
ÜÜ. /
Obtener
ÜÜ/ 6
(
ÜÜ6 7
id
ÜÜ7 9
)
ÜÜ9 :
;
ÜÜ: ;
if
áá 
(
áá 
_estadoActual
áá !
==
áá" $
EstadoPartida
áá% 2
.
áá2 3
Jugando
áá3 :
&&
áá; =
jugador
áá> E
!=
ááF H
null
ááI M
&&
àà 
jugador
àà 
.
àà 
EsDibujante
àà *
)
àà* +
{
ââ 
TrazoRecibido
ää !
?
ää! "
.
ää" #
Invoke
ää# )
(
ää) *
trazo
ää* /
)
ää/ 0
;
ää0 1
}
ãã 
}
åå 
}
çç 	
public
íí 
IEnumerable
íí 
<
íí 
JugadorPartida
íí )
>
íí) *
ObtenerJugadores
íí+ ;
(
íí; <
)
íí< =
{
ìì 	
lock
îî 
(
îî 
_sincronizacion
îî !
)
îî! "
{
ïï 
return
ññ 
_gestorJugadores
ññ '
.
ññ' (
ObtenerCopiaLista
ññ( 9
(
ññ9 :
)
ññ: ;
;
ññ; <
}
óó 
}
òò 	
private
öö 
void
öö "
ValidarInicioPartida
öö )
(
öö) *
string
öö* 0
id
öö1 3
)
öö3 4
{
õõ 	
if
úú 
(
úú 
_estadoActual
úú 
!=
úú  
EstadoPartida
úú! .
.
úú. /
EnSalaEspera
úú/ ;
)
úú; <
{
ùù 
throw
ûû 
new
ûû '
InvalidOperationException
ûû 3
(
ûû3 4
MensajesError
ûû4 A
.
ûûA B
Cliente
ûûB I
.
ûûI J
PartidaYaIniciada
ûûJ [
)
ûû[ \
;
ûû\ ]
}
üü 
if
†† 
(
†† 
!
†† 
_gestorJugadores
†† !
.
††! "%
HaySuficientesJugadores
††" 9
)
††9 :
{
°° 
throw
¢¢ 
new
¢¢ '
InvalidOperationException
¢¢ 3
(
¢¢3 4
MensajesError
¢¢4 A
.
¢¢A B
Cliente
¢¢B I
.
¢¢I J
FaltanJugadores
¢¢J Y
)
¢¢Y Z
;
¢¢Z [
}
££ 
if
§§ 
(
§§ 
!
§§ 
_gestorJugadores
§§ !
.
§§! "
EsHost
§§" (
(
§§( )
id
§§) +
)
§§+ ,
)
§§, -
{
•• 
throw
¶¶ 
new
¶¶ 
SecurityException
¶¶ +
(
¶¶+ ,
MensajesError
¶¶, 9
.
¶¶9 :
Cliente
¶¶: A
.
¶¶A B
SoloHost
¶¶B J
)
¶¶J K
;
¶¶K L
}
ßß 
}
®® 	
private
™™ 
void
™™ '
ProcesarIntentoAdivinanza
™™ .
(
™™. /
JugadorPartida
™™/ =
jugador
™™> E
,
™™E F
string
™™G M
mensaje
™™N U
)
™™U V
{
´´ 	
bool
¨¨ 
acierto
¨¨ 
=
¨¨ 
false
¨¨  
;
¨¨  !
int
≠≠ 
puntos
≠≠ 
=
≠≠ 
$num
≠≠ 
;
≠≠ 
bool
ÆÆ 
finRonda
ÆÆ 
=
ÆÆ 
false
ÆÆ !
;
ÆÆ! "
lock
∞∞ 
(
∞∞ 
_sincronizacion
∞∞ !
)
∞∞! "
{
±± 
if
≤≤ 
(
≤≤ "
JugadorPuedeAdivinar
≤≤ (
(
≤≤( )
jugador
≤≤) 0
)
≤≤0 1
)
≤≤1 2
{
≥≥ 
acierto
¥¥ 
=
¥¥ 
VerificarAcierto
¥¥ .
(
¥¥. /
mensaje
¥¥/ 6
,
¥¥6 7
out
¥¥8 ;
puntos
¥¥< B
)
¥¥B C
;
¥¥C D
if
µµ 
(
µµ 
acierto
µµ 
)
µµ  
{
∂∂ 
RegistrarAcierto
∑∑ (
(
∑∑( )
jugador
∑∑) 0
,
∑∑0 1
puntos
∑∑2 8
)
∑∑8 9
;
∑∑9 :
finRonda
∏∏  
=
∏∏! "
_gestorJugadores
∏∏# 3
.
∏∏3 4
TodosAdivinaron
∏∏4 C
(
∏∏C D
)
∏∏D E
;
∏∏E F
}
ππ 
}
∫∫ 
}
ªª 
if
ΩΩ 
(
ΩΩ 
acierto
ΩΩ 
)
ΩΩ 
{
ææ 
JugadorAdivino
øø 
?
øø 
.
øø  
Invoke
øø  &
(
øø& '
jugador
øø' .
.
øø. /
NombreUsuario
øø/ <
,
øø< =
puntos
øø> D
)
øøD E
;
øøE F
if
¿¿ 
(
¿¿ 
finRonda
¿¿ 
)
¿¿ 
{
¡¡ &
FinalizarRondaAnticipada
¬¬ ,
(
¬¬, -
)
¬¬- .
;
¬¬. /
}
√√ 
}
ƒƒ 
else
≈≈ 
{
∆∆ !
MensajeChatRecibido
«« #
?
««# $
.
««$ %
Invoke
««% +
(
««+ ,
jugador
««, 3
.
««3 4
NombreUsuario
««4 A
,
««A B
mensaje
««C J
)
««J K
;
««K L
}
»» 
}
…… 	
private
ÀÀ 
bool
ÀÀ "
JugadorPuedeAdivinar
ÀÀ )
(
ÀÀ) *
JugadorPartida
ÀÀ* 8
jugador
ÀÀ9 @
)
ÀÀ@ A
{
ÃÃ 	
return
ÕÕ 
_estadoActual
ÕÕ  
==
ÕÕ! #
EstadoPartida
ÕÕ$ 1
.
ÕÕ1 2
Jugando
ÕÕ2 9
&&
ÕÕ: <
!
ÕÕ= >
jugador
ÕÕ> E
.
ÕÕE F
EsDibujante
ÕÕF Q
&&
ŒŒ 
!
ŒŒ 
jugador
ŒŒ 
.
ŒŒ 
	YaAdivino
ŒŒ %
;
ŒŒ% &
}
œœ 	
private
—— 
bool
—— 
VerificarAcierto
—— %
(
——% &
string
——& ,
mensaje
——- 4
,
——4 5
out
——6 9
int
——: =
puntos
——> D
)
——D E
{
““ 	
puntos
”” 
=
”” 
$num
”” 
;
”” 
bool
‘‘ 

esCorrecto
‘‘ 
=
‘‘  
_catalogoCanciones
‘‘ 0
.
‘‘0 1
ValidarRespuesta
‘‘1 A
(
‘‘A B
_cancionActualId
‘‘B R
,
‘‘R S
mensaje
‘‘T [
)
‘‘[ \
;
‘‘\ ]
if
÷÷ 
(
÷÷ 
!
÷÷ 

esCorrecto
÷÷ 
&&
÷÷ '
EsMensajeAciertoProtocolo
÷÷ 8
(
÷÷8 9
mensaje
÷÷9 @
,
÷÷@ A
out
÷÷B E
int
÷÷F I
pts
÷÷J M
)
÷÷M N
)
÷÷N O
{
◊◊ 

esCorrecto
ÿÿ 
=
ÿÿ 
true
ÿÿ !
;
ÿÿ! "
puntos
ŸŸ 
=
ŸŸ 
pts
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
if
‹‹ 
(
‹‹ 

esCorrecto
‹‹ 
&&
‹‹ 
puntos
‹‹ $
==
‹‹% '
$num
‹‹( )
)
‹‹) *
{
›› 
puntos
ﬁﬁ 
=
ﬁﬁ 
_gestorTiempos
ﬁﬁ '
.
ﬁﬁ' (%
CalcularPuntosPorTiempo
ﬁﬁ( ?
(
ﬁﬁ? @
)
ﬁﬁ@ A
;
ﬁﬁA B
}
ﬂﬂ 
return
·· 

esCorrecto
·· 
;
·· 
}
‚‚ 	
private
‰‰ 
void
‰‰ 
RegistrarAcierto
‰‰ %
(
‰‰% &
JugadorPartida
‰‰& 4
jugador
‰‰5 <
,
‰‰< =
int
‰‰> A
puntos
‰‰B H
)
‰‰H I
{
ÂÂ 	
jugador
ÊÊ 
.
ÊÊ 
	YaAdivino
ÊÊ 
=
ÊÊ 
true
ÊÊ  $
;
ÊÊ$ %
jugador
ÁÁ 
.
ÁÁ 
PuntajeTotal
ÁÁ  
+=
ÁÁ! #
puntos
ÁÁ$ *
;
ÁÁ* +
}
ËË 	
private
ÍÍ 
void
ÍÍ $
PrepararSiguienteRonda
ÍÍ +
(
ÍÍ+ ,
)
ÍÍ, -
{
ÎÎ 	
RondaDTO
ÏÏ 
rondaDto
ÏÏ 
=
ÏÏ 
null
ÏÏ  $
;
ÏÏ$ %
bool
ÌÌ 
finJuego
ÌÌ 
=
ÌÌ 
false
ÌÌ !
;
ÌÌ! "
lock
ÔÔ 
(
ÔÔ 
_sincronizacion
ÔÔ !
)
ÔÔ! "
{
 
if
ÒÒ 
(
ÒÒ 
_estadoActual
ÒÒ !
!=
ÒÒ" $
EstadoPartida
ÒÒ% 2
.
ÒÒ2 3
Jugando
ÒÒ3 :
)
ÒÒ: ;
{
ÚÚ 
return
ÛÛ 
;
ÛÛ 
}
ÙÙ 
if
ˆˆ 
(
ˆˆ 
!
ˆˆ 
_gestorJugadores
ˆˆ %
.
ˆˆ% &(
QuedanDibujantesPendientes
ˆˆ& @
(
ˆˆ@ A
)
ˆˆA B
)
ˆˆB C
{
˜˜ 
if
¯¯ 
(
¯¯ 
_rondaActual
¯¯ $
>=
¯¯% '
_totalRondas
¯¯( 4
)
¯¯4 5
{
˘˘ 
finJuego
˙˙  
=
˙˙! "
true
˙˙# '
;
˙˙' (
}
˚˚ 
else
¸¸ 
{
˝˝ 
_rondaActual
˛˛ $
++
˛˛$ &
;
˛˛& '
_gestorJugadores
ˇˇ (
.
ˇˇ( )$
PrepararColaDibujantes
ˇˇ) ?
(
ˇˇ? @
)
ˇˇ@ A
;
ˇˇA B
}
ÄÄ 
}
ÅÅ 
if
ÉÉ 
(
ÉÉ 
!
ÉÉ 
finJuego
ÉÉ 
)
ÉÉ 
{
ÑÑ 
_gestorJugadores
ÖÖ $
.
ÖÖ$ %+
SeleccionarSiguienteDibujante
ÖÖ% B
(
ÖÖB C
)
ÖÖC D
;
ÖÖD E
var
ÜÜ 
cancion
ÜÜ 
=
ÜÜ  ! 
_catalogoCanciones
ÜÜ" 4
.
ÜÜ4 5%
ObtenerCancionAleatoria
ÜÜ5 L
(
ÜÜL M
_idiomaCanciones
ÜÜM ]
,
ÜÜ] ^
_cancionesUsadas
áá (
)
áá( )
;
áá) *
_cancionActualId
àà $
=
àà% &
cancion
àà' .
.
àà. /
Id
àà/ 1
;
àà1 2
_cancionesUsadas
ââ $
.
ââ$ %
Add
ââ% (
(
ââ( )
cancion
ââ) 0
.
ââ0 1
Id
ââ1 3
)
ââ3 4
;
ââ4 5
rondaDto
ãã 
=
ãã 
CrearRondaDto
ãã ,
(
ãã, -
cancion
ãã- 4
)
ãã4 5
;
ãã5 6)
IniciarTimerRondaConRetardo
åå /
(
åå/ 0
)
åå0 1
;
åå1 2
}
çç 
else
éé 
{
èè 
_estadoActual
êê !
=
êê" #
EstadoPartida
êê$ 1
.
êê1 2

Finalizada
êê2 <
;
êê< =
}
ëë 
}
íí 
if
îî 
(
îî 
finJuego
îî 
)
îî 
{
ïï !
NotificarFinPartida
ññ #
(
ññ# $
)
ññ$ %
;
ññ% &
}
óó 
else
òò 
{
ôô 
InicioRonda
öö 
?
öö 
.
öö 
Invoke
öö #
(
öö# $
rondaDto
öö$ ,
)
öö, -
;
öö- .
}
õõ 
}
úú 	
private
ûû 
void
ûû )
IniciarTimerRondaConRetardo
ûû 0
(
ûû0 1
)
ûû1 2
{
üü 	
Task
†† 
.
†† 
Delay
†† 
(
†† *
TiempoOverlayClienteSegundos
†† 3
*
††4 5
$num
††6 :
)
††: ;
.
††; <
ContinueWith
††< H
(
††H I
_
††I J
=>
††K M
{
°° 
lock
¢¢ 
(
¢¢ 
_sincronizacion
¢¢ %
)
¢¢% &
{
££ 
if
§§ 
(
§§ 
_estadoActual
§§ %
==
§§& (
EstadoPartida
§§) 6
.
§§6 7
Jugando
§§7 >
)
§§> ?
{
•• 
_gestorTiempos
¶¶ &
.
¶¶& '
IniciarRonda
¶¶' 3
(
¶¶3 4
)
¶¶4 5
;
¶¶5 6
}
ßß 
}
®® 
}
©© 
)
©© 
;
©© 
}
™™ 	
private
¨¨ 
void
¨¨ "
FinalizarRondaActual
¨¨ )
(
¨¨) *
bool
¨¨* .
forzarPorAciertos
¨¨/ @
=
¨¨A B
false
¨¨C H
)
¨¨H I
{
≠≠ 	
lock
ÆÆ 
(
ÆÆ 
_sincronizacion
ÆÆ !
)
ÆÆ! "
{
ØØ 
if
∞∞ 
(
∞∞ 
_estadoActual
∞∞ !
!=
∞∞" $
EstadoPartida
∞∞% 2
.
∞∞2 3
Jugando
∞∞3 :
)
∞∞: ;
{
±± 
return
≤≤ 
;
≤≤ 
}
≥≥ 
if
¥¥ 
(
¥¥ )
_rondaFinalizadaPorAciertos
¥¥ /
&&
¥¥0 2
!
¥¥3 4
forzarPorAciertos
¥¥4 E
)
¥¥E F
{
µµ 
return
∂∂ 
;
∂∂ 
}
∑∑ 
_gestorTiempos
∏∏ 
.
∏∏ 
DetenerTodo
∏∏ *
(
∏∏* +
)
∏∏+ ,
;
∏∏, -
}
ππ 
FinRonda
ªª 
?
ªª 
.
ªª 
Invoke
ªª 
(
ªª 
)
ªª 
;
ªª '
EvaluarContinuidadPartida
ºº %
(
ºº% &
)
ºº& '
;
ºº' (
}
ΩΩ 	
private
øø 
void
øø &
FinalizarRondaAnticipada
øø -
(
øø- .
)
øø. /
{
¿¿ 	
bool
¡¡ 
yaFinalizada
¡¡ 
;
¡¡ 
lock
√√ 
(
√√ 
_sincronizacion
√√ !
)
√√! "
{
ƒƒ 
yaFinalizada
≈≈ 
=
≈≈ )
_rondaFinalizadaPorAciertos
≈≈ :
;
≈≈: ;)
_rondaFinalizadaPorAciertos
∆∆ +
=
∆∆, -
true
∆∆. 2
;
∆∆2 3
}
«« 
if
…… 
(
…… 
!
…… 
yaFinalizada
…… 
)
…… 
{
   "
FinalizarRondaActual
ÀÀ $
(
ÀÀ$ %
true
ÀÀ% )
)
ÀÀ) *
;
ÀÀ* +
}
ÃÃ 
}
ÕÕ 	
private
œœ 
void
œœ '
EvaluarContinuidadPartida
œœ .
(
œœ. /
)
œœ/ 0
{
–– 	
bool
—— 
esFin
—— 
=
—— 
false
—— 
;
—— 
lock
““ 
(
““ 
_sincronizacion
““ !
)
““! "
{
”” 
if
‘‘ 
(
‘‘ 
_estadoActual
‘‘ !
==
‘‘" $
EstadoPartida
‘‘% 2
.
‘‘2 3

Finalizada
‘‘3 =
||
‘‘> @
(
’’ 
_rondaActual
’’ !
>=
’’" $
_totalRondas
’’% 1
&&
’’2 4
!
÷÷ 
_gestorJugadores
÷÷ %
.
÷÷% &(
QuedanDibujantesPendientes
÷÷& @
(
÷÷@ A
)
÷÷A B
)
÷÷B C
)
÷÷C D
{
◊◊ 
_estadoActual
ÿÿ !
=
ÿÿ" #
EstadoPartida
ÿÿ$ 1
.
ÿÿ1 2

Finalizada
ÿÿ2 <
;
ÿÿ< =
esFin
ŸŸ 
=
ŸŸ 
true
ŸŸ  
;
ŸŸ  !
}
⁄⁄ 
else
€€ 
{
‹‹ )
_rondaFinalizadaPorAciertos
›› /
=
››0 1
false
››2 7
;
››7 8
_gestorTiempos
ﬁﬁ "
.
ﬁﬁ" #
IniciarTransicion
ﬁﬁ# 4
(
ﬁﬁ4 5
)
ﬁﬁ5 6
;
ﬁﬁ6 7
}
ﬂﬂ 
}
‡‡ 
if
‚‚ 
(
‚‚ 
esFin
‚‚ 
)
‚‚ 
{
„„ !
NotificarFinPartida
‰‰ #
(
‰‰# $
)
‰‰$ %
;
‰‰% &
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË 
CancelarPartida
ËË $
(
ËË$ %
)
ËË% &
{
ÈÈ 	
bool
ÍÍ 
debeNotificar
ÍÍ 
=
ÍÍ  
false
ÍÍ! &
;
ÍÍ& '
lock
ÏÏ 
(
ÏÏ 
_sincronizacion
ÏÏ !
)
ÏÏ! "
{
ÌÌ 
if
ÓÓ 
(
ÓÓ 
_estadoActual
ÓÓ !
==
ÓÓ" $
EstadoPartida
ÓÓ% 2
.
ÓÓ2 3

Finalizada
ÓÓ3 =
)
ÓÓ= >
{
ÔÔ 
return
 
;
 
}
ÒÒ 
_estadoActual
ÛÛ 
=
ÛÛ 
EstadoPartida
ÛÛ  -
.
ÛÛ- .

Finalizada
ÛÛ. 8
;
ÛÛ8 9
_gestorTiempos
ÙÙ 
.
ÙÙ 
DetenerTodo
ÙÙ *
(
ÙÙ* +
)
ÙÙ+ ,
;
ÙÙ, -
debeNotificar
ıı 
=
ıı 
true
ıı  $
;
ıı$ %
}
ˆˆ 
if
¯¯ 
(
¯¯ 
debeNotificar
¯¯ 
)
¯¯ 
{
˘˘ 

FinPartida
˙˙ 
?
˙˙ 
.
˙˙ 
Invoke
˙˙ "
(
˙˙" #
new
˙˙# &!
ResultadoPartidaDTO
˙˙' :
{
˚˚ 
Clasificacion
¸¸ !
=
¸¸" #
_gestorJugadores
¸¸$ 4
.
¸¸4 5"
GenerarClasificacion
¸¸5 I
(
¸¸I J
)
¸¸J K
,
¸¸K L
Mensaje
˝˝ 
=
˝˝ 
MensajesError
˝˝ +
.
˝˝+ ,
Cliente
˝˝, 3
.
˝˝3 4,
PartidaCanceladaFaltaJugadores
˝˝4 R
}
˛˛ 
)
˛˛ 
;
˛˛ 
}
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ !
NotificarFinPartida
ÇÇ (
(
ÇÇ( )
)
ÇÇ) *
{
ÉÉ 	

FinPartida
ÑÑ 
?
ÑÑ 
.
ÑÑ 
Invoke
ÑÑ 
(
ÑÑ 
new
ÑÑ "!
ResultadoPartidaDTO
ÑÑ# 6
{
ÖÖ 
Clasificacion
ÜÜ 
=
ÜÜ 
_gestorJugadores
ÜÜ  0
.
ÜÜ0 1"
GenerarClasificacion
ÜÜ1 E
(
ÜÜE F
)
ÜÜF G
}
áá 
)
áá 
;
áá 
}
àà 	
private
ää 
void
ää $
SuscribirEventosTiempo
ää +
(
ää+ ,
)
ää, -
{
ãã 	
_gestorTiempos
åå 
.
åå  
TiempoRondaAgotado
åå -
+=
åå. 0
(
åå1 2
)
åå2 3
=>
åå4 6"
FinalizarRondaActual
åå7 K
(
ååK L
)
ååL M
;
ååM N
_gestorTiempos
çç 
.
çç %
TiempoTransicionAgotado
çç 2
+=
çç3 5$
PrepararSiguienteRonda
çç6 L
;
ççL M
}
éé 	
private
êê 
bool
êê 
EsMensajeInvalido
êê &
(
êê& '
string
êê' -
id
êê. 0
,
êê0 1
string
êê2 8
mensaje
êê9 @
)
êê@ A
{
ëë 	
return
íí 
string
íí 
.
íí  
IsNullOrWhiteSpace
íí ,
(
íí, -
id
íí- /
)
íí/ 0
||
íí1 3
string
ìì 
.
ìì  
IsNullOrWhiteSpace
ìì ,
(
ìì, -
mensaje
ìì- 4
)
ìì4 5
||
ìì6 8
mensaje
îî 
.
îî 
Split
îî  
(
îî  !
$char
îî! $
)
îî$ %
.
îî% &
Length
îî& ,
>
îî- .#
LimitePalabrasMensaje
îî/ D
;
îîD E
}
ïï 	
private
óó 
static
óó 
bool
óó '
EsMensajeAciertoProtocolo
óó 5
(
óó5 6
string
óó6 <
mensaje
óó= D
,
óóD E
out
óóF I
int
óóJ M
puntos
óóN T
)
óóT U
{
òò 	
puntos
ôô 
=
ôô 
$num
ôô 
;
ôô 
if
öö 
(
öö 
!
öö 
mensaje
öö 
.
öö 

StartsWith
öö #
(
öö# $
$str
öö$ .
,
öö. /
StringComparison
öö0 @
.
öö@ A
OrdinalIgnoreCase
ööA R
)
ööR S
)
ööS T
{
õõ 
return
úú 
false
úú 
;
úú 
}
ùù 
var
üü 
partes
üü 
=
üü 
mensaje
üü  
.
üü  !
Split
üü! &
(
üü& '
$char
üü' *
)
üü* +
;
üü+ ,
return
†† 
partes
†† 
.
†† 
Length
††  
>=
††! #
$num
††$ %
&&
††& (
int
††) ,
.
††, -
TryParse
††- 5
(
††5 6
partes
††6 <
[
††< =
$num
††= >
]
††> ?
,
††? @
out
††A D
puntos
††E K
)
††K L
&&
††M O
puntos
††P V
>
††W X
$num
††Y Z
;
††Z [
}
°° 	
private
££ 
RondaDTO
££ 
CrearRondaDto
££ &
(
££& '
Cancion
££' .
cancion
££/ 6
)
££6 7
{
§§ 	
string
•• 
genero
•• 
=
•• 
null
••  
,
••  !
artista
••" )
=
••* +
null
••, 0
;
••0 1
if
¶¶ 
(
¶¶ 
_dificultad
¶¶ 
.
¶¶ 
Equals
¶¶ "
(
¶¶" #
$str
¶¶# *
,
¶¶* +
StringComparison
¶¶, <
.
¶¶< =
OrdinalIgnoreCase
¶¶= N
)
¶¶N O
)
¶¶O P
{
ßß 
artista
®® 
=
®® 
cancion
®® !
.
®®! "
Artista
®®" )
;
®®) *
}
©© 
if
™™ 
(
™™ 
!
™™ 
_dificultad
™™ 
.
™™ 
Equals
™™ #
(
™™# $
$str
™™$ -
,
™™- .
StringComparison
™™/ ?
.
™™? @
OrdinalIgnoreCase
™™@ Q
)
™™Q R
)
™™R S
{
´´ 
genero
¨¨ 
=
¨¨ 
cancion
¨¨  
.
¨¨  !
Genero
¨¨! '
;
¨¨' (
}
≠≠ 
return
ØØ 
new
ØØ 
RondaDTO
ØØ 
{
∞∞ 
	IdCancion
±± 
=
±± 
cancion
±± #
.
±±# $
Id
±±$ &
,
±±& '
Rol
≤≤ 
=
≤≤ 
RolDibujante
≤≤ "
,
≤≤" #
PistaArtista
≥≥ 
=
≥≥ 
artista
≥≥ &
,
≥≥& '
PistaGenero
¥¥ 
=
¥¥ 
genero
¥¥ $
,
¥¥$ %
TiempoSegundos
µµ 
=
µµ  $
_duracionRondaSegundos
µµ! 7
}
∂∂ 
;
∂∂ 
}
∑∑ 	
}
∏∏ 
}ππ üi
rC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Servicios\ReportesManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Servicios. 7
{ 
public 

class 
ReportesManejador "
:# $
IReportesManejador% 7
{ 
private 
static 
readonly 
ILog  $
_logger% ,
=- .

LogManager/ 9
.9 :
	GetLogger: C
(C D
typeofD J
(J K
ReportesManejadorK \
)\ ]
)] ^
;^ _
private 
readonly 
IContextoFactoria *
_contextoFactory+ ;
;; <
private 
readonly #
IValidadorNombreUsuario 0
_validadorUsuario1 B
;B C
public 
ReportesManejador  
(  !
)! "
:# $
this% )
() *
new* -
ContextoFactoria. >
(> ?
)? @
,@ A
newB E"
ValidadorNombreUsuarioF \
(\ ]
)] ^
)^ _
{ 	
} 	
public 
ReportesManejador  
(  !
IContextoFactoria   
contextoFactory   -
,  - .#
IValidadorNombreUsuario!! #
validadorUsuario!!$ 4
)!!4 5
{"" 	
_contextoFactory## 
=## 
contextoFactory## .
??##/ 1
throw$$ 
new$$ !
ArgumentNullException$$ /
($$/ 0
nameof$$0 6
($$6 7
contextoFactory$$7 F
)$$F G
)$$G H
;$$H I
_validadorUsuario%% 
=%% 
validadorUsuario%%  0
??%%1 3
throw&& 
new&& !
ArgumentNullException&& /
(&&/ 0
nameof&&0 6
(&&6 7
validadorUsuario&&7 G
)&&G H
)&&H I
;&&I J
}'' 	
public// !
ResultadoOperacionDTO// $
ReportarJugador//% 4
(//4 5
ReporteJugadorDTO//5 F
reporte//G N
)//N O
{00 	
try11 
{22 
ValidarSolicitud33  
(33  !
reporte33! (
)33( )
;33) *
string44 
motivoNormalizado44 (
=44) *!
EntradaComunValidador44+ @
.44@ A
NormalizarTexto44A P
(44P Q
reporte44Q X
.44X Y
Motivo44Y _
)44_ `
;44` a
using66 
(66 
var66 
contexto66 #
=66$ %
_contextoFactory66& 6
.666 7
CrearContexto667 D
(66D E
)66E F
)66F G
{77 
var88 
idsUsuarios88 #
=88$ %*
ObtenerIdentificadoresUsuarios88& D
(88D E
contexto88E M
,88M N
reporte88O V
)88V W
;88W X
var99 
reporteRepositorio99 *
=99+ ,
new99- 0
ReporteRepositorio991 C
(99C D
contexto99D L
)99L M
;99M N
if;; 
(;; 
idsUsuarios;; #
.;;# $
IdReportante;;$ 0
==;;1 3
idsUsuarios;;4 ?
.;;? @
IdReportado;;@ K
);;K L
{<< 
return== 
CrearResultadoFallo== 2
(==2 3
MensajesError>> )
.>>) *
Cliente>>* 1
.>>1 2
ReporteMismoUsuario>>2 E
)>>E F
;>>F G
}?? 
ifAA 
(AA 
reporteRepositorioAA *
.AA* +
ExisteReporteAA+ 8
(AA8 9
idsUsuariosBB #
.BB# $
IdReportanteBB$ 0
,BB0 1
idsUsuariosCC #
.CC# $
IdReportadoCC$ /
)CC/ 0
)CC0 1
{DD 
returnEE 
CrearResultadoFalloEE 2
(EE2 3
MensajesErrorFF )
.FF) *
ClienteFF* 1
.FF1 2
ReporteDuplicadoFF2 B
)FFB C
;FFC D
}GG 
varII 
nuevoReporteII $
=II% &
newII' *
ReporteII+ 2
{JJ 
idReportanteKK $
=KK% &
idsUsuariosKK' 2
.KK2 3
IdReportanteKK3 ?
,KK? @
idReportadoLL #
=LL$ %
idsUsuariosLL& 1
.LL1 2
IdReportadoLL2 =
,LL= >
MotivoMM 
=MM  
motivoNormalizadoMM! 2
,MM2 3
Fecha_ReporteNN %
=NN& '
DateTimeNN( 0
.NN0 1
NowNN1 4
}OO 
;OO 
reporteRepositorioQQ &
.QQ& '
CrearReporteQQ' 3
(QQ3 4
nuevoReporteQQ4 @
)QQ@ A
;QQA B
returnSS 
newSS !
ResultadoOperacionDTOSS 4
{TT 
OperacionExitosaUU (
=UU) *
trueUU+ /
,UU/ 0
MensajeVV 
=VV  !
MensajesErrorVV" /
.VV/ 0
ClienteVV0 7
.VV7 8
ReporteRegistradoVV8 I
}WW 
;WW 
}XX 
}YY 
catchZZ 
(ZZ 
FaultExceptionZZ !
exZZ" $
)ZZ$ %
{[[ 
_logger\\ 
.\\ 
Warn\\ 
(\\ 
$str\\ G
,\\G H
ex\\I K
)\\K L
;\\L M
return]] 
CrearResultadoFallo]] *
(]]* +
ex]]+ -
.]]- .
Message]]. 5
)]]5 6
;]]6 7
}^^ 
catch__ 
(__ 
ArgumentException__ $
ex__% '
)__' (
{`` 
_loggeraa 
.aa 
Warnaa 
(aa 
$straa D
,aaD E
exaaF H
)aaH I
;aaI J
returnbb 
CrearResultadoFallobb *
(bb* +
exbb+ -
.bb- .
Messagebb. 5
)bb5 6
;bb6 7
}cc 
catchdd 
(dd %
InvalidOperationExceptiondd ,
exdd- /
)dd/ 0
{ee 
_loggerff 
.ff 
Warnff 
(ff 
$strff G
,ffG H
exffI K
)ffK L
;ffL M
returngg 
CrearResultadoFallogg *
(gg* +
exgg+ -
.gg- .
Messagegg. 5
)gg5 6
;gg6 7
}hh 
catchii 
(ii  
KeyNotFoundExceptionii '
exii( *
)ii* +
{jj 
_loggerkk 
.kk 
Warnkk 
(kk 
$strkk O
,kkO P
exkkQ S
)kkS T
;kkT U
returnll 
CrearResultadoFalloll *
(ll* +
MensajesErrorll+ 8
.ll8 9
Clientell9 @
.ll@ A!
UsuariosNoEncontradosllA V
)llV W
;llW X
}mm 
catchnn 
(nn 
EntityExceptionnn "
exnn# %
)nn% &
{oo 
_loggerpp 
.pp 
Errorpp 
(pp 
$strpp L
,ppL M
exppN P
)ppP Q
;ppQ R
returnqq 
CrearResultadoFalloqq *
(qq* +
MensajesErrorqq+ 8
.qq8 9
Clienteqq9 @
.qq@ A
ErrorCrearReporteqqA R
)qqR S
;qqS T
}rr 
catchss 
(ss 
DataExceptionss  
exss! #
)ss# $
{tt 
_loggeruu 
.uu 
Erroruu 
(uu 
$struu D
,uuD E
exuuF H
)uuH I
;uuI J
returnvv 
CrearResultadoFallovv *
(vv* +
MensajesErrorvv+ 8
.vv8 9
Clientevv9 @
.vv@ A
ErrorCrearReportevvA R
)vvR S
;vvS T
}ww 
}xx 	
privatezz 
voidzz 
ValidarSolicitudzz %
(zz% &
ReporteJugadorDTOzz& 7
reportezz8 ?
)zz? @
{{{ 	
if|| 
(|| 
reporte|| 
==|| 
null|| 
)||  
{}} 
throw~~ 
new~~ 
FaultException~~ (
(~~( )
MensajesError~~) 6
.~~6 7
Cliente~~7 >
.~~> ?
DatosInvalidos~~? M
)~~M N
;~~N O
} 
_validadorUsuario
ÅÅ 
.
ÅÅ 
Validar
ÅÅ %
(
ÅÅ% &
reporte
ÇÇ 
.
ÇÇ %
NombreUsuarioReportante
ÇÇ /
,
ÇÇ/ 0
$str
ÉÉ $
)
ÉÉ$ %
;
ÉÉ% &
_validadorUsuario
ÑÑ 
.
ÑÑ 
Validar
ÑÑ %
(
ÑÑ% &
reporte
ÖÖ 
.
ÖÖ $
NombreUsuarioReportado
ÖÖ .
,
ÖÖ. /
$str
ÜÜ #
)
ÜÜ# $
;
ÜÜ$ %
string
àà 
motivo
àà 
=
àà #
EntradaComunValidador
àà 1
.
àà1 2
NormalizarTexto
àà2 A
(
ààA B
reporte
ààB I
.
ààI J
Motivo
ààJ P
)
ààP Q
;
ààQ R
if
ââ 
(
ââ 
motivo
ââ 
==
ââ 
null
ââ 
)
ââ 
{
ää 
throw
ãã 
new
ãã 
FaultException
ãã (
(
ãã( )
MensajesError
ãã) 6
.
ãã6 7
Cliente
ãã7 >
.
ãã> ?&
ReporteMotivoObligatorio
ãã? W
)
ããW X
;
ããX Y
}
åå 
if
éé 
(
éé 
!
éé #
EntradaComunValidador
éé &
.
éé& '%
EsLongitudValidaReporte
éé' >
(
éé> ?
motivo
éé? E
)
ééE F
)
ééF G
{
èè 
throw
êê 
new
êê 
FaultException
êê (
(
êê( )
MensajesError
êê) 6
.
êê6 7
Cliente
êê7 >
.
êê> ?#
ReporteMotivoLongitud
êê? T
)
êêT U
;
êêU V
}
ëë 
}
íí 	
private
îî 
(
îî 
int
îî 
IdReportante
îî !
,
îî! "
int
îî# &
IdReportado
îî' 2
)
îî2 3,
ObtenerIdentificadoresUsuarios
îî4 R
(
îîR S%
BaseDatosPruebaEntities
ïï "
contexto
ïï# +
,
ïï+ ,
ReporteJugadorDTO
ññ 
reporte
ññ $
)
ññ$ %
{
óó 	
try
òò 
{
ôô 
var
öö  
usuarioRepositorio
öö &
=
öö' (
new
öö) , 
UsuarioRepositorio
öö- ?
(
öö? @
contexto
öö@ H
)
ööH I
;
ööI J
var
õõ 

reportante
õõ 
=
õõ   
usuarioRepositorio
õõ! 3
.
õõ3 4%
ObtenerPorNombreUsuario
õõ4 K
(
õõK L#
EntradaComunValidador
úú )
.
úú) *
NormalizarTexto
úú* 9
(
úú9 :
reporte
úú: A
.
úúA B%
NombreUsuarioReportante
úúB Y
)
úúY Z
)
úúZ [
;
úú[ \
var
ùù 
	reportado
ùù 
=
ùù  
usuarioRepositorio
ùù  2
.
ùù2 3%
ObtenerPorNombreUsuario
ùù3 J
(
ùùJ K#
EntradaComunValidador
ûû )
.
ûû) *
NormalizarTexto
ûû* 9
(
ûû9 :
reporte
ûû: A
.
ûûA B$
NombreUsuarioReportado
ûûB X
)
ûûX Y
)
ûûY Z
;
ûûZ [
if
†† 
(
†† 

reportante
†† 
==
†† !
null
††" &
||
††' )
	reportado
††* 3
==
††4 6
null
††7 ;
)
††; <
{
°° 
throw
¢¢ 
new
¢¢ 
FaultException
¢¢ ,
(
¢¢, -
MensajesError
££ %
.
££% &
Cliente
££& -
.
££- .,
UsuariosEspecificadosNoExisten
££. L
)
££L M
;
££M N
}
§§ 
return
¶¶ 
(
¶¶ 

reportante
¶¶ "
.
¶¶" #
	idUsuario
¶¶# ,
,
¶¶, -
	reportado
¶¶. 7
.
¶¶7 8
	idUsuario
¶¶8 A
)
¶¶A B
;
¶¶B C
}
ßß 
catch
®® 
(
®® "
KeyNotFoundException
®® '
ex
®®( *
)
®®* +
{
©© 
_logger
™™ 
.
™™ 
Warn
™™ 
(
™™ 
$str
™™ N
,
™™N O
ex
™™P R
)
™™R S
;
™™S T
throw
´´ 
new
´´ 
FaultException
´´ (
(
´´( )
MensajesError
´´) 6
.
´´6 7
Cliente
´´7 >
.
´´> ?,
UsuariosEspecificadosNoExisten
´´? ]
)
´´] ^
;
´´^ _
}
¨¨ 
}
≠≠ 	
private
ØØ #
ResultadoOperacionDTO
ØØ %!
CrearResultadoFallo
ØØ& 9
(
ØØ9 :
string
ØØ: @
mensaje
ØØA H
)
ØØH I
{
∞∞ 	
return
±± 
new
±± #
ResultadoOperacionDTO
±± ,
{
≤≤ 
OperacionExitosa
≥≥  
=
≥≥! "
false
≥≥# (
,
≥≥( )
Mensaje
¥¥ 
=
¥¥ 
mensaje
¥¥ !
}
µµ 
;
µµ 
}
∂∂ 	
}
∑∑ 
}∏∏ Ø
pC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ISalasManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /#
ISalasManejadorCallback/ F
)F G
)G H
]H I
public 

	interface 
ISalasManejador $
{ 
[ 	
OperationContract	 
] 
SalaDTO 
	CrearSala 
( 
string  
nombreCreador! .
,. /#
ConfiguracionPartidaDTO0 G
configuracionH U
)U V
;V W
[ 	
OperationContract	 
] 
SalaDTO 

UnirseSala 
( 
string !

codigoSala" ,
,, -
string. 4
nombreUsuario5 B
)B C
;C D
[%% 	
OperationContract%%	 
]%% 
IList&& 
<&& 
SalaDTO&& 
>&& 
ObtenerSalas&& #
(&&# $
)&&$ %
;&&% &
[-- 	
OperationContract--	 
]-- 
void.. 
AbandonarSala.. 
(.. 
string.. !

codigoSala.." ,
,.., -
string... 4
nombreUsuario..5 B
)..B C
;..C D
[33 	
OperationContract33	 
]33 
void44 
SuscribirListaSalas44  
(44  !
)44! "
;44" #
[99 	
OperationContract99	 
]99 
void:: )
CancelarSuscripcionListaSalas:: *
(::* +
)::+ ,
;::, -
[BB 	
OperationContractBB	 
]BB 
voidCC 
ExpulsarJugadorCC 
(CC 
stringCC #

codigoSalaCC$ .
,CC. /
stringCC0 6

nombreHostCC7 A
,CCA B
stringCCC I"
nombreJugadorAExpulsarCCJ `
)CC` a
;CCa b
[KK 	
OperationContractKK	 
]KK 
SalaDTOLL  
ObtenerSalaPorCodigoLL $
(LL$ %
stringLL% +

codigoSalaLL, 6
)LL6 7
;LL7 8
[SS 	
OperationContractSS	 
]SS 
voidTT %
MarcarPartidaComoIniciadaTT &
(TT& '
stringTT' -

codigoSalaTT. 8
)TT8 9
;TT9 :
[[[ 	
OperationContract[[	 
][[ 
void\\ '
MarcarPartidaComoFinalizada\\ (
(\\( )
string\\) /

codigoSala\\0 :
)\\: ;
;\\; <
}]] 
}^^ ®
xC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ISalasManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[		 
ServiceContract		 
]		 
public

 

	interface

 #
ISalasManejadorCallback

 ,
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void "
NotificarJugadorSeUnio #
(# $
string$ *

codigoSala+ 5
,5 6
string7 =
nombreJugador> K
)K L
;L M
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
NotificarJugadorSalio "
(" #
string# )

codigoSala* 4
,4 5
string6 <
nombreJugador= J
)J K
;K L
[   	
OperationContract  	 
(   
IsOneWay   #
=  $ %
true  & *
)  * +
]  + ,
void!! *
NotificarListaSalasActualizada!! +
(!!+ ,
DTOs!!, 0
.!!0 1
SalaDTO!!1 8
[!!8 9
]!!9 :
salas!!; @
)!!@ A
;!!A B
['' 	
OperationContract''	 
('' 
IsOneWay'' #
=''$ %
true''& *
)''* +
]''+ ,
void(( $
NotificarSalaActualizada(( %
(((% &
DTOs((& *
.((* +
SalaDTO((+ 2
sala((3 7
)((7 8
;((8 9
[// 	
OperationContract//	 
(// 
IsOneWay// #
=//$ %
true//& *
)//* +
]//+ ,
void00 %
NotificarJugadorExpulsado00 &
(00& '
string00' -

codigoSala00. 8
,008 9
string00: @
nombreJugador00A N
)00N O
;00O P
[66 	
OperationContract66	 
(66 
IsOneWay66 #
=66$ %
true66& *
)66* +
]66+ ,
void77 "
NotificarSalaCancelada77 #
(77# $
string77$ *

codigoSala77+ 5
)775 6
;776 7
}88 
}99 ô
sC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IReportesManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
]

 
public 

	interface 
IReportesManejador '
{ 
[ 	
OperationContract	 
] !
ResultadoOperacionDTO 
ReportarJugador -
(- .
ReporteJugadorDTO. ?
reporte@ G
)G H
;H I
} 
} Ò
|C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IRecuperacionCuentaServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
public 

	interface '
IRecuperacionCuentaServicio 0
{		 -
!ResultadoSolicitudRecuperacionDTO )'
SolicitarCodigoRecuperacion* E
(E F'
SolicitudRecuperarCuentaDTO '
	solicitud( 1
)1 2
;2 3'
ResultadoSolicitudCodigoDTO #&
ReenviarCodigoRecuperacion$ >
(> ?
ReenvioCodigoDTO? O
	solicitudP Y
)Y Z
;Z [!
ResultadoOperacionDTO '
ConfirmarCodigoRecuperacion 9
(9 :!
ConfirmacionCodigoDTO: O
confirmacionP \
)\ ]
;] ^!
ResultadoOperacionDTO  
ActualizarContrasena 2
(2 3&
ActualizacionContrasenaDTO3 M
	solicitudN W
)W X
;X Y
} 
} ‚
qC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IPerfilManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
]

 
public 

	interface 
IPerfilManejador %
{ 
[ 	
OperationContract	 
] 

UsuarioDTO 
ObtenerPerfil  
(  !
int! $
	idUsuario% .
). /
;/ 0
[ 	
OperationContract	 
] !
ResultadoOperacionDTO 
ActualizarPerfil .
(. /"
ActualizacionPerfilDTO/ E
	solicitudF O
)O P
;P Q
} 
} –
~C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\INotificacionCodigosServicios.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
public 

	interface (
INotificacionCodigosServicio 1
{ 
bool 
EnviarNotificacion 
(  
string 
correoDestino  
,  !
string 
codigo 
, 
string 
usuarioDestino !
,! "
string 
idioma 
) 
; 
} 
} ©
~C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IListaAmigosManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
] 
public 

	interface )
IListaAmigosManejadorCallback 2
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void +
NotificarListaAmigosActualizada ,
(, -
List- 1
<1 2
AmigoDTO2 :
>: ;
amigos< B
)B C
;C D
} 
} Ò	
vC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IListaAmigosManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /)
IListaAmigosManejadorCallback/ L
)L M
)M N
]N O
public 

	interface !
IListaAmigosManejador *
{ 
[ 	
OperationContract	 
] 
void 
	Suscribir 
( 
string 
nombreUsuario +
)+ ,
;, -
[ 	
OperationContract	 
] 
void 
CancelarSuscripcion  
(  !
string! '
nombreUsuario( 5
)5 6
;6 7
[## 	
OperationContract##	 
]## 
List$$ 
<$$ 
AmigoDTO$$ 
>$$ 
ObtenerAmigos$$ $
($$$ %
string$$% +
nombreUsuario$$, 9
)$$9 :
;$$: ;
}%% 
}&& ÿ

qC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IAmistadServicio.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
public 

	interface 
IAmistadServicio %
{ 
List 
< 
SolicitudAmistadDTO  
>  !+
ObtenerSolicitudesPendientesDTO" A
(A B
intB E
	usuarioIdF O
)O P
;P Q
void 
CrearSolicitud 
( 
int 
usuarioEmisorId  /
,/ 0
int1 4
usuarioReceptorId5 F
)F G
;G H
void"" 
AceptarSolicitud"" 
("" 
int"" !
usuarioEmisorId""" 1
,""1 2
int""3 6
usuarioReceptorId""7 H
)""H I
;""I J
Amigo** 
EliminarAmistad** 
(** 
int** !

usuarioAId**" ,
,**, -
int**. 1

usuarioBId**2 <
)**< =
;**= >
List22 
<22 
AmigoDTO22 
>22 
ObtenerAmigosDTO22 '
(22' (
int22( +
	usuarioId22, 5
)225 6
;226 7
}33 
}44 ⁄
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IInvitacionesManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
] 
public 

	interface "
IInvitacionesManejador +
{ 
[ 	
OperationContract	 
] 
Task 
< !
ResultadoOperacionDTO "
>" #!
EnviarInvitacionAsync$ 9
(9 :
InvitacionSalaDTO: K

invitacionL V
)V W
;W X
} 
} ±
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IInicioSesionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
] 
public 

	interface "
IInicioSesionManejador +
{ 
[ 	
OperationContract	 
] $
ResultadoInicioSesionDTO  
IniciarSesion! .
(. /'
CredencialesInicioSesionDTO/ J
credencialesK W
)W X
;X Y
} 
} ö
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ICursoPartidaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
(

 
CallbackContract

 %
=

& '
typeof

( .
(

. /*
ICursoPartidaManejadorCallback

/ M
)

M N
)

N O
]

O P
public 

	interface "
ICursoPartidaManejador +
{ 
[ 	
OperationContract	 
] 
void 
SuscribirJugador 
( 
string $
idSala% +
,+ ,
string- 3
	idJugador4 =
,= >
string? E
nombreUsuarioF S
,S T
boolU Y
esHostZ `
)` a
;a b
[ 	
OperationContract	 
] 
void 
IniciarPartida 
( 
string "
idSala# )
,) *
string+ 1 
idJugadorSolicitante2 F
)F G
;G H
['' 	
OperationContract''	 
]'' 
void(( 
EnviarMensajeJuego(( 
(((  
string((  &
mensaje((' .
,((. /
string((0 6
idSala((7 =
,((= >
string((? E
	idJugador((F O
)((O P
;((P Q
[00 	
OperationContract00	 
(00 
IsOneWay00 #
=00$ %
true00& *
)00* +
]00+ ,
void11 
EnviarTrazo11 
(11 
TrazoDTO11 !
trazo11" '
,11' (
string11) /
idSala110 6
,116 7
string118 >
	idJugador11? H
)11H I
;11I J
}22 
}33 —
C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ICursoPartidaManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[		 
ServiceContract		 
]		 
public

 

	interface

 *
ICursoPartidaManejadorCallback

 3
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void $
NotificarPartidaIniciada %
(% &
)& '
;' (
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void  
NotificarInicioRonda !
(! "
RondaDTO" *
ronda+ 0
)0 1
;1 2
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void #
NotificarJugadorAdivino $
($ %
string% +
nombreJugador, 9
,9 :
int; >
puntos? E
)E F
;F G
[&& 	
OperationContract&&	 
(&& 
IsOneWay&& #
=&&$ %
true&&& *
)&&* +
]&&+ ,
void''  
NotificarMensajeChat'' !
(''! "
string''" (
nombreJugador'') 6
,''6 7
string''8 >
mensaje''? F
)''F G
;''G H
[-- 	
OperationContract--	 
(-- 
IsOneWay-- #
=--$ %
true--& *
)--* +
]--+ ,
void.. "
NotificarTrazoRecibido.. #
(..# $
TrazoDTO..$ ,
trazo..- 2
)..2 3
;..3 4
[33 	
OperationContract33	 
(33 
IsOneWay33 #
=33$ %
true33& *
)33* +
]33+ ,
void44 
NotificarFinRonda44 
(44 
)44  
;44  !
[:: 	
OperationContract::	 
(:: 
IsOneWay:: #
=::$ %
true::& *
)::* +
]::+ ,
void;; 
NotificarFinPartida;;  
(;;  !
ResultadoPartidaDTO;;! 4
	resultado;;5 >
);;> ?
;;;? @
}<< 
}== Ä
qC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ICuentaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
]

 
public 

	interface 
ICuentaManejador %
{ 
[ 	
OperationContract	 
] '
ResultadoSolicitudCodigoDTO #'
SolicitarCodigoVerificacion$ ?
(? @
NuevaCuentaDTO@ N
nuevaCuentaO Z
)Z [
;[ \
[ 	
OperationContract	 
] '
ResultadoSolicitudCodigoDTO #&
ReenviarCodigoVerificacion$ >
( (
ReenvioCodigoVerificacionDTO )
	solicitud* 3
)3 4
;4 5
[## 	
OperationContract##	 
]## &
ResultadoRegistroCuentaDTO$$ "'
ConfirmarCodigoVerificacion$$# >
($$> ?!
ConfirmacionCodigoDTO$$? T
confirmacion$$U a
)$$a b
;$$b c
[++ 	
OperationContract++	 
]++ &
ResultadoRegistroCuentaDTO,, "
RegistrarCuenta,,# 2
(,,2 3
NuevaCuentaDTO,,3 A
nuevaCuenta,,B M
),,M N
;,,N O
}-- 
}.. ©
}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ICodigoVerificacionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
] 
public 

	interface (
ICodigoVerificacionManejador 1
{ 
[ 	
OperationContract	 
] '
ResultadoSolicitudCodigoDTO #'
SolicitarCodigoVerificacion$ ?
(? @
NuevaCuentaDTO@ N
nuevaCuentaO Z
)Z [
;[ \
[ 	
OperationContract	 
] '
ResultadoSolicitudCodigoDTO #&
ReenviarCodigoVerificacion$ >
( (
ReenvioCodigoVerificacionDTO )
	solicitud* 3
)3 4
;4 5
[$$ 	
OperationContract$$	 
]$$ &
ResultadoRegistroCuentaDTO%% "'
ConfirmarCodigoVerificacion%%# >
(%%> ?!
ConfirmacionCodigoDTO%%? T
confirmacion%%U a
)%%a b
;%%b c
[,, 	
OperationContract,,	 
],, -
!ResultadoSolicitudRecuperacionDTO-- )'
SolicitarCodigoRecuperacion--* E
(.. '
SolicitudRecuperarCuentaDTO.. (
	solicitud..) 2
)..2 3
;..3 4
[55 	
OperationContract55	 
]55 !
ResultadoOperacionDTO66 '
ConfirmarCodigoRecuperacion66 9
(669 :!
ConfirmacionCodigoDTO66: O
confirmacion66P \
)66\ ]
;66] ^
}77 
}88 ¶
xC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IClasificacionManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[ 
ServiceContract 
] 
public 

	interface #
IClasificacionManejador ,
{ 
[ 	
OperationContract	 
] 
IList 
< #
ClasificacionUsuarioDTO %
>% &
ObtenerTopJugadores' :
(: ;
); <
;< =
} 
} ›

wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IChatManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[		 
ServiceContract		 
]		 
public

 

	interface

 "
IChatManejadorCallback

 +
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
RecibirMensaje 
( 
string "
nombreJugador# 0
,0 1
string2 8
mensaje9 @
)@ A
;A B
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void !
NotificarJugadorUnido "
(" #
string# )
nombreJugador* 7
)7 8
;8 9
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void   !
NotificarJugadorSalio   "
(  " #
string  # )
nombreJugador  * 7
)  7 8
;  8 9
}!! 
}"" Ÿ
oC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IChatManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[		 
ServiceContract		 
(		 
CallbackContract		 %
=		& '
typeof		( .
(		. /"
IChatManejadorCallback		/ E
)		E F
)		F G
]		G H
public

 

	interface

 
IChatManejador

 #
{ 
[ 	
OperationContract	 
] 
void 
UnirseChatSala 
( 
string "
idSala# )
,) *
string+ 1
nombreJugador2 ?
)? @
;@ A
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void 
EnviarMensaje 
( 
string !
idSala" (
,( )
string* 0
mensaje1 8
,8 9
string: @
nombreJugadorA N
)N O
;O P
[$$ 	
OperationContract$$	 
]$$ 
void%% 
SalirChatSala%% 
(%% 
string%% !
idSala%%" (
,%%( )
string%%* 0
nombreJugador%%1 >
)%%> ?
;%%? @
}&& 
}'' û
{C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\ICambioContrasenaManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
]

 
public 

	interface &
ICambioContrasenaManejador /
{ 
[ 	
OperationContract	 
] -
!ResultadoSolicitudRecuperacionDTO )'
SolicitarCodigoRecuperacion* E
( '
SolicitudRecuperarCuentaDTO (
	solicitud) 2
)2 3
;3 4
[ 	
OperationContract	 
] '
ResultadoSolicitudCodigoDTO #&
ReenviarCodigoRecuperacion$ >
(> ?
ReenvioCodigoDTO? O
	solicitudP Y
)Y Z
;Z [
[## 	
OperationContract##	 
]## !
ResultadoOperacionDTO$$ '
ConfirmarCodigoRecuperacion$$ 9
($$9 :!
ConfirmacionCodigoDTO$$: O
confirmacion$$P \
)$$\ ]
;$$] ^
[++ 	
OperationContract++	 
]++ !
ResultadoOperacionDTO,,  
ActualizarContrasena,, 2
(,,2 3&
ActualizacionContrasenaDTO,,3 M
	solicitud,,N W
),,W X
;,,X Y
}-- 
}.. ´
yC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IAmigosManejadorCallback.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
]

 
public 

	interface $
IAmigosManejadorCallback -
{ 
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void )
NotificarSolicitudActualizada *
(* +
SolicitudAmistadDTO+ >
	solicitud? H
)H I
;I J
[ 	
OperationContract	 
( 
IsOneWay #
=$ %
true& *
)* +
]+ ,
void %
NotificarAmistadEliminada &
(& '
SolicitudAmistadDTO' :
	solicitud; D
)D E
;E F
} 
} ß
qC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\IAmigosManejador.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
{ 
[

 
ServiceContract

 
(

 
CallbackContract

 %
=

& '
typeof

( .
(

. /$
IAmigosManejadorCallback

/ G
)

G H
)

H I
]

I J
public 

	interface 
IAmigosManejador %
{ 
[ 	
OperationContract	 
] 
void 
	Suscribir 
( 
string 
nombreUsuario +
)+ ,
;, -
[ 	
OperationContract	 
] 
void 
CancelarSuscripcion  
(  !
string! '
nombreUsuario( 5
)5 6
;6 7
[   	
OperationContract  	 
]   
void!! "
EnviarSolicitudAmistad!! #
(!!# $
string!!$ *
nombreUsuarioEmisor!!+ >
,!!> ?
string!!@ F!
nombreUsuarioReceptor!!G \
)!!\ ]
;!!] ^
[** 	
OperationContract**	 
]** 
void++ %
ResponderSolicitudAmistad++ &
(++& '
string++' -
nombreUsuarioEmisor++. A
,++A B
string++C I!
nombreUsuarioReceptor++J _
)++_ `
;++` a
[22 	
OperationContract22	 
]22 
void33 
EliminarAmigo33 
(33 
string33 !
nombreUsuarioA33" 0
,330 1
string332 8
nombreUsuarioB339 G
)33G H
;33H I
}44 
}55 —

mC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\SalaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[

 
DataContract

 
]

 
public 

class 
SalaDTO 
{ 
[ 	

DataMember	 
] 
public 
string 
Codigo 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	

DataMember	 
] 
public 
string 
Creador 
{ 
get  #
;# $
set% (
;( )
}* +
[ 	

DataMember	 
] 
public #
ConfiguracionPartidaDTO &
Configuracion' 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
["" 	

DataMember""	 
]"" 
public## 
IList## 
<## 
string## 
>## 
	Jugadores## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
}$$ 
}%% È
wC:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ReporteJugadorDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 
ReporteJugadorDTO

 "
{ 
[ 	

DataMember	 
] 
public 
string #
NombreUsuarioReportante -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
[ 	

DataMember	 
] 
public 
string "
NombreUsuarioReportado ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
[ 	

DataMember	 
] 
public 
string 
Motivo 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ¡

}C:\Users\Usuario\source\repos\PictionaryMusical\PictionaryMusicalServidor\Servicios\Contratos\DTOs\ConfiguracionPartidaDTO.cs
	namespace 	%
PictionaryMusicalServidor
 #
.# $
	Servicios$ -
.- .
	Contratos. 7
.7 8
DTOs8 <
{ 
[		 
DataContract		 
]		 
public

 

class

 #
ConfiguracionPartidaDTO

 (
{ 
[ 	

DataMember	 
] 
public 
int 
NumeroRondas 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	

DataMember	 
] 
public 
int "
TiempoPorRondaSegundos )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
[ 	

DataMember	 
] 
public 
string 
IdiomaCanciones %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 

Dificultad""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
}## 
}$$ 