if(questioncount<10){
if(TeacherFavorBar>=50){
EasyQuestionNext++;
//for object question
history_quiz_question.sprite_index =HistoryQuizEasy[EasyQuestionNext,0];
//for object answer one
history_quiz_answer_A.sprite_index =HistoryQuizEasy[EasyQuestionNext,1];
//for object answer two
history_quiz_answer_B.sprite_index =HistoryQuizEasy[EasyQuestionNext,2];
//for object answer three
history_quiz_answer_C.sprite_index =HistoryQuizEasy[EasyQuestionNext,3];
}
if(TeacherFavorBar<50){
HardQuestionNext++;
//for object question
history_quiz_question.sprite_index =HistoryQuizHard[HardQuestionNext,0];
//for object answer one
history_quiz_answer_A.sprite_index =HistoryQuizHard[HardQuestionNext,1];
//for object answer two
history_quiz_answer_B.sprite_index =HistoryQuizHard[HardQuestionNext,2];
//for object answer three
history_quiz_answer_C.sprite_index =HistoryQuizHard[HardQuestionNext,3];
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

