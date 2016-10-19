/// Attack the player


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


if (currIndex == spr_enemy_idle_rt) {
    sprite_index = spr_enemy_punch_atk_rt;
}

else { sprite_index = spr_enemy_punch_atk_lt; }
