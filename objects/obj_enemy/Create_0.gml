/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 31661BB2
/// @DnDArgument : "code" "enum states{$(13_10)	idle,$(13_10)	wander,$(13_10)	track,$(13_10)	charge$(13_10)}$(13_10)$(13_10)state = states.idle;$(13_10)$(13_10)idle_counter = 0;$(13_10)wander_counter = 0;$(13_10)track_counter = 0;$(13_10)charge_counter = 0;$(13_10)spd = 1;$(13_10)wander_spd = 1;$(13_10)track_spd = 2.5;$(13_10)charge_spd = 3.5;$(13_10)$(13_10)my_dir = irandom_range(0,359);$(13_10)moveX = lengthdir_x(spd, my_dir);$(13_10)moveY = lengthdir_y(spd, my_dir);$(13_10)$(13_10)mp_potential_settings(45, 5, 5, false);$(13_10)$(13_10)x_cell = irandom_range(self.x - 256, self.x + 256);$(13_10)y_cell = irandom_range(self.y - 256, self.y + 256);"
enum states{
	idle,
	wander,
	track,
	charge
}

state = states.idle;

idle_counter = 0;
wander_counter = 0;
track_counter = 0;
charge_counter = 0;
spd = 1;
wander_spd = 1;
track_spd = 2.5;
charge_spd = 3.5;

my_dir = irandom_range(0,359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);

mp_potential_settings(45, 5, 5, false);

x_cell = irandom_range(self.x - 256, self.x + 256);
y_cell = irandom_range(self.y - 256, self.y + 256);