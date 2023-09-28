import javax.swing.JOptionPane;

public class SwitchCase {
	
	public static void main(String[] args) {
	
	int	numDia= Integer.parseInt(JOptionPane.showInputDialog(null, "Informe o dia da Semana"));
	
	String diaSemana= "";
	
	switch(numDia){
	case 1: diaSemana = "Domingo"; break;
	case 2: diaSemana = "Segunda-Feira"; break;
	case 3: diaSemana = "Terça-feira"; break;
	case 4: diaSemana = "Quarta-Feira"; break;
	case 5: diaSemana = "Quinta-feira"; break;
	case 6: diaSemana = "Sexta"; break;
	case 7: diaSemana = "Sabado"; break;
	default: diaSemana= "Inválido";
	}
	JOptionPane.showMessageDialog(null, numDia + " = " + diaSemana);
	}
}
