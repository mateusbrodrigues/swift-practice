/*
1.1 Crie três variáveis que representam três notas de diferentes
alunos. A seguir, crie uma variável que calcule a média dessas notas
e mostre essa média no console.
*/

var str = "Hello, playground"
print("Oi turma!")

var A = 5.0
var B = 8.0
var C = 3.0

var media = (A + B + C) / 3
print(media)

/*
1.2 A partir de uma variável que armazena um valor de temperatura
em celsius, crie uma outra variável que faça o cálculo dessa
temperatura em celsius para fahrenheit. A fórmula dessa
transformação é: F = C * 9/5 + 32. Lembre-se de criar um print que
mostra essa conversão, por exemplo, “Em fahrenheit, a temperatura
é…”.
*/

var celsius = Double(readLine()!)!
var fahrenheit = celsius * 9 / 5 + 32
print("Em fahrenheit, a temperatura é", fahrenheit)

/*
2.1 Em um aplicativo da vida real, às vezes é necessário verificar a
idade do usuário para permitir um serviço. Vamos simular essa
situação e praticar nosso código Swift:
Crie uma constante que armazene a sua idade;
Escreva uma condicional que verifique se a sua idade está entre 0 e
13;
Caso esteja, mostre “Criança” na tela. Caso o valor esteja entre 13 e
18, mostre “Adolescente”;
Por fim, caso seja maior que 18, mostre “Adulto”.
*/

let idade = Int(readLine()!)!

switch idade {
  case 0...13:
    print("Criança")
  case 14...18:
    print("Adolescente")
  case 18...:
    print("Adulto")
  default:
   print("Idade inválida")
}

/*
2.2 Faça um programa que controle a entrada de pessoas em uma
festa. Siga os requisitos abaixo:
Crie uma constante que armazene a idade da pessoa;
Crie uma constante que armazene se a pessoa está com o RG em
mãos;
Caso ela tenha idade superior ou igual a 18 e esteja com o RG em
mãos, ela pode entrar na festa (exiba no console “Pode entrar”).
Caso contrário, não pode entrar (exiba no console “Não pode
entrar”).
*/

let idade = Int(readLine()!)!
let rg = readLine()!

let podeEntrar = idade >= 18 && rg == "sim" ? "Pode entrar" : "Não pode entrar"
print(podeEntrar)

/*
3.1 Imprima no console apenas os números pares do intervalo de 1 a 10
*/

for i in 1...10 {
 if i % 2 == 0{
   print(i)}
 }

/*
3.2 Construa um algoritmo de adivinhação de números
O seu trabalho é elaborar um algoritmo em que o usuário possa digitar
números no console até acertar o número inteiro aleatório valorInteiro,
de 1 a 100. A cada chute, o programa deve responder com “chutou
alto”, “chutou baixo” ou “acertou”. Após acertar, deve ser mostrado
quantas tentativas foram usadas para descobrir o número.
*/

var chute = Int(readLine()!)!
var valorInteiro = Int.random(in: 1...100)
var tentativas = 0

while chute != valorInteiro{
  chute > valorInteiro ? print("Chutou alto") : print("Chutou baixo")
  tentativas += 1
  chute = Int(readLine()!)!
}
print("Acertou em \(tentativas) tentativas")  

/*
4.1 Escreva uma função que receba um parâmetro do tipo Int e verifique se
esse número é primo ou não. O retorno dessa função pode ser um booleano,
representando true se for primo ou false se não for primo
*/

func isPrime(number: Int) -> Bool{
  if number < 2 {
    return false
  }
  for i in 2..<number {
    if number % i == 0 {
        return false
    }
  }
return true
}

print(isPrime(number: 4))

/*
4.2 Imagine que você foi ao restaurante com um quantidade “n” de amigos e
gastaram ao total um valor x. Faça um programa que contenha uma função
que calcule quanto cada pessoa deva pagar.
A função deve receber dois parâmetros: o valor total da conta e o número
total de pessoas que irão dividir a conta;
Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total;
Retorne quanto cada pessoa deve pagar e exiba esse valor no console, fora
da função.
*/

func dividirConta(valorTotal: Double, numeroPessoas: Int) -> Double{
  let valorPorPessoa = valorTotal / Double(numeroPessoas)
  let valorComGorjeta = valorPorPessoa * 1.1
  return valorComGorjeta
}
print(dividirConta(valorTotal: 100, numeroPessoas: 2))

/*
5.1 Crie uma função que receba um parâmetro que representa o nome de
uma pessoa. Esse parâmetro é um opcional, ou seja, ele pode conter um
valor ou ser nulo.
Faça o tratamento correto dessa opcional:
Caso seja nulo, exiba no console “Nome não especificado”;
Caso contenha algum valor, exiba no console esse valor.
*/

func nome(n: String?){
 n == nil ? print("Nome não especificado") : print(n!)
}
nome(n: nil)

/*
6.1 Pense em um aplicativo que faz o cálculo da média de notas de
alunos de uma turma. Ainda não podemos produzir um aplicativo, mas
vamos usar essa situação para praticar um pouco:
Escreva uma função que receba um array de notas de um determinado
aluno e retorne a média aritmética dessas notas.
*/

func media(notas: [Double]) -> Double{
  var soma = 0.0
  for nota in notas{
    soma += nota
  }
  return soma / Double(notas.count)
}
print(media(notas: [10, 12, 10]))

/*
6.2 Construa um algoritmo que receba 10 números inteiros aleatórios e
armazene-os.
Depois, crie automaticamente dois conjuntos, um contendo apenas os
números pares e outro os números ímpares gerados.
*/

var numeros = [Int]()
var pares = [Int]()
var impares = [Int]()
for _ in 1...10{
  numeros.append(Int.random(in: 1...100))
}
for numero in numeros{
  if numero % 2 == 0{
    pares.append(numero)
  }
}
for numero in numeros{
  if numero % 2 != 0{
    impares.append(numero)
  }
}
print(numeros)
print("Pares: ",pares)
print("Impares: ",impares)

/*
6.3 Use o ChatGPT para gerar um dicionário com duas letras que
representam um estado como chave e o nome inteiro do estado como
valor. Escreva uma função que exiba todos os estados cujo nome tenha
mais que 7 caracteres.
*/

let estados: [String: String] = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapá",
    "AM": "Amazonas",
    "BA": "Bahia",
    "CE": "Ceará",
    "DF": "Distrito Federal",
    "ES": "Espírito Santo",
    "GO": "Goiás",
    "MA": "Maranhão",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Pará",
    "PB": "Paraíba",
    "PR": "Paraná",
    "PE": "Pernambuco",
    "PI": "Piauí",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondônia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "São Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

func exibirEstados() {
    for (sigla, nome) in estados {
        if nome.count > 7 {
            print("\(sigla): \(nome)")
        }
    }
}
exibirEstados()

/*
8.1 Crie uma classe/struct (a seu critério) chamada “Calculadora” que possua
dois diferentes números como atributos
Esses números podem ser inteiros ou decimais, à sua escolha, e precisam ser
inicializados pelo construtor de acordo com o que foi recebido por parâmetro;
Produza 4 métodos referentes às operações básicas de cálculo: soma, subtração,
divisão e multiplicação;
Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo
inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades
citadas anteriormente;
Instancie essa classe/struct com os dois valores em questão e chame todos os
métodos citados
*/

class Calculadora{
  var num1: Double
  var num2: Double
  init(num1: Double, num2: Double){
    self.num1 = num1
    self.num2 = num2
  }
  func soma() -> Double{
    return num1 + num2
  }
  func subtracao() -> Double{
    return num1 - num2
  }
  func divisao() -> Double{
    return num1 / num2
  }
  func multiplicacao() -> Double{
    return num1 * num2
  }
  
}
let calculadora = Calculadora(num1: 10, num2: 5)
print(calculadora.soma())
print(calculadora.subtracao())
print(calculadora.divisao())
print(calculadora.multiplicacao())
      
/*
8.2 Crie uma classe/struct chamada “Restaurante” que tenha os seguintes
atributos:
– Nome;
– Tipo de comida;
– Número de pedidos (esse sempre será inicializado como 0 no construtor).
E então, implemente o seguinte método:
– recebePedido() → esse método acrescenta em 1 o valor do atributo referente ao número
de pedidos;
– calculaTotalPedidos() → supondo que cada pedido tenha um valor fixo de R$35,00, crie um
método que calcule e retorne o valor total em pedidos.
*/

class Restaurante{
  var nome: String
  var tipoComida: String
  var numeroPedidos: Int
  init(nome: String, tipoComida: String){
    self.nome = nome
    self.tipoComida = tipoComida
    self.numeroPedidos = 0
  }
  func recebePedido(){
    numeroPedidos += 1
  }
  func calculaTotalPedidos() -> Double{
    return Double(numeroPedidos) * 35.0
  }
}
let restaurante = Restaurante(nome: "Restaurante do Mateus", tipoComida: "Comida mexicana")
restaurante.recebePedido()
restaurante.recebePedido()
print(restaurante.calculaTotalPedidos())

/*
8.3 Crie uma classe/struct chamada “Retângulo” que tenha os seguintes
atributos:
– Base;
– Altura.
E então, implemente os seguintes métodos:
– calcularArea() - retorna a área do retângulo, que é calculada por base multiplicado pela
altura;
– calcularPerimetro() - retorna o perimêtro do retângulo, que é calculado pela soma de todos
os lados.
*/

class Retangulo{
  var base: Double
  var altura: Double
  init(base: Double, altura: Double){
    self.base = base
    self.altura = altura
  }
  func calcularArea() -> Double{
    return base * altura
  }
  func calcularPerimetro() -> Double{
    return 2 * (base + altura)
  }
}
let retangulo = Retangulo(base: 5, altura: 10)
print(retangulo.calcularArea())
print(retangulo.calcularPerimetro())

/*
8.4 Crie uma classe Empregado que possuirá os seguintes atributos:
Nome (String);
Salário (Double).
Crie uma classe filha de Empregado, a Gerente. Afinal de contas,
gerente é um tipo de empregado.
Na classe “Gerente”, adicione como atributo “departamento”, que deve
ser uma String que diga a qual departamento o gerente pertence.
Lembre de usar o super.init() para inicializar os atributos da classe pai.
*/

class Empregado{
  var nome: String
  var salario: Double
  init(nome: String, salario: Double){
    self.nome = nome
    self.salario = salario
  }
}
class Gerente: Empregado{
  var departamento: String
  init(nome: String, salario: Double, departamento: String){
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }
}
let gerente = Gerente(nome: "João", salario: 5000.0, departamento: "Vendas")
print(gerente.nome)
print(gerente.salario)
print(gerente.departamento)

/*
8.5 Crie uma outra classe filha chamada Vendedor.
Faça um método chamado percentualComissao, que recebe como
parâmetro o número de vendas que o vendedor realizou. Cada vendedor
possui uma comissão de 10% sobre cada venda. Essa comissão é
adicionada ao salário final. Retorne o valor final que o vendedor irá
receber, supondo que cada venda possui um valor de R$50,00.
*/
class Empregado{
  var nome: String
  var salario: Double
  init(nome: String, salario: Double){
    self.nome = nome
    self.salario = salario
  }
}
class Vendedor: Empregado{
  var numeroVendas: Int
  init(nome: String, salario: Double, numeroVendas: Int){
    self.numeroVendas = numeroVendas
    super.init(nome: nome, salario: salario)
  }
  func percentualComissao() -> Double{
    return Double(numeroVendas) * 0.1 * 50.0
  }
}
let vendedor = Vendedor(nome: "Maria", salario: 3000.0, numeroVendas: 10)
print(vendedor.nome)
print(vendedor.salario)
print(vendedor.numeroVendas)
print(vendedor.percentualComissao() + vendedor.salario)
