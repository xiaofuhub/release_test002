﻿$PBExportHeader$w_genapp7_basesheet.srw
$PBExportComments$Generated MDI Base Sheet Window
forward
global type w_genapp7_basesheet from Window
end type
end forward

global type w_genapp7_basesheet from Window
int X=672
int Y=264
int Width=1582
int Height=1064
boolean TitleBar=true
string Title="Sheet"
string MenuName="m_genapp7_sheet"
long BackColor=79416533
boolean ControlMenu=true
boolean MinBox=true
boolean MaxBox=true
boolean Resizable=true
event ue_postopen ( )
event ue_undo ( )
event ue_cut ( )
event ue_copy ( )
event ue_paste ( )
event ue_clear ( )
end type
global w_genapp7_basesheet w_genapp7_basesheet

event ue_postopen;//*-----------------------------------------------------------------*/
//*    ue_postopen:  Set Sheet title and adjust menu for new sheets
//*-----------------------------------------------------------------*/
long ll_count
m_genapp7_frame lm_menu

lm_menu = this.MenuId

/*  Obtain the number of instance of this class  */
ll_count = w_genapp7_frame.of_ClassCount ( this )

this.Title = this.Tag + ":" + String ( ll_count  ) 

w_genapp7_frame.of_AdjustMenu ( lm_menu )
end event

event open;//*-----------------------------------------------------------------*/
//*    open:  Post event
//*-----------------------------------------------------------------*/
this.Post Event ue_postopen ( )
end event

on w_genapp7_basesheet.create
if this.MenuName = "m_genapp7_sheet" then this.MenuID = create m_genapp7_sheet
end on

on w_genapp7_basesheet.destroy
if IsValid(MenuID) then destroy(MenuID)
end on

event close;//*-----------------------------------------------------------------*/
//*    close:  Remove sheet from the sheet manager array
//*-----------------------------------------------------------------*/
/*  Remove sheet from the array  */
w_genapp7_frame.of_SheetIsClosing ( this ) 
end event

