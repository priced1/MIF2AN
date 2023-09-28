import javax.swing.JOptionPane;

public class ExibeMensagem {

	public static void main(String[] args) {
		
		String mensagem = "Olá, mundo!";
		
		// Exibe a mensagem no console
		System.out.println(mensagem);
		
		// Exibe a mensagem na caixa de dialogo
		JOptionPane.showMessageDialog(null, mensagem);
		// Ctrl + Shift + O -> importar
		
	}

}



