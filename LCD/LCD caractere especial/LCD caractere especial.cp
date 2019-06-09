#line 1 "C:/Users/Matheus/Desktop/LCD Vitu/Tentativa 2/LCD caractere especial.c"
sbit LCD_RS at RD3_bit;
sbit LCD_EN at RD2_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D4 at RD4_bit;

sbit LCD_RS_Direction at TRISD3_bit;
sbit LCD_EN_Direction at TRISD2_bit;
sbit LCD_D7_Direction at TRISD7_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D4_Direction at TRISD4_bit;

const char character0[] = {0,0,17,25,21,19,17,0};
const char character1[] = {29,23,14,17,17,31,17,0};
const char character2[] = {0,0,14,17,17,17,14,0};
const char character3[] = {0,0,17,17,17,10,4,0};
const char character4[] = {0,0,14,17,17,31,17,0};
const char character5[] = {0,0,31,4,4,4,31,0};
const char character6[] = {0,0,30,17,17,17,30,0};
const char character7[] = {0,0,31,17,23,18,17,0};

void CustomChar0(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(64);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character0[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 0);
}

void CustomChar1(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(72);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character1[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 1);
}

void CustomChar2(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(80);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character2[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 2);
}

void CustomChar3(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(88);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character3[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 3);
}

void CustomChar4(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(96);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character4[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 4);
}

void CustomChar5(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(104);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character5[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 5);
}

void CustomChar6(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(112);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character6[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 6);
}

void CustomChar7(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(120);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character7[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 7);
}


void main() {
 TRISD = 0x00;
 PORTD = 0x00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 while(1){
 CustomChar0(1,1);
 CustomChar1(1,2);
 CustomChar2(1,3);
 CustomChar3(1,5);
 CustomChar4(1,6);
 CustomChar5(1,7);
 CustomChar6(1,9);
 CustomChar4(1,10);
 CustomChar7(1,11);
 CustomChar0(1,13);
 CustomChar1(1,14);
 CustomChar2(1,15);

 }



}
