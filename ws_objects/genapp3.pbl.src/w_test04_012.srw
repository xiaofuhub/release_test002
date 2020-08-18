$PBExportHeader$w_test04_012.srw
forward
global type w_test04_012 from window
end type
type cb_1 from commandbutton within w_test04_012
end type
end forward

global type w_test04_012 from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
end type
global w_test04_012 w_test04_012

on w_test04_012.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on w_test04_012.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_test04_012
integer x = 818
integer y = 612
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

