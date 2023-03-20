programa
{   
     const inteiro LINHA_CAT=3
	cadeia veteroCategorias[LINHA_CAT] = {"Nome da categoria 1",
	                                       "Nome da categoria 2",
	                                         "Nome da categoria 3"}
	cadeia nome
	cadeia matrizProdutos [LINHA][COLUNA]
	funcao inicio()
	{//Login
	escreva("Digite seu nome: ")
	leia(nome)
	limpa()

	escreva("Olá, este é seu menu, ", "!")
	//escreva("n1 - Nome da categoria 1\n2 - Nome da categoria)
     para (inteiro i=0; i<LINHA_CAT; i++){
     	escreva("\n" , (i+1) vetorCategorias[i])
     }    
		escreva("\n0 para sair")
		escreva("\nDigite uma das opções acima:")

          leia(opcao)
		escolha(opcao)
		
	}    caso 1:
	     escreva("Você acessou a Categoria 1")
}         para(inteiro i=0;i,LINHA; i++){
	     se(matrizProdutos[i][0] == "Categoria1")
}         escreva("\n" , (i+1), " - "

		caso 2:
		escreva("Você acessou a Categoria 2")
		pare

		caso 3:
		escreva("Você acessou a Categoria 3")
		pare

		caso 0:
		escreva("Você realmente deseja sair?")
		//leia opc
		//escolha opc{
		//caso 's' :
		//
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */