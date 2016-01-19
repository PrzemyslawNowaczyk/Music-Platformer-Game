#define on_ground
with(argument2){
    var old_x = argument2.x;
    var old_y = argument2.y;
    x = argument0;
    y = argument1;
    
    var result = (position_meeting(bbox_left, bbox_bottom+1, obj_collidable)
                || position_meeting(x, bbox_bottom+1, obj_collidable)
                || position_meeting(bbox_right, bbox_bottom+1, obj_collidable));
    
    x = old_x;
    y = old_y;
    return result;
}

#define touch_ceiling
with(argument2){
    var old_x = argument2.x;
    var old_y = argument2.y;
    x = argument0;
    y = argument1;
    
    var result = (position_meeting(bbox_left, bbox_top-1, obj_collidable)
                || position_meeting(x, bbox_top-1, obj_collidable)
                || position_meeting(bbox_right, bbox_top-1, obj_collidable));
    
    x = old_x;
    y = old_y;
    return result;
}

#define on_platform
with(argument2){
    var old_x = argument2.x;
    var old_y = argument2.y;
    x = argument0;
    y = argument1;
    
    var result = (position_meeting(bbox_left, bbox_bottom+1, obj_collidable_dynamic)
                || position_meeting(x, bbox_bottom+1, obj_collidable_dynamic)
                || position_meeting(bbox_right, bbox_bottom+1, obj_collidable_dynamic));
    
    x = old_x;
    y = old_y;
    return result;
}

#define under_platform
with(argument2){
    var old_x = argument2.x;
    var old_y = argument2.y;
    x = argument0;
    y = argument1;
    
    var result = (position_meeting(bbox_left, bbox_top-1, obj_collidable_dynamic)
                || position_meeting(x, bbox_top-1, obj_collidable_dynamic)
                || position_meeting(bbox_right, bbox_top-1, obj_collidable_dynamic));
    
    x = old_x;
    y = old_y;
    return result;
}