package edu.fud.model;
public class CalculatorModel {
    private float num1, num2;

    public CalculatorModel() {
    }

    public CalculatorModel(float num1, float num2) {
        this.num1 = num1;
        this.num2 = num2;
    }

    public float getNum1() {
        return num1;
    }

    public void setNum1(float num1) {
        this.num1 = num1;
    }

    public float getNum2() {
        return num2;
    }

    public void setNum2(float num2) {
        this.num2 = num2;
    }

    public float calculator(String opt){
        if (opt.equals("+")) {
            return num1 + num2;
        }
        if (opt.equals("-")) {
            return num1 - num2;
        }
        if (opt.equals("/")) {
            return num1 / num2;
        }
            return num1 * num2;
    }
    
}
