/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19314F26
/// @DnDArgument : "code" "if room == rm_game$(13_10){$(13_10)if keyboard_check_pressed(ord("P"))  $(13_10)    {$(13_10)    paused = !paused;$(13_10)    if paused == false$(13_10)        {$(13_10)        instance_activate_all();$(13_10)        surface_free(paused_surf);$(13_10)                paused_surf = -1;$(13_10)        }$(13_10)    }$(13_10)if paused == true$(13_10)    {$(13_10)    alarm[0]++;$(13_10)    alarm[1]++;$(13_10)    }$(13_10)}"
if room == rm_game
{
if keyboard_check_pressed(ord("P"))  
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    alarm[0]++;
    alarm[1]++;
    }
}