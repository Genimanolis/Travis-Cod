// Step event of obj_enemy_spawner
if (spawn_timer <= 0) {
    // Randomly determine a position outside of the camera view
    var spawn_x, spawn_y;
    var view_x = view_xview[0]; // Get the left edge of the view
    var view_y = view_yview[0]; // Get the top edge of the view
    var view_width = view_wview[0]; // Get the width of the view
    var view_height = view_hview[0]; // Get the height of the view

    // Determine a random side to spawn the enemy (0 = top, 1 = right, 2 = bottom, 3 = left)
    var side = irandom(3);

    switch (side) {
        case 0: // Top
            spawn_x = irandom(view_width) + view_x;
            spawn_y = view_y - 32; // Adjust for enemy size
            break;
        case 1: // Right
            spawn_x = view_x + view_width + 32; // Adjust for enemy size
            spawn_y = irandom(view_height) + view_y;
            break;
        case 2: // Bottom
            spawn_x = irandom(view_width) + view_x;
            spawn_y = view_y + view_height + 32; // Adjust for enemy size
            break;
        case 3: // Left
            spawn_x = view_x - 32; // Adjust for enemy size
            spawn_y = irandom(view_height) + view_y;
            break;
    }

    // Create the enemy object at the calculated position
    instance_create_layer(spawn_x, spawn_y, "Instances", oGubbi);

    // Reset the spawn timer
    spawn_timer = 60; // You can adjust this to control the spawn rate
}

// Decrement the spawn timer
spawn_timer -= 1;

