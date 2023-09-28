import javax.swing.JOptionPane;

public class DiaRodizio {

	public static void main(String[] args) {
		
		String finalPlaca = JOptionPane
		   .showInputDialog(null, 
			"Informe o final da placa:"); 
		
		int fp = Integer.parseInt(finalPlaca);
		
		String msg = "";
		
		if (fp == 1 || fp == 2) {
			msg = "segunda-feira";
		} else if (fp == 3 || fp == 4) {
			msg = "terça-feira";
		} else if (fp == 5 || fp == 6) {
			msg = "quarta-feira";
		} else if (fp == 7 || fp == 8) {
			msg = "quinta-feira";
		} else if (fp == 9 || fp == 0) {
			msg = "sexta-feira";
		}
		
		JOptionPane.showMessageDialog(null,
		"O final da placa: " + finalPlaca +
		"\n" + "Dia do rodizio: " + msg);

	}

}
