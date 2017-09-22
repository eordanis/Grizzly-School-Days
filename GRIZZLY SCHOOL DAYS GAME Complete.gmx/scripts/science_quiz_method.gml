if(questioncount<10){
if(TeacherFavorBar>=50){
EasyQuestionNext++;
//for object question
science_quiz_question.sprite_index =ScienceQuizEasy[EasyQuestionNext,0];
//for object answer one
science_quiz_answer_A.sprite_index =ScienceQuizEasy[EasyQuestionNext,1];
//for object answer two
science_quiz_answer_B.sprite_index =ScienceQuizEasy[EasyQuestionNext,2];
//for object answer three
science_quiz_answer_C.sprite_index =ScienceQuizEasy[EasyQuestionNext,3];
}
if(TeacherFavorBar<50){
HardQuestionNext++;
//for object question
science_quiz_question.sprite_index =ScienceQuizHard[HardQuestionNext,0];
//for object answer one
science_quiz_answer_A.sprite_index =ScienceQuizHard[HardQuestionNext,1];
//for object answer two
science_quiz_answer_B.sprite_index =ScienceQuizHard[HardQuestionNext,2];
//for object answer three
science_quiz_answer_C.sprite_index =ScienceQuizHard[HardQuestionNext,3];
}
}
else{
HardQuestionNext=0;
EasyQuestionNext=0;
questioncount=0;

if(classcount!=2|3){
show_message('The quiz is now finished, please proceed to the hallway');
room_goto(rm_hallway);
}
if (classcount=2){
show_message('Time to go to the cafeteria');
room_goto(rm_cafeteria);
}
if (classcount=3){
show_message('Time to go to gym');
room_goto(rm_gym);
}
if (classcount=4){
show_message("You've now finished all your classes.");
room_goto(rm_gameover);
}
}
