/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1D00AD04
/// @DnDArgument : "code" "if (paused == true)$(13_10){$(13_10)if !surface_exists(paused_surf)$(13_10)    {$(13_10)    if paused_surf == -1$(13_10)        {$(13_10)        instance_deactivate_all(true);$(13_10)        }$(13_10)    paused_surf = surface_create(room_width, room_height);$(13_10)    surface_set_target(paused_surf);$(13_10)    draw_surface(application_surface, 0, 0);$(13_10)    surface_reset_target();$(13_10)    }$(13_10)$(13_10)else$(13_10)    {$(13_10)    draw_surface(paused_surf, 0, 0);$(13_10)    draw_set_alpha(0.5);$(13_10)    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);$(13_10)    draw_set_alpha(1);$(13_10)    draw_set_halign(fa_center);$(13_10)	draw_set_font(ft_Arcade_big);$(13_10)    draw_text_transformed_colour(view_wport[0] / 2, view_hport[0] / 2, "PAUSED", 1, 1, 0, c_white, c_white, c_white, c_white, 1);$(13_10)    draw_set_halign(fa_left);$(13_10)	}$(13_10)}$(13_10)"
if (paused == true)
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }

else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
	draw_set_font(ft_Arcade_big);
    draw_text_transformed_colour(view_wport[0] / 2, view_hport[0] / 2, "PAUSED", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_set_halign(fa_left);
	}
}