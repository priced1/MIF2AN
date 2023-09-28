import javax.swing.JOptionPane;

public class ExibeNome {

	public static void main(String[] args) {
		
		String nome = JOptionPane
				.showInputDialog(null, "Nome:");
		
		String telefone = JOptionPane
				.showInputDialog(null, "Telefone:");
		
		String email = JOptionPane
				.showInputDialog(null, "Email:");
		
		int idade = Integer.parseInt( JOptionPane
				.showInputDialog(null, "Idade:"));
		
		double altura = Double.parseDouble(JOptionPane 
				.showInputDialog(null, "Altura:"));
		
		JOptionPane.showMessageDialog(null, 
			"Nome: " + nome + "\n" +
			"Telefone: " + telefone+ "\n" +
			"Email: " + email + "\n" +
			"Idade: " + idade + "\n" +
			"Altura: " + altura);

	}

}





