#line 1 "C:/Users/Matheus/Desktop/LCD Vitu/tentativa 3/LCD keypad.c"
#pragma config WDT = OFF
#line 2 "C:/Users/Matheus/Desktop/LCD Vitu/tentativa 3/LCD keypad.c"
sbit LCD_RS at RB3_bit;
sbit LCD_EN at RB2_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;

sbit LCD_RS_Direction at TRISB3_bit;
sbit LCD_EN_Direction at TRISB2_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;


char *texto = "00:00:00";
int cont=0,i=0,j=0,k=0,dhor=0,uhor=0,dmin=0,umin=0,dsec=0,usec=0;
const char character[] = {4,14,21,4,4,4,4,0};
void CustomChar(char pos_row, char pos_char) {
 char i;
 Lcd_Cmd(120);
 for (i = 0; i<=7; i++) Lcd_Chr_CP(character[i]);
 Lcd_Cmd(_LCD_RETURN_HOME);
 Lcd_Chr(pos_row, pos_char, 7);
}

void linhas(int entrada){
 switch (entrada){
 case 0b01000001:
 if (i==0){
 Lcd_Out(2, 3, " ");
 CustomChar(2,4);
 }
 if (i==1){
 Lcd_Out(2, 4, " ");
 CustomChar(2,6);
 }
 if (i==2){
 Lcd_Out(2, 6, " ");
 CustomChar(2,7);
 }
 if (i==3){
 Lcd_Out(2, 7, " ");
 CustomChar(2,3);
 }
 Delay_ms(100);
 i++;
 if (i==4){
 i = 0;
 }
 Delay_ms(100);
 break;
 case 0b01000100:
 dhor=0;
 uhor=0;
 dmin=0;
 umin=0;
 dsec=0;
 usec=0;
 break;
 case 0b01000010:
 if (i==0){
 dhor = 0;
 }
 if (i==1){
 uhor = 0;
 }
 if (i==2){
 dmin = 0;
 }
 if (i==3){
 umin = 0;
 }
 break;
 case 0b00001001:

 if (i==0){
 dhor = 1;
 }
 if (i==1){
 uhor = 1;
 }
 if (i==2){
 dmin = 1;
 }
 if (i==3){
 umin = 1;
 }
 break;
 case 0b00001010:
 if (i==0){
 dhor = 2;
 }
 if (i==1){
 uhor = 2;
 }
 if (i==2){
 dmin = 2;
 }
 if (i==3){
 umin = 2;
 }
 break;
 case 0b00001100:
 if (i==1){
 uhor = 3;
 }
 if (i==2){
 dmin = 3;
 }
 if (i==3){
 umin = 3;
 }
 break;
 case 0b00010001:
 if (i==1 && dhor<=1){
 uhor = 4;
 }
 if (i==2){
 dmin = 4;
 }
 if (i==3){
 umin = 4;
 }
 break;
 case 0b00010010:
 if (i==1 && dhor<=1){
 uhor = 5;
 }
 if (i==2){
 dmin = 5;
 }
 if (i==3){
 umin = 5;
 }
 break;
 case 0b00010100:
 if (i==1 && dhor<=1){
 uhor = 6;
 }
 if (i==3){
 umin = 6;
 }
 break;
 case 0b00100001:
 if (i==1 && dhor<=1){
 uhor = 7;
 }
 if (i==3){
 umin = 7;
 }
 break;
 case 0b00100010:
 if (i==1 && dhor<=1){
 uhor = 8;
 }
 if (i==3){
 umin = 8;
 }
 break;
 case 0b00100100:
 if (i==1 && dhor<=1){
 uhor = 9;
 }
 if (i==3){
 umin = 9;
 }
 break;
 }
}

void colunas(){
 PORTD = 0b00000001;
 Delay_us(1000);
 linhas(PORTD);
 PORTD = 0b00000010;
 Delay_us(1000);
 linhas(PORTD);
 PORTD = 0b00000100;
 Delay_us(1000);
 linhas(PORTD);
}

void Clock(){

 if(usec==10){
 usec=0;
 dsec++;
 if(dsec==6){
 dsec=0;
 umin++;
 if(umin==10){
 umin=0;
 dmin++;
 if(dmin==6){
 dmin=0;
 uhor++;
 if(uhor==10 && dhor<2){
 uhor=0;
 dhor++;
 }
 }

 }
 }
 }

}

void main() {
 ADCON1 = 0xFF;
 TRISB = 0b00000000;
 PORTB = 0x00;
 TRISD = 0b01111000;
 PORTD = 0x00;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);
 CustomChar(2,3);
 while(1){
 Lcd_Out(1, 3, texto);
 if(dhor==2 && uhor==3 && dmin==5 && umin==9 && dsec==5 && usec==9){
 dhor=0;
 uhor=0;
 dmin=0;
 umin=0;
 dsec=0;
 usec=0;
 usec--;

 }
 delay_ms(1000);
 usec++;
 Clock();
 colunas();
 texto[6] = dsec + '0';
 texto[7] = usec + '0';
 texto[3] = dmin + '0';
 texto[4] = umin + '0';
 texto[0] = dhor + '0';
 texto[1] = uhor + '0';




 }



}
