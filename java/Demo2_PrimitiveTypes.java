public class Demo2_PrimitiveTypes {
    public static void main(String[] args){
        int varInt = 2500;
        System.out.println("Value in integer"+ varInt);
        float varFloat = 3.14f;
        System.out.println("Value in Float "+ varFloat);

        double varDouble = 3.12567;
        System.out.println("Value in Double "+ varDouble);

        boolean varIndicator = true;
        System.out.println("Value in varIndicator "+ varIndicator);
        boolean varComparison = 10>20;
        System.out.println("Value in varComparison "+ varComparison);

        char varResponses = 'Y';
        System.out.println("value in varResponse "+ varResponses);

        String varContent = "This is Java App for sales department";
        System.out.println("String non-primitive variable "+ varContent);

        // Declare 3 string variables
        String str1 = "Hello";
        String str2 = "hello";
        String str3 = "Hello";

        //compare using .equals()
        System.out.println("using .equals() ");
        System.out.println("str1 compare str2"+ str1.equals(str2));
        System.out.println("str1 compare str3"+ str1.equals(str3));
        //compare using equalsIgnoreCase()
        System.out.println("using equalsIgnoreCase() ");
        System.out.println("str1 compare str2" + str1.equalsIgnoreCase(str2));
        System.out.println("str1 compare str3" + str1.equalsIgnoreCase(str3));
        // compare using "==" operator
        System.out.println();

    } //main method
} // main class
