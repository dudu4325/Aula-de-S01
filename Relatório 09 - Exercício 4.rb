module Localizavel
  def definir_local(local)
    @local = local
  end

  def local_atual
    puts "#{@nome} está em #{@local}"
  end
end

module Perigoso
  def exibir_ameaca
    puts "#{@nome} é considerado perigoso!"
  end
end

class Pessoa
  def initialize(nome)
    @nome = nome
  end

  def nome
    @nome
  end
end

class Testemunha < Pessoa
  include Localizavel
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso
end

class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    puts "Pessoas na Cena:"
    @pessoas.each do |p|
      puts "Nome: #{p.nome}"
      p.local_atual if p.respond_to?(:local_atual)
    end
  end

  def identificar_perigosos
    @pessoas.select do |p|
      p.respond_to?(:exibir_ameaca)
    end
  end
end

t1 = Testemunha.new("Jorge")
t1.definir_local("Praça Central")

s1 = Suspeito.new("Maria")
s1.definir_local("Beco Escuro")

s2 = Suspeito.new("Pedro")
s2.definir_local("Estação Abandonada")

cena = CenaDoCrime.new

cena.adicionar_pessoa(t1)
cena.adicionar_pessoa(s1)
cena.adicionar_pessoa(s2)

cena.listar_todos

puts
puts "Suspeitos Perigosos"
perigosos = cena.identificar_perigosos

perigosos.each do |p|
  p.exibir_ameaca
end