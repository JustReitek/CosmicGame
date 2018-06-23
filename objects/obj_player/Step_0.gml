/// @description Movimento del giocatore

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/



// Controllo dei tasti di movimento
scr_get_input();

// GESTIONE MOVIMENTO
if(left_key)
{
	// MOVIMENTO A SINISTRA
	// Applichiamo l'accelerazione a sinistra
	if(horizontal_speed > -player_speed)
	{
		horizontal_speed -= accell_speed;
	}
	else
	{
		horizontal_speed = -player_speed;
	}
	
	// Salto laterale a sinistra
	if(place_meeting(x+1, y, obj_wall) and !place_meeting(x, y+1, obj_wall))
	{
		// Infliggiamo la forza di salto
		vertical_speed = -walljump_speed;
	}
	
	// Sprite di movimento verso sinistra
	sprite_index = spr_player_left;
	
	image_speed = 1;
}
else if(right_key)
{
	// MOVIMENTO A DESTRA
	// Applichiamo l'accelerazione a destra
	if(horizontal_speed < player_speed)
	{
		horizontal_speed += accell_speed;
	}
	else
	{
		horizontal_speed = player_speed;
	}
	
	// Salto laterale a destra
	if(place_meeting(x-1, y, obj_wall) and !place_meeting(x, y+1, obj_wall))
	{
		// Infliggiamo la forza di salto
		vertical_speed = -walljump_speed;
	}
	
	// Sprite di movimento verso destra
	sprite_index = spr_player_right;
	
	image_speed = 1;
}
else
{
	// NESSUN MOVIMENTO
	if(horizontal_speed > accell_speed)
	{
		horizontal_speed -= accell_speed;
	}
	else if(horizontal_speed < -accell_speed)
	{
		horizontal_speed += accell_speed;
	}
	else
	{
		horizontal_speed = 0;
	}
	
	// Sprite di idle
	sprite_index = spr_player_idle;
}

// GESTIONE DELLA GRAVITA'
if(place_meeting(x, y+1, obj_wall))
{
	vertical_speed = 0;
	
	// Disabilitare la possibilità di fare un triplo salto
	douplejump_on = true;
	
	// Salto
	if(jump_key)
	{
		vertical_speed = -jump_speed;
	}
}
else
{	
	// Doppio salto
	if(jump_key and douplejump_on == true)
	{
		vertical_speed = -jump_speed;
	
	
		// Disabilitare la possibilità di fare un triplo salto
		douplejump_on = false;
	}
	
	if(vertical_speed < jump_speed)
	{
		vertical_speed += player_gravity;
		
		sprite_index = spr_player_fall;
		
	}
	
	// Possibilità di fare un salto più "corto"
	if(keyboard_check_released(vk_up) and vertical_speed < -4)
	{
		vertical_speed = -4;
	}
}

// GESTIONE DELLE COLLISIONI
// Gestione delle collisioni orizzontali
if(place_meeting(x+horizontal_speed, y, obj_wall))
{
	// Se abbiamo un muro vicino a noi ci avviciniamo ad esso
	while(!place_meeting(x+sign(horizontal_speed), y, obj_wall))
	{
		x += sign(horizontal_speed);
	}
	
	horizontal_speed = 0;
}

x += horizontal_speed;

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

	
// Aggiornamento della posizione del giocatore
y += vertical_speed;

//Gestione dello Sprite di salto separata
if(vertical_speed < 0)
{
	if(sign(horizontal_speed) >= 0)
	{
		sprite_index = spr_player_jump_right;
	}
	else
	{
		sprite_index = spr_player_jump_left;
	}
}





















