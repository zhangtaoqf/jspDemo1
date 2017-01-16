package com.zt.bean;

import java.math.BigDecimal;

public class CalculatorBean {

	public CalculatorBean() {
		// TODO Auto-generated constructor stub
	}
	private String firstNum="0";
	private String secondNum="0";
	private String operator="+";
	private String result;
	public String getFirstNum() {
		return firstNum;
	}
	public void setFirstNum(String firstNum) {
		this.firstNum = firstNum;
	}
	public String getSecondNum() {
		return secondNum;
	}
	public void setSecondNum(String secondNum) {
		this.secondNum = secondNum;
	}
	
	
	public String getOperator() {
		return operator;
	}
	public void setOperator(String operator) {
		this.operator = operator;
	}
	public void calculate() throws Exception
	{
		BigDecimal first = new BigDecimal(firstNum);
		BigDecimal second = new BigDecimal(secondNum);
		switch (operator) {
		case "+":
				this.result = first.add(second).toString();
			break;
		case "-":
				this.result = first.subtract(second).toString();
				break;
		case "*":
				this.result = first.multiply(second).toString();
			break;
		case "/":
			if(second.doubleValue()==0)
			{
				throw new Exception("除数不能为0");
			}
			this.result = first.divide(second,20,BigDecimal.ROUND_HALF_UP).toString();
			break;
		default:
			throw new Exception("没有此种运算符   ");
		}
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
}
