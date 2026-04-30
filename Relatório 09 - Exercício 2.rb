class Musico
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError
  end

  def nome
    @nome
  end
end

class Pianista < Musico
  def tocar_partitura(obra)
    puts "#{@nome} toca #{obra} no piano"
  end
end

class Violinista < Musico
  def tocar_partitura(obra)
    puts "#{@nome} executa #{obra} no violino"
  end
end

class Maestro
  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_concerto(obra)
    puts "#{obra}"
    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    @musicos.map do |musico|
      "#{musico.nome} está em ritmo #{estado}!"
    end
  end
end

obra = "Sinfonia"

p1 = Pianista.new("Jorge", "Piano")
v1 = Violinista.new("Maria", "Violino")
v2 = Violinista.new("Pedro", "Violino")

maestro = Maestro.new
maestro.adicionar_musico(p1)
maestro.adicionar_musico(v1)
maestro.adicionar_musico(v2)

maestro.iniciar_concerto(obra)

puts

status = maestro.ajustar_postura("Allegro")
status.each do |l|
  puts l
end