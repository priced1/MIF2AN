import javax.swing.JOptionPane;

public class DiaSemana {

	public static void main(String[] args) { 
		
		String numEscolhido = JOptionPane
			.showInputDialog(null,
			"Escolha um número de 1 a 7:");
		
		int dia = Integer
				.parseInt(numEscolhido);
		
		String diaSemana = "";
		
		if(dia == 1) {
		  diaSemana = "Domingo";
		} else if (dia == 2) {
		  diaSemana = "Segunda-feira";
		} else if (dia == 3) {
		  diaSemana = "Terça-feira";
		 } else if (dia == 4) {
		 	diaSemana = "Quarta-feira";
		 } else if (dia == 5) {
		 	diaSemana = "Quinta-feira";
		 }  else if (dia == 6) {
		 	diaSemana = "Sexta-feira";
		 } else if (dia == 7) {
		 	diaSemana = "Sábado";
		 } else {
			diaSemana = "Inválido";
		 }
		
		JOptionPane.showMessageDialog(null,
			   "Dia escolhido: " + numEscolhido
		+"\n"+ "Dia da Semana: " + diaSemana);	

	}

}
