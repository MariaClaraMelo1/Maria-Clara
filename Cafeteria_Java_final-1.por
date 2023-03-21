programa {
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u
	inclua biblioteca Sons --> s
	logico logado = verdadeiro
	cadeia login
	inteiro senhaa
	const inteiro TAM = 10, TAM2 = 2 , TAM3 = 10
	cadeia logins[TAM],produtos[TAM3],loadm = "adm"
	inteiro senhaadm = 654321,senhas[TAM]
	cadeia conteudo = "2"
	inteiro conteudo_senha = 000000
	inteiro agd = 2900 //aguarde
	real crn = 0.0
	inteiro cmt = 3
	cadeia quantidade
	const inteiro CASA = 3, CAR = 9 
	cadeia ctg11[CASA] = {"Nvidia Coffee", "9", "3.59"}
	cadeia ctg12[CASA] = {"Galaxy Coffee", "9", "4.59"}
	cadeia ctg13[CASA] = {"Zépa.js Coffee", "9", "9.99"}
	cadeia ctg21[CASA] = {"GT Coffee", "9", "4.69"}
	cadeia ctg22[CASA] = {"GTX Coffee", "9", "4.39"}
	cadeia ctg23[CASA] = {"RTX Coffee", "9", "3.39"}
	cadeia ctg31[CASA] = {"Noctua Ice Coffe", "9", "7.79"}
	cadeia ctg32[CASA] = {"Water Cooled Coffe", "9", "6.89"}
	cadeia ctg33[CASA] = {"Air Cooler Coffee", "9", "5.99"}
	inteiro VetorCarrinho[CAR] 
	const inteiro LIN_EST = 3, COL_EST = 3
	cadeia produto = "0"
	inteiro MatrizEstoqueInt[LIN_EST][COL_EST]
	inteiro Vetor
	cadeia MatrizEstoqueCad[LIN_EST][COL_EST] = {{ctg11[1], ctg12[1], ctg13[1]},
							 		 {ctg21[1], ctg22[1], ctg23[1]},
							 		 {ctg31[1], ctg32[1], ctg33[1]}}




	funcao fnLogin(){
		escreva("                                 \\\\\\   \\\\\\   \\\\\\","\n")
		escreva("                                  \\\\\\   \\\\\\   \\\\\\","\n")
		escreva("                                   \\\\\\   \\\\\\    \\\\\\","\n")
		escreva("                                    \\\\\\    \\\\\\    \\\\\\","\n")
		escreva("                                     |||    \\\\\\    |||","\n")
		escreva("                                     ///    ///    ///","\n")
		escreva("                                    ////   ////    ///","\n")
		escreva("                                   ///     ///     ///","\n")
		escreva("                                   //     ///     //","\n")
		caneca()
		escreva("\nDigite o Usuario: ")
		leia (login)
		cadeia loginn = tx.caixa_baixa(login)
		limpa()
		escreva("Digite a senha: ")
		leia(senhaa)
		limpa()
		
		para(inteiro i = 0; i < TAM; i++){
			se (logins[i] == loginn){
				se(senhas[i] == senhaa){
					logado = verdadeiro
				}
			}
		}	
		se (loadm == loginn e senhaadm == senhaa){
			 menuAdministrador()
		}
		senao 
			se(nao logado){ 
			escreva("usuario ou senha invalidos\n")
			final()
			}
			senao{
				escreva("Bem Vindo Usuario!\n")
				u.aguarde(2000)
				limpa()
				para (inteiro t=cmt; t>-1; t--) {
               	escreva("Entrando no menu principal em: ", t,"...")
               	u.aguarde(1000)
               	limpa()
               }
			limpa()
			menuprin()
			}		
	}
	funcao final(){
		se (nao logado) {
			escreva("digite (1) para tentar novamente, (2) para sair: ")
			cadeia option
			leia(option)
			limpa()
			se (option == "2"){
				escreva("Agradecemos a sua visita, volte sempre!\n\n")			
			}
			senao se (option == "1"){
			fnLogin()
			}				
			senao{
				escreva("\"",option, "\"", " não é uma opção válida!\n\n")
               	u.aguarde(2500)
               	limpa()
               	para (inteiro t=cmt; t>-1; t--) {
               		escreva("Tente novamente em: ", t,"...")
               		u.aguarde(1000)
               		limpa()
               	}
               	final()
			}
		}				
	}
	funcao inicio() {
		escreva ("== login ==\n\n")
		inteiro i
		inteiro j
		para(i = 0; i < LIN_EST; i++){
			para(j = 0; j < COL_EST; j++){					 		 
				MatrizEstoqueInt[i][j] = t.cadeia_para_inteiro(MatrizEstoqueCad[i][j] , 10)				
			}
		}
		para(i = 0; i < CAR; i++){
		VetorCarrinho[i] = 0
		}
		cadeia MatrizValorCad[LIN_EST][COL_EST] = {{ctg11[2], ctg12[2], ctg13[2]},
							 			  {ctg21[2], ctg22[2], ctg23[2]},
							 		 	  {ctg31[2], ctg32[2], ctg33[2]}}
		inteiro MatrizValorInt[LIN_EST][COL_EST]
		para(i = 0; i < LIN_EST; i++){
			para(j = 0; j < COL_EST; j++){					 		 
				MatrizValorInt[i][j] = t.cadeia_para_real(MatrizValorCad[i][j])				
			}
		}
		
		preenchervetores()
		fnLogin()		
	}
	funcao caneca(){
		escreva("                            ")
		para(inteiro quad = 0; quad < 32; quad++) {
		escreva("*")
		}
		escreva("\n")
		escreva("                  1")
		para(inteiro quad = 0; quad < 11; quad++) {
		escreva("*")
		}
		escreva("__")
		para(inteiro quad = 0; quad < 28; quad++) {
		escreva("*")
		}
		escreva("\n")
		escreva("                  1")
		para(inteiro quad = 0; quad < 11; quad++) {
		escreva("*")
		}
		escreva("__")
		para(inteiro quad = 0; quad < 28; quad++) {
		escreva("*")
		}
		escreva("\n")
		para(inteiro quad2 = 0; quad2 < 4; quad2++){
		escreva("                  ***")
		escreva("       **")
		escreva("__")
		para(inteiro quad = 0; quad < 28; quad++) {
		escreva("*")
		}
		escreva("\n")
		}
		para(inteiro quad2 = 0; quad2 < 2; quad2++){
		escreva("                   ")
		para(inteiro quad = 0; quad < 11; quad++) {
		escreva("*")
		}
		escreva("__")
		para(inteiro quad = 0; quad < 28; quad++) {
		escreva("*")
		}
		escreva("\n")
		}
		
		escreva("                            **___")
		para(inteiro quad = 0; quad < 27; quad++) {
		escreva("*")
		}	
		escreva("\n")
		
		escreva("                            ***___")
		para(inteiro quad = 0; quad < 25; quad++) {
		escreva("*")
		}
		escreva("\n")
		escreva("                              ")
		para(inteiro quad = 0; quad < 28; quad++) {
		escreva("*")
		}
		escreva("\n")
		
		escreva("                  [")
		para(inteiro quad = 0; quad < 48; quad++) {
		escreva("_")
		}
		escreva("]","\n")
		escreva("                  |_")
				para(inteiro quad = 0; quad < 46; quad++) {
		escreva(" ")
		}
		escreva("_|","\n")
		
		
		escreva("                    \\")
				para(inteiro quad = 0; quad < 44; quad++) {
		escreva("_")
		}
		escreva("/","\n")
		para(inteiro quad = 0; quad < 71; quad++) {
		escreva(" ")
		}
		escreva("\n")
		escreva("   _____          __        _                _              ___                      ","\n")
		escreva("  /  __ \\        / _|      | |              (_)            |_  |                     ","\n")
		escreva("  | /  \\/  __ _ | |_   ___ | |_   ___  _ __  _   __ _        | |  __ _ __   __  __ _ ","\n")
		escreva("  | |     / _` ||  _| / _ \\| __| / _ \\| '__|| | / _` |       | | / _` |\\ \\ / / / _` |","\n")
		escreva("  | \\__/\\| (_| || |  |  __/| |_ |  __/| |   | || (_| | _ /\\__/ /| (_| | \\ V / | (_| |","\n")
		escreva("   \\____/ \\__,_||_|   \\___| \\__| \\___||_|   |_| \\__,_|(_)\\____/  \\__,_|  \\_/   \\__,_|","\n")
		para(inteiro quad = 0; quad < 87; quad++) {
		escreva("=")
		}
		u.aguarde(cmt)
	}
	funcao menuprin(){
	 	escreva(" __  __                         ___         _               _                 _    _   _   _\n")
 	 	escreva("|  \\/  |  ___   _ _    _  _    | _ \\  _ _  (_)  _ _    __  (_)  _ __   __ _  | |  | | | | | |\n")
 	 	escreva("| |\\/| | / -_) | ' \\  | || |   |  _/ | '_| | | | ' \\  / _| | | | '_ \\ / _` | | |  |_| |_| |_|\n")
 	 	escreva("|_|  |_| \\___| |_||_|  \\_,_|   |_|   |_|   |_| |_||_| \\__| |_| | .__/ \\__,_| |_|  (_) (_) (_)\n")
 	 	escreva("                                                               |_|")
      	escreva("\n\n")
	 	escreva(" \n")
	 	escreva(" Usuario: ",login,"                                   \n")
     	escreva("|======================================================|                 _","\n")
		escreva("|Qual categoria de produtos você gostaria de conhecer? |                | |","\n")
     	escreva("|----------------------------------|-------------------|  ______________| |____","\n")
      	escreva("|Para conhecer os expressos KBytes,|digite (1):        | |______________| |____|","\n")
      	escreva("|----------------------------------|-------------------|  \\                   /","\n")
      	escreva("|Para conhecer os expressos MBytes,|digite (2):        |   \\      KBytes     /","\n")
      	escreva("|----------------------------------|-------------------|    \\     Mbytes    /","\n")
      	escreva("|Para conhecer os Cooled Coffes,   |digite (3):        |     \\     ICE     /","\n")
      	escreva("|----------------------------------|-------------------|      \\           /\n")
      	escreva("|Para visualizar o seu carrinho,   |digite (4):        |       \\         /","\n")
      	escreva("|----------------------------------|-------------------|        \\       /        \n")
      	escreva("|Para sair da nossa loja,          |digite (5):        |         \\_____/","\n")
      	escreva("|======================================================|                  ","\n")
      	escreva("Opção: ")
      	cadeia option
      	leia(option)
      	se (t.cadeia_e_inteiro(option, 10)){
          inteiro option2= t.cadeia_para_inteiro(option,10)
      		escolha(option2){
      			caso(1):
      			limpa()
      			menukb()
      			pare

      			caso(2):
      			limpa()
      			menumb()
               	pare

               	caso(3):
               	limpa()
               	menuice()
               	pare

               	caso(4):
               	AdicaoCarrinho()
               	pare

               	caso(5):
               	limpa() 
               	escreva("Volte sempre que desejar!\n\n")
               	fnLogin()
               	pare
               	caso contrario:{
               	limpa()
               		para (inteiro t = 3; t > -1; t = t - 1) {
               			escreva("Favor digitar um valor selecionado\n")
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
               	}
               	menuprin()
               	}
      		}
      }
      	senao{
      		para (inteiro t = 3; t > -1; t = t - 1) {
               	escreva("Favor digitar um valor selecionado\n")
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
      		} 
      		menuprin()  
      	} 
	}
	funcao menukb() {
	 	escreva("|====================================================|","\n")
	 	escreva("|Espressos Kbytes   |     Preços     |    Opções     |                 _","\n")
      	escreva("|-------------------|----------------|---------------|                | |","\n")
      	escreva("|Nvidia Coffee      |$3.59 DebyCoins |digite (1):    | _______________| |____","\n")
      	escreva("|-------------------|----------------|---------------||_______________| |____|","\n")
      	escreva("|Galaxy Coffee      |$4.59 DebyCoins |digite (2):    | \\                    /","\n")
      	escreva("|-------------------|----------------|---------------|  \\      KBytes      /","\n")
      	escreva("|Zépa.js Coffee     |$9.99 DebyCoins |digite (3):    |   \\                /","\n")
      	escreva("|-------------------|----------------|---------------|    \\              /","\n")
      	escreva("|Ir para o carrinho |Subtotal: $",crn, "  |digite (4):    |     \\            /","\n")
      	escreva("|------------------------------------|---------------|      \\__________/","\n")
      	escreva("|Para voltar ao menu principal       |digite (5)     |\n")
      	escreva("|====================================================|\n\n")
          escreva("Opção: ")
          cadeia option
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               escolha (option2) {
                    caso 1:
                         limpa()
                         NvidiaCoffee()
                         pare
                    caso 2:
                         limpa()
                         GalaxyCoffee()
                         pare
                    caso 3:
                         limpa()
                         ZepajsCoffee()
                         pare
                    caso 4:
                    	limpa()
                         escreva("== menu do carrinho ==")
                         pare
                    caso 5:
                    	limpa()
                    	menuprin()
                    	pare
                    caso contrario:
                         limpa()
                         escreva("\"", option, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         menukb()
               }
          }
          senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               menukb()
          }
     }
     funcao NvidiaCoffee() {
          escreva("Nvidia Coffee\n")
          escreva("características:Intenso com notas amadeiradas e intensidade 11GHz.\n")
          escreva("                 _", "\n")
          escreva("                | |", "\n")
          escreva(" _______________| |____", "\n")
          escreva("|_______________| |____|", "\n")
          escreva(" \\                    /", "\n")
          escreva("  \\      Nvidia      /", "\n")
          escreva("   \\     Cofee      /", "\n")
          escreva("    \\              /", "\n")
          escreva("     \\            /", "\n")
          escreva("      \\__________/", "\n")
          cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Nvidia()
               }
               senao {
                    se (option2 == 2) {
                         limpa()
                         menukb()
                    }
                    senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         NvidiaCoffee()
                    }
               }
          }
          senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               NvidiaCoffee()
          }
     }
     funcao GalaxyCoffee() {	
    		escreva("GalaxyCoffee \n")
          escreva("características: é Incorpado e Cremoso com notas de cacau e intensidade 7GHz. \n")
          escreva("                 _", "\n")
          escreva("                | |", "\n")
          escreva(" _______________| |____", "\n")
          escreva("|_______________| |____|", "\n")
          escreva(" \\                    /", "\n")
          escreva("  \\      Galaxy      /", "\n")
          escreva("   \\     Cofee      /", "\n")
          escreva("    \\              /", "\n")
          escreva("     \\            /", "\n")
          escreva("      \\__________/", "\n")
          cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Galaxy()
               }
               senao {
                    se (option2 == 2) {
                         limpa()
                         menukb()
                    }
                    senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         GalaxyCoffee()
                    }
               }
          }
          senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               GalaxyCoffee()
          }
     }
     funcao ZepajsCoffee() {
     	escreva("ZepajsCoffee \n")
          escreva("características: é suave e adocicado com notas de Paçoca e intensidade 5GHz.\n")
          escreva("                 _", "\n")
          escreva("                | |", "\n")
          escreva(" _______________| |____", "\n")
          escreva("|_______________| |____|", "\n")
          escreva(" \\                    /", "\n")
          escreva("  \\      Zépa.js     /", "\n")
          escreva("   \\     Cofee      /", "\n")
          escreva("    \\              /", "\n")
          escreva("     \\            /", "\n")
          escreva("      \\__________/", "\n")
          cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Zepa()
               }
               senao {
                    se (option2 == 2) {
                         limpa()
                         menukb()
                    }
                    senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         ZepajsCoffee()
                    }
               }
          }
          senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               ZepajsCoffee()
          }
     }
 	funcao menumb(){
      	escreva("|===================================================|               _","\n")
	 	escreva("|Espressos Mbytes   |     Preços     |    Opções    |              | |","\n")
      	escreva("|-------------------|----------------|--------------|  ____________| |_____","\n")
      	escreva("|GT Coffee          |$4,69 DebyCoins |digite (1):   | |____________| |_____|","\n")
      	escreva("|-------------------|----------------|--------------|  \\                  /","\n")
      	escreva("|GTX Coffee         |$4,39 DebyCoins |digite (2):   |   \\                /","\n")
      	escreva("|-------------------|----------------|--------------|    \\    Mbytes    /","\n")
     	escreva("|RTX Coffee         |$3.39 DebyCoins |digite (3):   |     \\            /","\n")
      	escreva("|-------------------|----------------|--------------|      \\          /","\n")
      	escreva("|Ir para o carrinho |Subtotal: $",crn,"  |digite (4):   |       \\________/","\n")
      	escreva("|------------------------------------|--------------|       ","\n")
      	escreva("|Para voltar ao menu principal       |digite (5)    |\n")
      	escreva("|===================================================|\n\n")
          escreva("Opção: ")
          cadeia option
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               escolha (option2) {
                    caso 1:
                         limpa()
                         GT_coffee()
                         pare
                    caso 2:
                         limpa()
                         GTX_Coffee()
                         pare
                    caso 3:
                         limpa()
                         RTX_coffee()
                         pare
                    caso 4:
                         escreva("== menu do carrinho ==")
                         pare
                    caso 5:
                    	limpa()
                    	menuprin()
                    	pare
                    caso contrario:
                         limpa()
                         escreva("\"", option, "\"", " não é uma opção válida!\n")
                         u.aguarde(2900)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         menumb()
               }
          }
          senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(2900)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               menumb()
          }
	}
	funcao GT_coffee() {
		escreva("GT Coffe\n")
		escreva("(características: maltado e com notas de cereais e intensidade 5GHz\n")
		escreva("                 _","\n")
		escreva("                | |","\n")
		escreva("  ______________| |____","\n")
		escreva(" |______________| |____|","\n")
		escreva(" \\                     /","\n")
		escreva("  \\                   /","\n")
		escreva("   \\       GT        /","\n")
		escreva("    \\     Coffe     /","\n")
		escreva("     \\             /","\n")
		escreva("      \\           /","\n")
		escreva("       \\         /","\n")
		escreva("        \\_______/","\n")
          cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    GT()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menumb()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(2900)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         GT_coffee()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(2900)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               GT_coffee()
          }
     }
	funcao GTX_Coffee() {
      	escreva("GTX Coffe\n")
      	escreva("características: café com notas de açúcar mascavo e intensidade 7GHz\n")
          escreva("                 _","\n")
      	escreva("                | |","\n")
      	escreva("  ______________| |____","\n")
      	escreva(" |______________| |____|","\n")
      	escreva(" \\                     /","\n")
      	escreva("  \\                   /","\n")
      	escreva("   \\       GTX       /","\n")
      	escreva("    \\     Coffe     /","\n")
      	escreva("     \\             /","\n")
      	escreva("      \\           /","\n")
		escreva("       \\         /","\n")
      	escreva("        \\_______/","\n")
      	cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    GTX()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menumb()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(2900)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         GTX_Coffee()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(2900)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               GTX_Coffee()
          }
     } 		
	funcao RTX_coffee() {
      	escreva("RTX coffe!\n")
      	escreva("características: equilibrado e cremoso com notas de mel e cereais e intensidade 9GHz\n")
      	escreva("                 _","\n")
      	escreva("                | |","\n")
      	escreva("  ______________| |____","\n")
      	escreva(" |______________| |____|","\n")
      	escreva(" \\                     /","\n")
      	escreva("  \\                   /","\n")
      	escreva("   \\       RTX       /","\n")
      	escreva("    \\     Coffe     /","\n")
      	escreva("     \\             /","\n")
      	escreva("      \\           /","\n")
		escreva("       \\         /","\n")
      	escreva("        \\_______/","\n")
          cadeia option
          escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    RTX()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menumb()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(2900)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                        RTX_coffee()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(2900)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
              RTX_coffee()
          }
     }     
	funcao menuice(){
		escreva("|====================================================|                   _","\n")
		escreva("|Espresso Cold Brew! |     Preços     |    Opções    |                  | |","\n")
     	escreva("|--------------------|----------------|--------------| _________________| |_____","\n")
     	escreva("|Noctua Ice Coffe    |$7.79 DebyCoins |digite (1):   ||_________________| |_____|","\n")
     	escreva("|--------------------|----------------|--------------| \\             *         /","\n")
     	escreva("|Water Cooled Coffe  |$6.89 DebyCoins |digite (2):   |  \\    *            *   /","\n")
     	escreva("|--------------------|----------------|--------------|   \\Espresso Cold Brew!/","\n")
     	escreva("|Air Cooled Coffee   |$5.99 DebyCoins |digite (3):   |    \\         *       /","\n")
     	escreva("|--------------------|----------------|--------------|     \\  *            /","\n")
     	escreva("|Ir para o carrinho  |Subtotal: $",crn,"  |digite (4):   |      \\          *  /","\n")
     	escreva("|-------------------------------------|--------------|       \\   *       /","\n")
     	escreva("|Para voltar ao menu principal        |digite (5)    |        \\_________/","\n")
      	escreva("|====================================================|\n\n")
     	cadeia option
     	escreva("Opção: ")
     	leia(option)
     se (t.cadeia_e_inteiro(option, 10)){
         inteiro option2= t.cadeia_para_inteiro(option,10)
         escolha(option2){
      		caso(1):
      			limpa()
				noctua_Ice_Coffe()
      			pare
      		caso(2):
      			limpa()
				water_cooled_coffe()
               	pare
               caso(3):
               	limpa()
               	air_cooler_coffee()
               	pare
               caso(4):
               	limpa()
               	escreva(" == menu do carrinho == ")
               	pare
               caso 5:
                    limpa()
                	menuprin()
                    pare               
               caso contrario:{
                         limpa()
                         escreva("\"", option, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         menuice()
               }
      	}
      } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               menuice()
          }
	}
	funcao noctua_Ice_Coffe() {
     	escreva("Noctua Ice Coffe \n")
          escreva("características: café suave com uma cuidadosa seleção de especiarias aromáticas e intensidade 5GHz.\n")
      	escreva("                 _","\n")
      	escreva("                | |","\n")
      	escreva(" _______________| |_____","\n")
      	escreva("|_______________| |_____|","\n")
      	escreva(" \\   *             *   /","\n")
      	escreva("  \\           *       /","\n")
      	escreva("   \\ Nocta Ice Coffe /","\n")
      	escreva("    \\       *       /","\n")
      	escreva("     \\  *          /","\n")
      	escreva("      \\       *   /","\n")
		escreva("       \\  *      /","\n")
      	escreva("        \\_______/","\n")	
      	escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          escreva("Opção: ")
          cadeia option
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Noctua()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menuice()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                         noctua_Ice_Coffe()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               noctua_Ice_Coffe()
          }
     }     			
	funcao water_cooled_coffe() {
     	escreva("Water Cooled Coffe \n")
          escreva("características: café suave com notas de hibisco, frutas vermelhas e limão e intensidade 5GHz.\n")
          escreva("                 _","\n")
      	escreva("                | |","\n")
      	escreva(" _______________| |_____","\n")
      	escreva("|_______________| |_____|","\n")
      	escreva(" \\   *             *   /","\n")
      	escreva("  \\          *        /","\n")
      	escreva("   \\ * Water Cooled  /","\n")
      	escreva("    \\     Coffe  *  /","\n")
      	escreva("     \\   *         /","\n")
      	escreva("      \\        *  /","\n")
		escreva("       \\   *     /","\n")
      	escreva("        \\_______/","\n")
      	escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          escreva("Opção: ")
          cadeia option
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Water()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menuice()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                        water_cooled_coffe()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               water_cooled_coffe()
          }
     }
     		
	funcao air_cooler_coffee() {
     	escreva("Air Cooled Coffe \n")
          escreva("características: café suave com toque e aroma de baunilha e intensidade 5GHz.\n")
      	escreva("                _","\n")
      	escreva("               | |","\n")
      	escreva(" ______________| |_____","\n")
      	escreva("|______________| |______|","\n")
      	escreva(" \\ *         *    *    /","\n")
      	escreva("  \\     *       *   * /","\n")
      	escreva("   \\Air Cooled Coffee/","\n")
      	escreva("    \\     *         /","\n")
      	escreva("     \\        *    /","\n")
      	escreva("      \\   *       /","\n")
	     escreva("       \\      *  /","\n")
      	escreva("        \\_______/","\n")
      	escreva("Para adicionar produto ao carrinho, digite (1):\nPara voltar a seção anterior, digite (2):\n")
          escreva("Opção: ")
          cadeia option
          leia(option)
          se (t.cadeia_e_inteiro(option, 10)) {
               inteiro option2 = t.cadeia_para_inteiro(option, 10)
               se (option2 == 1) {
                    Air()
               } senao {
                    se (option2 == 2) {
                         limpa()
                         menuice()
                    } senao {
                         limpa()
                         escreva("\"", option2, "\"", " não é uma opção válida!\n")
                         u.aguarde(agd)
                         limpa()
                         para (inteiro t = cmt; t > -1; t = t - 1) {
                              escreva("Tente novamente em: ", t, "...")
                              u.aguarde(1000)
                              limpa()
                         }
                        air_cooler_coffee()
                    }
               }
          } senao {
               limpa()
               escreva("\"", option, "\"", " não é uma opção válida!\n")
               u.aguarde(agd)
               limpa()
               para (inteiro t = cmt; t > -1; t = t - 1) {
                    escreva("Tente novamente em: ", t, "...")
                    u.aguarde(1000)
                    limpa()
               }
               air_cooler_coffee()
          }      				
	}
	funcao menuAdministrador(){
		inteiro opcao = 0, opcao2 =0
		limpa()
		escreva("\n Seja Bem Vindo(a) Administrador(a)\n\n")
		
		escreva("1 - Usuários\n")
		escreva("2 - Produtos\n")
		escreva("3 - Voltar ao menu anterior\n\n")
		escreva("Selecione uma opção:")
		leia(opcao)
		limpa()

		escolha (opcao){

			caso 1:
				escreva("***** Usuários *****\n\n")
				escreva("1 - Adicionar Usuário\n")
				escreva("2 - Alterar Usuário\n")
				escreva("3 - Excluir Usuário\n")
				escreva("4 - Voltar ao menu anterior\n\n")
				escreva("Selecione uma opção:")
				leia (opcao2)
				limpa()

				escolha (opcao2){
					
					caso 1:

						// Chama a funcao adicionarUsuário()
						adicionarUsuario()
						
						pare
					
					
					caso 2:

						//Chama a funcao alterarUsuário()
						alteraUsuario()
						
						
					pare

					caso 3:
						//Chama a funcao excluiUsuário()
						excluiUsuario()
						
						
					pare

					caso 4:
						//chama a funcao menuAdministrador()
						menuAdministrador()	
					pare

					caso contrario:
						escreva("Opção inválida")
						u.aguarde(2900)
						limpa()
						menuAdministrador()
               		pare
	
				}
			pare

			caso 2:
				escreva("***** Produtos *****\n\n")
				escreva("1 - Adicionar Produto\n")
				escreva("2 - Alterar Produto\n")
				escreva("3 - Excluir Produto\n")
				escreva("4 - Voltar ao menu anterior\n\n")
				escreva("Selecione uma opção:")
				leia (opcao2)
				limpa()

				escolha (opcao2){
					
					caso 1:
						// Chama a funcao adicionarProduto()
						adicionarProduto()
					pare
					
					caso 2:
						//Chama a funcao alteraProduto()
						alteraProduto()
					pare

					caso 3:
						//Chama a funcao excluiProduto()
						excluiProduto()				
					pare

					caso 4:
						//chama a funcao menuAdministrador()
						menuAdministrador()
					pare

					caso contrario:
						escreva("Opção inválida")
						u.aguarde(2900)
						limpa()
						menuAdministrador()
               		pare

				}
				
			pare

			caso 3:
				fnLogin()

			pare

			caso contrario:
				escreva("Opção inválida")
				u.aguarde(2900)
				limpa()
				menuAdministrador()
			
		}
	}
	
	funcao preenchervetores(){
		para(inteiro i=0;i<TAM;i++){
			logins[i] = conteudo
			senhas[i] = conteudo_senha
		}
		//usuarios cadastrados
		logins [0] = "kaique"
		logins [1] = "caduu"
		logins [2] = "meduarda"
		logins [3] = "mclara"
		logins [4] = "jon"
		logins [5] = "ricardo"

		senhas[0] = 040404
		senhas[1] = 022315
		senhas[2] = 022568
		senhas[3] = 658905
		senhas[4] = 257895
		senhas[5] = 658725


		// Produtos

		para(inteiro i=0;i<TAM;i++){
			produtos[i] = "2"	
		}
		
			
	}
		
	funcao adicionarUsuario(){
		
		inteiro cont =0, senha = 000000, limitador_senha1 = 99999, limitador_senha2 = 1000000
		logico condicao = verdadeiro
		cadeia usuario = ""
		inteiro opcao
		
		enquanto (condicao){
			
			escreva("\n ***** Usuários *****\n")
			escreva("\n Informe o nome de usuário desejado: ") 
			leia(usuario)
			limpa()
			escreva("\n ***** Usuarios ***** \n")
	
			se (Tipos.cadeia_e_caracter(usuario)){
				escreva("\n",usuario," não é uma entrada válida (Insira um usuário com mais de um caracter)\n")
				adicionarUsuario()
			 
			}senao{	
				para(inteiro i=0;i<TAM;i++){
					se(logins[i] == usuario){
						escreva("\n (",usuario,")", " já é um usuário cadastrado no sistema.\n")
	               		u.aguarde(2500)
	               		limpa()

						escreva("\n ***** Usuarios ***** \n")
	               		escreva("\n Para tentar novamente, digite (1)\n")
	               		escreva("Para voltar ao Menu Administrador, digite (2)\n")
	               		escreva("\n Opção: ")
	               		leia (opcao) 

						escolha (opcao){
							caso 1:
								limpa()
								adicionarUsuario()

							pare

							caso 2:
								menuAdministrador()
								condicao = falso
							pare

							caso contrario:
							
								escreva(opcao, "não é uma entrada válida.")
								menuAdministrador()
								condicao = falso

							pare
						}
	           
					}senao{
						condicao = falso
					}
						
				}
			}
		}

		para(inteiro i=0;i<TAM;i++){
			se(logins[i] == conteudo){
				cont = cont++
			}
		}
		inteiro cont2 = 1+(TAM-cont)
		condicao = verdadeiro			
		
		se(cont2<(TAM+1)){
			enquanto(condicao){
				para(inteiro i =0;i<cont2;i++){	
					se(logins[i] == conteudo){
						escreva("\nInforme uma senha com 6 digitos numéricos: ")
						leia(senha)
						limpa()
						se(senha>limitador_senha1 e senha<limitador_senha2){
							logins[i] = usuario
							senhas[i] = senha
							condicao = falso	
						}senao{
							escreva("\n Erro! Senha precisa ter 6 dígitos numéricos.\n")
	              				u.aguarde(2500)
	        					limpa()
							escreva("\n ***** Usuarios ***** \n")
							escreva("\n Para tentar novamente, digite (1)\n")
	               			escreva("Para voltar ao Menu Administrador, digite (2)\n")
	               			escreva("\n Opção: ")
	               			leia (opcao)

	               			escolha (opcao){
								caso 1:
									condicao = verdadeiro
								pare
								
								caso 2:
									menuAdministrador()
									condicao = falso
								pare

								caso contrario:
							
									escreva(opcao, "não é uma entrada válida.")
									menuAdministrador()
									condicao = falso

								pare
							}
	               														
						}
					}senao{
								
					}
				}
			}
			escreva("Usuario Cadastrado com sucesso!")
			u.aguarde(2500)
			menuAdministrador()

			escreva("\n Para inserir um novo usuário digite (1):\n")
			escreva("\n Voltar ao menu principal (0):\n")
			escreva("\n Opção: ")
			leia(opcao)
	
			escolha(opcao){
				caso 1:				
					limpa()
					adicionarUsuario()
				pare
			
				caso 0:
					menuAdministrador()
				pare

				caso contrario:
					escreva("\n", opcao," não é uma opção válida:\n")
					limpa()
					menuAdministrador()
				pare
			}
			
		}senao{
			limpa()
			escreva("\n Limite de cadastros atingido\n")
			u.aguarde(2900)
			limpa()
			menuAdministrador()
		}
	}					
	
	funcao alteraUsuario(){
		inteiro opcao, cont = 0, troca_senha = 000000, limitador_senha1 = 100000, limitador_senha2 = 999999
		cadeia usuario, troca_usuario=""
		logico condicao = falso, condicao2 = falso
		
			limpa()
			escreva("\n***** Usuários *****\n")
			escreva("\n Informe um usuário para alteracão: ") 
			leia(usuario)
			limpa()
			escreva("\n***** Usuários *****\n")
			
			se(Tipos.cadeia_e_caracter(usuario)== verdadeiro){
				escreva("\n",usuario," não é uma entrada válida (Insira um usuário com mais de um caracter)\n")
				alteraUsuario()
			}senao{
				para(inteiro i=0;i<TAM;i++){
					se(logins[i] == usuario){
						cont = cont++
					}
				}
				
				inteiro cont2 = 1+(TAM-cont)
				condicao = falso
				
				se(cont2<(TAM+1)){
					para (inteiro i = 0; i<cont2;i++){
						se(logins[i] == usuario){
							enquanto (condicao == falso){
								limpa()
								escreva("\n***** Usuários *****\n")
								escreva("\n Insira um novo usuário: ")
								leia(troca_usuario)
								
							se(Tipos.cadeia_e_caracter(troca_usuario)){
								escreva("\n",troca_usuario," não é uma entrada válida (Insira um usuário com mais de um caracter)\n")
								condicao = falso
		
								}senao{
									logins[i] = troca_usuario
									condicao = verdadeiro
									
									enquanto(condicao2 == falso){				
										limpa()
										escreva("\n ***** Usuarios ***** \n")
										escreva("\n Informe uma senha de 6 dígitos numéricos: ")
										leia(troca_senha)
	
										se(troca_senha>limitador_senha1 e troca_senha<limitador_senha2){
											senhas[i] = troca_senha
											escreva("\nUsuário alterado com sucesso!")
											u.aguarde(2500)				
											condicao2 = verdadeiro
											
										}senao{
											escreva("\n Erro! Senha precisa ter 6 dígitos numéricos.\n")
	         	      	     					u.aguarde(2500)
	          	 	  						limpa()	        							
											escreva("\n ***** Usuarios ***** \n")
											escreva("\n Para tentar novamente, digite (1)\n")
				              					escreva("Para voltar ao Menu Administrador, digite (2)\n")
				    	          				escreva("\n Opção: ")
				         	     				leia(opcao)
	
				               				escolha (opcao){
												caso 1:
												condicao2 = falso
												pare
													
												caso 2:
													menuAdministrador()
													condicao2 = verdadeiro
												pare
					
												caso contrario:
													escreva(opcao, "não é uma entrada válida.")
													menuAdministrador()
													condicao2 = verdadeiro
												pare
											}
										}
									}
								}
							}
						}
					}
					limpa()
					menuAdministrador()
				}senao{
					limpa()
					escreva("\nUsuário não existente no sistema.\n")					
				}	
			}
	}

	
	funcao excluiUsuario(){

		inteiro opcao, cont = 0
		cadeia usuario
		escreva("\n ***** Usuários *****\n")
		escreva("\n Informe um nome de usuário para exclusão: ") 
		leia(usuario)
		limpa()
		escreva("\n ***** Usuários *****\n")

		se (Tipos.cadeia_e_caracter(usuario)){
			escreva("\n",usuario," não é uma entrada válida (Insira um usuário com mais de um caracter)\n")
			excluiUsuario() 
		}senao{
			para(inteiro i=0;i<TAM;i++){
				se(logins[i] != conteudo){
					cont = cont+1				
				}
			}	
					
			inteiro cont2 = 1+ cont
			se(cont2<(TAM+1)){	
				para(inteiro i=0;i<cont2;i++){
					se(logins[i] == usuario){
						logins[i] = conteudo
						senhas[i] = conteudo_senha
					}
				}
					
				escreva("\n Usuário (",usuario,")"," excluido com sucesso\n")
				u.aguarde(2900)
				limpa()

				escreva("\n Para exluir um novo usuário digite (1):\n")
				escreva("\n Voltar ao menu principal (0):\n")
				escreva("\n Opção: ")
				leia(opcao)
				
				escolha(opcao){
					caso 1:
						limpa()
						excluiUsuario()
					pare

					caso 0:
						menuAdministrador()
					pare

					caso contrario:
						escreva("\n",opcao," não é uma opção válida:\n")
						limpa()
						menuAdministrador()
					pare								
				}
				
			}senao{
				limpa()
				escreva("\n Não existe mais usuários a ser excluído\n")
				u.aguarde(2900)
				limpa()
				menuAdministrador()
			}
		}		
	}

	funcao adicionarProduto(){
		inteiro cont =0
		cadeia produto
		limpa()
		escreva("\n***** Produtos *****\n")
		escreva("\nInforme o nome de Produto desejado: ") 
		leia(produto)
		limpa()
		escreva("\n ***** Produtos *****\n")
	
		se (Tipos.cadeia_e_caracter(produto)){
			escreva("\n",produto," não é uma entrada válida (Insira um Produto com mais de um caracter)\n")
			u.aguarde(2500)
			adicionarProduto() 
		}senao{
			para(inteiro i=0;i<TAM;i++){
				se(produtos[i] == produto){
					escreva("\n (",produto,")", " já é um produto cadastrado no sistema.\n")
	               	u.aguarde(2500)
	               	limpa()
	               	para (inteiro t=5; t>-1; t--) {
	               		escreva("\n Tente novamente em: ", t,"...\n")
	               		u.aguarde(1000)
	               		limpa()
	               	}
				}
			}  	
			
			para(inteiro i=0;i<TAM;i++){
				se(produtos[i] == conteudo){
					cont = cont++
				}
			}	
			
			inteiro cont2 = 1+(TAM-cont)
					
			se(cont2<(TAM+1)){
				para(inteiro i=0;i<cont2;i++){
					se(produtos[i] == conteudo){
						produtos[i] = produto		
					}
				}
			}senao{
				limpa()
				escreva("\n Limite de cadastros atingido\n")
				u.aguarde(2900)
				limpa()
				menuAdministrador()
			}
	
		}
		
		escreva("\n Produto inserido com sucesso!\n")
		u.aguarde(2500)
		escreva("\n Para inserir um novo produto digite (1):\n")
		escreva("\n Voltar ao menu principal (0):\n")
		escreva("\n Opção: ")
		inteiro opcao
		leia(opcao)

		escolha(opcao){
			caso 1:
				limpa()
				adicionarProduto()
			pare
			
			caso 0:
				menuAdministrador()
			pare

			caso contrario:
				escreva("\n", opcao," não é uma opção válida:\n")
				limpa()
				menuAdministrador()
			pare			
		}	
	}	
	
	funcao alteraProduto(){
		inteiro opcao, cont = 0
		cadeia produto, troca_produto=""
		
		limpa()
		escreva("\n***** Produtos *****\n")
		escreva("\n Informe um nome de produto para alteracão: ") 
		leia(produto)
		limpa()
		escreva("\n***** Produtos *****\n")

		se (Tipos.cadeia_e_caracter(produto)){
			escreva("\n",produto," não é uma entrada válida (Insira um produto com mais de um caracter)\n")
			u.aguarde(2500)
			alteraProduto()
			 
		}senao{
			para (inteiro i = 0; i<TAM;i++){
				se(produtos[i] == produto){
					escreva("\n Informe o novo produto para substituição: ") 
					leia(troca_produto)
					limpa()

					se (produtos[i] != troca_produto){
						produtos[i] = troca_produto
					}senao{
						se(produtos[i] == conteudo){
							escreva("\n",troca_produto, "não é uma entrada válida (Insira um produto com mais de um caracter)\n")
						}senao{
							escreva("\n Produto já cadastrado no sistema\n")
						}
					}
				}
			}

			escreva("\n Produto alterado com sucesso!\n")
			u.aguarde(2500)
			escreva("\n Para alterar um novo produto digite (1):\n")
			escreva("\n Voltar ao menu principal (0):\n")
			escreva("\n Opção: ")
			leia(opcao)

			escolha(opcao){
				caso 1:
					limpa()
					alteraProduto()
					pare

				caso 0:
					menuAdministrador()
					pare

				caso contrario:
					escreva("\n",opcao," não é uma opção válida:\n")
					limpa()
					menuAdministrador()
				pare			
			}
			
		}

	}

	funcao excluiProduto(){
		
		inteiro opcao, cont = 0
		cadeia produto
		escreva("\n ***** Produtos *****\n")
		escreva("\n Informe um nome de produto para exclusão: ") 
		leia(produto)
		limpa()
		escreva("\n ***** Produtos *****\n")

		se (Tipos.cadeia_e_caracter(produto)){
			escreva("\n",produto," não é uma entrada válida (Insira um usuário com mais de um caracter)\n")
			u.aguarde(2900)
			excluiProduto() 
		}senao{
			para(inteiro i=0;i<TAM;i++){
				se(produtos[i] != conteudo){
					cont = cont+1				
				}
			}	
					
			inteiro cont2 = 1+ cont
			se(cont2<(TAM+1)){	
				para(inteiro i=0;i<cont2;i++){
					se(produtos[i] == produto){
						produtos[i] = conteudo
					}
				}
					
				escreva("\n Produto (",produto,")"," excluido com sucesso\n")
				u.aguarde(2900)
				limpa()

				escreva("\n Para alterar um novo produto digite (1):\n")
				escreva("\n Voltar ao menu principal (0):\n")
				escreva("\n Opção: ")
				leia(opcao)
				
				escolha(opcao){
					caso 1:
						limpa()
						excluiProduto()
					pare

					caso 0:
						menuAdministrador()
					pare

					caso contrario:
						escreva("\n",opcao," não é uma opção válida:\n")
						limpa()
						menuAdministrador()
					pare								
				}
				
			}senao{
				limpa()
				escreva("\n Não existe mais produto a ser excluído\n")
				u.aguarde(2900)
				limpa()
				menuAdministrador()
			}
		}		
	}
		funcao Nvidia(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[0][0]){
				MatrizEstoqueInt[0][0] = (MatrizEstoqueInt[0][0] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				NvidiaCoffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[0][0], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
							limpa()
							Nvidia()
						pare
						caso 2:
							limpa()	
							NvidiaCoffee()					
						pare
						caso contrario:
							limpa()
					 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
					 		u.aguarde(agd)
					 		limpa()
					 		para (inteiro t = cmt; t > -1; t--) {
	    							limpa()
	    							escreva("Tente novamente em: ",t, "...\n")
	    							u.aguarde(1000)
	    							limpa()
				 		}
				 			check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
						limpa()
						Nvidia()
					pare
					caso 2:
						limpa()	
						NvidiaCoffee()						
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
	
}
	funcao Galaxy(){ 
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[0][1]){
				MatrizEstoqueInt[0][1] = (MatrizEstoqueInt[0][1] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				GalaxyCoffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[0][1], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
							limpa()
							Galaxy()
						pare
						caso 2:
							limpa()
							GalaxyCoffee()					
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
						limpa()
						Galaxy()
					pare
					caso 2:
						limpa()
						GalaxyCoffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao Zepa(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[0][2]){
				MatrizEstoqueInt[0][2] = (MatrizEstoqueInt[0][2] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				ZepajsCoffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[0][2], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						Zepa()
						pare
						caso 2:
						limpa()
						ZepajsCoffee()					
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					Zepa()
					pare
					caso 2:
					limpa()
					ZepajsCoffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao GT(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[1][0]){
				MatrizEstoqueInt[1][0] = (MatrizEstoqueInt[1][0] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				GT_coffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[1][0], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						GT()
						pare
						caso 2:
						limpa()
						GT_coffee()					
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					GT()
					pare
					caso 2:
					limpa()
					GT_coffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao GTX(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[1][1]){
				MatrizEstoqueInt[1][1] = (MatrizEstoqueInt[1][1] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				GTX_Coffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[1][1], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						GTX()
						pare
						caso 2:	
						limpa()
						GTX_Coffee()				
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					GTX()
					pare
					caso 2:
					limpa()
					GTX_Coffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao RTX(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[1][2]){
				MatrizEstoqueInt[1][2] = (MatrizEstoqueInt[1][2] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				RTX_coffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[1][2], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						RTX()
						pare
						caso 2:	
						limpa()
						RTX_coffee()				
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					RTX()
					pare
					caso 2:
					limpa()
					RTX_coffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao Noctua(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[2][0]){
				MatrizEstoqueInt[2][0] = (MatrizEstoqueInt[2][0] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				noctua_Ice_Coffe()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[2][0], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						Noctua()
						pare
						caso 2:
						limpa()
						noctua_Ice_Coffe()					
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					Noctua()
					pare
					caso 2:
					limpa()
					noctua_Ice_Coffe()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao Water(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[2][1]){
				MatrizEstoqueInt[2][1] = (MatrizEstoqueInt[2][1] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				water_cooled_coffe()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[2][1], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						Water()
						pare
						caso 2:	
						limpa()
						water_cooled_coffe()				
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					Water()
					pare
					caso 2:
					limpa()
					water_cooled_coffe()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
}	funcao Air(){
		escreva("Quantos produtos você gostaria de adicionar ao carrinho? ")
		leia(quantidade)
		limpa()
		se(t.cadeia_e_inteiro(quantidade, 10)){
				inteiro quantidade2 = t.cadeia_para_inteiro(quantidade, 10)
			se(quantidade2 > 0 e quantidade2 <= MatrizEstoqueInt[2][2]){
				MatrizEstoqueInt[2][2] = (MatrizEstoqueInt[2][2] - quantidade2)
				escreva("Produto adicionado com sucesso!")
				u.aguarde(agd)
				limpa()
				air_cooler_coffee()				
			}senao{
				escreva("Não é possível adicionar ", quantidade," unidade desse produtos ao carrinho, pois resta apenas ", MatrizEstoqueInt[2][2], " em estoque.")					 
				cadeia option_pro
				logico check = falso
				enquanto(check==falso){
					escreva("\n\nPara reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
					leia(option_pro)
						se(t.cadeia_e_inteiro(option_pro, 10)){
						inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
						escolha(option_pro2) {
						caso 1:
						limpa()
						Air()
						pare
						caso 2:
						limpa()
						air_cooler_coffee()					
						pare
						caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
						pare
						}
						}senao{
							limpa()
							escreva("\"",option_pro,"\"", " não é uma opção válida!")
							u.aguarde(agd)
    							para (inteiro t = cmt; t > -1; t--) {
    								limpa()
    								escreva("Tente novamente em: ",t, "...\n")
    								u.aguarde(1000)
    								limpa()
							}
							check = falso
						}					
				}
			}
		}senao{
			escreva("\"",quantidade,"\"", " não é um número válido de produtos.\n\n")
			cadeia option_pro
			logico check = falso
			enquanto(check==falso){
				escreva("Para o reinserir, digite (1)\nPara voltar digite (2)\nOpção:")
				leia(option_pro)
				se(t.cadeia_e_inteiro(option_pro, 10)){
					inteiro option_pro2 = t.cadeia_para_inteiro(option_pro, 10)
					escolha(option_pro2) {
					caso 1:
					limpa()
					Air()
					pare
					caso 2:
					limpa()
					air_cooler_coffee()
					pare
					caso contrario:
						limpa()
				 		escreva("\"",option_pro,"\"", " não é uma opção válida!")
				 		u.aguarde(agd)
				 		limpa()
				 		para (inteiro t = cmt; t > -1; t--) {
    							limpa()
    							escreva("Tente novamente em: ",t, "...\n")
    							u.aguarde(1000)
    							limpa()
				 		}
				 		check = falso
					pare
					}
				}senao{
					limpa()
					escreva("\"",option_pro,"\"", " não é uma opção válida!")
					u.aguarde(agd)
    					para (inteiro t = cmt; t > -1; t--) {
    						limpa()
    						escreva("Tente novamente em: ",t, "...\n")
    						u.aguarde(1000)
    						limpa()
					}
					check = falso
					}			
			}	
		}
		
}
funcao carrinho(){	
		limpa()
		real ctg31s = VetorCarrinho[6] * t.cadeia_para_real(ctg31[2])
		real ctg32s = VetorCarrinho[7] * t.cadeia_para_real(ctg32[2])
		real ctg33s = VetorCarrinho[8] * t.cadeia_para_real(ctg33[2])
		real ctg21s = VetorCarrinho[3] * t.cadeia_para_real(ctg21[2])
		real ctg22s = VetorCarrinho[4] * t.cadeia_para_real(ctg22[2])
		real ctg23s = VetorCarrinho[5] * t.cadeia_para_real(ctg23[2])
		real ctg11s = VetorCarrinho[0] * t.cadeia_para_real(ctg11[2])
		real ctg12s = VetorCarrinho[1] * t.cadeia_para_real(ctg12[2])
		real ctg13s = VetorCarrinho[2] * t.cadeia_para_real(ctg13[2])
		escreva("|=====================================================|\n")
		escreva("|     Produtos       |    Quantidade  |   Preço/un    |\n")
     	escreva("|--------------------|----------------|---------------|\n")
     	escreva("|Noctua Ice Coffee   |",VetorCarrinho[6],"               |$", ctg31s,"         |                   _____\n")
     	escreva("|--------------------|----------------|---------------|                 _/—————||\n")
     	escreva("|Water Cooled Coffee |",VetorCarrinho[7],"               |$", ctg32s,"         | _  |          _/———————||\n")
     	escreva("|--------------------|----------------|---------------|(_)-|         /————————/||\n")
     	escreva("|Air Cooler Coffee   |",VetorCarrinho[8],"               |$", ctg33s,"         |    |        |————————/—||\n")
     	escreva("|--------------------|----------------|---------------|    |        |———————/——||\n")
     	escreva("|GT Coffee           |",VetorCarrinho[3],"               |$", ctg21s,"         |    |        |——————/———||\n")
		escreva("|--------------------|----------------|---------------|    |        |—————/————||\n") 
		escreva("|GTX Coffee          |",VetorCarrinho[4],"               |$", ctg22s,"         |    |      /\\|————/—————||\n")
     	escreva("|--------------------|----------------|---------------|    |     /  |———/——————||\n")
     	escreva("|RTX Coffee          |",VetorCarrinho[5],"               |$", ctg23s,"         |    |    /   |——/———————||\n")
     	escreva("|--------------------|----------------|---------------|    |   /    |—/————————||\n")
      	escreva("|Nvidia Coffee       |",VetorCarrinho[0],"               |$", ctg11s,"         |    |  /     |/—————————||\n")
      	escreva("|--------------------|----------------|---------------|    | /      |——————————||","\n")
      	escreva("|Galaxy Coffee       |",VetorCarrinho[1],"               |$", ctg12s,"         | _  |/        \\—————————||-\\","\n")
      	escreva("|--------------------|----------------|---------------|(_)-/                      /","\n")
      	escreva("|Zépa.js Coffee      |",VetorCarrinho[2],"               |$", ctg13s,"         |\n")
      	escreva("|====================|================|===============|\n")
      	escreva("                     |  Valor total =      (valor)    |\n")
	 	escreva("                     |================================|\n\n")
	 	escreva("Para efetuar compra dos produtos adicionados, digite (1)\nPara voltar ao menu principal, digite (2)\nOpção: ")
	 	cadeia option_car
	 	leia(option_car)
	 	se(t.cadeia_e_inteiro(option_car,10)){
			inteiro option_car2 = t.cadeia_para_inteiro(option_car, 10)
			escolha(option_car2){
			caso 1:
			limpa()
			escreva("Menu \"Método de Pagamento\" em construção...")
			u.aguarde(agd)
			limpa()
			para (inteiro t = cmt; t > -1; t = t - 1) {
				escreva("Voltando em: ", t, "...")
				u.aguarde(1000)
				limpa()
               }
			pare
			caso 2:
			limpa()
			para (inteiro t = cmt; t > -1; t = t - 1) {
				escreva("Voltando ao menu principal em: ", t, "...")
				u.aguarde(1000)
				limpa()
               }
			menuprin()

			pare
			caso contrario:
				limpa()
				escreva("\"", option_car2, "\"", " não é uma opção válida!\n")
				u.aguarde(agd)
				limpa()
				para (inteiro t = cmt; t > -1; t = t - 1) {
					escreva("Tente novamente em: ", t, "...")
					u.aguarde(1000)
					limpa()
               	}
			pare
			}
		}senao{
	 		limpa()
			escreva("\"", option_car, "\"", " não é uma opção válida!\n")
			u.aguarde(agd)
			limpa()
			para (inteiro t = cmt; t > -1; t = t - 1) {
				escreva("Tente novamente em: ", t, "...")
				u.aguarde(1000)
				limpa()
			}
			carrinho()
		}	
	}
	funcao AdicaoCarrinho(){
	VetorCarrinho[0] = t.cadeia_para_inteiro(MatrizEstoqueCad[0][0] , 10) - MatrizEstoqueInt[0][0]
	VetorCarrinho[1] = t.cadeia_para_inteiro(MatrizEstoqueCad[0][1] , 10) - MatrizEstoqueInt[0][1]
	VetorCarrinho[2] = t.cadeia_para_inteiro(MatrizEstoqueCad[0][2] , 10) - MatrizEstoqueInt[0][2]
	VetorCarrinho[3] = t.cadeia_para_inteiro(MatrizEstoqueCad[1][0] , 10) - MatrizEstoqueInt[1][0]
	VetorCarrinho[4] = t.cadeia_para_inteiro(MatrizEstoqueCad[1][1] , 10) - MatrizEstoqueInt[1][1]
	VetorCarrinho[5] = t.cadeia_para_inteiro(MatrizEstoqueCad[1][2] , 10) - MatrizEstoqueInt[1][2]
	VetorCarrinho[6] = t.cadeia_para_inteiro(MatrizEstoqueCad[2][0] , 10) - MatrizEstoqueInt[2][0]
	VetorCarrinho[7] = t.cadeia_para_inteiro(MatrizEstoqueCad[2][1] , 10) - MatrizEstoqueInt[2][1]
	VetorCarrinho[8] = t.cadeia_para_inteiro(MatrizEstoqueCad[2][2] , 10) - MatrizEstoqueInt[2][2]
	carrinho()
}
			
} 			

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79468; 
 * @DOBRAMENTO-CODIGO = [199, 204, 211, 215, 136];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */