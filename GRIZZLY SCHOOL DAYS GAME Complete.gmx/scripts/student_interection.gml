if place_meeting(x,y,obj_gary)
{
    //sound_stop(backgroundsound);
    // increase time of interaction
    stuint++;
if (stuint = 1) {
// First time, present choice to let student copy your work
if (show_question("I forgot to do my homework, can I copy yours?") == true) 
{
    randomize()
    if (irandom(1) = 1)
    {
        show_message("You decide to let them copy your notes and you were not caught by the teacher. Your student favor increases."); 
        if (StudentFavorBar <= 90) {
            StudentFavorBar += 10;
        }
        else {
            StudentFavorBar = 100;
        }
    }
    else
    {
        show_message("You decide to let them copy your notes, but you were caught by the teacher. Your student favor & teacher favor decrease.");
        if (StudentFavorBar >= 10) {
            StudentFavorBar -= 10;
        }
        else {
            StudentFavorBar = 0;
        }
        if (TeacherFavorBar >= 10) {
            TeacherFavorBar -= 10;
        }
        else {
            TeacherFavorBar = 0;
        }
    }
}
}
else if (stuint = 2) // Interaction 2 - make a friend or not
{
    randomize()
    if (irandom(1) = 1)
    {
        show_message("Don't talk to me, I don't like you.#(Your student favor decreases.)"); 
        if (StudentFavorBar >= 10) {
            StudentFavorBar -= 10;
        }
        else {
            StudentFavorBar = 0;
        }
    }
    else
    {
        show_message("I don't think you're so bad, Gary.  I'd like to be your friend.#(Your student favor increases.)");
        if (StudentFavorBar <= 90) {
            StudentFavorBar += 10;
        }
        else {
            StudentFavorBar = 100
        }
    }
}
// Third interaction - joke about a teacher
else if (stuint = 3){
 if (show_question("Don't you think the history teacher is a little slow?") == true) 
{
    randomize()
    if (irandom(1) = 1)
    {
        show_message("You agreed with the student, and you gained a friend. Your student favor increases."); 
        if (StudentFavorBar <= 90) {
            StudentFavorBar += 10;
        }
        else {
            StudentFavorBar = 100;
        }
    }
    else
    {
        show_message("You agreed with the student, but the history teacher overheard you.#Your student favor increases but your teacher favor decreases.");
        if (StudentFavorBar <=90) {
            StudentFavorBar += 10;
        }
        else {
            StudentFavorBar = 100;
        }
        if (TeacherFavorBar >= 10) {
            TeacherFavorBar -= 10;
        }
        else {
            TeacherFavorBar = 0;
        }
    }
}
}
else if (stuint = 4) {
// Third time, decrease teacher favor and sit down
    show_message("After a long discussion with the student, the teacher yells at you for being late to class.#Your teacher favor decreases, and he tells you to head for your next class.")
    if (TeacherFavorBar >= 10){
        TeacherFavorBar -= 10; //decrease TeacherFavorBar
    }
    else {
        TeacherFavorBar = 0
    }
    // transport immediately to quiz
    //room_goto(currRoom);
}
}
