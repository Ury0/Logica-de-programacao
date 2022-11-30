programa
{
	
	funcao inicio()
	{
		inteiro vet[3]
		faca{
			escreva("Escreva um valor para vet(x,y,z)\n")
			para(inteiro i=0;i<3;i++){
				leia(vet[i])
			}
				se(nao(vet[0]<vet[1]+vet[2] e vet[1]<vet[0]+vet[2] e vet[2]<vet[1]+vet[0])){
					escreva("esse verto n forma triangulo. ")
				}
			}enquanto(nao(vet[0]<vet[1]+vet[2] e vet[1]<vet[0]+vet[2] e vet[2]<vet[1]+vet[0]))

			//---------------------------------------------------------------------------------------

			se(vet[0]==vet[1] e vet[0]==vet[2]){
				escreva("///")
			}senao se(vet[0]==vet[1] ou vet[0]==vet[2] ou vet[1]==vet[2]){
				escreva("isosseles")
			}senao se (vet[0]!=vet[1] ou vet[0]!=vet[2] ou vet[1]!=vet[2]){
				escreva("treis lados diferentes")
			}

			//---------------------------------------------------------------------------------------
			


			funcao retangulo(inteiro vet[3]){
				inteiro maior = vet[0]
				para(inteiro i=0;i<3;i++){
					se(maior<vet[i]){
						maior = vet[i]
					}
				}	
			}
			//------------------------------------------------------------------------------------------
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 876; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */