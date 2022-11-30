programa
{
	
	funcao inicio()
	{
		cadeia aluno[5]
		real nota[5],media=0
		inteiro index[5],contador=0
		para(inteiro i=0;i<5;i++){
			escreva("cadastro 0",i+1,"\n")
			escreva("nome: ")
			leia(aluno[i])
			escreva("nota: ")
			leia(nota[i])
			media+=nota[i]
		}
		media=media/5
		para(inteiro i=0;i<5;i++){
			se(nota[i]>media){
				index[contador]=nota[i]
				contador++
					
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */