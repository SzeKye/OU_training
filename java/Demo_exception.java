import java.util.Scanner;

public class Demo_Exception {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter value for num 1");
        try{
            int num1 = scanner.nextInt();
            int num2 = 5;
            double varResult = num1/num2;
            System.out.println("Calculation Result "+ varResult);
            
        }catch(ArithmeticException e){
            System.out.println("Cannot be divided");
        }
    }
}
