programa
{
	
	funcao inicio()
	{
		cadeia genero,olhos,cabelos,nome[10]
		inteiro idade[10],maior=0,b=0
		escreva("cadastre estudantes")
		para(inteiro i=0;i<10;i++){
			limpa()
			escreva("cadastro ",i+1,"\n")
			escreva("nome: ")
			leia(nome[i])
			escreva("idade: ")
			leia(idade[i])
			escreva("genero: ")
			leia(genero)
			escreva("\ncor dos olhos: ")
			leia(olhos)
			escreva("cor do cabelo: ")
			leia(cabelos)
			se(idade[i]>idade[maior]){
				maior = i
			}
			se(idade[i]>17 e idade[i]<36 e olhos =="castanhos" e cabelos=="preto" e genero=="feminino"){
				b++
			}  
		}
		escreva("mais velho é ",nome[maior],", ",idade[maior]," anos\n")
		escreva(b,": individuos do genero feminino, olhos castanhos, cabelos pretos, entre 18 a 35 anos\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 277; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */