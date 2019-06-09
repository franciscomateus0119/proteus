void Padrao_Lento() {
     PORTC = 0b00100001;
     delay_ms(8000);
     PORTC = 0b00010001;
     delay_ms(3000);
     PORTC = 0b00001001;
     delay_ms(1000);
     PORTC = 0b00001100;
     delay_ms(8000);
     PORTC = 0b00001010;
     delay_ms(3000);
     PORTC = 0b00001001;
     delay_ms(1000);
}

void Padrao_Rapido() {
     PORTC = 0b00100001;
     delay_ms(5000);
     PORTC = 0b00010001;
     delay_ms(3000);
     PORTC = 0b00001001;
     delay_ms(1000);
     PORTC = 0b00001100;
     delay_ms(5000);
     PORTC = 0b00001010;
     delay_ms(3000);
     PORTC = 0b00001001;
     delay_ms(1000);
}

void Inicializar(){
     TRISC = 0b10000000;
     PORTC = 0b00000000;
}

void main() {
     Inicializar();
     while(1){
              if (RC7_bit == 0){
                  Padrao_Lento();
              }else{
                  Padrao_Rapido();
              }
     }
}
