<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<style type="text/css">
		#container{
			width: 400px;
			height: 400px;
			margin: 0 auto 0;
			text-align: center;
		}
	</style>
</head>
<body>
	<div id="container">
		<jsp:useBean id="calculatorBean" class="com.zt.bean.CalculatorBean" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="calculatorBean"/>
	<%
		try{
			calculatorBean.calculate();
		}catch(Exception e)
		{
			out.write(e.getMessage());
		}
	%><br/>
	------------------------------------------------------<br/>
	<jsp:getProperty property="firstNum" name="calculatorBean"/>
	<jsp:getProperty property="operator" name="calculatorBean"/>
	<jsp:getProperty property="secondNum" name="calculatorBean"/>
	=
	<jsp:getProperty property="result" name="calculatorBean"/><br/>
	------------------------------------------------------<br/>

	<form action="/jspDemo1/calculator.jsp" method="post">
		<table border="1" style="padding: 10px;">
			<tr>
				<td colspan="2">计算器界面</td>
			</tr>
			<tr>
				<td>请输入第一个数据</td>
				<td><input type="text" name="firstNum"/></td>
			</tr>
			<tr>
				<td>请选择计算方式</td>
				<td>
					<select name="operator">
						<option value="+">+</option>
						<option value="-">-</option>
						<option value="*">*</option>
						<option value="/">/</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>请输入第二个数据</td>
				<td><input type="text" name="secondNum"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="计算"/>
				</td>
			</tr>
		</table>
	
	</form>
	</div>
</body>
</html>