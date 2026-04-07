package Comidas;

public class Brownie {
    protected String nome;
    protected double preco;
    protected String sabor;

    public Brownie(String nome, double preco, String sabor) {
        this.nome = nome;
        this.preco = preco;
        this.sabor = sabor;
    }

    public void addCarrinhoDeCompras(){
        System.out.println("Adicionando um " + this.nome + " no carrinho de compras");
    }

    public void calculaValorTotalCompra(){
        System.out.println("O " + this.nome + " custa R$ " + this.preco);
        System.out.println();
    }

    public void mostrarInfo(){
        System.out.println("Nome: " + this.nome);
        System.out.println("Preço: " + this.preco);
        System.out.println("Sabor: " + this.sabor);
    }
}
