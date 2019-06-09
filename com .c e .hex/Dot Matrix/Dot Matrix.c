#include <p18f4520.h>
void Inicializar(){
     TRISC = 0b00000000;
     PORTC = 0b00000000;
     TRISD = 0b00000000;
     PORTD = 0b00000000;
}

void Padrao(){
     PORTC = 0b11111111;
     PORTD = 0b00000000;

     PORTC = 0b00000001;
     PORTD = 0b00000010;
     PORTC = 0b11001001;
     PORTD = 0b00011110;
     PORTC = 0b11111001;
     PORTD = 0b01100000;

}
void main(){
     Inicializar();
     while(1){
              Padrao();
              }

}
