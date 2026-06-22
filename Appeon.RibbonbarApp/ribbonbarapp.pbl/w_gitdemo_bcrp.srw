forward
global type w_gitdemo_bcrp from window
end type
type mc_1 from monthcalendar within w_gitdemo_bcrp
end type
end forward

global type w_gitdemo_bcrp from window
integer width = 2423
integer height = 1584
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
mc_1 mc_1
end type
global w_gitdemo_bcrp w_gitdemo_bcrp

on w_gitdemo_bcrp.create
this.mc_1=create mc_1
this.Control[]={this.mc_1}
end on

on w_gitdemo_bcrp.destroy
destroy(this.mc_1)
end on

event open;String ls_date

ls_date = String(Today())  //PR 999 Soporte
end event

type mc_1 from monthcalendar within w_gitdemo_bcrp
integer x = 562
integer y = 112
integer width = 1006
integer height = 760
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long titletextcolor = 134217742
long trailingtextcolor = 134217745
long monthbackcolor = 1073741824
long titlebackcolor = 134217741
integer maxselectcount = 31
integer scrollrate = 1
boolean todaysection = true
boolean todaycircle = true
boolean border = true
borderstyle borderstyle = stylelowered!
end type

