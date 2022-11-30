programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{	inteiro n=0,s=0,m=0,d=0,p=0
		real potm,potd
		caracter letra ='q',voto
		escreva("exercicios: 7,10,11\n")
		enquanto(letra != 's'){
			limpa()
			escreva("digite questao\n")
			leia(s)
			escolha(s){
				caso 7:
					escreva("informe numero de participantes da votação\n")
					leia(n)
					p = n
					para(n;n>0;n--){
						escreva ("voto ",(p-n+1)," Marvel(M) x DC(D)\n")
						leia(voto)
						se(voto == 'M' ou voto =='m'){
							m++	
						}senao se(voto == 'D' ou voto =='d'){
							d++
						}senao{
							n++
						} 
					}
					potm =mat.arredondar((m*100.0)/p,2)
					potd =mat.arredondar((d*100.0)/p,2)
					escreva(potm,"% Marvel\n",potd,"% DC\n")
				pare
				caso 10:
					escreva("Digite um numero ")
					leia(n)
					p=0
					para(inteiro i=0;i<=n-1;i++){
						se(n%(n-i)==0){
							p++	
						}	
					}
					se(p == 2){
						escreva(n," É um numero primo\n")	
					}senao{
						escreva(n," não é um numero primo\n")
					}
				pare
				caso 11:
					d = 0
					n = 0
					cadeia mes
					cadeia oroscopo[11] ={"capricornio","aries","touro","gemeos","cancer","leao","virgem","libra","escorpiao","sargitario","capricornio"}
					cadeia calendario[12] ={"janeiro","fevereiro","março","abril","maio","junho","julho","agosto","setembro","outubro","novembro","desembro"}
					escreva("dia e mes\n")
					leia(d)
					leia(mes)
					para(inteiro i=0;i<=12;i++){
						se(mes == calendario[i] e d < 20){
							n = i  
							escreva("seu signo é: ",oroscopo[n],n)
						}senao se(mes ==calendario[i] e d >=20){
							n = i -1
							escreva("seu signo é: ",oroscopo[n])
						}
					}
					
					
				pare
			}
			
			escreva("digite s para sair ou qualquer coisa pra continuar: ")
			leia(letra)
			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1620; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */