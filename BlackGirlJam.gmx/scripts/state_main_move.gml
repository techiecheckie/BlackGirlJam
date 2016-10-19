/// state_main_move()

// Platform Physics

image_speed = img_spd;

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

// Check for ground
if (place_meeting(x, y+1, obj_wall)) {
    vspd = 0;
    
    // Jumping
    if (jkey) {
        if (currIndex == spr_main_idle_lt) {
            sprite_index = spr_main_jump_lt;
        }
        else { sprite_index = spr_main_jump_rt; }
        if (rkey) {
            currIndex = spr_main_idle_rt;
            sprite_index = spr_main_jump_rt;
        }
        if (lkey) {
            currIndex = spr_main_idle_lt;
            sprite_index = spr_main_jump_lt;
        }
        vspd = -jspd;    
    }
    
    // Attack
    if (akey) {
        state_switch("Atk");
    }

    
}
else { //We're in the air
    // Gravity
    //image_speed = 0;
    if (vspd < -1) {
        if (currIndex == spr_main_idle_lt) {
            sprite_index = spr_main_air_lt;
        }
        else { sprite_index = spr_main_air_rt; }
    }
    
    else if (vspd >= -1 && vspd < 1) {
        if (currIndex == spr_main_idle_lt) {
            sprite_index = spr_main_land_lt;
            image_index = 0;
        }
        else { 
            sprite_index = spr_main_land_rt;
            image_index = 0;
        }
    }
    
    else if (vspd >= 1) {
       if (currIndex == spr_main_idle_lt) {
            sprite_index = spr_main_land_lt;
            image_index = 1;
        }
        else { 
            sprite_index = spr_main_land_rt;
            image_index = 1;
        }
    }
    
    if (vspd < 10) {
        vspd += grav;
    }
    
    if (keyboard_check_released(vk_up) && vspd < -4) {
        vspd = -4;
    }
    
}

// Moving right
if (rkey) {
    if (vspd == 0) {
        sprite_index = spr_main_run_rt;
        currIndex = spr_main_idle_rt;
    }
    if (hspd < spd) {
        hspd += fric;
    } else {
        hspd = spd;
    }
}

if (lkey) {
    if (vspd == 0) {
        sprite_index = spr_main_run_lt;
        currIndex = spr_main_idle_lt;
    }
    if (hspd > -spd) {
        hspd -= fric;
    } else {
        hspd = -spd;
    }
}

// Check for not moving
if (!jkey && vspd == 0 && (!rkey && !lkey)) {
//if (!jkey && vspd == 0 && ((!rkey && !lkey) || (rkey && lkey))) {
    sprite_index = currIndex;
    if (hspd != 0) {
        if (hspd < 0) {
            hspd += fric;
        } else {
            hspd -= fric;
        }
    }
}

handleCollision();
