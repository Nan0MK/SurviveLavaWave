module texture;

import raylib;

void create_environment_textures(){
    Texture2D Bricks = LoadTexture("resources/Bricks.png");
    Texture2D BricksLight = LoadTexture("resources/Bricks_light.png");
    Texture2D Crate = LoadTexture("resources/Crate.png");
    Texture2D Dirt = LoadTexture("resources/Dirt.png");
    Texture2D Glass = LoadTexture("resources/Glass.png");
    Texture2D LavaRock = LoadTexture("resources/Lava_rock.png");
    Texture2D Metal = LoadTexture("resources/Metal.png");
    Texture2D Stone = LoadTexture("resources/Stone.png");
    Texture2D Cobblestone = LoadTexture("resources/Stone_cobble.png");
    Texture2D Wood = LoadTexture("resources/Wood.png");
}

struct Textures_Environment{
    Texture2D BRICKS;
    Texture2D BRICKS_LIGHT;
    Texture2D CRATE;
    Texture2D DIRT;
    Texture2D GLASS;
    Texture2D LAVA_ROCK;
    Texture2D METAL;
    Texture2D STONE;
    Texture2D COBBLESTONE;
    Texture2D WOOD;
}