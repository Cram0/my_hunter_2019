/*
** EPITECH PROJECT, 2019
** MUL_my_hunter_2019
** File description:
** gameloop
*/

#include "../include/my_hunter.h"

void start_game(sfRenderWindow *window)
{
    sfEvent event;
    while (sfRenderWindow_isOpen(window))
    {
        while (sfRenderWindow_pollEvent(window, &event))
        {
            if (event.type == sfEvtClosed)
                sfRenderWindow_close(window);
        }
        sfRenderWindow_clear(window, sfBlue);
        sfRenderWindow_display(window);
    }
}