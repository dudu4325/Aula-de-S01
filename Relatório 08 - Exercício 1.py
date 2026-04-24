from abc import ABC, abstractmethod


class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia
        
    def get_vida(self):
        return self._vida

    def set_vida(self, valor):
        self._vida = valor
        
    def __str__(self):
        return f"Personagem com {self.get_vida()} de vida"


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)
        self.armadura_pesada = armadura_pesada

    def __str__(self):
        tipo_armadura = "com armadura pesada" if self.armadura_pesada else "sem armadura pesada"
        return f"Cavaleiro com {self.get_vida()} de vida,  {tipo_armadura}"

p = Personagem(100, 50)
print(p)

c = Cavaleiro(150, 80, True)
print(c)
