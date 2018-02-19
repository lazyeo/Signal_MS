/// @description Insert description here
// You can write your code in this editor
display_set_gui_size(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));


switch room{
	case rOne:
		target_room = rTwo;
		break;
	case rTwo:
		target_room = rThree;
		break;
	case rThree:
		target_room = rFour;
		break;
	case rFour:
		target_room = rOne;
		break;
}
