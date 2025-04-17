import java.util.Random;
import java.util.Scanner;

public class MathQuiz {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        int score = 0;
        int totalQuestions = 5;
        System.out.println("Welcome to the Mini Math Quiz!");
        System.out.println("You'll get "+totalQuestions+" questions. Let's see how many you can get right");

        //Ask 5 questions
        for(int i=1; i<= totalQuestions; i++) {
            int num1 = random.nextInt(10) + 1;
            int num2 = random.nextInt(10) + 1;
            int correctAnswer = num1 + num2;

            System.out.println("\nQ" + i + ": What is " + num1 + "+" + num2 + "?");
            System.out.println("Your answer: ");
            int userAnswer = scanner.nextInt();

            if (userAnswer == correctAnswer) {
                System.out.println("Correct");
                score++;
            } else {
                System.out.println("The correct answer was: " + correctAnswer);
            }

        }
        System.out.println("\n Quiz over! You scored " + score + " out of " + totalQuestions);
        scanner.close();
    }//main method
}//main class
