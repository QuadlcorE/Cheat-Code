/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 60AB2423
/// @DnDArgument : "key" "vk_shift"
var l60AB2423_0;
l60AB2423_0 = keyboard_check(vk_shift);
if (l60AB2423_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 5ED081FC
	/// @DnDParent : 60AB2423
	/// @DnDArgument : "x" "+4"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDArgument : "not" "1"
	var l5ED081FC_0 = instance_place(x + +4, y + 0, obj_wall);
	if (!(l5ED081FC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 57614986
		/// @DnDParent : 5ED081FC
		/// @DnDArgument : "x" "+4"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		x += +4;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 55ECB458
/// @DnDArgument : "x" "+3"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDArgument : "not" "1"
var l55ECB458_0 = instance_place(x + +3, y + 0, obj_wall);
if (!(l55ECB458_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 548C9B1D
	/// @DnDParent : 55ECB458
	/// @DnDArgument : "x" "+2"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += +2;
	y += 0;
}