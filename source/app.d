import std.stdio;
import raylib;

import entities;


void main(){

	writeln("Survive The Lava Wave!");

    auto the_ground = new SquareTile(130, 480, 550, 30, Colors.RED);


	// call this before using raylib
    validateRaylibBinding();
    InitWindow(800, 600, "Survive The Lava Wave!");
    SetTargetFPS(60);
    while (!WindowShouldClose()){
		
        BeginDrawing();
        ClearBackground(Colors.RAYWHITE);
        DrawText("Survive The Lava Wave!", 400, 300, 28, Colors.BLACK);
        the_ground.draw_me();
        EndDrawing();
    }
    CloseWindow();
}
