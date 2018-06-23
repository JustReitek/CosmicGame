/// @description Controllo nemici

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Se il numero di istanze dell'oggetto "obj_enemy" è minore o uguale a zero allora il giocatore
// ha completato il livello e si attiva il portale.
if(instance_number(obj_enemy) <= 0)
{
	// Attivazione del portale modificando il suo frame al secondo, ovvero il numero 1 (la numerazione parte da 0)
	image_index = 1;
}

// Rotazione del portale incrementando il suo angolo di rotazione (facoltativo)
//image_angle += 0.5;