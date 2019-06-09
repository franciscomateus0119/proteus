
_main:

;LCD com 4 bits.c,17 :: 		void main() {
;LCD com 4 bits.c,18 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;LCD com 4 bits.c,19 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LCD com 4 bits.c,20 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;LCD com 4 bits.c,21 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD com 4 bits.c,22 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD com 4 bits.c,23 :: 		while(1){
L_main0:
;LCD com 4 bits.c,24 :: 		Lcd_Out(1, 3, "Francisco");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_LCD_32com_324_32bits+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_LCD_32com_324_32bits+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD com 4 bits.c,25 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main2:
	DECFSZ      R13, 1, 1
	BRA         L_main2
	DECFSZ      R12, 1, 1
	BRA         L_main2
	DECFSZ      R11, 1, 1
	BRA         L_main2
	NOP
	NOP
;LCD com 4 bits.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD com 4 bits.c,27 :: 		Lcd_Out(1, 3, "Mateus");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_LCD_32com_324_32bits+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_LCD_32com_324_32bits+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD com 4 bits.c,28 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;LCD com 4 bits.c,29 :: 		}
	GOTO        L_main0
;LCD com 4 bits.c,33 :: 		}
	GOTO        $+0
; end of _main
