import java.util.Scanner;
public class Triangulo {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		System.out.println("Digite o valor do lado A:");
		Double a = scanner.nextDouble();
		
		System.out.println("Digite o valor do lado B:");
		Double b = scanner.nextDouble();
		
		System.out.println("Digite o valor do lado C:");
		Double c = scanner.nextDouble();
		
		
		if (a < b + c && b < a + c && c < a + b) {
			String mensagem;
			
			if( a == b && b == c ) { 
				mensagem="Triangulo Equilátero";
			} 
			else if( a==b || b==c || a==c ) {
				mensagem="Triangulo Isósceles";
			} 
			else {
				mensagem="Triangulo Escaleno";
			}
			System.out.println(mensagem);
		} 
			else {
			System.out.println("Nao é possivel formar um triangulo");
		}
	}

}
