/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E49F946
/// @DnDArgument : "code" "randomize();$(13_10)$(13_10)global.cell_size = 64;$(13_10)global.grid_width = room_width / global.cell_size;$(13_10)global.grid_height = room_height / global.cell_size;$(13_10)$(13_10)global.grid = mp_grid_create(0, 0, global.grid_height, global.grid_width, global.cell_size, global.cell_size);$(13_10)$(13_10)mp_grid_add_instances(global.grid, obj_wall, false);"
randomize();

global.cell_size = 64;
global.grid_width = room_width / global.cell_size;
global.grid_height = room_height / global.cell_size;

global.grid = mp_grid_create(0, 0, global.grid_height, global.grid_width, global.cell_size, global.cell_size);

mp_grid_add_instances(global.grid, obj_wall, false);