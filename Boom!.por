programa
{inclua biblioteca Util-->u
	inteiro contador = 10
	funcao inicio()
	{ 
	enquanto(contador >0)
{	
		limpa()
		escreva("Detonação em: " , contador)
		contador = -1
		u.aguarde(1000)//Aguarda 1000 milisegundos (1 segundo)

		limpa()
		escreva("Boom!\n")}
		
	}
}       

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */