import org.w3c.dom.ls.LSOutput;

import java.util.Scanner;
import java.util.Random;
public class DiceRollingGame {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random rand = new Random();

        System.out.println("Welcome to the dice rolling game");
        System.out.println("Press enter to roll the dice...");

        scanner.nextLine();//wati for the user to press the enter key

        int die1 = rand.nextInt(6) +1;
        int die2 = rand.nextInt(6) +1;

        System.out.println("You rolled: ");
        System.out.println("Die 1: "+ die1);
        System.out.println("Die 2: "+ die2);
        if(die1 == die2){
            System.out.println("You rolled a double");
        }
        else if (die1 > die2) {
            System.out.println("Die 1 greater than die 2");
        }
        else{
            System.out.println("You didn't roll a double");
        }
        scanner.close();
    }

}
