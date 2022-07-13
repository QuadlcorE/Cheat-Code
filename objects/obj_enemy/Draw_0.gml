/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 649B45B9
/// @DnDArgument : "code" "draw_self();$(13_10)if (keyboard_check(vk_f5)){$(13_10)	state_text_location_x = self.x - 32;$(13_10)	state_text_location_y = self.y - 64;$(13_10)	draw_text_color(state_text_location_x, state_text_location_y,state_text, c_white, c_white, c_white, c_white, 1);$(13_10)}$(13_10)$(13_10)if state == states.track $(13_10){$(13_10)	draw_set_font(ft_Arcadeclassic);$(13_10)	draw_set_color(c_yellow)$(13_10)	draw_text(x, y-64, "!")$(13_10)}$(13_10)if state == states.charge $(13_10){$(13_10)	draw_set_font(ft_Arcadeclassic);$(13_10)	draw_set_color(c_red);$(13_10)	draw_text(x, y-64, "!");$(13_10)}"
draw_self();
if (keyboard_check(vk_f5)){
	state_text_location_x = self.x - 32;
	state_text_location_y = self.y - 64;
	draw_text_color(state_text_location_x, state_text_location_y,state_text, c_white, c_white, c_white, c_white, 1);
}

if state == states.track 
{
	draw_set_font(ft_Arcadeclassic);
	draw_set_color(c_yellow)
	draw_text(x, y-64, "!")
}
if state == states.charge 
{
	draw_set_font(ft_Arcadeclassic);
	draw_set_color(c_red);
	draw_text(x, y-64, "!");
}