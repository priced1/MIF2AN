public class Main {
    public static void main(String [] args) {
        int valor1= 10;
        int valor2= 20;

        int resultado = valor1 + valor2;

        System.out.println(
            valor1 +" + " + valor2 + " = " + resultado
        );
        
        if (valor1 > valor2) {
            System.out.println(
                valor1 + "é maior que " + valor2
            );
        } else if(valor1< valor2){
            System.out.print(valor1+ "é menor que " + valor2);

        }
            
        else {
            System.out.println(
                valor1 + " é igual que " + valor2
            );
        }
    }
}
