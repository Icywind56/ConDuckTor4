x=oPlayer.x;
y=oPlayer.y;
image_angle=oPlayer.image_angle;

//nock an arrow
if(keyboard_check_pressed(vk_space)){
	instance_create_layer(x,y,"Player",oArrow);
}

#region//draw and release bow
	if (!keyboard_check(vk_space) || !instance_exists(oArrow)){
		image_index=0;
		image_speed=0;
	}
	else{
		image_speed=drawspeed;
	}
	if image_index==4{
		image_speed=0;
	}
	if(keyboard_check_released(vk_space)){
		image_index=0;
	}
#endregion

if keyboard_check_pressed(vk_shift){
	instance_destroy();
}
