﻿$PBExportHeader$genapp2.sra
$PBExportComments$Generated MDI Application Object
forward
global type genapp2 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type genapp2 from application
string appname = "genapp2"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\theme"
string themename = "Do Not Use Themes"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
end type
global genapp2 genapp2

on genapp2.create
appname="genapp2"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on genapp2.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_genapp2_connectservice lnv_connectserv

/*  This prevents double toolbar  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

lnv_connectserv = Create using "n_genapp2_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open MDI frame window  */// 0000
	Open ( w_genapp2_frame )
End if

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_genapp2_connectservice lnv_connectserv

lnv_connectserv = Create using "n_genapp2_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
//000
end event

