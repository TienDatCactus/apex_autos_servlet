/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Junit;

import java.util.List;

/**
 * @author Tiến_Đạt
 */
public class Binary {

  public static int BinToInt(List<Integer> binary) {

    int result = 0;
    int power = 0;

    for (int i = binary.size() - 1; i >= 0; i--) {
      int digit = binary.get(i);

      if (digit != 0 && digit != 1) {
          throw new IllegalArgumentException("Invalid binary digit: " + digit);
        }
      result += digit * Math.pow(2, power);
      power++;
    }

    return result;
  }
}
