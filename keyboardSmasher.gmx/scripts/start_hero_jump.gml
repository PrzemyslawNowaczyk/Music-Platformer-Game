#define start_hero_jump
//argument0 - hero_id
//argument1 - beats
//argument2 - height

with(argument0){
    if (movement_type == SLIDE){
        y -= MASK_SMALL_HEIGHT/2;
    }
    movement_type = JUMP;
    on_ground = false;
    actual_jump_height = argument2;
    actual_jump_length = argument1;// - ((x mod 32) < 16) * (x mod 32) + ((x mod 32) > 16) * (32-(x mod 32));
    jump_start_x = x;
    jump_start_y = y;
    jump_start_beat = global.room_controller.beats;
    sprite_index = spr_jumper;
    mask_index = spr_mask_big;
    animation_start_beat = global.room_controller.beats;
}

#define start_hero_dash
//argument0 - hero_id
//argument1 - beats

with(argument0){
    dash_available = false;
    //obliczamy wysokosc rozpoczecia szybowania
    var dash_alititude = ((y div 32) + (vertical_direction==DOWNWARDS)) * 32;
    y = dash_alititude;
    next_y = y;
    movement_type = DASH;
    dash_start_x = x;
    dash_start_beat = global.room_controller.beats;
    dash_started = false;
    sprite_index = spr_bullet;
    mask_index = spr_mask_small;
    animation_start_beat = global.room_controller.beats;
    audio_play_sound(snd_shot,100,0);
}
