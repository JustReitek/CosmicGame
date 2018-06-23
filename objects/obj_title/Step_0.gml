// Si sposta il titolo del gioco verso il basso e appena raggiunge
// una certa altezza si riproduce la musica di gioco.

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

if(y < 250)
{
	// Spostamento del testo del titolo verso il basso
	y += 20;
}
else
{
	// Se la variabile iniziale di avvio musica è a true, allora posso avviare la musica.
	if(music_start == true)
	{
		// Riproduciamo la musica
		audio_play_sound(snd_music, 0, true);
	
		// Una volta avviata la musica si pone la variabile di avvio musica a false in modo
		// da non far ripetere la riproduzione della musica.
		music_start = false;
	}
}
