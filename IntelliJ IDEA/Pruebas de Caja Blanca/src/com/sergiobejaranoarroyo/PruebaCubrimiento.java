package com.sergiobejaranoarroyo;

import java.util.Scanner;

public class PruebaCubrimiento {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num1, num2, num3 = 0;

        System.out.println("Escribe el Primer Número:");
        num1 = sc.nextInt();
        System.out.println("Escribe el Segundo Número:");
        num2 = sc.nextInt();

        System.out.println();

        System.out.println("TOTAL: " + (num1 + num2));
    }
}