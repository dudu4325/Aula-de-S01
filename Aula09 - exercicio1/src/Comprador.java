import Comidas.Brownie;
import Comidas.Tipos.BrownieCafe;
import Comidas.Tipos.BrownieDoceDeLeite;
import Comidas.Tipos.BrownieNutella;

public class Comprador {
    private String nome;
    private double saldo;

    public Comprador(String nome, double saldo){
        this.nome = nome;
        this.saldo = saldo;
    }

    public void efetuarCompra(Brownie brownie) {
        brownie.mostrarInfo();
        brownie.addCarrinhoDeCompras();
        if (brownie instanceof BrownieNutella){
            BrownieNutella nutella = (BrownieNutella) brownie;
            nutella.adicionaNutella();
        }else if (brownie instanceof BrownieCafe) {
            BrownieCafe cafe = (BrownieCafe) brownie;
            cafe.adicionaCafe();
        }else if(brownie instanceof BrownieDoceDeLeite){
            BrownieDoceDeLeite doce = (BrownieDoceDeLeite) brownie;
            doce.adicionaDoceDeLeite();
        }
        brownie.calculaValorTotalCompra();
    }
}