with(argument0){
    var temp_x = x;
    var temp_y = y;
    x = next_x;
    y = next_y;
    
    var result = (collision_rectangle(bbox_left+1, bbox_top+1, bbox_right-1, bbox_bottom-1, obj_collidable, false, true)
        || collision_rectangle(bbox_left+1, bbox_top+1, bbox_right-1, bbox_bottom-1, obj_collidable_dynamic, false, true));

    x = temp_x;
    y = temp_y;
}
