// Control the start menu items

switch(cursorPos) {

    // If Start Game, start the game.
    case 0: 
    {    
         audio_stop_all();
         audio_play_sound(orc_step_up4, 10, 0);
         room_goto(rm_instr);
         //obj = transition_create_ext(Transition.Pixellate, rm_instr, 1600, false, false, EaseQuadInOut, EaseLinear);
        break;
    }
    
    // Otherwise, exit.
    //case 1: game_end(); break;
    default: break;

}
