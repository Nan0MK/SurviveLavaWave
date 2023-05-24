import std.stdio;
import raylib;

import entities;


void main(){

	writeln("Survive The Lava Wave!");

    auto the_ground = new SquareTile(140, 480, 70, 70, Colors.RED);

    auto the_player = new SquareTile(100, 400, 30, 30, Colors.GREEN);


	// call this before using raylib
    validateRaylibBinding();
    InitWindow(800, 600, "Survive The Lava Wave!");
    SetTargetFPS(60);
    while (!WindowShouldClose()){
		
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        //Gameloop

        if(IsKeyDown(KeyboardKey.KEY_W)){the_player.pos_y --;}
        if(IsKeyDown(KeyboardKey.KEY_S)){the_player.pos_y ++;}
        if(IsKeyDown(KeyboardKey.KEY_A)){the_player.pos_x --;}
        if(IsKeyDown(KeyboardKey.KEY_D)){the_player.pos_x ++;}

        //Now to make collision stop movement

        the_ground.draw_me();
        the_player.draw_me();

        DrawText(show_collision_status(the_ground, the_player), 400, 300, 30, Colors.BLUE);
        //DrawCircle(the_ground.edge_top_x, the_ground.edge_bot, 30, Colors.BROWN);

        //Gameloop
        EndDrawing();
    }
    CloseWindow();
}
