// Gravity
// Check to see if character is in the air
if place_free(x, y+1)
{
    gravity = 1
}
else // Not in the air
{
    gravity = 0
}
// Set gravity direction down
gravity_direction = 270

// Movement
// Flat
// Check if ball is heading right
if (obj_ball.x > 320) &&
   (obj_ball.direction < 90 || (270 < obj_ball.direction < 359)) && place_free(x+8, y)
{
    x += 8
}
// Check if ball is heading left
if (obj_ball.x > 320) && (90 < obj_ball.direction < 270) && place_free(x-8, y)
{
    x -= 8
}
// Jumping
// Check if player is on the ground
//if ((opponent.x - 16) < obj_ball.x < (opponent.x + 16)) &&
//   (obj_ball.y == 360)
//{
//    script_jump()
//}
