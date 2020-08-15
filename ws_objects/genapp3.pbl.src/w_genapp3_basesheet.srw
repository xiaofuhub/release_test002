$PBExportHeader$w_genapp3_basesheet.srw
$PBExportComments$Generated MDI Base Sheet Window
forward
global type w_genapp3_basesheet from window
end type
type cb_1 from commandbutton within w_genapp3_basesheet
end type
end forward

global type w_genapp3_basesheet from window
integer x = 672
integer y = 264
integer width = 1582
integer height = 1064
boolean titlebar = true
string title = "Sheet"
string menuname = "m_genapp3_sheet"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 79416533
event ue_postopen ( )
event ue_undo ( )
event ue_cut ( )
event ue_copy ( )
event ue_paste ( )
event ue_clear ( )
cb_1 cb_1
end type
global w_genapp3_basesheet w_genapp3_basesheet

event ue_postopen;//*-----------------------------------------------------------------*/
//*    ue_postopen:  Set Sheet title and adjust menu for new sheets
//*-----------------------------------------------------------------*/
long ll_count
m_genapp3_frame lm_menu

lm_menu = this.MenuId

/*  Obtain the number of instance of this class  */
ll_count = w_genapp3_frame.of_ClassCount ( this )

this.Title = this.Tag + ":" + String ( ll_count  ) 

w_genapp3_frame.of_AdjustMenu ( lm_menu )
end event

event open;//*-----------------------------------------------------------------*/
//*    open:  Post event
//*-----------------------------------------------------------------*/
this.Post Event ue_postopen ( )
end event

on w_genapp3_basesheet.create
if this.MenuName = "m_genapp3_sheet" then this.MenuID = create m_genapp3_sheet
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_genapp3_basesheet.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.cb_1)
end on

event close;//*-----------------------------------------------------------------*/
//*    close:  Remove sheet from the sheet manager array
//*-----------------------------------------------------------------*/
/*  Remove sheet from the array  */
w_genapp3_frame.of_SheetIsClosing ( this ) 
end event

type cb_1 from commandbutton within w_genapp3_basesheet
integer x = 768
integer y = 208
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

