from abc import ABC, abstractmethod

class Cibernetico(ABC):

    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo: float, funcao: str):
        self.custo = custo
        self.funcao = funcao

class NetRunner(Cibernetico):
    def __init__(self, nome: str, implante: Implante):
        self.nome = nome
        self.implante = implante

    def realizar_hack(self):
        print(f"{self.nome} está hackeando usando {self.implante.funcao}")

class Faccao:
    def __init__(self, membros: list):
        self.membros = membros  

    def executar_hacks(self):
        for membro in self.membros:
            membro.realizar_hack()

i1 = Implante(5000, "Braço mecânico")
i2 = Implante(8000, "Cyberlink")
i3 = Implante(3000, "Olho virtual")
i4 = Implante(10000, "Dente pendrive")

n1 = NetRunner("V", i1)
n2 = NetRunner("Lucy", i2)
n3 = NetRunner("T-Bug", i3)
n4 = NetRunner("Kiwi", i4)

faccao = Faccao([n1, n2, n3, n4])

faccao.executar_hacks()

