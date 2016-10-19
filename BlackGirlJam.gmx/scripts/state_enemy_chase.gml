/// state_enemy_chase()
// Move towards MC

if (distance_to_object(obj_player) > 1) {
    dir = sign(obj_player.x - x)*.6;
    
    x += dir * 5;
    y = yCoord;
    if (obj_player.x >= x + 0.5) {
        currIndex = spr_enemy_idle_rt;
        sprite_index = spr_enemy_run_rt;
    }
    else {
        currIndex = spr_enemy_idle_lt;
        sprite_index = spr_enemy_run_lt;
    }
}

else {

    if (obj_player.x >= x + 0.5) {
        currIndex = spr_enemy_idle_rt;
        sprite_index = spr_enemy_run_rt;
        if ((obj_player.sprite_index == spr_main_punch_atk_lt) && 
            floor(obj_player.image_index) == 2) {
            state_switch("Hit");
        }
    }
    
    else {
        currIndex = spr_enemy_idle_lt;
        sprite_index = spr_enemy_run_lt;
        if ((obj_player.sprite_index == spr_main_punch_atk_rt) && 
            floor(obj_player.image_index) == 2) {
            state_switch("Hit");
        }
    }
    
    dir = 0;
    sprite_index = currIndex;
    y = yCoord;
    state_switch("Atk");
}
