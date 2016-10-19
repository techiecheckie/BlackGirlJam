/// state_main_hit()

if (state_new) {
    with(obj_enemy) {
        state_switch("Rest");
    }
}

if (place_meeting(x-5, y, obj_wall) || place_meeting(x+5, y, obj_wall)) {
    if ((obj_enemy.sprite_index == spr_enemy_punch_atk_lt)) {
        //x -= 5;
        sprite_index = spr_main_hit_rt;
    }
    
    else if ((obj_enemy.sprite_index == spr_enemy_punch_atk_rt)) {
        //x += 5;
        sprite_index = spr_main_hit_lt;
    }
}

else {
    if ((obj_enemy.sprite_index == spr_enemy_punch_atk_lt)) {
        x -= 5;
        sprite_index = spr_main_hit_rt;
    }
    
    else if ((obj_enemy.sprite_index == spr_enemy_punch_atk_rt)) {
        x += 5;
        sprite_index = spr_main_hit_lt;
    }
}
