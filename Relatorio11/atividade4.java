import java.util.ArrayList;
import java.util.List;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}
class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Cozinhar o Slime em fogo baixo até que vire uma gelatina";
    }
}
class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Assar a Mandrágora até que suas raízes fiquem crocantes";
    }
}
class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}
class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;
//composição: o Cozinheiro possui uma Panela e a vida da Panela depende da vida do Cozinheiro. Se o Cozinheiro deixar de existir, a Panela também deixa de existir.
//agregação: os Monstros são ingredientes que o Cozinheiro pode adicionar à sua lista de ingredientes, mas eles não dependem da existência do Cozinheiro.
    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("Cozinheiro: " + nome);
        System.out.println("Material da panela: " + panela.getMaterial());
        System.out.println("Ingredientes:");
        for (Monstro monstro : ingredientes) {
            System.out.println("- " + monstro.getNome() + ": " + monstro.receita());
        }
    }
}
class Main {
    public static void main(String[] args) {
        Slime slime = new Slime("Slime");
        Mandragora mandragora = new Mandragora("Mandrágora Roxa");

        Cozinheiro cozinheiro = new Cozinheiro("Lucas", "Aço Inoxidável");
        cozinheiro.adicionarIngrediente(slime);
        cozinheiro.adicionarIngrediente(mandragora);

        cozinheiro.servirBanquete();
    }
}