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
    if(IsKeyDown(KeyboardKey.KEY_W)){
        movingThing.pos_y -= movementSpeed;
    }
    
    if(IsKeyDown(KeyboardKey.KEY_S)){
        movingThing.pos_y += movementSpeed;
    }

    if(IsKeyDown(KeyboardKey.KEY_A)){
        movingThing.pos_x -= movementSpeed;
    }

    if(IsKeyDown(KeyboardKey.KEY_D)){
        movingThing.pos_x += movementSpeed;
    }
}

bool is_colliding(SquareTile a, SquareTile b) {
    if (a.pos_x < b.pos_x + b.size_x - 1 &&
        a.pos_x + a.size_x > b.pos_x + 1 &&
        a.pos_y < b.pos_y + b.size_y - 1 &&
        a.pos_y + a.size_y > b.pos_y + 1) {
        return true;
    }
    return false;
}

const (char)* show_collision_status(SquareTile a, SquareTile b){
    const (char)* sout = "none".ptr;
    if(is_colliding(a, b) == true){
        sout = "True".ptr;
    }
    if(is_colliding(a, b) == false){
        sout = "False".ptr;
    }
    return sout;
}