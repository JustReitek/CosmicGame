/// @description Collisione con il nemico

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

if(y < (other.y) && !place_meeting(x, y+1, obj_wall))
{
	// Distruggiamo l'oggetto del nemico
	with(other)
	{
		instance_destroy();
	}
	
	// Rimbalzo
	vertical_speed = -jump_speed;
}
else
{
	// Distruzione in giocatore
	instance_destroy();
	
}
