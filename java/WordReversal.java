import java.sql.SQLOutput;
import java.util.Scanner;

public class WordReversal {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String word;
        System.out.println("Welcome to the Word Reverser! ");
        System.out.println("Type a word and I'll reverse it for you");
        System.out.println("Type skip to skip a turn, or 'exit' to quit the game");

        while(true){
            System.out.println("\nEnter a word: ");
            word = scanner.nextLine();

            //Exit conditions
            if (word.equalsIgnoreCase("exit")){
                System.out.println("Thanks for playing! Goodbye!");
                break;
            }
            if (word.equalsIgnoreCase("skip")){
                System.out.println("Turn skipped");
                continue;
            }
            String reversed = "";
            int i = word.length()-1;
            while (i>= 0){
                reversed += word.charAt(i);
                i--;
            }
            System.out.println("Reversed word "+ reversed);
        }//while loop
        scanner.close();
    }// main method
}// main class
