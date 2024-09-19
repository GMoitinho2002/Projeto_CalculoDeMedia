programa
{
  inclua biblioteca Matematica --> mat

  funcao inicio()
  {
    inteiro ra
    real nota1, nota2, nota3, exercicio1, exercicio2, exercicio3, me, mf
    cadeia nome, conceito
    escreva("�---------------------------*** C�lculo de m�dia ***�---------------------------\n\n")
    
    // Entrada de dados
    escreva("RA: ")
    leia(ra)
    escreva("Nome: ")
    leia(nome)
    escreva("Nota 1: ")
    leia(nota1)
    escreva("Nota 2: ")
    leia(nota2)
    escreva("Nota 3: ")
    leia(nota3)
    escreva("Nota de exerc�cio 1: ")
    leia(exercicio1)
    escreva("Nota de exerc�cio 2: ")
    leia(exercicio2)
    escreva("Nota de exerc�cio 3: ")
    leia(exercicio3)

    // C�lculo da m�dia dos exerc�cios
    me = (exercicio1 + exercicio2 + exercicio3) / 3

    // C�lculo da m�dia final ponderada
    mf = (nota1 + nota2 * 2 + nota3 * 3 + me) / 7
    mf = mat.arredondar(mf, 2)
    escreva("\nM�dia: ", mf)

    // Determina��o do conceito
    se (mf >= 9.0)
    {
      conceito = "A"
    }
    senao se (mf >= 7.5 e mf < 9.0)
    {
      conceito = "B"
    }
    senao se (mf >= 6.0 e mf < 7.5)
    {
      conceito = "C"
    }
    senao se (mf >= 4.0 e mf < 6.0)
    {
      conceito = "D"
    }
    senao
    {
      conceito = "E"
    }

    // Determina��o da aprova��o ou reprova��o
    se (conceito == "A" ou conceito == "B" ou conceito == "C")
    {
      escreva("\n\nO conceito atingido foi ", conceito, " e o(a) aluno(a) est� Aprovado.", "\n")
    }
    senao
    {
      escreva("\n\nO conceito atingido foi ", conceito, " e o(a) aluno(a) est� Reprovado.", "\n")
    }
  }
}
