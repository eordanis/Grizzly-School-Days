if place_meeting(x,y,obj_gary)
{
    sound_stop(backgroundsound);
//if keyboard_check_pressed(vk_space)
//{
//    sound_stop(backgroundsound);
    // increase time of interaction
    interaction += 1;
if (interaction = 1) {
// First time, increase teacher favor
    show_message("You sharpen your pencil.  The teacher is happy to see you#getting ready for class, and your teacher favor increases."); 
    if (TeacherFavorBar <= 95) {
        TeacherFavorBar += 5;
    }
    else {
        TeacherFavorBar = 100;
    }
}
else if (interaction = 2) {
// Second time, decrease student favor
    show_message("You sharpen your pencil again, and the noise bothers the other students.#So, your student favor decreases.")
    if (StudentFavorBar >= 5){
        StudentFavorBar -= 5; //decrease StudentFavorBar
    }
    else {
        StudentFavorBar = 0
    }
}
else if (interaction = 3) {
// Third time, decrease teacher favor and sit down
    show_message("The teacher thinks you're wasting time sharpening your pencil this much.#Your teacher favor decreases, and he tells you to sit down and get ready for class.")
    if (TeacherFavorBar >= 5){
        TeacherFavorBar -= 5; //decrease TeacherFavorBar
    }
    else {
        TeacherFavorBar = 0
    }
    // transport immediately to quiz
    room_goto(rm_math_class_full)
}

}
