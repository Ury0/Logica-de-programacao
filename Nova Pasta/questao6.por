programa
{
	inclua biblioteca Matematica-->mat 
	funcao inicio()
	{
		real salario
		escreva("|--------------------------------------------|\n")
		escreva("| salario inicial: ")
		leia(salario)
		escreva("\n|--------------------------------------------|")
		escreva("\n|Salario inicial: R$",mat.arredondar(salario,1))
		escreva("\n|Salario com aumento: R$",mat.arredondar(salario*=1.15,1))
		escreva("\n|Salario final: R$",mat.arredondar(salario*=0.92,1))
		escreva("\n|--------------------------------------------|")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 510; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */