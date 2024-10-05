<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Repayment Schedule</title>
    <link rel="stylesheet" href="./css/Schedule.css">
</head>
<body>
    <div class="container">
        <h1>Loan Repayment Schedule</h1>
        <table>
            <tr>
                <th>EMI No.</th>
                <th>Instalment</th>
                <th>Interest</th>
                <th>Capital</th>
                <th>Capital Balance</th>
            </tr>
            <%
                DecimalFormat df = new DecimalFormat("#.##");
                double loanAmount = 500000; // Static loan amount
                double interestRate = 0.01; // 12% annual interest rate
                int repaymentPeriod = 36; // 36 months
                double emi = 16607; // Static EMI value
                
                double balance = loanAmount;
                double totalInstalment = 0;
                double totalInterest = 0;
                double totalCapital = 0;
                
                for (int i = 1; i <= repaymentPeriod; i++) {
                    double interest = balance * interestRate;
                    double capital = emi - interest;
                    balance -= capital;
                    
                    totalInstalment += emi;
                    totalInterest += interest;
                    totalCapital += capital;
            %>
            <tr>
                <td><%= i %></td>
                <td><%= df.format(emi) %></td>
                <td><%= df.format(interest) %></td>
                <td><%= df.format(capital) %></td>
                <td><%= df.format(Math.max(balance, 0)) %></td>
            </tr>
            <%
                }
            %>
            <tr class="total-row">
                <td><strong>Total</strong></td>
                <td><strong><%= df.format(totalInstalment) %></strong></td>
                <td><strong><%= df.format(totalInterest) %></strong></td>
                <td><strong><%= df.format(totalCapital) %></strong></td>
                <td>-</td>
            </tr>
        </table>
        <a href="Calculator.jsp" class="btn-back">Back to Calculator</a>
    </div>
</body>
</html>