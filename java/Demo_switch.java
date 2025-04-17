public class Demo_switch {
    public static void main(String[] args){
        int varMonth = 4;

        switch(varMonth){
            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                System.out.println("31 days in the month");
                break;
            case 2:
            case 4:
            case 6:
            case 9:
            case 11:
                System.out.println("30 days in the month");
                break;
        }//switch

        // switch new syntax in java 17
        int dayOfWeek = 1;
        String result = switch(dayOfWeek){
            case 1-> "Sunday"; //removes the need for break statements
            case 2-> "Monday";
            default -> "Other day";
        }; // new sitch; whole thing is a statement
        System.out.println("New switch output: Day of week "+ result);

    }//main method
}//main class
