programa
{
    funcao inicio()
    {
        inteiro horas[5]
        real valores[5]
        inteiro i
        inteiro curtos = 0, medios = 0, longos = 0
        real total = 0
        inteiro maior = 0

        para (i = 0; i < 5; i++)
        {
            escreva("Digite as horas do aluguel ", i + 1, ": ")
            leia(horas[i])

            valores[i] = horas[i] * 10.0

            se (horas[i] >= 3)
            {
                valores[i] = valores[i] - 5.50
            }

            total = total + valores[i]

            se (horas[i] == 1)
            {
                curtos++
            }
            senao se (horas[i] <= 3)
            {
                medios++
            }
            senao
            {
                longos++
            }

            se (horas[i] > horas[maior] ou i == 0)
            {
                maior = i
            }
        }

        escreva("\n--- ALUGUEIS DO DIA ---\n")

        para (i = 0; i < 5; i++)
        {
            escreva("Aluguel ", i + 1, ": ",
                horas[i], " horas | R$ ",
                valores[i], "\n")
        }

        escreva("\n--- RESUMO ---\n")
        escreva("Total arrecadado: R$ ", total, "\n")
        escreva("Alugueis curtos: ", curtos, "\n")
        escreva("Alugueis medios: ", medios, "\n")
        escreva("Alugueis longos: ", longos, "\n")
        escreva("Maior aluguel: ", horas[maior], " horas\n")
    }
}
