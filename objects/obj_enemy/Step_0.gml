/// @description Comportamento del nemico

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Esecuzione del comportamento
script_execute(state);

// Si conferisce la gravità ai nemici
if(place_meeting(x, y+1, obj_wall))
{
	vertical_speed = 0;
}
else
{	
	vertical_speed += enemy_gravity;
	
	// Si blocca lo stato dei nemici a quello di destra in modo da evitare il "glitch" della
	// loro grafica perchè si spostano freneticamente a destra e sinistra.
	state = scr_enemy_move_right;

}

// Gestione delle collisioni verticali
if(place_meeting(x, y+vertical_speed, obj_wall))
{
	// Se abbiamo un muro vicino a noi ci avviciniamo ad esso
	while(!place_meeting(x, y+sign(vertical_speed), obj_wall))
	{
		y += sign(vertical_speed);
	}
	
	vertical_speed = 0;
}

// Si applica la velocità verticale all'oggetto
y += vertical_speed;

