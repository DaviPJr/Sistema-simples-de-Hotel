programa
{
	     inteiro max_hospedes = 9, indice2, indice3
		caracter info = 'N', confirmar, lazer
		cadeia nomes[10], nome
		cadeia cpfs[10], cpf
		inteiro diaHospedado[10]
		inteiro totalDespesas[10], diaria = 100
		inteiro indiceHospede = 0, dias = 0
	funcao inicio()
	{
	     inteiro option = 9
	     
	     menu(option)
	
	
	}
	funcao inteiro menu(inteiro op){
		faca{
		escreva("\nBem-vindo ao sistema do Hotel\n")
		escreva("------- MENU ----------\n")
		escreva("Digite: 1- Cadastrar hóspedes. 2- Exibir hóspedes cadastrados. 3- Reservar área de lazer. 4- Calcular total a pagar. 0- Sair: ")
		leia(op)
		escolha (op){
			caso 1:
			cadastrarHospede()
			pare

			caso 2:
			exibirHospedes()
			pare

			caso 3:
			reservaLazer(diaria)
			pare

			caso 4:
			totalPagar(diaria)
			escreva("O total dos gastos é de ",totalDespesas[indiceHospede] + dias*100)
			pare

			caso 0:
			escreva("Obrigado por utilizar o sistema do hotel, até logo!")
			pare

			caso contrario:
			escreva("Opção inválida, tente novamente!")	
		}	
     
		}enquanto (op != 0)
		retorne op
	}
	funcao cadastrarHospede() {
		faca {
		se (indiceHospede <= max_hospedes){
			escreva("\nInforme o nome do hóspede: ")
			leia(nome)
			escreva("\nInforme o CPF do hóspede: ")
			leia(cpf)
			escreva("\nInforme a quantidade de dias que ficará hospedado (A diária tem um valor de $100): ")
			leia(dias)
			escreva("Índice: ", indiceHospede," Nome: ", nome, " CPF: ",cpf, " Dias hospedado: ", dias)
			escreva("\nAs informações estão corretas? S/N: ")
			leia(confirmar)
			se (confirmar == 'S' ou confirmar == 's'){
			    totalDespesas[indiceHospede] = dias*100
			    nomes[indiceHospede] = nome 
			    cpfs[indiceHospede] = cpf 
			    diaHospedado[indiceHospede] = dias 
			    indiceHospede++
			    escreva("\nCadastro confirmado!")
			}
		}
		senao{
			escreva("\nLimite máximo de cadastros atingidos!")
		}
		}enquanto(confirmar == 'N')
		
	}
	funcao exibirHospedes() {
		     para (inteiro i = 0; i < indiceHospede; i++){
			escreva("\nÍndice ", i)
			escreva("\nNome: ",nomes[i])
			escreva("\nCPF: ", cpfs[i])
			escreva("\nQuantidade de dias: ",diaHospedado[i])
			escreva("\nDespesas até o momento: ",totalDespesas[i])
		     }
	}
	funcao inteiro reservaLazer (inteiro l){
		exibirHospedes()
			escreva("\nQual o índice do hóspede? ")
		     leia(indice2)
		se (indice2 <= indiceHospede){
			escreva("Qual a área de lazer desejada? Academia $20, Salão de Festas $50, Restaurante $35. A/S/R: ")
		     leia(lazer)
		     escolha(lazer){
			caso 'A':
			totalDespesas[indiceHospede] = totalDespesas[indiceHospede] + 20
			escreva("O valor foi adicionado a sua conta.")
			pare

			caso 'S':
			totalDespesas[indiceHospede] = totalDespesas[indiceHospede] + 50
			escreva("O valor foi adicionado a sua conta.")
			pare

			caso 'R':
			totalDespesas[indiceHospede] = totalDespesas[indiceHospede] + 35
			escreva("O valor foi adicionado a sua conta.")
			pare
		}
		}
		retorne l
		}
	funcao inteiro totalPagar(inteiro M){
		exibirHospedes()
		faca{
		escreva("\nQual o seu índice: ")
		leia(indice3)
		}enquanto (indice3 == indiceHospede)
		se (indiceHospede == indice3){
			escreva(totalDespesas[indiceHospede])
		}
		retorne M
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */