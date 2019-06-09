#include <p18f4520.h>

int i;
char a, b;

void Inicializar(void){
	TRISC = 0b00000000;
	PORTC = 0b00000000;
	TRISDbits.RD0 = 0;
	TRISDbits.RD0 = 0;
}

void main(){
	Inicializar();
	while(1){
		i=0;
		while(PORTDbits.RD1==0){
			while(PORTDbits.RD0==0){}
			while(PORTDbits.RD0==1){}
			i++;
		}
		while(PORTDbits.RD1==1){
			while(PORTDbits.RD0==0){}
			while(PORTDbits.RD0==1){}
			i++;
		}
		if (i>99){
			PORTC = 0b11101110; //Error
		}
		else{
			a = i/10;
			b = i%10;
			PORTC = (a<<4|b);
		}

	}
}
