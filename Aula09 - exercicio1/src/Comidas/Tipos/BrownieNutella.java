package Comidas.Tipos;

import Comidas.Brownie;

public class BrownieNutella extends Brownie {
    public BrownieNutella(String nome, double preco, String sabor) {
        super(nome, preco, sabor);
    }

    public void adicionaNutella(){
        System.out.println("Adicionando mais " + super.sabor + "...");
    }

    @Override
    public void addCarrinhoDeCompras(){
        System.out.println("Adicionando um brownie delicioso de nutella no carrinho de compras");
    }
}
