programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade
		faca{
		
		escreva("nome: ")
		leia(nome)
		se(nome =="sair"){
			pare
		}
		escreva("idade: ")
		leia(idade)
		se(idade>17){
			escreva(nome," você esta apto(a) a tirar a carteira de motorista.\n")
		}senao{
			escreva(nome," você NAO esta apto(a) a tirar a carteira de motorista.\n")
		}
		}enquanto(nao (nome=="sair"))
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */