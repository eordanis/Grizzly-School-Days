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
// Check if pressing right
if keyboard_check(vk_right) && place_free(x+8, y)
{
    x += 8
}
// Check if pressing left
if keyboard_check(vk_left) && place_free(x-8, y)
{
    x -= 8
}
// Jumping
// Check if up is pressed and player is on the ground
//if keyboard_check(vk_up) && !place_free(x, y+1)
//{
//    vspeed = -10
//}
