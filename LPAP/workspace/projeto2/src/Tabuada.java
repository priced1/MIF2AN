import javax.swing.JOptionPane;

public class Tabuada {

	public static void main(String[] args) {
		int numero = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe um número: "));
		
		
		for(int i = 0; i <=10; i++) {
		System.out.println(
		numero + " x " + i  + " = " + (numero*i));
		}
		
		String tabuada = "";
		for(int i = 0; i <=10; i++) {
		tabuada += numero + " x " + i  + " = " + (numero*i) + "\n";
		}
		JOptionPane.showMessageDialog(null, tabuada);
		
		
	}

}
