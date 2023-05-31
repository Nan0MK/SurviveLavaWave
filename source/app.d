import std.stdio;
import raylib;

import entities;
import utils;

int move_speed = 5;

void main(){

	writeln("Survive The Lava Wave!");

    auto tile0 = new SquareTile(140, 480, 70, 70, Colors.RED);
    auto tile1 = new SquareTile(tile0.pos_x + 140, 480, 70, 70, tile0.tile_color);
    auto tile2 = new SquareTile(tile1.pos_x + 140, 480, 70, 70, tile0.tile_color);
    auto tile3 = new SquareTile(tile2.pos_x + 140, 480, 70, 70, tile0.tile_color);
    auto tile4 = new SquareTile(tile3.pos_x + 140, 480, 70, 70, tile0.tile_color);

    SquareTile[] tileHolder;
    tileHolder ~= tile0;
    tileHolder ~= tile1;
    tileHolder ~= tile2;
    tileHolder ~= tile3;
    tileHolder ~= tile4;

    auto the_player = new SquareTile(100, 400, 30, 30, Colors.GREEN);


	// call this before using raylib
    validateRaylibBinding();
    InitWindow(800, 600, "Survive The Lava Wave!");
    SetTargetFPS(60);
    while (!WindowShouldClose()){
		
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        //Gameloop

        movement_with_collision(the_player, tileHolder, move_speed);
        //movement(the_player, move_speed);

        tile0.draw_me();
        tile1.draw_me();
        tile2.draw_me();
        tile3.draw_me();
        tile4.draw_me();
        the_player.draw_me();

        //DrawText(show_collision_status(tile0, the_player), 400, 300, 30, Colors.BLUE);

        //Gameloop
        EndDrawing();
    }
    CloseWindow();
}
