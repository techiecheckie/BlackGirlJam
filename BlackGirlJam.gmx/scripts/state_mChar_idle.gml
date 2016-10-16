/// Manage the idle state

if (state_new) {
    hspd = 0;
    vspd = 0;
    sprite_index = currIndex;
}

if (left_held) {
    currIndex = spr_main_idle_lt;
    state_switch("Run");
    sprite_index = spr_main_run_lt;
    hspd = -6;
    
}

else if (right_held) {
    currIndex = spr_main_idle_rt;
    state_switch("Run");
    sprite_index = spr_main_run_rt;
    hspd = 6;
}

/*if ((left_held || right_held) && !(place_meeting(x+3, y-3, obj_collisioner))) {
    state_switch("Run");
}*/

if (atk_pressed) {
    hspd = 0;
    state_switch("Atk");
}

/*
if (jump_pressed)
{
    state_switch("Air");
    vspd -= jump_strength;
}

///Check for no ground.
if (!place_meeting(x, y+1, obj_collisioner))
{
    state_switch("Air");
}
*/

/*if (keyboard_check_pressed(vk_space)) {
    if (currIndex == spr_main_idle_rt) {
        spd = 0;
        sprite_index = spr_main_punch_atk_rt;
    }
    else if (currIndex == spr_main_idle_lt) {
        spd = 0;
        sprite_index = spr_main_punch_atk_lt;
    }
}*/
