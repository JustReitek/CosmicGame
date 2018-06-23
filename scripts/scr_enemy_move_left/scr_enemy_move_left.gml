/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Velocità orizzontale per il nemico || Horizontal speed for the enemy
enemy_horizontal_speed = -2;

// Movimento del nemico || Movement of the enemy
if(!place_meeting(x+enemy_horizontal_speed, y, obj_wall) and place_meeting(x-sprite_width, y+1, obj_wall))
{
	x += enemy_horizontal_speed;
}
else
{
	state = scr_enemy_move_right;
}

// Orientamento del nemico a sinistra || Orientation of the enemy on the left
sprite_index = spr_enemy_left;