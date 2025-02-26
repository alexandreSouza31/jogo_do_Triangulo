programa {
  funcao inicio() {

    cadeia nomePrograma="jogo dos triângulos", versaoPrograma="1.0", verificarOutroTriangulo
    escreva("Bem-vindo(a) ao " + nomePrograma  + " " + versaoPrograma + "!", "\n")
    
    real x=0.0,y=0.0,z=0.0

	faca{
		escreva("digite o lado 'X'","\n")
		leia(x)
	
		escreva("digite o lado 'Y'","\n")
		leia(y)
	
		escreva("digite o lado 'Z'","\n")
		leia(z)

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

  
    		logico equilatero= (x == y) e (y == z), isosceles= (x==y) e (x!=z) ou (y==z) e (y!=x) ou (x==z), escaleno=x != y e y != z e x!=z


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
