#define y_stand_on
var old_x = x;
var old_y = y;
//x = argument0;
//y = argument1;

var upper = bbox_bottom;
var lower = argument2.bbox_top;
var diff = lower-upper-1;
var result = old_y+diff;

x = old_x;
y = old_y;
return result;

#define y_stand_under
var old_x = x;
var old_y = y;
//x = argument0;
//y = argument1;

var upper = argument2.bbox_bottom;
var lower = bbox_top;
var diff = lower-upper-1;
var result = old_y-diff;

x = old_x;
y = old_y;
return result;