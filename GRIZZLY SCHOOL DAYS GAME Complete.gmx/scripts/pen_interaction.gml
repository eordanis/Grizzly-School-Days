if place_meeting(x,y,obj_gary)
{
    sound_stop(backgroundsound);
//if keyboard_check_pressed(vk_space)
//{
//    sound_stop(backgroundsound);
if (show_question("You see a discarded pen on the floor.  Do you want to return it to someone?#If you don't, you will keep it for yourself.") == true) 
{
    show_message("You ask if anybody dropped a pen.#One student says yes and thanks you, and the teacher is glad to see you being generous.#Both your student favor and your teacher favor increase."); 
    if (TeacherFavorBar <= 95) {
        TeacherFavorBar += 5;
    }
    else {
        TeacherFavorBar = 100;
    }
    if (StudentFavorBar <= 95) {
        StudentFavorBar += 5;
    }
    else {
        StudentFavorBar = 100
    }
}
else // You hang on to it
{
    show_message("You pocket the pen, but it turns out to be another student's.#They don't like how you didn't ask if it was theirs, so your student favor decreases."); 
    if (StudentFavorBar >= 5) {
        StudentFavorBar -= 5;
    }
    else {
        StudentFavorBar = 0;
    }
}
    // Whatever the outcome, the pen disappears
    instance_destroy()
}
