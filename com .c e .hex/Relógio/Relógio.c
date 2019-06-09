#include<stdio.h>
#include<stdlib.h>
#include<p18f4520.h>

#define MaisSegundo PORTAbits.RA0
#define MenosSegundo PORTAbits.RA1
#define MaisMinuto PORTAbits.RA2
#define MenosMinuto PORTAbits.RA3
#define MaisHora PORTAbits.RA4
#define MenosHora PORTAbits.RA5
#define PausePlay PORTAbits.RA6
#define segundo0 LATBbits.LATB0
#define segundo1 LATBbits.LATB1
#define segundo2 LATBbits.LATB2
#define segundo3 LATBbits.LATB3
#define segundo4 LATBbits.LATB4
#define segundo5 LATBbits.LATB5
#define segundo6 LATBbits.LATB6
#define segundo7 LATBbits.LATB7
#define minuto0 LATCbits.LATC0
#define minuto1 LATCbits.LATC1
#define minuto2 LATCbits.LATC2
#define minuto3 LATCbits.LATC3
#define minuto4 LATCbits.LATC4
#define minuto5 LATCbits.LATC5
#define minuto6 LATCbits.LATC6
#define minuto7 LATCbits.LATC7
#define hora0 LATDbits.LATD0
#define hora1 LATDbits.LATD1
#define hora2 LATDbits.LATD2
#define hora3 LATDbits.LATD3
#define hora4 LATDbits.LATD4
#define hora5 LATDbits.LATD5
#define hora6 LATDbits.LATD6
#define hora7 LATDbits.LATD7

void Inicializar(void){
	ADCON1 = 0x0F;
	TRISB = 0;
	TRISC = 0;
	TRISD = 0;
	TRISAbits.TRISA0 = 1;
	TRISAbits.TRISA1 = 1;
	TRISAbits.TRISA2 = 1;
	TRISAbits.TRISA3 = 1;
	TRISAbits.TRISA4 = 1;
}

int DelaySegundo(int* segundos){
	long contador;
	for(contador = 0; contador < 62000; contador++){
		if(PausePlay == 1){
			return 0;
		}
	}
	*segundos = *segundos + 1;
}

int* MostrarValor(int valor){
    int palavras[10][4] = {{0,0,0,0},{0,0,0,1},{0,0,1,0},{0,0,1,1},{0,1,0,0},{0,1,0,1},{0,1,1,0},{0,1,1,1},{1,0,0,0},{1,0,0,1}};
    int saida[4];
	saida[3] = palavras[valor][0];
    saida[2] = palavras[valor][1];
    saida[1] = palavras[valor][2];
    saida[0] = palavras[valor][3];
	return saida;
}

void Relogio(int segundos, int minutos, int horas){
	int* temp;
	temp = MostrarValor(segundos % 10);
	segundo0 = temp[0];
	segundo1 = temp[1];
	segundo2 = temp[2];
	segundo3 = temp[3];
	temp = MostrarValor(segundos / 10);
	segundo4 = temp[0];
	segundo5 = temp[1];
	segundo6 = temp[2];
	segundo7 = temp[3];
	temp = MostrarValor(minutos % 10);
	minuto0 = temp[0];
	minuto1 = temp[1];
	minuto2 = temp[2];
	minuto3 = temp[3];
	temp = MostrarValor(minutos / 10);
	minuto4 = temp[0];
	minuto5 = temp[1];
	minuto6 = temp[2];
	minuto7 = temp[3];
	temp = MostrarValor(horas % 10);
	hora0 = temp[0];
	hora1 = temp[1];
	hora2 = temp[2];
	hora3 = temp[3];
	temp = MostrarValor(horas / 10);
	hora4 = temp[0];
	hora5 = temp[1];
	hora6 = temp[2];
	hora7 = temp[3];
}
void DelayButton(void){
	int i;
	for(i = 0; i < 29000; i++){}
}
void main(void){
	int segundos,minutos,horas;
	segundos = 0;
	minutos = 0;
	horas = 0;
	Inicializar();
	Relogio(segundos,minutos,horas);
	while(1){
		if(PausePlay == 1){
			if(MaisSegundo != 1){
				DelayButton();
				segundos++;
				if(segundos > 59){
					segundos = 0;
				}
			}
			if(MenosSegundo != 1){
				DelayButton();
				segundos--;
				if(segundos < 0){
					segundos = 59;
				}
			}
			if(MaisMinuto != 1){
				DelayButton();
				minutos++;
				if(minutos > 59){
					minutos = 0;
				}
			}
			if(MenosMinuto != 1){
				DelayButton();
				minutos--;
				if(minutos < 0){
					minutos =59;
				}
			}
			if(MaisHora != 1){
				DelayButton();
				horas++;
				if(horas > 23){
					horas = 0;
				}
			}
			if(MenosHora != 1){
				DelayButton();
				horas--;
				if(horas < 0){
					horas = 23;
				}
			}
		}
		else{
			DelaySegundo(&segundos);
			if(segundos > 59){
				segundos = 0;
				minutos++;
			}
			if(minutos > 59){
				minutos = 0;
				horas++;
			}
			if(horas > 23){
				horas = 0;
			}
		}
		Relogio(segundos,minutos,horas);
	}
}
