import std.stdio;
import raylib;

import entities;
import utils;

int move_speed = 5;

void main(){

	writeln("Survive The Lava Wave!");

    auto tile0 = new Entity(140, 480, 70, 70, Colors.RED);
    auto tile1 = new Entity(tile0.pos_x + 140, 480, 70, 70, tile0.entity_color);
    auto tile2 = new Entity(tile1.pos_x + 140, 480, 70, 70, tile0.entity_color);
    auto tile3 = new Entity(tile2.pos_x + 140, 480, 70, 70, tile0.entity_color);
    auto tile4 = new Entity(tile3.pos_x + 140, 480, 70, 70, tile0.entity_color);

    Entity[] player_collision_layer;
    player_collision_layer ~= tile0;
    player_collision_layer ~= tile1;
    player_collision_layer ~= tile2;
    player_collision_layer ~= tile3;
    player_collision_layer ~= tile4;

    auto the_player = new Entity(145, 400, 30, 30, Colors.GREEN);


	// call this before using raylib
    validateRaylibBinding();
    InitWindow(800, 600, "Survive The Lava Wave!");
    SetTargetFPS(60);
    while (!WindowShouldClose()){
		
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        //Gameloop start

        movement_with_collision_gravity(the_player, player_collision_layer, move_speed);

        //Drawing section
        tile0.draw_me();
        tile1.draw_me();
        tile2.draw_me();
        tile3.draw_me();
        tile4.draw_me();
        the_player.draw_me();

        //Gameloop end
        EndDrawing();
    }
    CloseWindow();
}
