/// Atk State

if (distance_to_object(obj_enemy) <= 1) {
    if (obj_enemy.x >= x + 0.5) {
            if ((obj_enemy.sprite_index == spr_enemy_punch_atk_lt) && 
                floor(obj_enemy.image_index) == 2) {
                state_switch("Hit");
            }
    }
    else {
        if ((obj_enemy.sprite_index == spr_enemy_punch_atk_rt) && 
            floor(obj_enemy.image_index) == 2) {
            state_switch("Hit");
        }
    }
}

if (currIndex == spr_main_idle_rt) {
    //hspd = 0;
    sprite_index = spr_main_punch_atk_rt;
}
else if (currIndex == spr_main_idle_lt) {
    //hspd = 0;
    sprite_index = spr_main_punch_atk_lt;
}

