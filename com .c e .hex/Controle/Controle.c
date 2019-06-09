void configura_PIC(){
     ADCON1 = 0x0F;
     TRISA = 0b00000011;
     TRISC = 0b00000000;
     PORTA = 0b00000011;
     PORTC = 0b00000000;
}

void padrao1(){
     RC0_bit = 1;
     delay_us(2400);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(1200);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(1200);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(600);
     RC0_bit = 1;
     delay_us(600);
     RC0_bit = 0;
     delay_us(3600);
}

void padrao2(){
     RC1_bit = 1;
     delay_us(3000);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(1200);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(1200);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(1200);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(1200);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(1200);
     RC1_bit = 0;
     delay_us(600);
     RC1_bit = 1;
     delay_us(600);
     RC1_bit = 0;
     delay_us(600);

}

void main() {
     configura_PIC();
     while(1){
              if (RA0_bit == 1 && RA1_bit == 0){
                  padrao1();
              }
              else if(RA0_bit == 0 && RA1_bit == 1){
                   padrao2();
              }
     }
}