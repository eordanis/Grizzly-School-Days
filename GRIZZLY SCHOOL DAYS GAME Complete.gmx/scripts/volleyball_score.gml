// Test to see if Gary has won
if (pointsgary = 10)
{
    show_message("Good job, Gary! You won the game!#The gym teacher gives you a nice snack for your great game.#And since everyone likes a winner, your student favor increases!");
    if (HungerBar >= 15)
    {
        HungerBar -= 15;
    } else {
        HungerBar = 0;
    }
    if (StudentFavorBar <= 95)
    {
        StudentFavorBar += 5;
    } else {
        StudentFavorBar = 100;
    }
    room_goto(rm_hallway);
}
// Test to see if Gary has lost
if (pointshim = 10)
{
    if (pointshim - pointsgary >= 5)
    {
        show_message("Sorry, you lost the volleyball game.#You earn a small snack for participation, though.");
        if (HungerBar >= 5)
        {
            HungerBar -= 5;
        } else {
            HungerBar = 0;
        }
    }
    else
    {
        show_message("You lost, but it was a good game you played.#You earn a medium snack for playing.");
        if (HungerBar >= 10)
        {
            HungerBar -= 10;
        } else {
            HungerBar = 0;
        }
    }
    room_goto(rm_hallway);
}
