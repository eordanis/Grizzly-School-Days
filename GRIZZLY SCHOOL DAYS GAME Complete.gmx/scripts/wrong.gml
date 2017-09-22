if (HungerBar<=85){
HungerBar+=5;       //increase HungerBar
}
if(TeacherFavorBar>=5){
TeacherFavorBar-=5; //decrease TeacherFavorBar
}
if(StudentFavorBar>=5){
StudentFavorBar-=5  //decrease StudentFavorBar
}
questioncount++;//increase question count

if (HungerBar>=88){
show_message('Game Over');
room_goto(rm_gameover);
}
