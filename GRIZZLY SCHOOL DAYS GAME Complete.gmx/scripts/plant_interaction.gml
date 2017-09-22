if place_meeting(x,y,obj_gary)
{
    sound_stop(backgroundsound);
//if keyboard_check_pressed(vk_space)
//{
//    sound_stop(backgroundsound);
    // increase time of interaction
    interaction += 1;
if (interaction = 1) {
// First time, present choice
if (show_question("The plant looks dry.  Do you want to water it yourself?#If you don't, you will tell someone else about it.") == true) 
{
    randomize()
    if (irandom(1) = 1)
    {
        show_message("You decide to water the plant yourself, and the teacher sees you.#He is glad to see you helping out, and your teacher favor increases."); 
        if (TeacherFavorBar <= 95) {
            TeacherFavorBar += 5;
        }
        else {
            TeacherFavorBar = 100;
        }
    }
    else
    {
        show_message("You decide to water the plant yourself, but when the teacher sees you,#he tells you it's another student's turn to water the plant, so your teacher favor decreases.");
        if (TeacherFavorBar >= 5) {
            TeacherFavorBar -= 5;
        }
        else {
            TeacherFavorBar = 0;
        }
    }
}
else // You tell someone else
{
    randomize()
    if (irandom(1) = 1)
    {
        show_message("You tell the science teacher his plant needs water.#He appreciates your concern, and your teacher favor increases."); 
        if (TeacherFavorBar <= 95) {
            TeacherFavorBar += 5;
        }
        else {
            TeacherFavorBar = 100;
        }
    }
    else
    {
        show_message("You tell another student that the plant is looking dry.#It happens to be his turn to water the plant, so he thanks you and waters the plant.#Your student favor increases.");
        if (StudentFavorBar <= 95) {
            StudentFavorBar += 5;
        }
        else {
            StudentFavorBar = 100
        }
    }
}
    // Whatever the outcome, show the plant is now watered
}
else if (interaction = 2) {
// Second time, just show a message
    show_message("The plant looks healthy and the soil is damp.")
}
else if (interaction = 3) {
// Third time, decrease teacher favor and sit down
    show_message("The teacher doesn't like seeing you waste time with his plant.#Your teacher favor decreases, and he tells you to sit down and get ready for class.")
    if (TeacherFavorBar >= 5){
        TeacherFavorBar -= 5; //decrease TeacherFavorBar
    }
    else {
        TeacherFavorBar = 0
    }
    // transport immediately to quiz
    room_goto(rm_science_class_full)
}

}
