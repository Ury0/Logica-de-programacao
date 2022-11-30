programa
{
//=================velha==================================================================================
	funcao logico velha(cadeia matriz[][]){
		logico empate=falso
		inteiro count=0
		para(inteiro i=0;i<3;i++){
//--linha---------------------------------------------------------------------------------------------------------
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
//--diagonal-e-----------------------------------------------------------------------------------------------------------
			se(matriz[0][0]!="*" e matriz[1][1]!="*" e matriz[2][2]!="*"){
				se(matriz[0][0]!=matriz[1][1] ou matriz[0][0]!=matriz[2][2] ou matriz[1][1]!=matriz[2][2]){
					count++
				}
			}senao se(matriz[0][0]!=matriz[1][1] e matriz[0][0]!=matriz[2][2] e matriz[1][1]!=matriz[2][2]){
				count++	
			}
//--diagonal-d----------------------------------------------------------------------------------------------------------
			se(matriz[0][2]!="*" e matriz[1][1]!="*" e matriz[2][0]!="*"){
				se(matriz[1][1]!=matriz[0][2] ou matriz[1][1]!=matriz[2][0] ou matriz[0][2]!=matriz[2][0]){
					count++
				}
			}senao se(matriz[1][1]!=matriz[0][2] e matriz[1][1]!=matriz[2][0] e matriz[0][2]!=matriz[2][0]){
				count++	
			}
			se(count>7){
				empate=verdadeiro
			}
		retorne empate
	}
//=================escreve-matriz========================================================================
	funcao escrever_matriz(cadeia matriz[][]){
		inteiro i=0,j=0,count_i=0,count_j=0
		enquanto(i<3){
			se(count_i%2==0){
				j=0
				count_j=0
				escreva("              ")
				enquanto(j<3){
					se(count_j%2==0){
						
						escreva(matriz[i][j])
						j++
					}senao{
						escreva("|")
					}
					count_j++	
				}
				i++
			}senao{
				escreva("\n-----\n")
			}
			count_i++	
		}		
			
		
	}

//======== introducao =====================================================================================
	funcao introducao(cadeia &nome[],logico primeiro){
			cadeia novo_jogo
			inteiro s=0
			
			se(primeiro){
				escreva("\n\n")
				escreva("----------*JOGO DA VELHA*----------\n")
				escreva("digite qualque tecla para continuar\n")
				escreva("--------------- ou ----------------\n")
				escreva("---- digite sair para finalisar ---\n")
			
			}senao{
				escreva("\n\n")
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
			
	}

	
//===================inicio============================================================================
	funcao inicio()
	{
		cadeia nome[2],matriz[3][3]={{"x","*","*"},
						 {"*","*","*"},
						 {"*","*","*"}}

		//escreva(velha(matriz))
		escrever_matriz(matriz)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */