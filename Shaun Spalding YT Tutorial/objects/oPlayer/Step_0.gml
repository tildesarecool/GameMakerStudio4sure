/// @description Insert description here
// You can write your code in this editor
// playlist: https://www.youtube.com/watch?v=upoXH9hAKUg&list=PLPRT_JORnIuosvhfax2TQTEmN7OYTcSvK

keyLeft = keyboard_check(vk_left) ||  keyboard_check(ord("A")); // keyword "or" also works for ||
// to use "A" instead for left
// keyLeft = keyboard_check(ord("A"));


keyRight = keyboard_check(vk_right) ||  keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up)  ||  keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down)  ||  keyboard_check(ord("S"));

keyActivate = keyboard_check_pressed(vk_space);
keyAttack = keyboard_check_pressed(vk_shift);
keyItem = keyboard_check_pressed(vk_control);

// "simple vector stuff" related to moving diagonally
// 0 is facing right
// 90 is up
// 270 down
// 180 left

// calculating direction/movement by elimnation
inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp );
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0); // booleon, cancel each other out 

// movement
hSpeed = lengthdir_x( inputMagnitude * speedWalk, inputDirection );
vSpeed = lengthdir_y( inputMagnitude * speedWalk, inputDirection );

x += hSpeed;
y += vSpeed;



