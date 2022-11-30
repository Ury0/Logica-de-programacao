programa
{
	
	funcao inicio()
	{
		inteiro idade,media=0,contador=0
		faca{
		
		escreva("idade: ")
		leia(idade)
		se(idade<0){
			pare
		}
		media+=idade
		contador++
		
		}enquanto(nao (idade<0))
		media=media/contador
		escreva("quantidade de estudantes: ",contador,"\n")
		escreva("media das idades: ",media," anos\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */