module utils;

import std.stdio;
import raylib;

import entities;


void movement_with_collision(SquareTile movingThing, SquareTile staticThing, int movementSpeed){
    if(IsKeyDown(KeyboardKey.KEY_W)){
        movingThing.pos_y -= movementSpeed;
        if(is_colliding(movingThing, staticThing)){
            movingThing.pos_y += movementSpeed;
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_S)){
        movingThing.pos_y += movementSpeed;
        if(is_colliding(movingThing, staticThing)){
            movingThing.pos_y -= movementSpeed;
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_A)){
        movingThing.pos_x -= movementSpeed;
        if(is_colliding(movingThing, staticThing)){
            movingThing.pos_x += movementSpeed;
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_D)){
        movingThing.pos_x += movementSpeed;
        if(is_colliding(movingThing, staticThing)){
            movingThing.pos_x -= movementSpeed;
        }
    }
}

void movement(SquareTile movingThing, int movementSpeed){
    if(IsKeyDown(KeyboardKey.KEY_W)){movingThing.pos_y -= movementSpeed;}
    if(IsKeyDown(KeyboardKey.KEY_S)){movingThing.pos_y += movementSpeed;}
    if(IsKeyDown(KeyboardKey.KEY_A)){movingThing.pos_x -= movementSpeed;}
    if(IsKeyDown(KeyboardKey.KEY_D)){movingThing.pos_x += movementSpeed;}
}