/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C0D12A2
/// @DnDArgument : "code" "if(state == states.idle)$(13_10){$(13_10)	state_text = "Idle";$(13_10)	#region Idle$(13_10)	//counter to keep track of time $(13_10)	idle_counter += 1;$(13_10)	$(13_10)	//checking the counter to switch states $(13_10)	if (idle_counter >= room_speed * 3)$(13_10)	{$(13_10)		//creating and checking a random variable for changing states$(13_10)		var change = choose(0,1);$(13_10)		switch(change)$(13_10)		{$(13_10)			case 0: state = states.wander;$(13_10)			case 1: idle_counter = 0; break;$(13_10)		}$(13_10)	}$(13_10)	// creating a region for chaging to track state$(13_10)	if(collision_circle(x, y, 300, obj_player, false, false))$(13_10)	{$(13_10)		state = states.track;$(13_10)	}$(13_10)	$(13_10)	#endregion$(13_10)}$(13_10)$(13_10)if(state == states.wander)$(13_10)if(state == states.wander)$(13_10){$(13_10)	state_text = "Wander";$(13_10)	#region Wander$(13_10)	wander_counter += 1;$(13_10)	//x += moveX;$(13_10)	//y += moveY;$(13_10)	mp_potential_step(x_cell, y_cell,wander_spd, true);$(13_10)	//path= path_add();$(13_10)	//path_start(path, wander_spd,path_action_stop, true);$(13_10)	$(13_10)	$(13_10)	//checking the counter to switch states$(13_10)	if (wander_counter == room_speed * 5)$(13_10)	{$(13_10)		//creating and checking a random variable for changing states$(13_10)		var change = choose(0,1);$(13_10)		switch(change)$(13_10)		{$(13_10)			case 0: state = states.wander;$(13_10)			case 1:$(13_10)				state = states.idle;$(13_10)				//pathfinding test$(13_10)				$(13_10)				#region$(13_10)				/*$(13_10)				$(13_10)$(13_10)				repeat (50){$(13_10)					Goalx=irandom_range (0, room_width);$(13_10)					Goaly=irandom_range (0, room_height);$(13_10)$(13_10)					if (mp_grid_path(global.grid, path, x, y, Goalx, Goaly, 1)){$(13_10)						break;$(13_10)					}$(13_10)				}*/$(13_10)				#endregion	$(13_10)				x_cell = irandom_range(self.x - 256, self.x + 256);$(13_10)				y_cell = irandom_range(self.y - 256, self.y + 256);$(13_10)				$(13_10)				wander_counter = 0;$(13_10)				$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	// creating a region for chaging to track state$(13_10)	if(collision_circle(x, y, 300, obj_player, false, false))$(13_10)	{$(13_10)		state = states.track;$(13_10)	}$(13_10)	$(13_10)	#endregion$(13_10)}$(13_10)$(13_10)if(state == states.track)$(13_10){$(13_10)	state_text = "Track";$(13_10)	#region Track$(13_10)	$(13_10)	//starting the track counter$(13_10)	track_counter += 1;$(13_10)	$(13_10)	// checking the track counter$(13_10)	if (track_counter > room_speed * 2)$(13_10)	{$(13_10)		my_dir = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)		/*moveX =lengthdir_x(spd, my_dir);$(13_10)		moveY = lengthdir_y(spd, my_dir);$(13_10)		x += moveX;$(13_10)		y += moveY;*/$(13_10)		$(13_10)		mp_potential_step(obj_player.x, obj_player.y, track_spd, true);$(13_10)		$(13_10)		// creating a region for chaging to idle state$(13_10)		if(!collision_circle(x, y, 300, obj_player, false, false))$(13_10)		{$(13_10)			state = states.idle;$(13_10)			track_counter= 1.5;$(13_10)		}$(13_10)	$(13_10)		// creating a region for chaging to charge state$(13_10)		if(collision_circle(x, y, 96, obj_player, false, false))$(13_10)		{$(13_10)			state = states.charge;$(13_10)		}$(13_10)	}$(13_10)	#endregion$(13_10)}$(13_10)$(13_10)if (state == states.charge)$(13_10){$(13_10)	state_text = "Charge";$(13_10)	#region Charge$(13_10)	charge_counter +=1;$(13_10)	$(13_10)	if (charge_counter > room_speed * 1)$(13_10)	{$(13_10)		my_dir = point_direction(x, y, obj_player.x, obj_player.y);$(13_10)		/*moveX =lengthdir_x(charge_spd, my_dir);$(13_10)		moveY = lengthdir_y(charge_spd, my_dir);$(13_10)		x += moveX;$(13_10)		y += moveY;*/$(13_10)		$(13_10)		mp_potential_step(obj_player.x, obj_player.y, charge_spd, true);$(13_10)		$(13_10)		if(charge_counter > room_speed * 5)$(13_10)		{$(13_10)			state = states.wander;$(13_10)			charge_counter = 0;$(13_10)			state = states.track;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	$(13_10)	#endregion$(13_10)}"
if(state == states.idle)
{
	state_text = "Idle";
	#region Idle
	//counter to keep track of time 
	idle_counter += 1;
	
	//checking the counter to switch states 
	if (idle_counter >= room_speed * 3)
	{
		//creating and checking a random variable for changing states
		var change = choose(0,1);
		switch(change)
		{
			case 0: state = states.wander;
			case 1: idle_counter = 0; break;
		}
	}
	// creating a region for chaging to track state
	if(collision_circle(x, y, 300, obj_player, false, false))
	{
		state = states.track;
	}
	
	#endregion
}

if(state == states.wander)
if(state == states.wander)
{
	state_text = "Wander";
	#region Wander
	wander_counter += 1;
	//x += moveX;
	//y += moveY;
	mp_potential_step(x_cell, y_cell,wander_spd, true);
	//path= path_add();
	//path_start(path, wander_spd,path_action_stop, true);
	
	
	//checking the counter to switch states
	if (wander_counter == room_speed * 5)
	{
		//creating and checking a random variable for changing states
		var change = choose(0,1);
		switch(change)
		{
			case 0: state = states.wander;
			case 1:
				state = states.idle;
				//pathfinding test
				
				#region
				/*
				

				repeat (50){
					Goalx=irandom_range (0, room_width);
					Goaly=irandom_range (0, room_height);

					if (mp_grid_path(global.grid, path, x, y, Goalx, Goaly, 1)){
						break;
					}
				}*/
				#endregion	
				x_cell = irandom_range(self.x - 256, self.x + 256);
				y_cell = irandom_range(self.y - 256, self.y + 256);
				
				wander_counter = 0;
				
		}
	}
	
	
	// creating a region for chaging to track state
	if(collision_circle(x, y, 300, obj_player, false, false))
	{
		state = states.track;
	}
	
	#endregion
}

if(state == states.track)
{
	state_text = "Track";
	#region Track
	
	//starting the track counter
	track_counter += 1;
	
	// checking the track counter
	if (track_counter > room_speed * 2)
	{
		my_dir = point_direction(x, y, obj_player.x, obj_player.y);
		/*moveX =lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd, my_dir);
		x += moveX;
		y += moveY;*/
		
		mp_potential_step(obj_player.x, obj_player.y, track_spd, true);
		
		// creating a region for chaging to idle state
		if(!collision_circle(x, y, 300, obj_player, false, false))
		{
			state = states.idle;
			track_counter= 1.5;
		}
	
		// creating a region for chaging to charge state
		if(collision_circle(x, y, 96, obj_player, false, false))
		{
			state = states.charge;
		}
	}
	#endregion
}

if (state == states.charge)
{
	state_text = "Charge";
	#region Charge
	charge_counter +=1;
	
	if (charge_counter > room_speed * 1)
	{
		my_dir = point_direction(x, y, obj_player.x, obj_player.y);
		/*moveX =lengthdir_x(charge_spd, my_dir);
		moveY = lengthdir_y(charge_spd, my_dir);
		x += moveX;
		y += moveY;*/
		
		mp_potential_step(obj_player.x, obj_player.y, charge_spd, true);
		
		if(charge_counter > room_speed * 5)
		{
			state = states.wander;
			charge_counter = 0;
			state = states.track;
		}
	}
	
	
	#endregion
}/**/