/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Controllo dell'input del giocatore || Control of player input
left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));
right_key = keyboard_check(vk_right)|| keyboard_check(ord("D"));
jump_key = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space);