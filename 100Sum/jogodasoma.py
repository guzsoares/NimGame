print("""Bem vindo ao jogo de Nim, o objetivo desse jogo é o primeiro jogador que 
conseguir atingir o número 100 ganha

Iremos jogar da seguinte forma, você joga contra um computador e você vai 
alterar entre turnos para escolher um número entre 1 a 10

A soma do número que vocês escolheram vai se acumulando 
e o jogador que atingir 100 ganha

Aqui nesse jogo iremos representar a matemática por trás e 
para mostrar que é impossível ganhar se o computador começar jogando.""")

print()

print("Vamos começar")
print()

sum = 1

print("Inicialmente o computador escolheu 1.")

while(sum != 100):
    playerChoice = int(input("Escolha um número de 1 a 10: " ))
    while(playerChoice > 10 or playerChoice < 1):
        playerChoice = int(input("Por favor insira um número entre 1 e 10: "))

    sum += playerChoice
    print()
    
    print("A soma atual é " + str(sum))

    print()

    print("Agora é a vez do computador")

    print()

    if (sum >= 90 and sum < 100):
        computerChoice = 100 - sum
    else:
        computerChoice = 11 - playerChoice

    print("O computador escolheu " + str(computerChoice))

    print()

    sum += computerChoice

    print("A soma atual é " + str(sum))



print("O computador venceu!")
print()
print("Obrigado por jogar!")


