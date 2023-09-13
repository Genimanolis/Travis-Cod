player_x = oPlayer.x;
player_y = oPlayer.y;

direction = point_direction(x, y, player_x, player_y);

speed = 5;

x += lengthdir_x(speed, direction)
x += lengthdir_y(speed, direction)

image_angle = direction;