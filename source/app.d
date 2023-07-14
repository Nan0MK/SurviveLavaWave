import std.stdio;
import raylib;

import entities;
import utils;
import tile_map;


int move_speed = 5;
const int WINDOW_SIZE = TILE_SIZE * 5;

void main(){

	writeln("Survive The Lava Wave!");

    auto tile0 = new Entity(coords[0][0], coords[0][0], 70, 70, Colors.RED);
    auto tile1 = new Entity(coords[0][1], coords[0][0], 70, 70, tile0.entity_color);
    auto tile2 = new Entity(coords[0][2], coords[0][0], 70, 70, tile0.entity_color);
    auto tile3 = new Entity(coords[0][3], coords[0][0], 70, 70, tile0.entity_color);
    auto tile4 = new Entity(coords[0][4], coords[0][0], 70, 70, tile0.entity_color);

    auto tile5 = new Entity(coords[0][0], coords[0][1], 70, 70, tile0.entity_color);
    auto tile6 = new Entity(coords[0][0], coords[0][2], 70, 70, tile0.entity_color);
    auto tile7 = new Entity(coords[0][0], coords[0][3], 70, 70, tile0.entity_color);
    auto tile8 = new Entity(coords[0][0], coords[0][4], 70, 70, tile0.entity_color);

    Entity[] player_collision_layer;
    player_collision_layer ~= tile0;
    player_collision_layer ~= tile1;
    player_collision_layer ~= tile2;
    player_collision_layer ~= tile3;
    player_collision_layer ~= tile4;
    player_collision_layer ~= tile5;
    player_collision_layer ~= tile6;
    player_collision_layer ~= tile7;
    player_collision_layer ~= tile8;

    auto the_player = new Entity(80, 80, 30, 30, Colors.GREEN);

	// call this before using raylib
    validateRaylibBinding();
    InitWindow(WINDOW_SIZE, WINDOW_SIZE, "Survive The Lava Wave!");

    //Load texture here
    //Texture2D bricksLol = LoadTexture("resources/environment/bricks.png");
    /*
        Now to add textures to entities!
        Also add a place where all texture files are loaded or assigned.
    */

    SetTargetFPS(60);
    while (!WindowShouldClose()){
		
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        //Gameloop start

        movement_with_collision(the_player, player_collision_layer, move_speed);

        //Drawing section
        tile0.draw_me();
        //DrawTexture(bricksLol, 150, 320, Colors.WHITE);
        tile1.draw_me();
        tile2.draw_me();
        tile3.draw_me();
        tile4.draw_me();
        tile5.draw_me();
        tile6.draw_me();
        tile7.draw_me();
        tile8.draw_me();
        the_player.draw_me();

        //Gameloop end
        EndDrawing();
    }
    //UnloadTexture(bricksLol);
    CloseWindow();
}
