Algoritmo "leitorcodbarras"
// Nome(a)    : Marcelo Augusto de Mello Paixão
// Universidade : Universidade Estácio Conceição
// Curso : Análise e Desenvolvimento de Sistemas
// Semestre Atual : 1º Semestre
// Descrição   : Este programa tem por função ler códigos de barras(Entender)
Var
   // Seção de Declarações das variáveis

   //Ordem do Código de Barras
   Origem: inteiro
   Destino: inteiro
   CodLoggi: Inteiro
   CodVendor: Inteiro
   TiProduto: Inteiro

   //Região
   CentroOeste: caractere
   Nordeste: caractere
   Norte: caractere
   Sudeste: caractere
   Sul: caractere

   //Produtos
   Joias: inteiro
   Livros: inteiro
   Eletronicos: inteiro
   Bebidas: inteiro
   Brinquedos: inteiro

   //Váriaveis de opção
   OrigemEscreva: caractere
   DestinoEscreva: caractere
   Produto: caractere

   //Váriaveis Lógicos
   OrigemTF: logico
   DestinoTF: logico
   Cnpj: logico
   TipoProduto: logico
   JoiasInvalid: logico
   Codigo: logico
   CodigoBar: logico

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   Escreval("Olá, seja bem vindo ao leitor de código de barras da LOGGI.")
   Escreval("")
   Escreval("Na tabela abaixo verifique quais são os códigos de referência:")
   Escreval("....................................")
   Escreval("Código de Referência: Cidade/Região")
   Escreval("Centro-Oeste          201 até 299")
   Escreval("Nordeste              300 até 399")
   Escreval("Norte                 400 até 499")
   Escreval("Sudeste               001 até 099")
   Escreval("Sul                   100 até 199")
   Escreval("")

   Escreval("Agora na lista abaixo, verifique o Tipo do Produto:")
   Escreval("....................................")
   Escreval("Jóias         001")
   Escreval("Livros        111")
   Escreval("Eletrônicos   333")
   Escreval("Bebidas       555")
   Escreval("Brinquedos    888")
   Escreval("")

   Escreva("Digite a Região de Origem do produto:(Apenas com Números) ")
   leia(Origem)
   Escreva("Digite a Região de Destino do produto:(Apenas com Números) ")
   Leia(Destino)

   //O código Loggi foi colocado como padrão em todas as notas
   CodLoggi <- 555

   Escreva("Digite o Código do Vendedor:(Apenas o Número) ")
   Leia(CodVendor)
   Escreva("Digite o Tipo do seu Produto:(Apenas o Número) ")
   Leia(TiProduto)
   Escreval("")
   
//Opções de Origem
OrigemTF <- verdadeiro
OrigemTF <- falso
   Escolha Origem
      //verificar os números de 1 até 100 entre outros.

   caso 201 ate 299
      OrigemEscreva <- "Centro-Oeste"

   caso 300 ate 399
      OrigemEscreva <- "Nordeste"

   caso 400 ate 499
      OrigemEscreva <- "Norte"

   caso 001 ate 099
      OrigemEscreva <- "Sudeste"

   caso 100 ate 199
      OrigemEscreva <- "Sul"

   outrocaso
      escreva("Opção inserida não corresponde a tabela.")
fimalgoritmo

FimEscolha

//Opções de Destino
DestinoTF <- verdadeiro
DestinoTF <- falso

Escolha Destino

caso 201 ate 299
   DestinoEscreva <- "Centro-Oeste"

caso 300 ate 399
   DestinoEscreva <- "Nordeste"

caso 400 ate 499

   DestinoEscreva <- "Norte"

caso 001 ate 099
   DestinoEscreva <- "Sudeste"

caso 100 ate 199
   DestinoEscreva <- "Sul"
   
FimEscolha

//Opções de Tipos de Produtos
TipoProduto <- verdadeiro
TipoProduto <- falso

Escolha TiProduto

caso 001
   Produto <- "Jóias"

caso 111
   Produto <- "Livros"

caso 333
   Produto <- "Eletrônicos"

caso 555
   Produto <- "Bebidas"

caso 888
   Produto <- "Brinquedos"
FimEscolha

//Os Pacotes que contém o Produto Jóias não podem ser enviados de Origem Centro-Oeste.
JoiasInvalid <- verdadeiro
JoiasInvalid <- falso

Escolha TiProduto

caso 001
   JoiasInvalid <- verdadeiro
FimEscolha

//Leitor de Cnpj Incorreto
Cnpj <- verdadeiro
Cnpj <- falso

Escolha CodVendor

caso 367
   Cnpj <- verdadeiro
FimEscolha

//Nesta parte do código será feita a lógica de cada etapa do leitor
Se OrigemTF = OrigemEscreva Entao
senao
   Escreval("O Endereço de Origem não corresponde com a tabela acima, Tente Novamente!")
   Escreval("")
fimalgoritmo
fimse

Se DestinoTF = DestinoEscreva Entao
senao
   Escreval("O endereço de destino não corresponde com a tabela acima, Tente Novamente!")
   Escreval("")
fimalgoritmo
fimse

//Jóias não podem ser enviadas por Origem Centro-Oeste
Se TiProduto = JoiasInvalid entao
   Escreval("Este produto ", Produto, " não pode ser enviado por Origem ", OrigemEscreva)
fimalgoritmo
fimse

Se CodVendor = Cnpj entao
   Escreval("Este usuário informado não pode mais enviar pacotes, CNPJ inativo ou suspenso.")
fimalgoritmo
Senao
   Escreval("Usuário Permitido.")
   Escreval("")
fimse

Se TipoProduto = Produto entao
   Escreval("Siga a Nota de Envio abaixo")
   Escreval("")
senao
   Escreval("Este produto não corresponde com a tabela acima, Tente Novamente!")
fimalgoritmo
fimse

//Nota de Envio
Escreval("Código: ", Origem, " ", Destino, " ", CodLoggi, " ", CodVendor, " ", TiProduto)
Escreval("Região de origem: Cidade ", Origem, ", região ", OrigemEscreva )
Escreval("Região de destino: Cidade ", Destino, ", região ", DestinoEscreva)
Escreval("Código Loggi: ", CodLoggi)
Escreval("Código do Vendedor do Produto: ", CodVendor)
Escreval("Tipo do Produto: ", Produto)
Fimalgoritmo