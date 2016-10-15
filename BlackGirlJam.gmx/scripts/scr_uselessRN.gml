/// Useless Script RN

/// Control Player Movement in Step


// keyboard_check_pressed(vk_enter) && 
// If we hit enter...
if (!timeline_running && !instance_exists(oDialogue)){
   // And if we're not in the timeline already, and there's no dialogue obj
   //if (!timeline_running && !instance_exists(oDialogue)) {
      timeline_running = 1;
   //}
}

if (spd > 0) {
   sprite_index = spr_MC_right;
   bChar.phy_position_x+=spd;
   image_speed = img_spd;
}

else {
   sprite_index = spr_MC_stand_right;
   image_speed = 0;
}

if (!instance_exists(oDialogue) && obj_camera.okToGo && !opDone) {
   opDone = 1;
   alarm[0] = room_speed;
}

if (makeQuestions && !instance_exists(oQuestion) && !qDone) {
   qDone = 1;
   instance_create(view_xview[0] + 400, view_yview[0]+325, oQuestion);
}
