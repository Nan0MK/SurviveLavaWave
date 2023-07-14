module entities;

import core.stdc.string;
import raylib;
import tile_map;

class Entity{
    Colors entity_color;
    int pos_x;
    int pos_y;

    int size_x;
    int size_y;

    int edge_top;
    int edge_top_x;

    int edge_bot;
    int edge_bot_x;

    int edge_left;
    int edge_right;

    this(int xIn, int yIn, int sizeIn_x, int sizeIn_y, Colors colorIn){

        pos_x = xIn;
        pos_y = yIn;
        size_x = sizeIn_x;
        size_y = sizeIn_y;
        entity_color = colorIn;

        edge_top = pos_y - size_y;
        edge_top_x = pos_x + pos_x;

        edge_bot = pos_y + size_y;
        edge_bot_x = pos_x + pos_x;

        edge_left = -size_x;
        edge_right = size_x;
    }

    void draw_me(){
        DrawRectangle(pos_x, pos_y, size_x, size_y, entity_color);
    }
}