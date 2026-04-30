class BebidaAfterlife
  def initialize(nome, custo_base)
    @nome = nome
    self.custo_base = custo_base 
  end

  def nome
    @nome
  end

  def nome=(novo_nome)
    @nome = novo_nome
  end

  def custo_base
    @custo_base
  end

  def custo_base=(valor)
    if valor > 0
      @custo_base = valor
    else
      raise "O custo deve ser maior que zero!"
    end
  end

  def preco_total
    @custo_base
  end

  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  def preco_total
    @custo_base + (@nivel_notoriedade * 8)
  end

  def detalhes
    "Drink Icônico: #{@nome} | Notoriedade: #{@nivel_notoriedade} | Valor Final: $#{preco_total}"
  end
end

b1 = DrinkIconico.new("Leite de papoula", 50, 5)
b2 = DrinkIconico.new("Cerveja", 40, 3)
b3 = DrinkIconico.new("Blood Mary", 35, 6)

lista_drinks = [b1, b2, b3]

lista_drinks.each do |drink|
  puts drink.detalhes
end