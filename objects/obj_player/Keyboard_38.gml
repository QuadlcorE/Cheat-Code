/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 54BB1261
/// @DnDArgument : "key" "vk_shift"
var l54BB1261_0;
l54BB1261_0 = keyboard_check(vk_shift);
if (l54BB1261_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 119682E7
	/// @DnDParent : 54BB1261
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-4"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_wall"
	/// @DnDArgument : "not" "1"
	var l119682E7_0 = instance_place(x + 0, y + -4, obj_wall);
	if (!(l119682E7_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 01AA2DA0
		/// @DnDParent : 119682E7
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-4"
		/// @DnDArgument : "y_relative" "1"
		
		y += -4;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7CEC2F2C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_wall"
/// @DnDArgument : "not" "1"
var l7CEC2F2C_0 = instance_place(x + 0, y + -2, obj_wall);
if (!(l7CEC2F2C_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 544D78B3
	/// @DnDParent : 7CEC2F2C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-2"
	/// @DnDArgument : "y_relative" "1"
	
	y += -2;
}