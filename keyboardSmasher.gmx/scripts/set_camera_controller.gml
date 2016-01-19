#define set_camera_controller
instance_deactivate_object(global.room_controller.camera_controller);
instance_activate_object(argument0);
global.room_controller.camera_controller = argument0;
global.room_controller.camera_controller.global_beat_start = global.room_controller.beats;

#define set_music_controller
instance_deactivate_object(global.room_controller.music_controller);
instance_activate_object(argument0);
global.room_controller.music_controller = argument0;

if (argument1 == true){
    with(global.room_controller.music_controller){
        event_perform(ev_other, EVENT_PLAY_SONG);
    }
}