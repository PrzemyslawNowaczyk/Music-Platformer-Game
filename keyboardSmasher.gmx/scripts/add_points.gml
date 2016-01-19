global.room_controller.points_controller.multiplyer += 1;
global.room_controller.points_controller.points += round(global.room_controller.points_controller.multiplyer) * argument0;
global.room_controller.points_controller.rotation_speed += argument0/4;
global.room_controller.points_controller.color_back = make_colour_rgb(random_range(150,255), random_range(150,255), random_range(150,255));
global.room_controller.points_controller.color_front = make_colour_rgb(random_range(0,120), random_range(0,120), random_range(0,120));
global.room_controller.points_controller.brake = 0.2;
global.room_controller.points_controller.multiplyer_brake = 0.2;
