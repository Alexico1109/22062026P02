$PBExportHeader$ribbonbarapp.sra
$PBExportComments$Generated MDI Application Object
forward
global type ribbonbarapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
String 			gs_msg_title = "RibbonBarApp"
Boolean			gs_Modern
end variables

global type ribbonbarapp from application
string appname = "ribbonbarapp"
string themepath = "theme"
string themename = "Flat Design Dark"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 5
long richtexteditx64type = 5
long richtexteditversion = 3
string richtexteditkey = ""
string appicon = "image\ribbonbardemo.ico"
string appruntimeversion = "25.1.0.6430"
boolean manualsession = false
boolean unsupportedapierror = true
boolean ultrafast = false
boolean bignoreservercertificate = false
uint ignoreservercertificate = 0
long webview2distribution = 0
boolean webview2checkx86 = false
boolean webview2checkx64 = false
string webview2url = "https://developer.microsoft.com/en-us/microsoft-edge/webview2/"
end type
global ribbonbarapp ribbonbarapp

on ribbonbarapp.create
appname="ribbonbarapp"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on ribbonbarapp.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//*	-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_ribbonbar_connectservice lnv_connectserv
String  ls_theme, 	ls_return

ls_theme = ProfileString("Theme.ini", "Setup", "Theme", "Flat Design Blue")
IF ls_theme <> "Do Not Use Themes" THEN
	applytheme(GetCurrentDirectory( ) + "\Theme\" + ls_theme)
END IF

lnv_connectserv = Create using "n_ribbonbar_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then

	Open(w_ribbonbar_frame)

End if

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_ribbonbar_connectservice lnv_connectserv

lnv_connectserv = Create using "n_ribbonbar_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
end event

