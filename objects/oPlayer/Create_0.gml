moveDir = 0;
moveSpd = 5;
xspd = 0;
yspd = 0; 


var playerStartX = 1465/* set your player's starting X coordinate here */;
var playerStartY = 1465/* set your player's starting Y coordinate here */;

// Set the camera's position to center on the player
view_xview[0] = playerStartX - view_wview[0] / 2;
view_yview[0] = playerStartY - view_hview[0] / 2;