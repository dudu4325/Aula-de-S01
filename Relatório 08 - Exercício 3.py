from abc import ABC, abstractmethod

class ArmaCorpoACorpo:
    def __init__(self, nome: str):
        self.nome = nome

    def __str__(self):
        return f"Arma: {self.nome}"


class PhantomThieves:
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"Membro: {self.nome}, Arma: {self.arma}"


class Joker:
    def __init__(self, membros: list):
        self.arma = ArmaCorpoACorpo("Faca")
        self.membros = membros

    def mostrar_equipe(self):
        for membro in self.membros:
            print(membro)

m1 = PhantomThieves("Jorge", "Cassetete")
m2 = PhantomThieves("Ann", "Chicote")
m3 = PhantomThieves("Maria", "Katana")

equipe = [m1, m2, m3]

joker = Joker(equipe)

joker.mostrar_equipe()

