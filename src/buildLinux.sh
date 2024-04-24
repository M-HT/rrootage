#!/bin/sh
rm *.o*
gcc -c `sdl-config --cflags` -O3 -Wall *.c
g++ -c `sdl-config --cflags` -O3 -Wall *.cc -I./bulletml/
gcc -o rr *.o* `sdl-config --libs` -lGLU -lGL -lSDL_mixer -lbulletml -lstdc++ -lm -L./lib/x64
