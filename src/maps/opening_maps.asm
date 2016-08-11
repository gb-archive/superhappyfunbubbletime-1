; Maps for the opening screens
; These are 20x18 maps, loaded via the function
; Screen_Load_0_20x18, found in lcd_interface.asm

EXPORT  Splash_Screen_Map
EXPORT  Title_Screen_Map
EXPORT  Main_Menu_Map

   SECTION "Opening Maps",ROMX,BANK[1]
Splash_Screen_Map:

DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$2C,$4C,$45
DB $58,$4F,$53,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$28,$41
DB $4D,$45,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$34,$54,$55
DB $44,$49,$4F,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$31,$52,$45,$53
DB $45,$4E,$54,$53,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F

Title_Screen_Map:

DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$34,$55,$50,$45,$52,$29,$41
DB $50,$50,$59,$27,$55,$4E,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$23,$55,$42,$42,$4C,$45
DB $35,$49,$4D,$45,$01,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
DB $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F

Main_Menu_Map:

DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$34,$29,$27
DB $23,$35,$01,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$2F,$45,$57,$00,$28
DB $41,$4D,$45,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$2D,$4F,$41,$44,$00
DB $28,$41,$4D,$45,$0A,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$30,$50,$54,$49,$4F
DB $4E,$53,$0A,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$25,$26,$23,$36,$28,$00
DB $00,$1C,$2E,$30,$25,$26,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$1C,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$0A,$00,$2F,$4F,$54,$00
DB $3A,$45,$54,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$2A,$4D,$50,$4C
DB $45,$4D,$45,$4E,$54,$45,$44,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
