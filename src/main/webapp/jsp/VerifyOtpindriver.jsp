<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<head>
    <title>OTP Verification</title>
    <style>
        /* Card container */
        .card {
            width: 360px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        /* OTP input fields */
        .otp-input {
            width: 240px;
            height: 40px;
            font-size: 18px;
            text-align: center;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Submit button */
        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        /* Center align text */
        .center-text {
            text-align: center;
        }
    </style>
</head>
<body>
<form action="<%=request.getContextPath()%>/VerifyOTPServlet" method ="post">
    <div class="card">
        <h2 class="center-text">OTP Verification</h2>
        <p class="center-text">Enter the 6-digit OTP sent to your email or phone.</p>
        
        <div class="center-text">
            <input type="tel" class="otp-input" name="otp"  pattern = "[0-9]{6}" id="otp">
            
        </div>
        
        <button class="submit-button center-text" type="submit">Verify OTP</button>
    </div>
    </form>
        
    
        <c:if test="${not empty msg}">
        <p>${msg}</p>
        </c:if>
</body>
</html>

