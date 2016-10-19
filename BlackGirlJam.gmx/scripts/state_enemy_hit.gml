/// state_enemy_hit()

if (currIndex == spr_enemy_idle_rt) {
    x -= 2;
    sprite_index = spr_enemy_hit_rt;
}
else if (currIndex == spr_enemy_idle_lt) {
    x += 2;
    sprite_index = spr_enemy_hit_lt;
}

