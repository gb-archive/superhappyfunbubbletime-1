;The perilous FIELD OF TESTING!
;32x32 area

EXPORT field_of_testing

 SECTION "Field of Testing", HOME

field_of_testing:
DB $10,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
DB $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
DB $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
DB $0F,$0E,$09,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$01,$01,$00,$00,$00,$00,$00,$00
DB $00,$03,$02,$02,$03,$00,$02,$03,$02,$03
DB $00,$00,$00,$0D,$09,$00,$00,$01,$01,$01
DB $01,$01,$01,$00,$00,$01,$01,$00,$00,$00
DB $00,$00,$00,$02,$02,$03,$02,$00,$03,$02
DB $02,$02,$00,$00,$00,$0D,$09,$00,$00,$01
DB $01,$00,$00,$00,$01,$01,$00,$00,$01,$01
DB $00,$00,$00,$00,$00,$03,$02,$03,$03,$00
DB $02,$02,$03,$03,$00,$00,$00,$0D,$09,$00
DB $00,$02,$02,$03,$03,$03,$03,$02,$03,$00
DB $00,$00,$00,$00,$01,$01,$01,$03,$03,$02
DB $03,$00,$03,$02,$02,$03,$01,$00,$00,$0D
DB $09,$00,$00,$02,$00,$00,$01,$00,$01,$00
DB $02,$01,$00,$00,$00,$01,$01,$00,$00,$00
DB $00,$01,$01,$01,$00,$00,$01,$01,$01,$00
DB $00,$0D,$09,$00,$00,$03,$00,$03,$03,$02
DB $02,$00,$03,$01,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$01,$01,$01,$01,$03,$02
DB $03,$02,$00,$0D,$09,$00,$00,$02,$01,$02
DB $02,$03,$02,$00,$03,$01,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$01,$01,$01,$00,$00
DB $02,$02,$02,$02,$00,$0D,$09,$00,$00,$03
DB $00,$03,$02,$02,$03,$00,$02,$01,$00,$00
DB $01,$00,$01,$01,$01,$01,$00,$01,$01,$01
DB $00,$00,$03,$03,$02,$03,$00,$0D,$09,$00
DB $00,$03,$00,$00,$00,$00,$00,$00,$03,$01
DB $00,$01,$00,$00,$01,$00,$00,$00,$00,$01
DB $01,$01,$00,$00,$02,$02,$02,$03,$00,$0D
DB $09,$00,$00,$03,$02,$02,$03,$02,$02,$02
DB $03,$01,$00,$01,$00,$00,$01,$01,$00,$01
DB $01,$01,$01,$00,$01,$01,$01,$01,$01,$01
DB $00,$0D,$09,$00,$00,$00,$00,$01,$01,$01
DB $01,$00,$01,$01,$00,$01,$01,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$01,$00
DB $00,$00,$00,$0D,$09,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$01,$00,$00,$00,$01
DB $00,$00,$00,$00,$00,$00,$01,$01,$01,$00
DB $01,$00,$00,$00,$00,$0D,$09,$00,$01,$00
DB $00,$01,$00,$00,$00,$00,$00,$01,$00,$00
DB $00,$00,$01,$00,$00,$00,$00,$00,$00,$00
DB $00,$01,$01,$00,$00,$00,$00,$0D,$09,$00
DB $01,$00,$00,$01,$01,$01,$01,$01,$00,$01
DB $01,$01,$01,$00,$00,$01,$00,$00,$01,$01
DB $00,$00,$00,$00,$01,$01,$01,$00,$00,$0D
DB $09,$00,$01,$00,$00,$00,$00,$00,$00,$00
DB $01,$00,$01,$01,$00,$04,$04,$01,$00,$00
DB $01,$01,$00,$00,$00,$00,$01,$00,$00,$00
DB $00,$0D,$09,$00,$01,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$01,$04,$04,$00
DB $00,$00,$01,$00,$00,$00,$00,$00,$01,$00
DB $00,$00,$00,$0D,$09,$00,$01,$00,$00,$00
DB $00,$01,$00,$00,$00,$01,$00,$00,$01,$00
DB $00,$00,$00,$01,$01,$01,$01,$01,$00,$00
DB $00,$01,$00,$00,$00,$0D,$09,$00,$01,$00
DB $00,$00,$00,$01,$00,$01,$01,$01,$00,$01
DB $00,$00,$00,$00,$00,$01,$00,$00,$00,$01
DB $01,$01,$00,$00,$00,$00,$00,$0D,$09,$00
DB $01,$00,$00,$01,$01,$01,$01,$01,$00,$00
DB $00,$00,$01,$01,$00,$01,$01,$00,$00,$00
DB $00,$00,$00,$00,$01,$00,$00,$00,$00,$0D
DB $09,$00,$01,$00,$00,$00,$00,$01,$01,$00
DB $00,$00,$00,$00,$01,$00,$01,$01,$00,$00
DB $00,$00,$05,$07,$00,$00,$01,$00,$00,$00
DB $00,$0D,$09,$00,$01,$00,$04,$00,$00,$01
DB $01,$00,$00,$01,$01,$01,$01,$01,$05,$07
DB $00,$00,$00,$00,$06,$08,$00,$00,$01,$00
DB $00,$00,$00,$0D,$09,$00,$01,$00,$00,$00
DB $00,$01,$04,$01,$01,$00,$00,$00,$01,$00
DB $06,$08,$00,$01,$01,$01,$00,$00,$00,$00
DB $01,$00,$00,$00,$00,$0D,$09,$00,$00,$00
DB $00,$00,$00,$01,$00,$00,$00,$00,$00,$00
DB $01,$00,$00,$00,$00,$01,$00,$00,$00,$00
DB $00,$00,$05,$07,$00,$00,$00,$0D,$09,$00
DB $00,$00,$00,$04,$00,$01,$00,$00,$00,$04
DB $00,$01,$00,$00,$00,$00,$00,$01,$00,$00
DB $00,$01,$00,$00,$06,$08,$00,$00,$00,$0D
DB $09,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $01,$04,$01,$00,$00,$00,$00,$00,$00,$01
DB $00,$00,$05,$07,$01,$01,$00,$00,$00,$00
DB $00,$0D,$09,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$05,$07
DB $00,$00,$01,$01,$06,$08,$01,$01,$01,$00
DB $00,$00,$00,$0D,$09,$00,$00,$04,$00,$00
DB $00,$04,$00,$00,$00,$00,$00,$00,$00,$00
DB $06,$08,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$05,$07,$01,$0D,$09,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$01,$01
DB $01,$01,$01,$01,$01,$00,$01,$01,$01,$01
DB $01,$00,$00,$00,$06,$08,$00,$0D,$09,$00
DB $00,$00,$00,$00,$00,$00,$01,$01,$01,$01
DB $00,$00,$00,$00,$00,$00,$00,$01,$01,$00
DB $00,$00,$00,$00,$00,$00,$01,$01,$00,$0D
DB $09,$00,$00,$00,$00,$00,$00,$00,$00,$00
DB $00,$00,$00,$00,$00,$00,$00,$00,$01,$00
DB $00,$00,$00,$00,$00,$00,$01,$01,$01,$00
DB $00,$0D,$0A,$0B,$0B,$0B,$0B,$0B,$0B,$0B
DB $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
DB $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
DB $0B,$0B,$0B,$0C
