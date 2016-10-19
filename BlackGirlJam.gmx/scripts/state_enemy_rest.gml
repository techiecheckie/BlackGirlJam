/// Rest after an attack

if (distance_to_object(obj_player) <= 1) {
    if (obj_player.x >= x + 0.5) {
        if ((obj_player.sprite_index == spr_main_punch_atk_lt) && 
            floor(obj_player.image_index) == 2) {
            state_switch("Hit");
        }
    }
        
    else {
        if ((obj_player.sprite_index == spr_main_punch_atk_rt) && 
            floor(obj_player.image_index) == 2) {
            state_switch("Hit");
        }
    }
}

if (state_new) {
    time = 60;
    sprite_index = currIndex;
} 

if (time) {
    time--;
}

if (distance_to_object(obj_player) <= 1 && !time) {
    state_switch("Atk");
}
else if (!time) {
    state_switch("Chase");
}


