programa
//Crie uma mini calculadora, que após ler dois números inteiros apresenta as operações de soma, subtração, multiplicação e divisão
//com eles. (concluída)
//Obs.: Trate o maior número possíveis de erros(ex: operações com números negativos, divisão por zero, uso de letras, etc).
{ inclua biblioteca Util--> u
inclua biblioteca Matematica--> m
inteiro num1, num2, soma=0, sub=0, mult=0
real div=0.0

	
	funcao inicio()
	{
		escreva("Digite o primeiro número")
		leia(num1)
		limpa()
		escreva("Digite o segundo número")
		leia(num2)
		limpa()
		soma= num1+num2
		sub= num1-num2
		mult= num1*num2
		div= t.inteiro_para_real(num1)/t.inteiro_para_real(num2)
		escreva("\nO valor da soma de", num1,  " + " , num2," =" soma)
		escreva("\nO valor da subtração de", num1, "-" , num2, "=" sub)
	     escreva("\nO valor da multiplicação de", num1, "*", num2, "=" mult)
		escreva("\nO valor da divisão de", num1, "/", num2, "=" div)
	    //Considerar o maior número de erros possíveis como divisão por zero, operações com números negativos, uso de letras
	    //e regras de sinais.

         inteiro opcao
         logico teste
         escreva("Escolha uma opcao")
         escreva("\n 1 - somar= num1 , num2 ")
         ecreva("\n 2 - subtrair= num1 , num2 ")
         escreva("\n 3 - multiplicar= num1 , num2 ")
         escreva("\n 4 - dividir= num1 , num2  ")
         escreva("\n 5 - finalizar ")       
                
	    escreva("\n Ecolha uma opcao:")
	    leia(opcao)
	    escreva("Qual número você deseja escolher para representar o num1 e")
	    se(num1 e num2 tiverem sinai diferentes)
	    teste(opcao1)
	    

	    
	    escreva("=+")
	    {senao
	    escreva("
         limpa()

        
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */