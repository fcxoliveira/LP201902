#Orientação a Objetos
class Automovel:
    def __init__(self, tipo, qtRodas):
        self.tipo = tipo
        self.qtRodas = qtRodas
        
carroClasse = Automovel("carro", 4)
motoClasse = Automovel("moto", 2)

print("----- Orientado a Objetos -----")
print(carroClasse.qtRodas)
print(motoClasse.qtRodas)
print("-------------------------------")

#Estruturado

carro = {"tipo": "carro", "qtRodas": 4}
moto = {"tipo": "moto", "qtRodas": 2}

print("--------- Estruturado ---------")
print(carro["qtRodas"])
print(moto["qtRodas"])
print("-------------------------------")
