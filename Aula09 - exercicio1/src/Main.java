import Comidas.Brownie;
import Comidas.Tipos.BrownieCafe;
import Comidas.Tipos.BrownieDoceDeLeite;
import Comidas.Tipos.BrownieNutella;

public class Main {
    public static void main(String[] args) {
        Brownie b1 = new BrownieNutella("brownie de nutella", 6, "nutella");
        Brownie b2 = new BrownieDoceDeLeite("brownie de doce de leite", 5, "doce de leite");
        Brownie b3 = new BrownieCafe("brownie de cafe", 4, "cafe");
        Comprador com = new Comprador("Chris", 100);

        com.efetuarCompra(b1);
        com.efetuarCompra(b2);
        com.efetuarCompra(b3);
    }
}