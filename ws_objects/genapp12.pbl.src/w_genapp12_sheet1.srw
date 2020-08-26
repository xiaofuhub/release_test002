$PBExportHeader$w_genapp12_sheet1.srw
$PBExportComments$Generated MDI Sheet #1
forward
global type w_genapp12_sheet1 from w_genapp12_basesheet
end type
end forward

global type w_genapp12_sheet1 from w_genapp12_basesheet
string Tag="Untitled for Sheet 1"
end type
global w_genapp12_sheet1 w_genapp12_sheet1

on w_genapp12_sheet1.create
call super::create
end on

on w_genapp12_sheet1.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

