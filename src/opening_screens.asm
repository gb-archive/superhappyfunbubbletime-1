; Code for the opening screens.
; I'd eventually like to do a fade in/out with these.

INCLUDE "defines.asm"
EXPORT  Title_Screen
EXPORT  Splash_Screen
EXPORT  Main_Menu


   SECTION "Splash_Screen",ROMX,BANK[1]
Splash_Screen:
   ;Not using a full-screen map for this.
   di
   xor A             ; Set the bg screen coords to 0,0
   ld [rSCX],A
   ld [rSCY],A
   ld HL,Font_Main   ; Loading up the main font into VRAM
   ld DE,$60 * $10   ; We want all the font, which has $5F chars.
   call Load_Tiles_Into_VRAM  ; Load tiles into VRAM

;load in our variables, and call the load background subroutine.
   ld HL,Splash_Screen_Map
   call Screen_Load_0_20x18

;now exit the Splash_Screen function.
   ei
;and fade in.
   call Fade_In_Black

;we want this screen to display for ~2 seconds before fading out.
   xor A
   ld [TIMERT],A     ;reset timer1
.loop
   ld A,[TIMERT]
   cp $18            ;roughly a second and a half ($10 per second)
   jr nz,.loop
   call Fade_Out_Black

   ret

   SECTION "Title Screen",ROMX,BANK[1]
   ;As this is being called right after Splash_Screen, we can assume that...
   ;The screen is faded out, interrupts are enabled,
   ;rSCX and rSCY are both at 0,
   ;and that the font info is still loaded into VRAM.
   
Title_Screen:
   di
   
   ld HL,Title_Screen_Map
   call Screen_Load_0_20x18   ;load up our map

   ei
   call Fade_In_Black         ;and now fade back in.

   xor A
   ld [TIMERT],A

   di                         ;we need to change interrupts
   ld A,0
   ld [rIF],A
   ld A,%00000100             ;only care about joystick/timer for now
   ld [rIE],A
   ei
   
.press_start_loop
   halt                       ;save cpu - first time using halt.
   nop                        ;not checking flags for which interrupt used
   
   call Controller
   ld A,[JOYPAD]              ;cheaper to just do it this way
   and $0F                    ;first check joypad.
   cp 0
   jp nz,.end
   
   ld A,[TIMERT]              ;then check timer.
   cp $10
   jr nz,.press_start_loop


   call Wait_VBlank_Beginning
   ld HL,_SCRN0+(32*11)+4     ;this is where i want the lettering to start
   ld A,$50                   ;gonna unroll this one, $50 is "p"
   ld [HL+],A
   ld A,$52                   ;"r"
   ld [HL+],A
   ld A,$45                   ;"e"
   ld [HL+],A
   ld A,$53
   ld [HL+],A
   ld [HL+],A
   xor A
   ld [HL+],A
   ld A,$53
   ld [HL+],A
   ld A,$54
   ld [HL+],A
   ld A,$41
   ld [HL+],A
   ld A,$52
   ld [HL+],A
   ld A,$54
   ld [HL+],A

   ld A,[rLCDC]               ;turn on sprites for the pointer
   set 1,A
   ld [rLCDC],A

.wait
   halt                       ;wait for an interrupt to occur
   nop

   call Controller
   ld A,[JOYPAD]              ;check if a,b,st,sl has been pressed
   and $0F                    ;if so, move on.
   cp 0
   jr z,.wait
.end
   xor A
   ld [JOYPAD],A              ;reset the controller for the next screen.
   call Fade_Out_Black
   ret

   SECTION "Main Menu",ROMX,BANK[1]
Main_Menu:
   di
   
   ld HL,Main_Menu_Map           ;load the main menu onto our screen.
   call Screen_Load_0_20x18
   
   ld HL,Menu_Pointer            ;load the menu pointer sprite into vram.
   ld D,16
   ld BC,_VRAM+($60*$10)
   call Wait_VBlank_Beginning
.load_pointer
   ld A,[HL+]
   ld [BC],A
   inc BC
   dec D
   jp nz,.load_pointer
   
   ld HL,OAM_MIRROR
   ld A,$38
   ld [HL+],A                    ;Y Position
   ld A,$28
   ld [HL+],A                    ;X Position
   ld [HL],$60                   ;tile number
   inc HL
   ld [HL],%00000000             ;sprite properties
   
   ei

   call .update_sprite
   call Fade_In_Black

.input_wait_loop                 ;wait for input with a controller interrupt
   halt
   nop
   
   call Controller               ;get our button press details
   
   ld A,[JOYPAD]                 ;load joypad data into A, then begin jumping around
   
   bit J_DOWN,A
   jp nz,.down_pressed
   
   bit J_UP,A
   jp nz,.up_pressed
   
   bit J_A,A
   jp nz,.menu_item_select
   bit J_START,A
   jp nz,.menu_item_select
   bit J_SELECT,A
   jp nz,.menu_item_select
   
   jr .input_wait_loop
   
      
.down_pressed                 ;down on joypad is pressed
   ld HL,OAM_MIRROR           ;OAM_MIRROR is location in ram that we mirror to OAM 
   ld A,[HL]                  ;since sprite is the only thing in OAM right now, we can just check the first byte for ypos.
   cp $58                     ;if we are at the bottom of the menu, we need to go back up to the top.
   jp nz,.mv_down             ;else, go down to the next menu item.
   ld A,$38
   ld [HL],A
   call .update_sprite
   jp .delay
.mv_down
   add $10
   ld [HL],A
   call .update_sprite
   jp .delay


.up_pressed                   ;largely same as "down", except if at top jump to bottom
   ld HL,OAM_MIRROR
   ld A,[HL]
   cp $38
   jp nz,.mv_up
   ld A,$58
   ld [HL],A
   call .update_sprite
   jp .delay
.mv_up
   sub $10
   ld [HL],A
   call .update_sprite
   jp .delay


.menu_item_select
   ;check which menu item.
   ld HL,OAM_MIRROR
   ld A,[HL]
   cp $38                     ;using the sprites Y location to determine which menu item was pressed.
   jr z,.start_game
   cp $48
   jr z,.load_game
   cp $58
   jr z,.option
.option                       ;option menu is not yet implemented.
   jp .input_wait_loop
.load_game                    ;game saving/loading is not yet implemented.
   jp .input_wait_loop
.start_game                   ;this'll get us in to the main game loop.
   call Fade_Out_Black
   ret                        ;.menu_item_select was jumped to, not called,
                              ;so doing a ret will put us back into the main loop in main.asm.

.delay
   xor A
   ld [TIMERT],A
.delay_loop
   ld A,[TIMERT]
   cp 2
   jr nz,.delay_loop
   jp .input_wait_loop
   
.update_sprite                ;not doing a DMA, because it's only 1 sprite.
   call Wait_VBlank           ;shouldn't have to turn LCD off, as the update is quick.
   ld HL,OAM_MIRROR
   ld BC,_OAMRAM
   ld d,4
.update_loop
   ld A,[HL+]
   ld [BC],A
   inc BC
   dec d
   jp nz,.update_loop
   ret
