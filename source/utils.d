module utils;

import std.stdio;
import raylib;

import entities;

//Collision checker
bool is_colliding(Entity a, Entity b) {
    if (a.pos_x < b.pos_x + b.size_x - 1 &&
        a.pos_x + a.size_x > b.pos_x + 1 &&
        a.pos_y < b.pos_y + b.size_y - 1 &&
        a.pos_y + a.size_y > b.pos_y + 1) {
        return true;
    }
    return false;
}



const (char)* show_collision_status(Entity a, Entity b){
    const (char)* sout = "none".ptr;
    if(is_colliding(a, b)){
        sout = "True".ptr;
    }
    if(!is_colliding(a, b)){
        sout = "False".ptr;
    }
    return sout;
}

//Movement with collision
void movement_with_collision(Entity movingThing, Entity[] staticThings, int movementSpeed){
    if(IsKeyDown(KeyboardKey.KEY_W)){
        movingThing.pos_y -= movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_y += movementSpeed;
                break;
            }
        }
    }
    if(IsKeyDown(KeyboardKey.KEY_S)){
        movingThing.pos_y += movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_y -= movementSpeed;
                break;
            }
        }
    }
    if(IsKeyDown(KeyboardKey.KEY_A)){
        movingThing.pos_x -= movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_x += movementSpeed;
                break;
            }
        }
    }
    if(IsKeyDown(KeyboardKey.KEY_D)){
        movingThing.pos_x += movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_x -= movementSpeed;
                break;
            }
        }
    }
}

//Movement With Collision And Gravity
//I need to implement this somehow
int jump_height = 25;
void movement_with_collision_gravity(Entity movingThing, Entity[] staticThings, int movementSpeed){
    
    foreach (staticThing; staticThings){
        if(!is_colliding(movingThing, staticThing)){
            movingThing.pos_y += 10;
            break;
        }
        if(is_colliding(movingThing, staticThing)){
            movingThing.pos_y += 0;
            break;
        }
    }
    
    
    if(IsKeyDown(KeyboardKey.KEY_SPACE)){
        movingThing.pos_y -= jump_height;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_y += movementSpeed;
                break;
            }
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_LEFT_SHIFT)){
        movingThing.pos_y += movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_y -= movementSpeed;
                break;
            }
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_A)){
        movingThing.pos_x -= movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_x += movementSpeed;
                break;
            }
        }
    }

    if(IsKeyDown(KeyboardKey.KEY_D)){
        movingThing.pos_x += movementSpeed;
        foreach (staticThing; staticThings){
            if(is_colliding(movingThing, staticThing)){
                movingThing.pos_x -= movementSpeed;
                break;
            }
        }
    }
}

//Movement
void movement(Entity movingThing, int movementSpeed){
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
