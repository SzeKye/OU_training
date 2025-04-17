import java.util.Scanner;

public class MovieTicket {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter your age: ");
        int age = scanner.nextInt(); //accept age

        System.out.println("Are you a student? (yes/no)");
        String isStudent = scanner.next(); //accept student indicator

        int ticketPrice;

        if(age>= 0 && age<5){
            ticketPrice=0;
            System.out.println("Free tickets for children under 5!");
        }
        else if(age>=5 && age<18){
            ticketPrice=10;
            System.out.println("Child Ticket (Age 5 -17): $"+ticketPrice);
        }
        else if(age>=18 && age<60){
            ticketPrice=20;
            // check for student discount
            if(isStudent.equalsIgnoreCase("yes")&& age>17){
                ticketPrice-= 2;
                System.out.println("Student discount of 5% applied on original price of $18");
            }
            System.out.println("Child Ticket (Age 18 -60): $"+ticketPrice);
        } else if (age>60) {
            ticketPrice = 15;
            System.out.println("Senior Citizen Ticket(60+): $"+ticketPrice);
        }
        else{
            System.out.println("Invalid age entered");
        }

    }// main method
}//main class
