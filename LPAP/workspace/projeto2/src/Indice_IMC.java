import javax.swing.JOptionPane;

public class Indice_IMC {
	public static void main(String [] args) {
		String altura= JOptionPane.showInputDialog("Informe a sua altura: ");
		String massa = JOptionPane.showInputDialog("Informe seu peso: ");
		 
		float heigth = Float.parseFloat(altura);
		int peso= Integer.parseInt(massa);
		
		float imc= peso / (heigth * heigth);
		if(imc <=18.5) {
			JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Magreza", imc));
		}
		else if(imc>= 18.5 && imc<= 24.0) {
		JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Normal", imc));
		}
	else if(imc>= 25 && imc<= 29.9){
	JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Sobrepeso", imc));
		}
	else if(imc>= 30 && imc<= 34.9){
		JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Obesidade grau 1", imc));
		}
	else if(imc>= 35 && imc<= 39.9){
		JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Obesidade grau 2", imc));
	}
	else if(imc>= 40){
		JOptionPane.showInternalMessageDialog(null, String.format( "Seu IMC é: %01.1f \n" + "Sua classificação do IMC é: Obesidade grau 3", imc));
		}
		
	}
	
}
