﻿$PBExportHeader$w_genapp11_sheet2.srw
$PBExportComments$Generated MDI Sheet #2
forward
global type w_genapp11_sheet2 from w_genapp11_basesheet
end type
end forward

global type w_genapp11_sheet2 from w_genapp11_basesheet
string Tag="Untitled for Sheet 2"
end type
global w_genapp11_sheet2 w_genapp11_sheet2

on w_genapp11_sheet2.create
call super::create
end on

on w_genapp11_sheet2.destroy
call super::destroy
if IsValid(MenuID) then destroy(MenuID)
end on

