<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Instalment Calculator</title>
    <link rel="stylesheet" href="./css/Calculator.css">
</head>
<body>
   <div class="container">
        <h1>Loan Instalment Calculator</h1>
        <form action="calculateEMI.jsp" method="post">
            <div class="form-group">
                <label for="loanAmount">Loan Amount</label>
                <input type="number" id="loanAmount" name="loanAmount" required>
            </div>
            <div class="form-group">
                <label for="interestRate">Annual Interest Rate (%)</label>
                <input type="number" id="interestRate" name="interestRate"  step="0.1" required>
            </div>
            <div class="form-group">
                <label for="repaymentPeriod">Repayment Period (months)</label>
                <input type="number" id="repaymentPeriod" name="repaymentPeriod"  required>
            </div>
            <button type="submit" class="btn-calculate">Calculate</button>
        </form>
        <div class="result">
            <h2>Equated Monthly Instalment</h2>
            <p class="emi">Rs.<span id="emiResult">00,000.00</span></p>
        </div>
        <div class="actions">
            <a href="Schedule.jsp" class="btn-schedule">Schedule</a>
            <button class="btn-save">Save</button>
        </div>
    </div>
    
</body>
</html>