/// @description Inizializzazione || Initialization

/*    --------------------------
           Made by Reitek
  If you find bugs, please contact me on telegram!
          Telegram: @Reitek
       ------------------------
*/

// Definizione variabili per la fisica. || Definition of variables for physics.
// Velocità orizzontale || Horizontal speed
horizontal_speed = 0;
// Velocità verticale || Vertical speed
vertical_speed = 0;
// Velocità del giocatore || Player speed
player_speed = 10;
// Gravità del giocatore || Player gravity
player_gravity = 3;
// Forza di salto del giocatore || Player jumping strength
jump_speed = 50;
// Forza di salto laterale || Player jumping lateral
walljump_speed = 15;
// Accelerazione || Acceleration
accell_speed = 1.5;

// Variabile che abilita il doppio salto || Variable that enables double jump
doublejump_on = true;

// Gestione dello Sprite || Sprite management
// Velocità di animazione nulla || Animation speed nothing
image_speed = 0;
// Sprite iniziale || Initial sprite
sprite_index = spr_player_idle;
