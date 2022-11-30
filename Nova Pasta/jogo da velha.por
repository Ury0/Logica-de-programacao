
/////// JOGO DA VELHA -------------------------------------------------------------------------
programa
{	
	logico matriz_chave[3][3]
//-----------------------------------------------------------------------------	
	funcao ler_posicao(inteiro &posicao[],cadeia nome[],logico jogador){
			inteiro i=0,n
			cadeia linha[2]={"LINHA-----|","COLUNA----|"}
			se(jogador){
				n=0
			}senao{
				n=1
			}
			faca{
				escreva("\n|---------------------------------|")
				escreva("\n|---jogador: ",nome[n])
				escreva("\n|---digite a posicao da ",linha[i])
				escreva("\n|--------------- ")
				leia(posicao[i])
				se(0<posicao[i] e posicao[i]<=3){
					i++
				}senao{
					escreva("\nERRO.digite novamente valor da ",linha[i],"\n")
				}	
			}enquanto(i<2)
	}
//--------------------------------------------------------------------------------------------
	funcao ler_matriz(logico jogador,cadeia &matriz[][],inteiro &posicao[],cadeia nome[]){
		logico fim = verdadeiro
		faca{
			ler_posicao(posicao,nome,jogador)
			para(inteiro i=0;i<posicao[0];i++){
				para(inteiro j=0;j<posicao[1];j++){
					se(i == posicao[0]-1 e j == posicao[1]-1 e matriz_chave[i][j]){
						se(jogador){
							fim = falso
							 matriz[i][j]="X"
							 matriz_chave[i][j]=falso
						}senao{
							matriz[i][j]="O"
							matriz_chave[i][j]=falso
							fim = falso
						}
					} 
				}
			}
		}enquanto(fim)
	}
//---------------escrever matriz--------------------------------------------------------------------------------
	funcao escrever_matriz(cadeia matriz[][]){
		inteiro i=0,j=0,count_i=0,count_j=0
		enquanto(i<3){
			se(count_i%2==0){
				j=0
				count_j=0
				escreva("|              ")
				enquanto(j<3){
					se(count_j%2==0){
						
						escreva(matriz[i][j])
						j++
					}senao{
						escreva("|")
					}
					count_j++	
				}
				escreva("              |")
				i++
			}senao{
				escreva("\n|              ")
				escreva("-----")
				escreva("              |\n")
			}
			count_i++	
		}		
			
		
	}
//---------------------------------------------------------------------------------
	funcao inteiro verifica(cadeia matriz[][],logico jogador){
		inteiro vitoria=2
		para(inteiro i=0;i<3;i++){
			se(matriz[i][0]==matriz[i][1] e matriz[i][0]==matriz[i][2]){
				se(nao(matriz[i][0]=="*" e matriz[i][1]=="*" e matriz[i][2]=="*")){
					se(jogador){
						vitoria=0
					}senao{
						vitoria=1
					}
					pare
				}
			}senao se(matriz[0][i]==matriz[1][i] e matriz[0][i]==matriz[2][i]){
				se(nao(matriz[0][i]=="*" e matriz[1][i]=="*" e matriz[2][i]=="*")){
					se(jogador){
						vitoria=0
					}senao{
						vitoria=1
					}
					pare
				}
			}senao se(matriz[1][1]==matriz[0][0] e matriz[1][1]==matriz[2][2]){
				se(nao(matriz[i][i]=="*")){
					se(jogador){
						vitoria=0
					}senao{
						vitoria=1
					}
					pare
				}
			}senao se(matriz[1][1]==matriz[0][2] e matriz[1][1]==matriz[2][0]){
				se(nao(matriz[0][2]=="*" e matriz[1][1]=="*" e matriz[2][0]=="*")){
					se(jogador){
						vitoria=0
					}senao{
						vitoria=1
					}
					pare
				}
			}
		}
		retorne vitoria
	}
//----------------------------------------------------------------------------------------------------------------------
	funcao logico velha(cadeia matriz[][]){
		logico empate=falso
		inteiro count=0
		para(inteiro i=0;i<3;i++){
//--linha---------------------------------------------------------------------------------------------------------------
			se(matriz[i][0]!="*" e matriz[i][1]!="*" e matriz[i][2]!="*"){
				se(matriz[i][0]!=matriz[i][1] ou matriz[i][0]!=matriz[i][2] ou matriz[i][1]!=matriz[i][2]){
					count++
				}	
			}senao se(matriz[i][0]!=matriz[i][1] e matriz[i][0]!=matriz[i][2] e matriz[i][1]!=matriz[i][2]){
				count++
			}		
//--coluna--------------------------------------------------------------------------------------------------------------	
			se(matriz[0][i]!="*" e matriz[1][i]!="*" e matriz[2][i]!="*"){
				se(matriz[0][i]!=matriz[1][i] ou matriz[0][i]!=matriz[2][i] ou matriz[1][i]!=matriz[2][i]){
					count++
				}
			}senao se(matriz[0][i]!=matriz[1][i] e matriz[0][i]!=matriz[2][i] e matriz[1][i]!=matriz[2][i]){
				count++	
			}				
		}
//--diagonal-e----------------------------------------------------------------------------------------------------------
			se(matriz[0][0]!="*" e matriz[1][1]!="*" e matriz[2][2]!="*"){
				se(matriz[0][0]!=matriz[1][1] ou matriz[0][0]!=matriz[2][2] ou matriz[1][1]!=matriz[2][2]){
					count++
				}
			}senao se(matriz[0][0]!=matriz[1][1] e matriz[0][0]!=matriz[2][2] e matriz[1][1]!=matriz[2][2]){
				count++	
			}
//--diagonal-d--------------------------
			se(matriz[0][2]!="*" e matriz[1][1]!="*" e matriz[2][0]!="*"){
				se(matriz[1][1]!=matriz[0][2] ou matriz[1][1]!=matriz[2][0] ou matriz[0][2]!=matriz[2][0]){
					count++
				}
			}senao se(matriz[1][1]!=matriz[0][2] e matriz[1][1]!=matriz[2][0] e matriz[0][2]!=matriz[2][0]){
				count++	
			}
			se(nao(count<7)){
				empate=verdadeiro
			}
		retorne empate
	}
//======= introducao ==============================================================================
	funcao inteiro introducao(cadeia &nome[],logico primeiro,cadeia matriz[][]){
			cadeia novo_jogo
			inteiro s=0
			ini_matriz(matriz)
			se(primeiro){
				escreva("----------*JOGO DA VELHA*----------\n")
				escreva("digite qualque tecla para continuar\n")
				escreva("--------------- ou ----------------\n")
				escreva("---- digite sair para finalisar ---\n")
			
			}senao{
				escreva("----------*JOGO DA VELHA*----------\n")
				escreva("digite qualque tecla para continuar\n")
				escreva("--------------- ou ----------------\n")
				escreva("------- digite sair revanche ------\n")
				escreva("--------------- ou ----------------\n")
				escreva("---- digite sair para finalisar ---\n")
				
			}
			leia(novo_jogo)
			se(novo_jogo=="sair"){
				s=1
				
			}senao se(novo_jogo=="revanche" e nao(primeiro)){
				s=2
			}senao{
				para(inteiro i=0;i<2;i++){
				escreva("insira o nome do jogador 0",i+1,":")
				leia(nome[i])
				escreva("\n")
				}
			}
		retorne s	
	}
//===================fimdejogo========================================================================
	funcao logico fim_jogo(cadeia matriz[][],logico jogador,cadeia nome[]){
		logico a,c=falso
		inteiro b
		b=verifica(matriz,jogador)
		a=velha(matriz)
		se(nao (b==2)){
			escreva("vitoria: ",nome[b])
			c=verdadeiro
		}senao se(a){
			escreva("velha")
			c=verdadeiro
		}senao{
			c=falso
		}
		retorne c
	}
//===============ini_matriz========================================================================
	funcao ini_matriz(cadeia &matriz[][]){
		para(inteiro i=0;i<3;i++){
			para(inteiro j=0;j<3;j++){
				matriz[i][j]="*"
				escreva("/")
			}	
		}
		para(inteiro i=0;i<3;i++){
			para(inteiro j=0;j<3;j++){
				matriz_chave[i][j]=verdadeiro
				escreva("/")
			}	
		}
		escreva("\n\n")	
	}
//=====continua===================
	funcao continua(){
		cadeia a
		escreva("\n|--digite qualquer coisa pra continuar--|\n")
		leia(a)
	}

//=============================== INICIO ==========================================================
	funcao inicio()
	{
		cadeia letra,nome[2],pontus[2],novo_jogo,matriz[3][3]
		inteiro posicao[2],rodadas=0
		logico novojogo = verdadeiro,fimdejogo=verdadeiro,primeiro_jogo=verdadeiro,jogador
		

		
					
		enquanto(novojogo){//-------------loop(loop())-----------------------------
			
			inteiro contador=0
			continua()
			limpa()
			se(introducao(nome,primeiro_jogo,matriz)==1){
				novojogo=falso
				pare
			}senao{novojogo=verdadeiro}
			escrever_matriz(matriz)
			//-------------------------loop()-------------------------------------------
			faca{
				inteiro i=2
				
				se(contador%2==0){
					i=0 
					jogador=verdadeiro
				}senao{
					i=1 
					jogador=falso
				}
				ler_matriz(jogador,matriz,posicao,nome)
				escrever_matriz(matriz)
				fimdejogo= nao fim_jogo(matriz,jogador,nome)

			
				contador++
			}enquanto(fimdejogo)
			//---------------------------------------------------------------------------
			
			se(primeiro_jogo){
				primeiro_jogo=falso
			
			}
			
		}
//-------------------------------------------------------------------------------------------------------		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7018; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */