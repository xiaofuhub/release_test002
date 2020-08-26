﻿$PBExportHeader$genapp11.sra
$PBExportComments$Generated MDI Application Object
forward
global type genapp11 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type genapp11 from application
string appname = "genapp11"
end type
global genapp11 genapp11

on genapp11.create
appname = "genapp11"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on genapp11.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

event open;//*-----------------------------------------------------------------*/
//*    open:  Application Open Script:
//*            1) Instantiate a connection object
//*            2) Populate SQLCA and Connect to the database
//*            3) Open frame window
//*-----------------------------------------------------------------*/
n_genapp11_connectservice lnv_connectserv

/*  This prevents double toolbar  */
this.ToolBarFrameTitle = "MDI Application Toolbar"
this.ToolBarSheetTitle = "MDI Application Toolbar"

lnv_connectserv = Create using "n_genapp11_connectservice"

If lnv_connectserv.of_ConnectDB ( ) = 0 Then
	/*  Open MDI frame window  */
	Open ( w_genapp11_frame )
End if

Destroy lnv_connectserv
end event

event close;//*-----------------------------------------------------------------*/
//*    close:  Application Close Script:
//*            1) Instantiate a connection object
//*            2) Disconnect from the database
//*-----------------------------------------------------------------*/
n_genapp11_connectservice lnv_connectserv

lnv_connectserv = Create using "n_genapp11_connectservice"

lnv_connectserv.of_DisconnectDB ( )

Destroy lnv_connectserv
end event

