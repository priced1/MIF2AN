import javax.swing.JOptionPane;

public class nota {
    public static void main(String[] args) {
        double media = 7.5;
        
        if(media >= 6){
        JOptionPane.showMessageDialog(null, "Aprovado");
        }
        else {
        JOptionPane.showMessageDialog(null, "Reprovado");
        }
    
    }
}
