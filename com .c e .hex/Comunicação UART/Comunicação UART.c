char i;
void main() {
     UART1_init(1200);
     delay_ms(2000);
     UART1_Write_Text("Chegastes ao UART do Mateus!");
     UART1_Write(13);
     UART1_Write(10);
     UART1_Write_Text("Saindo? OK!");
     UART1_Write(13);
     UART1_Write(10);
     while (1){
           if (UART1_Data_Ready()){
               i = UART1_Read();
               UART1_Write(i);
              }
     }

}