
_CustomChar0:

;LCD caractere especial.c,24 :: 		void CustomChar0(char pos_row, char pos_char) {
;LCD caractere especial.c,26 :: 		Lcd_Cmd(64);
	MOVLW       64
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,27 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
	CLRF        CustomChar0_i_L0+0 
L_CustomChar00:
	MOVF        CustomChar0_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar01
	MOVLW       _character0+0
	ADDWF       CustomChar0_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character0+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character0+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar0_i_L0+0, 1 
	GOTO        L_CustomChar00
L_CustomChar01:
;LCD caractere especial.c,28 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,29 :: 		Lcd_Chr(pos_row, pos_char, 0);
	MOVF        FARG_CustomChar0_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar0_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	CLRF        FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,30 :: 		}
	RETURN      0
; end of _CustomChar0

_CustomChar1:

;LCD caractere especial.c,32 :: 		void CustomChar1(char pos_row, char pos_char) {
;LCD caractere especial.c,34 :: 		Lcd_Cmd(72);
	MOVLW       72
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,35 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
	CLRF        CustomChar1_i_L0+0 
L_CustomChar13:
	MOVF        CustomChar1_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar14
	MOVLW       _character1+0
	ADDWF       CustomChar1_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character1+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character1+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar1_i_L0+0, 1 
	GOTO        L_CustomChar13
L_CustomChar14:
;LCD caractere especial.c,36 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,37 :: 		Lcd_Chr(pos_row, pos_char, 1);
	MOVF        FARG_CustomChar1_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar1_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,38 :: 		}
	RETURN      0
; end of _CustomChar1

_CustomChar2:

;LCD caractere especial.c,40 :: 		void CustomChar2(char pos_row, char pos_char) {
;LCD caractere especial.c,42 :: 		Lcd_Cmd(80);
	MOVLW       80
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,43 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
	CLRF        CustomChar2_i_L0+0 
L_CustomChar26:
	MOVF        CustomChar2_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar27
	MOVLW       _character2+0
	ADDWF       CustomChar2_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character2+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character2+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar2_i_L0+0, 1 
	GOTO        L_CustomChar26
L_CustomChar27:
;LCD caractere especial.c,44 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,45 :: 		Lcd_Chr(pos_row, pos_char, 2);
	MOVF        FARG_CustomChar2_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar2_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,46 :: 		}
	RETURN      0
; end of _CustomChar2

_CustomChar3:

;LCD caractere especial.c,48 :: 		void CustomChar3(char pos_row, char pos_char) {
;LCD caractere especial.c,50 :: 		Lcd_Cmd(88);
	MOVLW       88
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,51 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
	CLRF        CustomChar3_i_L0+0 
L_CustomChar39:
	MOVF        CustomChar3_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar310
	MOVLW       _character3+0
	ADDWF       CustomChar3_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character3+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character3+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar3_i_L0+0, 1 
	GOTO        L_CustomChar39
L_CustomChar310:
;LCD caractere especial.c,52 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,53 :: 		Lcd_Chr(pos_row, pos_char, 3);
	MOVF        FARG_CustomChar3_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar3_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       3
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,54 :: 		}
	RETURN      0
; end of _CustomChar3

_CustomChar4:

;LCD caractere especial.c,56 :: 		void CustomChar4(char pos_row, char pos_char) {
;LCD caractere especial.c,58 :: 		Lcd_Cmd(96);
	MOVLW       96
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,59 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
	CLRF        CustomChar4_i_L0+0 
L_CustomChar412:
	MOVF        CustomChar4_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar413
	MOVLW       _character4+0
	ADDWF       CustomChar4_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character4+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character4+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar4_i_L0+0, 1 
	GOTO        L_CustomChar412
L_CustomChar413:
;LCD caractere especial.c,60 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,61 :: 		Lcd_Chr(pos_row, pos_char, 4);
	MOVF        FARG_CustomChar4_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar4_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       4
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,62 :: 		}
	RETURN      0
; end of _CustomChar4

_CustomChar5:

;LCD caractere especial.c,64 :: 		void CustomChar5(char pos_row, char pos_char) {
;LCD caractere especial.c,66 :: 		Lcd_Cmd(104);
	MOVLW       104
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,67 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
	CLRF        CustomChar5_i_L0+0 
L_CustomChar515:
	MOVF        CustomChar5_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar516
	MOVLW       _character5+0
	ADDWF       CustomChar5_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character5+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character5+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar5_i_L0+0, 1 
	GOTO        L_CustomChar515
L_CustomChar516:
;LCD caractere especial.c,68 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,69 :: 		Lcd_Chr(pos_row, pos_char, 5);
	MOVF        FARG_CustomChar5_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar5_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       5
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,70 :: 		}
	RETURN      0
; end of _CustomChar5

_CustomChar6:

;LCD caractere especial.c,72 :: 		void CustomChar6(char pos_row, char pos_char) {
;LCD caractere especial.c,74 :: 		Lcd_Cmd(112);
	MOVLW       112
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,75 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
	CLRF        CustomChar6_i_L0+0 
L_CustomChar618:
	MOVF        CustomChar6_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar619
	MOVLW       _character6+0
	ADDWF       CustomChar6_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character6+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character6+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar6_i_L0+0, 1 
	GOTO        L_CustomChar618
L_CustomChar619:
;LCD caractere especial.c,76 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,77 :: 		Lcd_Chr(pos_row, pos_char, 6);
	MOVF        FARG_CustomChar6_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar6_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       6
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,78 :: 		}
	RETURN      0
; end of _CustomChar6

_CustomChar7:

;LCD caractere especial.c,80 :: 		void CustomChar7(char pos_row, char pos_char) {
;LCD caractere especial.c,82 :: 		Lcd_Cmd(120);
	MOVLW       120
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,83 :: 		for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
	CLRF        CustomChar7_i_L0+0 
L_CustomChar721:
	MOVF        CustomChar7_i_L0+0, 0 
	SUBLW       7
	BTFSS       STATUS+0, 0 
	GOTO        L_CustomChar722
	MOVLW       _character7+0
	ADDWF       CustomChar7_i_L0+0, 0 
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(_character7+0)
	MOVWF       TBLPTRH 
	MOVLW       0
	ADDWFC      TBLPTRH, 1 
	MOVLW       higher_addr(_character7+0)
	MOVWF       TBLPTRU 
	MOVLW       0
	ADDWFC      TBLPTRU, 1 
	TBLRD*+
	MOVFF       TABLAT+0, FARG_Lcd_Chr_CP_out_char+0
	CALL        _Lcd_Chr_CP+0, 0
	INCF        CustomChar7_i_L0+0, 1 
	GOTO        L_CustomChar721
L_CustomChar722:
;LCD caractere especial.c,84 :: 		Lcd_Cmd(_LCD_RETURN_HOME);
	MOVLW       2
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,85 :: 		Lcd_Chr(pos_row, pos_char, 7);
	MOVF        FARG_CustomChar7_pos_row+0, 0 
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        FARG_CustomChar7_pos_char+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVLW       7
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;LCD caractere especial.c,86 :: 		}
	RETURN      0
; end of _CustomChar7

_main:

;LCD caractere especial.c,89 :: 		void main() {
;LCD caractere especial.c,90 :: 		TRISD = 0x00;
	CLRF        TRISD+0 
;LCD caractere especial.c,91 :: 		PORTD = 0x00;
	CLRF        PORTD+0 
;LCD caractere especial.c,92 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;LCD caractere especial.c,93 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,94 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;LCD caractere especial.c,96 :: 		while(1){
L_main24:
;LCD caractere especial.c,97 :: 		CustomChar0(1,1);
	MOVLW       1
	MOVWF       FARG_CustomChar0_pos_row+0 
	MOVLW       1
	MOVWF       FARG_CustomChar0_pos_char+0 
	CALL        _CustomChar0+0, 0
;LCD caractere especial.c,98 :: 		CustomChar1(1,2);
	MOVLW       1
	MOVWF       FARG_CustomChar1_pos_row+0 
	MOVLW       2
	MOVWF       FARG_CustomChar1_pos_char+0 
	CALL        _CustomChar1+0, 0
;LCD caractere especial.c,99 :: 		CustomChar2(1,3);
	MOVLW       1
	MOVWF       FARG_CustomChar2_pos_row+0 
	MOVLW       3
	MOVWF       FARG_CustomChar2_pos_char+0 
	CALL        _CustomChar2+0, 0
;LCD caractere especial.c,100 :: 		CustomChar3(1,5);
	MOVLW       1
	MOVWF       FARG_CustomChar3_pos_row+0 
	MOVLW       5
	MOVWF       FARG_CustomChar3_pos_char+0 
	CALL        _CustomChar3+0, 0
;LCD caractere especial.c,101 :: 		CustomChar4(1,6);
	MOVLW       1
	MOVWF       FARG_CustomChar4_pos_row+0 
	MOVLW       6
	MOVWF       FARG_CustomChar4_pos_char+0 
	CALL        _CustomChar4+0, 0
;LCD caractere especial.c,102 :: 		CustomChar5(1,7);
	MOVLW       1
	MOVWF       FARG_CustomChar5_pos_row+0 
	MOVLW       7
	MOVWF       FARG_CustomChar5_pos_char+0 
	CALL        _CustomChar5+0, 0
;LCD caractere especial.c,103 :: 		CustomChar6(1,9);
	MOVLW       1
	MOVWF       FARG_CustomChar6_pos_row+0 
	MOVLW       9
	MOVWF       FARG_CustomChar6_pos_char+0 
	CALL        _CustomChar6+0, 0
;LCD caractere especial.c,104 :: 		CustomChar4(1,10);
	MOVLW       1
	MOVWF       FARG_CustomChar4_pos_row+0 
	MOVLW       10
	MOVWF       FARG_CustomChar4_pos_char+0 
	CALL        _CustomChar4+0, 0
;LCD caractere especial.c,105 :: 		CustomChar7(1,11);
	MOVLW       1
	MOVWF       FARG_CustomChar7_pos_row+0 
	MOVLW       11
	MOVWF       FARG_CustomChar7_pos_char+0 
	CALL        _CustomChar7+0, 0
;LCD caractere especial.c,106 :: 		CustomChar0(1,13);
	MOVLW       1
	MOVWF       FARG_CustomChar0_pos_row+0 
	MOVLW       13
	MOVWF       FARG_CustomChar0_pos_char+0 
	CALL        _CustomChar0+0, 0
;LCD caractere especial.c,107 :: 		CustomChar1(1,14);
	MOVLW       1
	MOVWF       FARG_CustomChar1_pos_row+0 
	MOVLW       14
	MOVWF       FARG_CustomChar1_pos_char+0 
	CALL        _CustomChar1+0, 0
;LCD caractere especial.c,108 :: 		CustomChar2(1,15);
	MOVLW       1
	MOVWF       FARG_CustomChar2_pos_row+0 
	MOVLW       15
	MOVWF       FARG_CustomChar2_pos_char+0 
	CALL        _CustomChar2+0, 0
;LCD caractere especial.c,110 :: 		}
	GOTO        L_main24
;LCD caractere especial.c,114 :: 		}
	GOTO        $+0
; end of _main
