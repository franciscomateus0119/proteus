#define g0    RA0_bit
#define g45   RA1_bit
#define g90   RA2_bit
#define g120  RA3_bit
#define g180  RA4_bit
#define servo RB0_bit

void 0_graus(){
    servo = 1;
    delay_us(500);
    servo = 0;
    delay_us(19500);
}
void 45_graus(){
    servo = 0x00;
    delay_us(18760);
    servo = 0x01;
    delay_us(1240);
}
void 90_graus(){
    servo = 0x00;
    delay_us(18510);
    servo = 0x01;
    delay_us(1490);
}
void 120_graus(){
    servo = 0x00;
    delay_us(18350);
    servo = 0x01;
    delay_us(1650);
}
void 180_graus(){
    servo = 0x00;
    delay_us(17000);
    servo = 0x01;
    delay_us(3000);
}

void 0_graus();
void 45_graus();
void 90_graus();
void 90_graus();
void 90_graus();

void main(){
    ADCON1 = 0x0F;
    TRISA = 0b00001111;
    TRISB = 0b00000000;
    PORTA = 0b00001111;
    PORTB = 0b00000000;
         while(1){
          if(g0 == 1 && g90 == 0 && g120 == 0 && g180 == 0 && g45 == 0 )
          {
          servo_0();
          }
          else if(g45 == 1 && g90 == 0 && g120 == 0 && g180 == 0 && g0 == 0)
          {
          servo_45();
          }
          else if (g90 == 1 && g120 == 0 && g180 == 0 && g0 == 0 && g45 == 0)
          {
          servo_90();
          }
          else if(g120 == 1 && g180 == 0 && g0 == 0 && g45 == 0 && g90 == 0)
          {
          servo_120();
          }
          else if(g180 == 1 && g0 == 0 && g45 == 0 && g90 == 0 && g120 == 0)
          {
          servo_180();
          }
        }
}
=
