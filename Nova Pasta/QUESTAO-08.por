programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade,estudantes
		escreva("numero de estudantes: ")
		leia(estudantes)
		para(inteiro i=0;i<estudantes;i++){
			escreva("nome: ")
			leia(nome)
			escreva("idade: ")
			leia(idade)
			se(idade>17){
				escreva(nome," você esta apto(a) a tirar a carteira de motorista.\n")
			}senao{
				escreva(nome," você não esta apto(a) a tirar a carteira de motorista.\n")
			}
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 373; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */