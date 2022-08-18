/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0A4AA6E9
/// @DnDArgument : "key" "vk_shift"
var l0A4AA6E9_0;
l0A4AA6E9_0 = keyboard_check(vk_shift);
if (l0A4AA6E9_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 26375C70
	/// @DnDParent : 0A4AA6E9
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "+4"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_wall"
	var l26375C70_0 = instance_place(x + 0, y + +4, obj_wall);
	if (!(l26375C70_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2671E70F
		/// @DnDParent : 26375C70
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "+4"
		/// @DnDArgument : "y_relative" "1"
		
		y += +4;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 71A6F2E6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "+3"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_wall"
var l71A6F2E6_0 = instance_place(x + 0, y + +3, obj_wall);
if (!(l71A6F2E6_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 06EFD761
	/// @DnDParent : 71A6F2E6
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "+2"
	/// @DnDArgument : "y_relative" "1"
	x += 0;
	y += +2;
}