/// @description Fine livello

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Se il frame del portale è il numero 1 (ovvero quando è acceso) si teletrasporta il giocatore
// nella room successiva.
if(other.image_index == 1)
{
	//Spostamento nel livello successivo
	room_goto_next();
}