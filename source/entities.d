module entities;
import raylib;

class Entity{
    int pos_x;
    int pos_y;
}

class SquareTile : Entity{
    Colors tile_color;
    int size_x;
    int size_y;

    this(int xIn, int yIn, int sizeIn_x, int sizeIn_y, Colors colorIn){
        pos_x = xIn;
        pos_y = yIn;
        size_x = sizeIn_x;
        size_y = sizeIn_y;
        tile_color = colorIn;
    }

    void draw_me(){
        DrawRectangle(pos_x, pos_y, size_x, size_y, tile_color);
    }
}