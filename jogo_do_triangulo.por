programa {
  funcao inicio() {

    cadeia nomePrograma
    nomePrograma="jogo dos triângulos"
    cadeia versaoPrograma
    versaoPrograma="1.0"
    escreva("Bem-vindo(a) ao" + nomePrograma  + " " + versaoPrograma, "\n")
    
    real x=0.0,y=0.0,z=0.0
	/*		1. Entrada de Dados:
				○ O programa solicita ao usuário três valores (X, Y, Z) que representam os lados de um triângulo.
	*/

	cadeia verificarOutroTriangulo

	faca{
		escreva("digite o lado 'X'","\n")
		leia(x)
	
		escreva("digite o lado 'Y'","\n")
		leia(y)
	
		escreva("digite o lado 'Z'","\n")
		leia(z)


	/*		2. Classicação do Triângulo:
				○ O programa verica se os valores formam um triângulo válido, seguindo a condição de existência:
					■ A soma de quaisquer dois lados deve ser maior que o terceiro lado.
    */
    		se(x+z<y){
    			escreva("Triângulo inválido! Os lados X e Z devem ser maiores que o lado Y!")
    			retorne
    		}senao se(x+y<z){
    			escreva("Triângulo inválido! Os lados X e Y devem ser maiores que o lado Z!")
    			retorne
    		}senao se(y+z<x){
    			escreva("Triângulo inválido! Os lados Y e Z devem ser maiores que o lado X!")
    			retorne
    		}

    /* 			Se os valores formarem um triângulo válido, o programa classica o triângulo em:
    					■ Equilátero: Todos os lados iguais.
					■ Isósceles: Dois lados iguais.
					■ Escaleno: Todos os lados diferentes. Caso contrário, o programa informa que o triângulo é inválido
    */
    		logico equilatero= (x == y) e (y == z), isosceles= (x==y) e (x!=z) ou (y==z) e (y!=x) ou (x==z), escaleno=x != y e y != z e x!=z


		//● Validação de entrada: Para garantir que os valores inseridos sejam positivos e válidos.

    		se(x<=0 ou y<=0 ou z<=0){
      		escreva("Os valor de X, Y,e/ou Z é(são) inválido(s)!")
      		retorne
      
    		}senao{
      		se(equilatero){
        			escreva("Triângulo Equilátero, pois todos os lados são iguais!","\n")
      		}senao se(isosceles){
        			escreva("Triângulo Isósceles, pois pelo menos dois lados são iguais!","\n")
      		}senao{
        			escreva("Triângulo Escaleno, pois todos os lados são diferentes!","\n")
      		}
    		}

    		escreva("Deseja verificar outro triângulo? [s/n] ")
    		leia(verificarOutroTriangulo)

    		}enquanto(verificarOutroTriangulo=="s")
  	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1051; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */