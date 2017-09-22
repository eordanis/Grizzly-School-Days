if place_meeting(x,y,obj_gary)
{
    sound_stop(backgroundsound);
//if keyboard_check_pressed(vk_space)
//{
//    sound_stop(backgroundsound);

    show_message("You see a bunch of books on the floor and put them back on the shelf.#The teacher thanks you for your help, and your teacher favor increases.");
    if (TeacherFavorBar <= 95) {
        TeacherFavorBar += 5;
    }
    else {
        TeacherFavorBar = 100
    }
    instance_destroy()
}
