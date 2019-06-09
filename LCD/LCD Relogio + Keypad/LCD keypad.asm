
_CustomChar:

;LCD keypad.c,20 :: 		void CustomChar(char pos_row, char pos_char) {
;LCD keypad.c,22 :: 		Lcd_Cmd(120);
	MOVLW       120
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD keypad.c,23 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
	CLRF        CustomChar_i_L0+0 
L_CustomChar0:
	MOVF        CustomChar_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar1
	MOVLW       _character+0
	ADDWF       CustomChar_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar_i_L0+0, 1 
	GOTO        L_CustomChar0
L_CustomChar1:
;LCD keypad.c,24 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD keypad.c,25 :: 		Lcd_Chr(pos_row, pos_char, 7);
	MOVF        FARG_CustomChar_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD keypad.c,26 :: 		}
	RETURN      0
; end of _CustomChar

_linhas:

;LCD keypad.c,28 :: 		void linhas(int entrada){
;LCD keypad.c,29 :: 		switch (entrada){
	GOTO        L_linhas3
;LCD keypad.c,30 :: 		case 0b01000001:
L_linhas5:
;LCD keypad.c,31 :: 		if (i==0){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas89
	MOVLW       0
	XORWF       _i+0, 0 
L__linhas89:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas6
;LCD keypad.c,32 :: 		Lcd_Out(2, 3, " ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_LCD_32keypad+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_LCD_32keypad+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD keypad.c,33 :: 		CustomChar(2,4);
	MOVLW       2
	MOVWF       FARG_CustomChar_pos_row+0 
	MOVLW       4
	MOVWF       FARG_CustomChar_pos_char+0 
	CALL        _CustomChar+0, 0
;LCD keypad.c,34 :: 		}
L_linhas6:
;LCD keypad.c,35 :: 		if (i==1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas90
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas90:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas7
;LCD keypad.c,36 :: 		Lcd_Out(2, 4, " ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_LCD_32keypad+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_LCD_32keypad+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD keypad.c,37 :: 		CustomChar(2,6);
	MOVLW       2
	MOVWF       FARG_CustomChar_pos_row+0 
	MOVLW       6
	MOVWF       FARG_CustomChar_pos_char+0 
	CALL        _CustomChar+0, 0
;LCD keypad.c,38 :: 		}
L_linhas7:
;LCD keypad.c,39 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas91
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas91:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas8
;LCD keypad.c,40 :: 		Lcd_Out(2, 6, " ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_LCD_32keypad+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_LCD_32keypad+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD keypad.c,41 :: 		CustomChar(2,7);
	MOVLW       2
	MOVWF       FARG_CustomChar_pos_row+0 
	MOVLW       7
	MOVWF       FARG_CustomChar_pos_char+0 
	CALL        _CustomChar+0, 0
;LCD keypad.c,42 :: 		}
L_linhas8:
;LCD keypad.c,43 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas92
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas92:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas9
;LCD keypad.c,44 :: 		Lcd_Out(2, 7, " ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr5_LCD_32keypad+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr5_LCD_32keypad+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD keypad.c,45 :: 		CustomChar(2,3);
	MOVLW       2
	MOVWF       FARG_CustomChar_pos_row+0 
	MOVLW       3
	MOVWF       FARG_CustomChar_pos_char+0 
	CALL        _CustomChar+0, 0
;LCD keypad.c,46 :: 		}
L_linhas9:
;LCD keypad.c,47 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_linhas10:
	DECFSZ      R13, 1, 1
	BRA         L_linhas10
	DECFSZ      R12, 1, 1
	BRA         L_linhas10
	DECFSZ      R11, 1, 1
	BRA         L_linhas10
	NOP
;LCD keypad.c,48 :: 		i++;
	INFSNZ      _i+0, 1 
	INCF        _i+1, 1 
;LCD keypad.c,49 :: 		if (i==4){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas93
	MOVLW       4
	XORWF       _i+0, 0 
L__linhas93:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas11
;LCD keypad.c,50 :: 		i = 0;
	CLRF        _i+0 
	CLRF        _i+1 
;LCD keypad.c,51 :: 		}
L_linhas11:
;LCD keypad.c,52 :: 		Delay_ms(100);
	MOVLW       2
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       186
	MOVWF       R13, 0
L_linhas12:
	DECFSZ      R13, 1, 1
	BRA         L_linhas12
	DECFSZ      R12, 1, 1
	BRA         L_linhas12
	DECFSZ      R11, 1, 1
	BRA         L_linhas12
	NOP
;LCD keypad.c,53 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,54 :: 		case 0b01000100:
L_linhas13:
;LCD keypad.c,55 :: 		dhor=0;
	CLRF        _dhor+0 
	CLRF        _dhor+1 
;LCD keypad.c,56 :: 		uhor=0;
	CLRF        _uhor+0 
	CLRF        _uhor+1 
;LCD keypad.c,57 :: 		dmin=0;
	CLRF        _dmin+0 
	CLRF        _dmin+1 
;LCD keypad.c,58 :: 		umin=0;
	CLRF        _umin+0 
	CLRF        _umin+1 
;LCD keypad.c,59 :: 		dsec=0;
	CLRF        _dsec+0 
	CLRF        _dsec+1 
;LCD keypad.c,60 :: 		usec=0;
	CLRF        _usec+0 
	CLRF        _usec+1 
;LCD keypad.c,61 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,62 :: 		case 0b01000010:
L_linhas14:
;LCD keypad.c,63 :: 		if (i==0){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas94
	MOVLW       0
	XORWF       _i+0, 0 
L__linhas94:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas15
;LCD keypad.c,64 :: 		dhor = 0;
	CLRF        _dhor+0 
	CLRF        _dhor+1 
;LCD keypad.c,65 :: 		}
L_linhas15:
;LCD keypad.c,66 :: 		if (i==1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas95
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas95:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas16
;LCD keypad.c,67 :: 		uhor = 0;
	CLRF        _uhor+0 
	CLRF        _uhor+1 
;LCD keypad.c,68 :: 		}
L_linhas16:
;LCD keypad.c,69 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas96
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas96:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas17
;LCD keypad.c,70 :: 		dmin = 0;
	CLRF        _dmin+0 
	CLRF        _dmin+1 
;LCD keypad.c,71 :: 		}
L_linhas17:
;LCD keypad.c,72 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas97
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas97:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas18
;LCD keypad.c,73 :: 		umin = 0;
	CLRF        _umin+0 
	CLRF        _umin+1 
;LCD keypad.c,74 :: 		}
L_linhas18:
;LCD keypad.c,75 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,76 :: 		case 0b00001001:
L_linhas19:
;LCD keypad.c,78 :: 		if (i==0){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas98
	MOVLW       0
	XORWF       _i+0, 0 
L__linhas98:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas20
;LCD keypad.c,79 :: 		dhor = 1;
	MOVLW       1
	MOVWF       _dhor+0 
	MOVLW       0
	MOVWF       _dhor+1 
;LCD keypad.c,80 :: 		}
L_linhas20:
;LCD keypad.c,81 :: 		if (i==1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas99
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas99:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas21
;LCD keypad.c,82 :: 		uhor = 1;
	MOVLW       1
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,83 :: 		}
L_linhas21:
;LCD keypad.c,84 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas100
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas100:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas22
;LCD keypad.c,85 :: 		dmin = 1;
	MOVLW       1
	MOVWF       _dmin+0 
	MOVLW       0
	MOVWF       _dmin+1 
;LCD keypad.c,86 :: 		}
L_linhas22:
;LCD keypad.c,87 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas101
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas101:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas23
;LCD keypad.c,88 :: 		umin = 1;
	MOVLW       1
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,89 :: 		}
L_linhas23:
;LCD keypad.c,90 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,91 :: 		case 0b00001010:
L_linhas24:
;LCD keypad.c,92 :: 		if (i==0){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas102
	MOVLW       0
	XORWF       _i+0, 0 
L__linhas102:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas25
;LCD keypad.c,93 :: 		dhor = 2;
	MOVLW       2
	MOVWF       _dhor+0 
	MOVLW       0
	MOVWF       _dhor+1 
;LCD keypad.c,94 :: 		}
L_linhas25:
;LCD keypad.c,95 :: 		if (i==1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas103
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas103:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas26
;LCD keypad.c,96 :: 		uhor = 2;
	MOVLW       2
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,97 :: 		}
L_linhas26:
;LCD keypad.c,98 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas104
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas104:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas27
;LCD keypad.c,99 :: 		dmin = 2;
	MOVLW       2
	MOVWF       _dmin+0 
	MOVLW       0
	MOVWF       _dmin+1 
;LCD keypad.c,100 :: 		}
L_linhas27:
;LCD keypad.c,101 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas105
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas105:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas28
;LCD keypad.c,102 :: 		umin = 2;
	MOVLW       2
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,103 :: 		}
L_linhas28:
;LCD keypad.c,104 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,105 :: 		case 0b00001100:
L_linhas29:
;LCD keypad.c,106 :: 		if (i==1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas106
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas106:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas30
;LCD keypad.c,107 :: 		uhor = 3;
	MOVLW       3
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,108 :: 		}
L_linhas30:
;LCD keypad.c,109 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas107
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas107:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas31
;LCD keypad.c,110 :: 		dmin = 3;
	MOVLW       3
	MOVWF       _dmin+0 
	MOVLW       0
	MOVWF       _dmin+1 
;LCD keypad.c,111 :: 		}
L_linhas31:
;LCD keypad.c,112 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas108
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas108:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas32
;LCD keypad.c,113 :: 		umin = 3;
	MOVLW       3
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,114 :: 		}
L_linhas32:
;LCD keypad.c,115 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,116 :: 		case 0b00010001:
L_linhas33:
;LCD keypad.c,117 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas109
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas109:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas36
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas110
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas110:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas36
L__linhas86:
;LCD keypad.c,118 :: 		uhor = 4;
	MOVLW       4
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,119 :: 		}
L_linhas36:
;LCD keypad.c,120 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas111
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas111:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas37
;LCD keypad.c,121 :: 		dmin = 4;
	MOVLW       4
	MOVWF       _dmin+0 
	MOVLW       0
	MOVWF       _dmin+1 
;LCD keypad.c,122 :: 		}
L_linhas37:
;LCD keypad.c,123 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas112
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas112:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas38
;LCD keypad.c,124 :: 		umin = 4;
	MOVLW       4
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,125 :: 		}
L_linhas38:
;LCD keypad.c,126 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,127 :: 		case 0b00010010:
L_linhas39:
;LCD keypad.c,128 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas113
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas113:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas42
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas114
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas114:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas42
L__linhas85:
;LCD keypad.c,129 :: 		uhor = 5;
	MOVLW       5
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,130 :: 		}
L_linhas42:
;LCD keypad.c,131 :: 		if (i==2){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas115
	MOVLW       2
	XORWF       _i+0, 0 
L__linhas115:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas43
;LCD keypad.c,132 :: 		dmin = 5;
	MOVLW       5
	MOVWF       _dmin+0 
	MOVLW       0
	MOVWF       _dmin+1 
;LCD keypad.c,133 :: 		}
L_linhas43:
;LCD keypad.c,134 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas116
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas116:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas44
;LCD keypad.c,135 :: 		umin = 5;
	MOVLW       5
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,136 :: 		}
L_linhas44:
;LCD keypad.c,137 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,138 :: 		case 0b00010100:
L_linhas45:
;LCD keypad.c,139 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas117
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas117:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas48
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas118
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas118:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas48
L__linhas84:
;LCD keypad.c,140 :: 		uhor = 6;
	MOVLW       6
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,141 :: 		}
L_linhas48:
;LCD keypad.c,142 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas119
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas119:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas49
;LCD keypad.c,143 :: 		umin = 6;
	MOVLW       6
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,144 :: 		}
L_linhas49:
;LCD keypad.c,145 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,146 :: 		case 0b00100001:
L_linhas50:
;LCD keypad.c,147 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas120
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas120:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas53
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas121
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas121:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas53
L__linhas83:
;LCD keypad.c,148 :: 		uhor = 7;
	MOVLW       7
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,149 :: 		}
L_linhas53:
;LCD keypad.c,150 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas122
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas122:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas54
;LCD keypad.c,151 :: 		umin = 7;
	MOVLW       7
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,152 :: 		}
L_linhas54:
;LCD keypad.c,153 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,154 :: 		case 0b00100010:
L_linhas55:
;LCD keypad.c,155 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas123
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas123:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas58
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas124
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas124:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas58
L__linhas82:
;LCD keypad.c,156 :: 		uhor = 8;
	MOVLW       8
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,157 :: 		}
L_linhas58:
;LCD keypad.c,158 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas125
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas125:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas59
;LCD keypad.c,159 :: 		umin = 8;
	MOVLW       8
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,160 :: 		}
L_linhas59:
;LCD keypad.c,161 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,162 :: 		case 0b00100100:
L_linhas60:
;LCD keypad.c,163 :: 		if (i==1 && dhor<=1){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas126
	MOVLW       1
	XORWF       _i+0, 0 
L__linhas126:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas63
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dhor+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas127
	MOVF        _dhor+0, 0 
	SUBLW       1
L__linhas127:
	BTFSS       STATUS+0, 0 
	GOTO        L_linhas63
L__linhas81:
;LCD keypad.c,164 :: 		uhor = 9;
	MOVLW       9
	MOVWF       _uhor+0 
	MOVLW       0
	MOVWF       _uhor+1 
;LCD keypad.c,165 :: 		}
L_linhas63:
;LCD keypad.c,166 :: 		if (i==3){
	MOVLW       0
	XORWF       _i+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas128
	MOVLW       3
	XORWF       _i+0, 0 
L__linhas128:
	BTFSS       STATUS+0, 2 
	GOTO        L_linhas64
;LCD keypad.c,167 :: 		umin = 9;
	MOVLW       9
	MOVWF       _umin+0 
	MOVLW       0
	MOVWF       _umin+1 
;LCD keypad.c,168 :: 		}
L_linhas64:
;LCD keypad.c,169 :: 		break;
	GOTO        L_linhas4
;LCD keypad.c,170 :: 		}
L_linhas3:
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas129
	MOVLW       65
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas129:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas5
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas130
	MOVLW       68
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas130:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas13
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas131
	MOVLW       66
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas131:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas14
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas132
	MOVLW       9
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas132:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas19
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas133
	MOVLW       10
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas133:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas24
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas134
	MOVLW       12
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas134:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas29
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas135
	MOVLW       17
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas135:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas33
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas136
	MOVLW       18
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas136:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas39
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas137
	MOVLW       20
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas137:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas45
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas138
	MOVLW       33
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas138:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas50
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas139
	MOVLW       34
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas139:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas55
	MOVLW       0
	XORWF       FARG_linhas_entrada+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__linhas140
	MOVLW       36
	XORWF       FARG_linhas_entrada+0, 0 
L__linhas140:
	BTFSC       STATUS+0, 2 
	GOTO        L_linhas60
L_linhas4:
;LCD keypad.c,171 :: 		}
	RETURN      0
; end of _linhas

_colunas:

;LCD keypad.c,173 :: 		void colunas(){
;LCD keypad.c,174 :: 		PORTD = 0b00000001;
	MOVLW       1
	MOVWF       PORTD+0 
;LCD keypad.c,175 :: 		Delay_us(1000);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_colunas65:
	DECFSZ      R13, 1, 1
	BRA         L_colunas65
	DECFSZ      R12, 1, 1
	BRA         L_colunas65
	NOP
	NOP
;LCD keypad.c,176 :: 		linhas(PORTD);
	MOVF        PORTD+0, 0 
	MOVWF       FARG_linhas_entrada+0 
	MOVLW       0
	MOVWF       FARG_linhas_entrada+1 
	CALL        _linhas+0, 0
;LCD keypad.c,177 :: 		PORTD = 0b00000010;
	MOVLW       2
	MOVWF       PORTD+0 
;LCD keypad.c,178 :: 		Delay_us(1000);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_colunas66:
	DECFSZ      R13, 1, 1
	BRA         L_colunas66
	DECFSZ      R12, 1, 1
	BRA         L_colunas66
	NOP
	NOP
;LCD keypad.c,179 :: 		linhas(PORTD);
	MOVF        PORTD+0, 0 
	MOVWF       FARG_linhas_entrada+0 
	MOVLW       0
	MOVWF       FARG_linhas_entrada+1 
	CALL        _linhas+0, 0
;LCD keypad.c,180 :: 		PORTD = 0b00000100;
	MOVLW       4
	MOVWF       PORTD+0 
;LCD keypad.c,181 :: 		Delay_us(1000);
	MOVLW       3
	MOVWF       R12, 0
	MOVLW       151
	MOVWF       R13, 0
L_colunas67:
	DECFSZ      R13, 1, 1
	BRA         L_colunas67
	DECFSZ      R12, 1, 1
	BRA         L_colunas67
	NOP
	NOP
;LCD keypad.c,182 :: 		linhas(PORTD);
	MOVF        PORTD+0, 0 
	MOVWF       FARG_linhas_entrada+0 
	MOVLW       0
	MOVWF       FARG_linhas_entrada+1 
	CALL        _linhas+0, 0
;LCD keypad.c,183 :: 		}
	RETURN      0
; end of _colunas

_Clock:

;LCD keypad.c,185 :: 		void Clock(){
;LCD keypad.c,187 :: 		if(usec==10){
	MOVLW       0
	XORWF       _usec+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock141
	MOVLW       10
	XORWF       _usec+0, 0 
L__Clock141:
	BTFSS       STATUS+0, 2 
	GOTO        L_Clock68
;LCD keypad.c,188 :: 		usec=0;
	CLRF        _usec+0 
	CLRF        _usec+1 
;LCD keypad.c,189 :: 		dsec++;
	INFSNZ      _dsec+0, 1 
	INCF        _dsec+1, 1 
;LCD keypad.c,190 :: 		if(dsec==6){
	MOVLW       0
	XORWF       _dsec+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock142
	MOVLW       6
	XORWF       _dsec+0, 0 
L__Clock142:
	BTFSS       STATUS+0, 2 
	GOTO        L_Clock69
;LCD keypad.c,191 :: 		dsec=0;
	CLRF        _dsec+0 
	CLRF        _dsec+1 
;LCD keypad.c,192 :: 		umin++;
	INFSNZ      _umin+0, 1 
	INCF        _umin+1, 1 
;LCD keypad.c,193 :: 		if(umin==10){
	MOVLW       0
	XORWF       _umin+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock143
	MOVLW       10
	XORWF       _umin+0, 0 
L__Clock143:
	BTFSS       STATUS+0, 2 
	GOTO        L_Clock70
;LCD keypad.c,194 :: 		umin=0;
	CLRF        _umin+0 
	CLRF        _umin+1 
;LCD keypad.c,195 :: 		dmin++;
	INFSNZ      _dmin+0, 1 
	INCF        _dmin+1, 1 
;LCD keypad.c,196 :: 		if(dmin==6){
	MOVLW       0
	XORWF       _dmin+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock144
	MOVLW       6
	XORWF       _dmin+0, 0 
L__Clock144:
	BTFSS       STATUS+0, 2 
	GOTO        L_Clock71
;LCD keypad.c,197 :: 		dmin=0;
	CLRF        _dmin+0 
	CLRF        _dmin+1 
;LCD keypad.c,198 :: 		uhor++;
	INFSNZ      _uhor+0, 1 
	INCF        _uhor+1, 1 
;LCD keypad.c,199 :: 		if(uhor==10 && dhor<2){
	MOVLW       0
	XORWF       _uhor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock145
	MOVLW       10
	XORWF       _uhor+0, 0 
L__Clock145:
	BTFSS       STATUS+0, 2 
	GOTO        L_Clock74
	MOVLW       128
	XORWF       _dhor+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__Clock146
	MOVLW       2
	SUBWF       _dhor+0, 0 
L__Clock146:
	BTFSC       STATUS+0, 0 
	GOTO        L_Clock74
L__Clock87:
;LCD keypad.c,200 :: 		uhor=0;
	CLRF        _uhor+0 
	CLRF        _uhor+1 
;LCD keypad.c,201 :: 		dhor++;
	INFSNZ      _dhor+0, 1 
	INCF        _dhor+1, 1 
;LCD keypad.c,202 :: 		}
L_Clock74:
;LCD keypad.c,203 :: 		}
L_Clock71:
;LCD keypad.c,205 :: 		}
L_Clock70:
;LCD keypad.c,206 :: 		}
L_Clock69:
;LCD keypad.c,207 :: 		}
L_Clock68:
;LCD keypad.c,209 :: 		}
	RETURN      0
; end of _Clock

_main:

;LCD keypad.c,211 :: 		void main() {
;LCD keypad.c,212 :: 		ADCON1 = 0xFF;
	MOVLW       255
	MOVWF       ADCON1+0 
;LCD keypad.c,213 :: 		TRISB = 0b00000000;
	CLRF        TRISB+0 
;LCD keypad.c,214 :: 		PORTB = 0x00;
	CLRF        PORTB+0 
;LCD keypad.c,215 :: 		TRISD = 0b01111000;
	MOVLW       120
	MOVWF       TRISD+0 
;LCD keypad.c,216 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LCD keypad.c,217 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;LCD keypad.c,218 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD keypad.c,219 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD keypad.c,220 :: 		CustomChar(2,3);
	MOVLW       2
	MOVWF       FARG_CustomChar_pos_row+0 
	MOVLW       3
	MOVWF       FARG_CustomChar_pos_char+0 
	CALL        _CustomChar+0, 0
;LCD keypad.c,221 :: 		while(1){
L_main75:
;LCD keypad.c,222 :: 		Lcd_Out(1, 3, texto);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Out_column+0 
	MOVF        _texto+0, 0 
	MOVWF       FARG_Lcd_Out_text+0 
	MOVF        _texto+1, 0 
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;LCD keypad.c,223 :: 		if(dhor==2 && uhor==3 && dmin==5 && umin==9 && dsec==5 && usec==9){
	MOVLW       0
	XORWF       _dhor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main147
	MOVLW       2
	XORWF       _dhor+0, 0 
L__main147:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	MOVLW       0
	XORWF       _uhor+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main148
	MOVLW       3
	XORWF       _uhor+0, 0 
L__main148:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	MOVLW       0
	XORWF       _dmin+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main149
	MOVLW       5
	XORWF       _dmin+0, 0 
L__main149:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	MOVLW       0
	XORWF       _umin+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main150
	MOVLW       9
	XORWF       _umin+0, 0 
L__main150:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	MOVLW       0
	XORWF       _dsec+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main151
	MOVLW       5
	XORWF       _dsec+0, 0 
L__main151:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
	MOVLW       0
	XORWF       _usec+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main152
	MOVLW       9
	XORWF       _usec+0, 0 
L__main152:
	BTFSS       STATUS+0, 2 
	GOTO        L_main79
L__main88:
;LCD keypad.c,224 :: 		dhor=0;
	CLRF        _dhor+0 
	CLRF        _dhor+1 
;LCD keypad.c,225 :: 		uhor=0;
	CLRF        _uhor+0 
	CLRF        _uhor+1 
;LCD keypad.c,226 :: 		dmin=0;
	CLRF        _dmin+0 
	CLRF        _dmin+1 
;LCD keypad.c,227 :: 		umin=0;
	CLRF        _umin+0 
	CLRF        _umin+1 
;LCD keypad.c,228 :: 		dsec=0;
	CLRF        _dsec+0 
	CLRF        _dsec+1 
;LCD keypad.c,229 :: 		usec=0;
	CLRF        _usec+0 
	CLRF        _usec+1 
;LCD keypad.c,230 :: 		usec--;
	MOVLW       255
	MOVWF       _usec+0 
	MOVLW       255
	MOVWF       _usec+1 
;LCD keypad.c,232 :: 		}
L_main79:
;LCD keypad.c,233 :: 		delay_ms(1000);
	MOVLW       11
	MOVWF       R11, 0
	MOVLW       38
	MOVWF       R12, 0
	MOVLW       93
	MOVWF       R13, 0
L_main80:
	DECFSZ      R13, 1, 1
	BRA         L_main80
	DECFSZ      R12, 1, 1
	BRA         L_main80
	DECFSZ      R11, 1, 1
	BRA         L_main80
	NOP
	NOP
;LCD keypad.c,234 :: 		usec++;
	INFSNZ      _usec+0, 1 
	INCF        _usec+1, 1 
;LCD keypad.c,235 :: 		Clock();
	CALL        _Clock+0, 0
;LCD keypad.c,236 :: 		colunas();
	CALL        _colunas+0, 0
;LCD keypad.c,237 :: 		texto[6] = dsec + '0';
	MOVLW       6
	ADDWF       _texto+0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      _texto+1, 0 
	MOVWF       FSR1H 
	MOVLW       48
	ADDWF       _dsec+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,238 :: 		texto[7] = usec + '0';
	MOVLW       7
	ADDWF       _texto+0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      _texto+1, 0 
	MOVWF       FSR1H 
	MOVLW       48
	ADDWF       _usec+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,239 :: 		texto[3] = dmin + '0';
	MOVLW       3
	ADDWF       _texto+0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      _texto+1, 0 
	MOVWF       FSR1H 
	MOVLW       48
	ADDWF       _dmin+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,240 :: 		texto[4] = umin + '0';
	MOVLW       4
	ADDWF       _texto+0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      _texto+1, 0 
	MOVWF       FSR1H 
	MOVLW       48
	ADDWF       _umin+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,241 :: 		texto[0] = dhor + '0';
	MOVLW       48
	ADDWF       _dhor+0, 0 
	MOVWF       R0 
	MOVFF       _texto+0, FSR1L
	MOVFF       _texto+1, FSR1H
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,242 :: 		texto[1] = uhor + '0';
	MOVLW       1
	ADDWF       _texto+0, 0 
	MOVWF       FSR1L 
	MOVLW       0
	ADDWFC      _texto+1, 0 
	MOVWF       FSR1H 
	MOVLW       48
	ADDWF       _uhor+0, 0 
	MOVWF       R0 
	MOVF        R0, 0 
	MOVWF       POSTINC1+0 
;LCD keypad.c,247 :: 		}
	GOTO        L_main75
;LCD keypad.c,251 :: 		}
	GOTO        $+0
; end of _main
