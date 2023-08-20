/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author matimoris
 */
public class SimpleInterestCalculator {
    public double calculateInterest(double principal, double rate, int years) {
        return principal * (rate / 100) * years;
    }
}