package Comidas.Tipos;

import Comidas.Brownie;

public class BrownieCafe extends Brownie {
    public BrownieCafe(String nome, double preco, String sabor) {
        super(nome, preco, sabor);
    }

    public void adicionaCafe(){
        System.out.println("Adicionando mais " + super.sabor + "...");
    }

    public void addCarrinhoDeCompras(){
        System.out.println("Adicionando um péssimo brownie de café no carrinho de compras");
    }
}
