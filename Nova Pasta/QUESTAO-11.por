programa
{
	funcao inteiro votacao(){
		inteiro voto
		faca{
		escreva("novo voto:")
		leia(voto)
		se(voto>=0 e voto<7){}senao{escreva("voto invalido.")}
		}enquanto(nao(voto>=0 e voto<7))
			
		retorne voto
	}	
	funcao inicio()
	{	cadeia candidatos[6]={"Valorant","Among Us","Free Fire","Rust","Pixel Ripped","Celeste"}
		real z=0.0,contador[6]={0.0,0.0,0.0,0.0,0.0,0.0}
		inteiro x
		faca{
			x=votacao()
			se(x==0){
				pare
			}senao{
				contador[x-1]++
			}
			
		}enquanto(verdadeiro)
		
		para(inteiro i=0;i<6;i++){
			z+=contador[i]
		}
		
		para(inteiro i=0;i<6;i++){
			escreva(candidatos[i]," votos: ",contador[i],", ",(contador[i]/z)*100,"%.\n")
			escreva("Total de voto: ",z)
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 88; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */