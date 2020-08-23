$PBExportHeader$w_test001app_sheet2.srw
$PBExportComments$Generated MDI Sheet #2
forward
global type w_test001app_sheet2 from w_test001app_basesheet
end type
end forward

global type w_test001app_sheet2 from w_test001app_basesheet
string Tag="Untitled for Sheet 2"
end type
global w_test001app_sheet2 w_test001app_sheet2

on w_test001app_sheet2.create
call super::create
end on

on w_test001app_sheet2.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

