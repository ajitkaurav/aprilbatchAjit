package com.example.app;

/**
 * Simple Java Application
 */
public class App {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
        System.out.println("This is a sample Java application");
        
        if (args.length > 0) {
            System.out.println("Arguments received:");
            for (int i = 0; i < args.length; i++) {
                System.out.println("  Arg " + i + ": " + args[i]);
            }
        }
        
        System.out.println("Application completed successfully!");
    }
}
