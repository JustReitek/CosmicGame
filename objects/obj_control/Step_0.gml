/// @description Controllo partita

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// CONTROLLO CADUTA NEL VUOTO DEL GIOCATORE
// Questo controllo viene eseguito SOLO se il Player è presente nel gioco: se il Player
// viene distrutto quando tocca un nemico l'obj_control non deve più eseguire questo
// controllo.
if(instance_exists(obj_player))
{
	if(obj_player.y >= room_height)
	{	
		   
		   with(obj_player)
			x = 320;
			y = 510;
		
		   room_restart();
	}
}
