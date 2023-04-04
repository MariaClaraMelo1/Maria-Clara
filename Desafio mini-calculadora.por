programa
//possíveis erros como números negativos, divisão por zero e uso de letras
//se na divisão o usuário digita zero como divisor, mostrar a mensagem "O resultado da divisão po zero não existe.Digite outro valor"
//se o usuário digitar letras, mostrar a mensagem "Número inválido, por favor digite outro número"
//tentar resolver as questões com números negativos.
{
inclua biblioteca Tipos--> t
	
	funcao inicio()
	{
	real  num1, num2, soma, sub, mult, div, operacao
     
         	
		escreva("Digite a operação desejada:\n")
		escreva("Digite: \n")
		escreva("1 para soma \n")
		escreva("2 para sub \n")
		escreva("3 para mult \n")
	     escreva("4 para div \n")	     	     	     	     	    	        	     
	     leia(operacao)
	     limpa()	     

	     escreva("Digite o primeiro valor:")
	     leia(num1)
	     escreva("Digite o segundo valor:")
	     leia(num2)
	    
          soma = num1 + num2
          sub = num1 - num2
          mult = num1 * num2
          soma = t.inteiro_para_real(num1)/t.inteiro_para_real(num2)
          sub = t.inteiro_para_real(num1)/t.inteiro_para_real(num2)
          mult = t.inteiro_para_real(num1)/t.inteiro_para_real(num2) 
          div = t.inteiro_para_real(num1)/t.inteiro_para_real(num2)
                                                                                            
	     se(operacao==1){
	     	soma = num1+num2
	     	escreva("A soma é: ",soma)
	     }
          senao se(operacao ==2){
          	sub = num1-num2
          	escreva("A subtração é: ",sub)
          }
	     senao se(operacao == 3){
	     	mult = num1*num1 
	     	escreva("A multiplicação é: ",mult)
	     }
	     senao se(operacao ==4){
	     	div = num1/num2
	     	escreva("A divisão é: ",div)
	     }
		senao{
			escreva("Operação inválida")
		}
          se(operacao==4){
             num2 = 0
             escreva("\nO valor da divisão por zero não existe.Por favor, digite outro número")         
          }
          senao se(operacao==1){
          	soma= -num1 + num2          
          	escreva("\nOperção finalizada!")          	         	                    	          	         	
          }
         senao se(operacao==1){
         	num2 = -num2
         	escreva("\nOperção finalizada!")
         }
         senao se(operacao==2){
         	num1 = -num1
         	escreva("\nOperação finalizada!")      
         }
         senao se(operacao==2){
         	num2 = -num2
         	escreva("\nOperação finalizada!")
         }
         senao se(operacao==3){
         	num1 = -num1
         	escreva("\nOperação finalizada!")
         }
         senao se(operacao==3){
         	num2 = -num2
         	escreva("\nOperação finalizada")     
         }
         senao se(operacao==4){
         	num1 = -num1
         	escreva("\nOperação finalizada!")        	 
         }
         senao se(operacao==4){
         	num2 = -num2
         	escreva("\nOperação finalizada!") 
         }
         
}}        
