programa
{
	inclua biblioteca Texto-->txt
//---------------------------------------------------------------------------------------------------
	funcao inteiro ler_med(cadeia medicamentos[]){
		cadeia palavra="*"
		inteiro j=-1
		enquanto(nao(palavra=="sair")){
			escreva("digite sair ou um medicamento: ")
			leia(palavra)
			palavra=txt.caixa_baixa(palavra)
			para(inteiro i=0;i<8;i++){
				se(palavra==medicamentos[i]){
					j=i	
					palavra="sair"
					pare
				}
			}
		}
		
		retorne j
	}
//---------------------------------------------------------------------------------------------------	
	funcao inteiro ler_sintoma(cadeia sintoma[]){
		cadeia palavra="*"
		inteiro j=-1
		enquanto(nao(palavra=="sair")){
			escreva("digite sair ou um sintoma: ")
			leia(palavra)
			palavra=txt.caixa_baixa(palavra)
			para(inteiro i=0;i<5;i++){
				se(palavra==sintoma[i]){
					j=i	
					palavra="sair"
					pare
				}
			}
			se(j==-1){
				escreva("\nprocure um medico\n\n")
			}	
		}
		
		retorne j
	}
	//---------------------------------------------------------------------------------------------
	funcao inicio()
	{
		cadeia medicamento[8]={"dramatic","padentrum","geslado","relashow","cabeçã","leuza","catapum","buxin"}
		cadeia sintoma[5]={"enjoo","dor muscular","dor de cabeça","gases","azia"}
		real preco[8]={11.10,15.30,12.80,8.25,10.50,8.20,5.50,2.40}
		inteiro x,y
		x=ler_sintoma(sintoma)
		escolha(x){
			caso 0:
				escreva("Sugestão de medicamento: Dramatic, PaDentrum\n")
				y=ler_med(medicamento)
				escreva("Preço R$ ",preco[y])
			pare
			caso 1:
				escreva("Sugestão de medicamento: Geslado, Relashow\n")
				y=ler_med(medicamento)
				escreva("Preço R$ ",preco[y])
			pare
			caso 2:
				escreva("Sugestão de medicamento: Cabeçã, Leuza\n")
				y=ler_med(medicamento)
				escreva("Preço R$ ",preco[y])
			pare
			caso 3:
				escreva("Sugestão de medicamento: Catapum\n")
				y=ler_med(medicamento)
				escreva("Preço R$ ",preco[y])
			pare
			caso 4:
				escreva("Sugestão de medicamento: Buxin\n")
				y=ler_med(medicamento)
				escreva("Preço R$ ",preco[y])
			pare
			
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2097; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */