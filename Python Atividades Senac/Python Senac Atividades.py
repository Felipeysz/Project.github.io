#Teste
nm1 = 1
nm2 = 1


if nm1 > nm2:
    print('Positivo')
elif nm1 == nm2:
  print('Numeros Iguais')
else:
    print('negativo')
    

"""Codigo 1 Python"""

nome = ' Felipe'
Idade = str(17)

print ('Nome Do Cliente:' + nome + ' ' +' Minha Idade é:' + ' ' + Idade)

"""Codigo 2 Python"""

nome  = input('Seu Nome ')
idade = input('Sua Idade ')
mrdEstado = input('Digite Seu Estado ')
mrdCidade = input('Digite Sua Cidade ')
mrdRua = input('Digite O Nome da Rua ')
nmCasa = input('Numero da Casa ')
print('Suas Informaçoes '+nome+' '+idade+' '+mrdEstado+' '+mrdCidade+' '+mrdRua+' '+nmCasa)

"""Codigo 2 Python Teste 2"""

suasInformacoes = input('Nome '),input('Idade '),input('Escolaridade ')

print(suasInformacoes)

print(17)

"""Codigo 3 Python"""

nome = input('Nome: ')
sobrenome = input('sobrenome: ')
idade = input('idade: ')
clienteUsuario = nome,sobrenome,idade
print(clienteUsuario)
print('Seu nome é: '+ nome[:]+' '+sobrenome+'Sua Idade é: '+idade)

"""Codigo 4 Python"""

#Entrada de Dados
primeiroNome = input('Digite seu Primeiro Nome: ')
segundoNome = input('Digite seu Segundo Nome: ')
ultimoNome = input('Digite seu Ultimo Nome: ')
#Saida de Dados
print('Seu primeiro nome é: '+'{'+primeiroNome+'}'+'Seu Segundo Nome é:' +'{'+segundoNome+'}'+ 'Seu Ultimo Nome é:' +'{'+ultimoNome+'}')

"""Codigo 5 python"""

a = (1)
b = (2.5)
c = a + b
d = a * b
e = a / b
f = a - b

print (a,b,c,d,e,f)

"""Codigo 6 Python"""

#Calculo de Área
raio = float(input('Informe o valor do raio da circunfârencia: '))
area = (raio * raio) * 3.14159
print('Área = %0.0f' %area)
# Entre aspas esta Colocando Área Escrito + quantos numeros dps do numero inteiro eu quero = %0.0f/%0.1f/%0.2f/%0.3f/%0.4f
# OBS Não Podemos Escrever /%0.1float pois assim ira aparecer loat Escrito

"""Codigo 7 Python"""

#type = indicador de qual o tipo da variavel
#Declarar casa Decimais Ultiliza . = PONTO
#,Marcelo,Josue,Josias,Felipe,Lucas
#, 42123512, 26235124, 24123642, 22124123

"""Atividade 1 Python"""

funcionario = input('Informe Seu Nome: ')
matricula = str(input('Digite a Matricula: '))
nmHoras = float(input('Digite as Horas Trabalhadas na Semana: '))
vlHora = float(input('Valor Sobre Hora Trabalhada: '))
salario = nmHoras * vlHora
print('Nome do Funcionario = {' + funcionario + '} Codigo da Matricula: {'+ matricula + '} Salario = R$ %0.2f:' %salario)

"""Atividade 2 Python"""

nmVendedor = input('Digite Seu Nome: ')
slFixo = int(input('Seu Salario Fixo: '))
vendasTotaisRS = int(input('Quantas Vendas em Dinheiro: '))
prcBonus =  .15
bonusSalario = vendasTotaisRS * prcBonus
salarioFinal = slFixo + bonusSalario
print('Nome do Vendedor ' + nmVendedor + ' Salario = R$ %.2f:' %salarioFinal)

"""# Nova seção

Atividade 3 Python
"""

cdpeca1 = input('Codigo do Produto 1: ')
qtdpecas1 = float(input('Quantos Produtos 1: '))
vlpeca1 = 15
resultado1 = qtdpecas1 * vlpeca1

cdpeca2 = input('Codigo do Produto 2: ')
qtdpecas2 = float(input('Quantos Produtos 2: '))
vlpeca2 = 22
resultado2 = qtdpecas2 * vlpeca2

valorTotalCompra = resultado1 + resultado2

print('\nValor da Primeira Compra: R$' + str(resultado1) + ' ' + '\nValor da Segunda Compra R$: ' + str(resultado2) + '\nValor Total da Compra R$: ' + str(valorTotalCompra))

"""Atividade 4 Python"""

import math

raio = float(input('Informe o valor do raio da circunfârencia: '))
pi = 3.14159
volume = (4/3) * pi * math.pow(raio,3)
print('Volume = %.3f' %volume)

"""Codigo 5 Python"""

listatel = {"ana":210012,"bianca":210045,"camila":210019}

print(listatel["ana"])
print(listatel["bianca"])
print(listatel["camila"])

print(listatel.keys())
print(listatel.values())

"""Exercicio Dicionario"""

pessoas = {
    "nome":'Felipe',
    "sobrenome":'Santana',
    "idade":17,
    "curso":'Aplicações Web Com Pyton',
    "endereco":'Parque São Cristovão'
           }
print(pessoas["nome"])
print(pessoas["sobrenome"])
print(pessoas["idade"])
print(pessoas["curso"])
print(pessoas["endereco"])
del pessoas["curso"]
pessoas["sobrenome"] = 'Lopes'
print(pessoas)
print(pessoas["endereco"])
pessoas2 = pessoas.copy()
pessoas2["nome"] = 'Lucas'
pessoas2["idade"] = 25
print(pessoas2)

"""Atividade Estrutura de Seleções"""

vlValor = float(75);

if vlValor <= 25:
  print('O Valor Esta entre 0 e 25')
elif vlValor <= 50:
  print('O valor esta entre +25 e 50')
elif vlValor <= 75:
  print('O valor esta entre +50 e 75')
else:
  print('O valor esta entre +75 e 100')

"""Atividade Coordenadas"""

x = float(input("Digite a coordenada x: "))
y = float(input("Digite a coordenada y: "))

if x == 0 and y == 0:
    print("Origem")
elif x == 0:
    print("Eixo Y")
elif y == 0:
    print("Eixo X")
elif x > 0 and y > 0:
    print("Primeiro Quadrante")
elif x < 0 and y > 0:
    print("Segundo Quadrante")
elif x < 0 and y < 0:
    print("Terceiro Quadrante")
else:
    print("Quarto Quadrante")

"""Atividade Tempo do Jogo"""

hr_inicio = int(input("Digite a hora inicial do jogo: "))
if hr_inicio < 0 or hr_inicio > 23:
    print("Hora inválida. Digite um valor entre 0 e 23.")

mn_inicio = int(input("Digite o minuto inicial do jogo (entre 0 e 59): "))
if mn_inicio < 0 or mn_inicio > 59:
    print("Minuto inválido. Digite um valor entre 0 e 59.")

hr_final = int(input("Digite a hora Final do jogo: "))
if hr_final < 0 or hr_final > 23:
    print("Hora inválida. Digite um valor entre 0 e 23.")

mn_final = int(input("Digite o minuto Final do jogo (entre 0 e 59): "))
if mn_final < 0 or mn_final > 59:
    print("Minuto inválido. Digite um valor entre 0 e 59.")



duracao_minutos = (hr_final * 60 + mn_final) - (hr_inicio * 60 + mn_inicio)

duracao_horas = duracao_minutos // 60
duracao_minutos %= 60

#O Tempo do Jogo So Podera Ser No Maximo De (1 hora e 30 minutos)


if duracao_horas > 1 or (duracao_horas == 1 and duracao_minutos > 30):
    print("Tempo de Jogo Inválido")
else:
    print(f"A duração do jogo é de {duracao_horas} horas e {duracao_minutos} minutos.")

"""Leitor de Valores"""

vl_valor1 = float(input("Digite o primeiro valor: "))
vl_valor2 = float(input("Digite o segundo valor: "))
vl_valor3 = float(input("Digite o terceiro valor: "))
vl_valor4 = float(input("Digite o quarto valor: "))

valores_decrescente = sorted([vl_valor1, vl_valor2, vl_valor3, vl_valor4], reverse=True)

valores_crescente = sorted([vl_valor1, vl_valor2, vl_valor3, vl_valor4])

print("Valores em ordem decrescente:", end=" ")
for valor in valores_decrescente:
    print(valor, end=" ")

print("\nValores em ordem crescente:", end=" ")
for valor in valores_crescente:
    print(valor, end=" ")

"""Atividade Mútiplos"""

nm_valor1 = int(input("Digite o Primeiro Valor: "))
nm_valor2 = int(input("Digite o Segundo Valor: "))


nm_valor1 % nm_valor2 == 0
resultado = nm_valor1 / nm_valor2


if resultado.is_integer():
  print("São Multiplos")
else:
  print("Não São Multiplos")

"""Atividade (Par ou Impar)"""

nm_valor = float(input('Informe o Valor 1: '))

if nm_valor1 % 2:
  print('O Valor é Par')
else:
  print('O Valor Impar')

"""Atividade Devolução de Livro"""

import random
cd_livro = str(input('Qual o Codigo do Livro: '))
slr_min = float(1320)
numero_aleatorio = random.randint(0, 15)

if numero_aleatorio == 0:
  print('Devolução Feita com Sucesso e Sem Taxas de Atraso... Tenha um Bom Dia')
elif numero_aleatorio <= 5:
  conta_1 = slr_min / 100 * 1.5
  resultado_1 = round(conta_1, 2)
  print(f'Devolução Feita com Sucesso e Com uma Taxas de {resultado_1} Tenha um Bom Dia')
elif numero_aleatorio <= 10:
  conta_2 = slr_min / 100 * 2
  resultado_2 = round(conta_2, 2)
  print(f'Devolução Feita com Sucesso e Com uma Taxas de {resultado_2} Tenha um Bom Dia')
elif numero_aleatorio > 10:
  conta_3 = slr_min / 100 * 3
  resultado_3 = round(conta_3, 2)
  print(f'Devolução Feita com Sucesso e Com uma Taxas de {resultado_3} Devido a taxa de Atraso. 😁Tenha um Bom Dia')

"""Atividade 1 (Mad Libs em Python)"""

valorCelularFabrica = [
    {'Marca': 'Apple',
     'Modelo': ['Iphone X', 'Iphone 11', 'Iphone 12', 'Iphone 13', 'Iphone 14'],
     'ValorApple': [1900, 2300, 3000, 3300, 4000]},

    {'Marca': 'Motorola',
     'Modelo': ['Motog 20', 'Motog 30', 'Motog 31', 'Motog 41', 'Motog 51'],
     'ValorMotorola': [1200, 700, 900, 1300, 1500]},

    {'Marca': 'Samsung',
     'Modelo': ['A1', 'A4', 'A14', 'A24', 'M23'],
     'ValorSamsung': [700, 900, 1100, 1500, 1900]}
]


valorCelularCompra = [
    {'Marca': 'Apple',
     'Modelo': ['Iphone X', 'Iphone 11', 'Iphone 12', 'Iphone 13', 'Iphone 14'],
     'ValorApple': [2500, 2900, 3400, 3700 , 4500]},

    {'Marca': 'Motorola',
     'Modelo': ['Motog 20', 'Motog 30', 'Motog 31', 'Motog 41', 'Motog 51'],
     'ValorMotorola': [700, 1200, 1300, 1700, 2200]},

    {'Marca': 'Samsung',
     'Modelo': ['A1', 'A4', 'A14', 'A24', 'M23'],
     'ValorSamsung': [700, 900, 1100, 1500,1700]}
]


estoqueLojaCelular = [
    {'Marca': 'Apple',
     'Modelo': ['Iphone X', 'Iphone 11', 'Iphone 12', 'Iphone 13', 'Iphone 14'],
     'EstoqueApple': [250, 290, 340, 450, 150]},

    {'Marca': 'Motorola',
     'Modelo': ['Motog 20', 'Motog 30', 'Motog 31', 'Motog 41', 'Motog 51'],
     'EstoqueMotorola': [170, 120, 130, 170, 220]},

    {'Marca': 'Samsung',
     'Modelo': ['A1', 'A4', 'A14', 'A24', 'M23'],
     'EstoqueSamsung': [70, 90, 110, 150, 220]}
]

           #Faturamento/Lucro Por Celular

LucroIphone_X = valorCelularCompra[0]['ValorApple'][0] - valorCelularFabrica[0]['ValorApple'][0]
LucroIphone_11 = valorCelularCompra[0]['ValorApple'][1] - valorCelularFabrica[0]['ValorApple'][1]
LucroIphone_12 = valorCelularCompra[0]['ValorApple'][2] - valorCelularFabrica[0]['ValorApple'][2]
LucroIphone_13 = valorCelularCompra[0]['ValorApple'][3] - valorCelularFabrica[0]['ValorApple'][3]
LucroIphone_14 = valorCelularCompra[0]['ValorApple'][4] - valorCelularFabrica[0]['ValorApple'][4]


LucroMotog_20 = valorCelularCompra[1]['ValorMotorola'][0] - valorCelularFabrica[1]['ValorMotorola'][0]
LucroMotog_30 = valorCelularCompra[1]['ValorMotorola'][1] - valorCelularFabrica[1]['ValorMotorola'][1]
LucroMotog_31 = valorCelularCompra[1]['ValorMotorola'][2] - valorCelularFabrica[1]['ValorMotorola'][2]
LucroMotog_41 = valorCelularCompra[1]['ValorMotorola'][3] - valorCelularFabrica[1]['ValorMotorola'][3]
LucroMotog_51 = valorCelularCompra[1]['ValorMotorola'][4] - valorCelularFabrica[1]['ValorMotorola'][4]

LucroA1 = valorCelularCompra[2]['ValorSamsung'][0] - valorCelularFabrica[2]['ValorSamsung'][0]
LucroA4 = valorCelularCompra[2]['ValorSamsung'][1] - valorCelularFabrica[2]['ValorSamsung'][1]
LucroA14 = valorCelularCompra[2]['ValorSamsung'][2] - valorCelularFabrica[2]['ValorSamsung'][2]
LucroA24 = valorCelularCompra[2]['ValorSamsung'][3] - valorCelularFabrica[2]['ValorSamsung'][3]
LucroM23 = valorCelularCompra[2]['ValorSamsung'][4] - valorCelularFabrica[2]['ValorSamsung'][4]



compraProduto = input('Escolha qual a marca de celular você deseja comprar (Apple, Motorola, Samsung): ')

if compraProduto == 'Apple':
    modeloApple = input('Escolha o modelo (Iphone X, Iphone 11, Iphone 12, Iphone 13, Iphone 14):')
    if modeloApple == 'Iphone X':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[0]['ValorApple'][0]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroIphone_X}")
    elif modeloApple == 'Iphone 11':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[0]['ValorApple'][1]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroIphone_11}")
    elif modeloApple == 'Iphone 12':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[0]['ValorApple'][2]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroIphone_12}")
    elif modeloApple == 'Iphone 13':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[0]['ValorApple'][3]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroIphone_13}")
    elif modeloApple == 'Iphone 14':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[0]['ValorApple'][4]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroIphone_14}")
    else:
        print('O Modelo deve Estar Dentre as Alternativas')

elif compraProduto == 'Motorola':

    modeloMotorola = input('Escolha o modelo (Motog 20, Motog 30, Motog 31, Motog 41, Motog 51):')
    if modeloMotorola == 'Motog 20':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[1]['ValorMotorola'][0]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroMotog_20}")
    elif modeloMotorola == 'Motog 30':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[1]['ValorMotorola'][1]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroMotog_30}")
    elif modeloMotorola == 'Motog 31':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[1]['ValorMotorola'][2]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroMotog_31}")
    elif modeloMotorola == 'Motog 41':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[1]['ValorMotorola'][3]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroMotog_41}")
    elif modeloMotorola == 'Motog 51':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[1]['ValorMotorola'][4]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroMotog_51}")
    else:
        print('O Modelo deve Estar Dentre as Alternativas')

elif compraProduto == 'Samsung':

    modeloSamsung = input('Escolha o modelo (A1, A4, A14, A24, M23):')
    if modeloSamsung == 'A1':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[2]['ValorSamsung'][0]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroA1}")
    elif modeloSamsung == 'A4':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[2]['ValorSamsung'][1]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroA4}")
    elif modeloSamsung == 'A14':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[2]['ValorSamsung'][2]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroA14}")
    elif modeloSamsung == 'A24':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[2]['ValorSamsung'][3]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroA24}")
    elif modeloSamsung == 'M23':
        print(f"Valor da Compra é de: R$ {valorCelularCompra[2]['ValorSamsung'][4]}")
        print(f"O Lucro da Empresa sera de: R$ {LucroM23}")
    else:
        print('O Modelo deve Estar Dentre as Alternativas')
else:
    print('O Celular deve estar dentre as alternativas')





estoqueFalar = input('Escolha qual a marca de celular você deseja ver o Estoque (Apple, Motorola, Samsung): ')

if estoqueFalar == 'Apple':
  estoqueApple = input('Escolha o modelo (Iphone X, Iphone 11, Iphone 12, Iphone 13, Iphone 14):')
  if estoqueApple == 'Iphone X':
    print(f"O valor do estoque é: {estoqueLojaCelular[0]['EstoqueApple'][0]}")
  elif estoqueApple == 'Iphone 11':
    print(f"O valor do estoque é: {estoqueLojaCelular[0]['EstoqueApple'][1]}")
  elif estoqueApple == 'Iphone 12':
    print(f"O valor do estoque é: {estoqueLojaCelular[0]['EstoqueApple'][2]}")
  elif estoqueApple == 'Iphone 13':
    print(f"O valor do estoque é: {estoqueLojaCelular[0]['EstoqueApple'][3]}")
  elif estoqueApple == 'Iphone 14':
    print(f"O valor do estoque é: {estoqueLojaCelular[0]['EstoqueApple'][4]}")
  else:
    print('O Celular deve estar dentre as alternativas')

elif estoqueFalar == 'Motorola':

  estoqueMotorola = input('Escolha o modelo (Motog 20, Motog 30, Motog 31, Motog 41, Motog 51):')
  if estoqueMotorola == 'Motog 20':
    print(f"O valor do estoque é: {estoqueLojaCelular[1]['EstoqueMotorola'][0]}")
  elif estoqueMotorola == 'Motog 30':
    print(f"O valor do estoque é: {estoqueLojaCelular[1]['EstoqueMotorola'][1]}")
  elif estoqueMotorola == 'Motog 31':
    print(f"O valor do estoque é: {estoqueLojaCelular[1]['EstoqueMotorola'][2]}")
  elif estoqueMotorola == 'Motog 41':
    print(f"O valor do estoque é: {estoqueLojaCelular[1]['EstoqueMotorola'][3]}")
  elif estoqueMotorola == 'Motog 51':
    print(f"O valor do estoque é: {estoqueLojaCelular[1]['EstoqueMotorola'][4]}")
  else:
    print('O Celular deve estar dentre as alternativas')

elif estoqueFalar == 'Samsung':

  estoqueSamsung = input('Escolha o modelo (A1, A4, A14, A24, M23):')
  if estoqueSamsung == 'A1':
    print(f"O valor do estoque é: {estoqueLojaCelular[2]['EstoqueSamsung'][0]}")
  elif estoqueSamsung == 'A4':
    print(f"O valor do estoque é: {estoqueLojaCelular[2]['EstoqueSamsung'][1]}")
  elif estoqueSamsung == 'A14':
    print(f"O valor do estoque é: {estoqueLojaCelular[2]['EstoqueSamsung'][2]}")
  elif estoqueSamsung == 'A24':
    print(f"O valor do estoque é: {estoqueLojaCelular[2]['EstoqueSamsung'][3]}")
  elif estoqueSamsung == 'M23':
    print(f"O valor do estoque é: {estoqueLojaCelular[2]['EstoqueSamsung'][4]}")
  else:
    print('O Celular deve estar dentre as alternativas')

"""Atividade 2 (Adivinhe o Número em Python (computador))"""

import random
numero_aleatorio = random.randint(0, 10)

acerteONumero = input('Digite um Número: ')

if numero_aleatorio == acerteONumero:
  print('Voçê Acertou o Número')
else:
  print(f"Você Errou O Numero era {numero_aleatorio}. Tente Novamente")

"""Atividade 3(Faça ele Adivinhar o Número em Python(Usuario))"""

import random
numero_maquina = random.randint(0, 10)

numeroDaSorte = random.randint(0, 10)

if numeroDaSorte == numero_maquina:
  print(f"Ela Acertou O Número era: {numeroDaSorte}")
else:
  print(f"A Maquina Errou O Número era: {numeroDaSorte}. Tente Novamente")
  print(f"O Número dela era: {numero_maquina}")

"""Atividade 4(Pedra,Papel,Tesoura)"""

opcoes = ['Pedra','Papel','Tesoura']
jogada_Maquina = random.choice(opcoes)

sua_Jogada = input('Digite Pedra,Papel ou Tesoura: ')



if jogada_Maquina == sua_Jogada:
  print('Empate!!')
elif jogada_Maquina == 'Pedra' and sua_Jogada == 'Papel':
  print('Você Ganhou')
  print(jogada_Maquina)
elif jogada_Maquina == 'Pedra' and sua_Jogada == 'Tesoura':
  print('A Maquina Ganhou')
  print(jogada_Maquina)
elif jogada_Maquina == 'Papel' and sua_Jogada == 'Tesoura':
  print('Você Ganhou')
  print(jogada_Maquina)
elif jogada_Maquina == 'Papel' and sua_Jogada == 'Pedra':
  print('A Maquina Ganhou')
  print(jogada_Maquina)
elif jogada_Maquina == 'Tesoura' and sua_Jogada == 'Papel':
  print('Você Ganhou')
  print(jogada_Maquina)
elif jogada_Maquina == 'Tesoura' and sua_Jogada == 'Papel':
  print('A Maquina Ganhou')
  print(jogada_Maquina)
else:
  print('Empate')
  print(jogada_Maquina)

"""Python Ultilizando Funções"""

import random

x = int(input('Informe o Número inicial: '))
y = int(input('Informe o Número Final: '))
numero = random.uniform(x, y)
print(int(numero))

"""Formatação de String"""

for x in range(1, 11):
  print('{0:2d} {1:3d} {2:4d}'.format(x, x*x, x*x*x))
#2d == Quantidade de Digitos
#.format Como Vai ficar Organizado
#range 1,11 == 1 ate o 10

a = int(input())
b = int(input())

x = a + b
print(f"X = {x}")

x = 10
print(f"X = {x}\n")

"""Atividade 1 BeeCrowd"""

A = float(input())
B = float(input())
C = (A / 110) * 35
D = (B / 110) * 75

resultado = C + D



print('MEDIA = %0.5f' %resultado)

"""Atividade 2 BeeCrowd"""

A = float(input())
B = float(input())
C = float(input())
D = (A / 100) * 20
E = (B / 100) * 30
F = (C / 100) * 50

resultado = D + E + F



print('MEDIA = %0.1f' %resultado)

"""Atividade 3 BeeCrowd"""

Number = int(input())
hr_trabalhada = int(input())
vl_hora = float(input())

salarioTotal = hr_trabalhada * vl_hora
print(f"NUMBER = {Number}\n" + ('SALARY = U$ %0.2f' %salarioTotal))

"""Atividade 4 BeeCrowd"""

p1 = (x1,y1) = map(float, input().split())
p2 = (x2,y2) = map(float, input().split())

a = (x2 - x1)**2
b = (y2 - y1)**2
conta = a + b

distancia = conta ** (1/2)

print(f'{distancia:,.4f}')

"""Atividade 5 BeeCrowd"""

carro_x = 60
carro_y = 90

km_distancia = int(input())

minutos = km_distancia * 2

print(f"{minutos} minutos")

"""Atividade 6 BeeCrowd"""

tmp_viagemHR = int(input())
km_medio = int(input())
km_Total = tmp_viagemHR * km_medio

km_Litro = 12
resultado = km_Total / km_Litro

print(f'{resultado:,.3f}')

"""Atividade 7 BeeCrowd"""

#Fazer Atividade da Conversão de Segundos em Horas Minutos e segundos

def fun(inp=2, out=3):
    return inp * out


print(fun(out=2))

while True:
    senha = int(input())

    if senha != 2002:
        print("Senha Inválida")
    else:
        print("Acesso Permitido")
        break

"""Conversor de Segundos Para (HORA/MINUTOS/SEGUNDOS)"""

segundos_totais = int(input())  # Exemplo de valor de tempo em segundos

horas = segundos_totais // 3600  # Calcula o número de horas
segundos_restantes = segundos_totais % 3600  # Calcula os segundos restantes após a contagem das horas
minutos = segundos_restantes // 60  # Calcula o número de minutos
segundos = segundos_restantes % 60  # Calcula os segundos restantes após a contagem dos minutos

# Imprime o resultado formatado
print(f"{horas}h {minutos}m {segundos}s")

"""Conversor de Moedas"""

n = int(input())
t = [0, 1]

for i in range(2, n):
  aux = t[i-2] + t[i-1]
  t.append(aux)

t=' '.join(map(str,t[:n]))
print(t)

"""Notas e Moedas"""

valor = float(input())  # Lê o valor monetário como um número de ponto flutuante

# Define as notas e moedas disponíveis
notas = [100, 50, 20, 10, 5, 2]
moedas = [1, 0.5, 0.25, 0.10, 0.05, 0.01]

print("NOTAS:")
for nota in notas:
    quantidade_notas = int(valor / nota)  # Calcula a quantidade de notas necessárias
    print(f"{quantidade_notas} nota(s) de R$ {nota:.2f}")
    valor -= quantidade_notas * nota  # Atualiza o valor restante

print("MOEDAS:")
for moeda in moedas:
    quantidade_moedas = int(valor / moeda)
    print(f"{quantidade_moedas} moeda(s) de R$ {moeda:.2f}")
    valor -= quantidade_moedas * moeda



n = float(input())
notas = [100, 50, 20, 10, 5, 2]
moedas = [1, 0.50, 0.25, 0.10, 0.05, 0.01];

print('NOTAS:')
for i in range(len(notas)):
	qt = 0
	while n-notas[i] >= 0:
		qt += 1
		n -= notas[i]
	print("%d nota(s) de R$ %.2f" % (qt, notas[i]))

print('MOEDAS:')

for i in range(len(moedas)):
	qt = 0
	while n-moedas[i] >= 0:
		qt += 1
		n = float(format(round(n - moedas[i],2)))

	print("%d moeda(s) de R$ %.2f" % (qt, moedas[i]))

hora_inicial = int(input())
minuto_inicial = int(input())
hora_final = int(input())
minuto_final = int(input())


duracao_horas = hora_final - hora_inicial
duracao_minutos = minuto_final - minuto_inicial


if duracao_minutos < 0:
    duracao_minutos += 60
    duracao_horas -= 1


if duracao_horas < 0:
    duracao_horas += 24
elif duracao_horas > 24:
    duracao_horas %= 24

print("O JOGO DUROU {} HORA(S) E {} MINUTO(S)".format(duracao_horas, duracao_minutos))

class A:
    def a(self):
        print('a')

class B:
    def a(self):
        print('b')

class C(B,A):
    def c(self):
        self.a()


o = C()
o.c()



x = 16
while x > 0:
    print('*', end='')
    x //=2