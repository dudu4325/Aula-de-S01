package Comidas.Tipos;

import Comidas.Brownie;

public class BrownieDoceDeLeite extends Brownie {
    public BrownieDoceDeLeite(String nome, double preco, String sabor) {
        super(nome, preco, sabor);
    }

    public void adicionaDoceDeLeite(){
        System.out.println("Adicionando mais " + super.sabor + "...");
    }

    public void addCarrinhoDeCompras(){
        System.out.println("Adicionando um esquisito brownie de doce de leite no carrinho de compras");
    }
}
