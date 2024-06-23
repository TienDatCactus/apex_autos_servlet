/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Junit;

/**
 * @author Tiến_Đạt
 */
public class Calculator {
  public static int calculate(int a, int b, char operation) {
    switch (operation) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '*':
        return a * b;
      case '/':
        try {

          if (b == 0) {
            throw new ArithmeticException("Division by zero is not allowed");
          }
        } catch (ArithmeticException e) {
          e.getMessage();
        }

        return a / b;
      default:
        throw new IllegalArgumentException("Invalid operation: " + operation);
    }
  }
}
