class MicroondasTelefone
  def ativar
    puts "Banana Verde detectada! O Microondas-Telefone (nome provisório) está operando!"
  end
end

class Relatorio
  def initialize(nome_projeto, autor)
    @nome_projeto = nome_projeto
    @autor = autor
  end

  def nome_projeto
    @nome_projeto
  end

  def autor
    @autor
  end
end

class LabRegistro
  def initialize
    @microondas = MicroondasTelefone.new 
    @registros = []                       
  end

  def adicionar_registro(nome_projeto, autor)
    @microondas.ativar

    novo_relatorio = Relatorio.new(nome_projeto, autor)
    @registros << novo_relatorio
  end

  def listar_experimentos
    @registros.each do |relatorio|
      puts "Projeto: #{relatorio.nome_projeto} | Autor: #{relatorio.autor}"
    end
  end
end

lab = LabRegistro.new

lab.adicionar_registro("KRR", "Jorge")
lab.adicionar_registro("CERN Hack", "Maria")
puts
lab.listar_experimentos