/// Running state


if (state_new) {
    if (left_held) {
        sprite_index = spr_main_run_lt;
        hspd = -6;
    }
    if (right_held) {
        sprite_index = spr_main_run_rt;
        hspd = 6;
    }
}

if (left_held) {
    if (currIndex == spr_main_idle_rt) {
        currIndex = spr_main_idle_lt;
        sprite_index = spr_main_run_lt;
    }
    hspd = -6;
    phy_position_x+=hspd;
}

if (right_held) {
    if (currIndex == spr_main_idle_lt) {
        currIndex = spr_main_idle_rt;
        sprite_index = spr_main_run_rt;
    }
    hspd = 6;
    phy_position_x+=hspd;
}


if (atk_pressed) {
    hspd = 0;
    state_switch("Atk");
}

/*
if (jump_pressed) {
    state_switch("Air");
    vspd -= jump_strength;
}

///Check for no ground.
if (!place_meeting(x, y+1, obj_collisioner))
{
    state_switch("Air");
}
*/

if (! (left_held || right_held)) {
    hspd = 0;
    state_switch("Idle");
}

