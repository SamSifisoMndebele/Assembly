import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        String str1 = " Enter your name! ";
        String str2 = " Enter your age! ";
        String str3 = " you are Eligible to vote.";
        String str4 = " you are Not Eligible to vote.";
        String userName = "";
        final int minAge = 18;

        System.out.print(str1);                     // Print str1
        userName = scanner.nextLine();              // Read the user name

        System.out.print(str2);                     // Print str2
        int age = scanner.nextInt();                // Read the user age

        System.out.println(userName.toString());

        // check if age < minAge
        if (age < minAge) {
            System.out.println(str4);               // Print is Not Eligible
        } else {
            System.out.println(str3);               // Print is Eligible
        }

        scanner.close();
    }
}