<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Route Selection</title>
    <style>
		body {
		    font-family: Arial, sans-serif;
		    margin: 0;
		    padding: 0;
		    background-color: #f4f4f4;
		}
		
		.container {
		    max-width: 600px;
		    margin: 50px auto;
		    padding: 20px;
		    background-color: #fff;
		    border-radius: 5px;
		    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
		}
		
		h1 {
		    text-align: center;
		    color: #333;
		}
		
		label {
		    display: block;
		    margin-bottom: 10px;
		    color: #555;
		}
		
		select {
		    width: 100%;
		    padding: 10px;
		    font-size: 16px;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    outline: none;
		    box-sizing: border-box;
		}
		
		select:focus {
		    border-color: #007bff;
		}
		
		select option:hover {
		    background-color: #007bff;
		    color: #fff;
		}
        .payment-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }

        .payment-btn:hover {
            background-color: #0056b3;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .route {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            padding: 20px;
            max-width: 600px;
            text-align: center;
        }
        .route h1 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        .route p {
            color: #666;
            font-size: 16px;
            line-height: 1.6;
            margin: 0;
        }
        .route p:first-child {
            margin-top: 10px;
        }
        
        .footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
            position: fixed;
            bottom: 0;
            left: 0;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .footer img {
            margin: 0 10px;
            width: 40px;
            height: 40px;
            animation: bounce 1s infinite alternate;
        }
        @keyframes bounce {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-10px);
            }
        }
        .header-bar {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .header-bar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }
        .header-bar a:hover {
            text-decoration: underline;
        }

    
    </style>
</head>
<body>
<div class="header-bar">
    <a href="#">Login</a>
    <a href="#">Terms and Conditions</a>
    <a href="#">FAQ</a>
    <a href="#">Support</a>
</div>

    <div class="container">
        <h1>Bus Route Selection</h1>
        <label for="bus-route">Select Bus Route:</label>
        <select id="bus-route">
            <option value="route1">Route 1</option>
            <option value="route2">Route 2</option>
            <option value="route3">Route 3</option>
        </select>
        <br><br>
        <a href="addPayment.jsp" class="payment-btn">Proceed to Payment</a>
    </div>
    <div class="route">
    <h1>Route 1: Colombo to Badulla</h1>
    <p>LKR:2000.00</p>
    <p>Colombo Fort Bus Station/ Pettah Central Bus Stand/ Maharagama Bus Station/ Ratnapura/ Balangoda/ Bandarawela/ Badulla Bus Station</p>
</div>

<div class="route">
    <h1>Route 2: Colombo to Jaffna</h1>
    <p>LKR:3000.00</p>
    <p>Colombo Fort Bus Station/ Maharagama Bus Stand/ Kurunegala Bus Stand/ Anuradhapura Bus Stand/ Vavuniya Bus Stand/ Jaffna Central Bus Stand</p>
</div>

<div class="route">
    <h1>Route 3: Colombo to Matara</h1>
    <p>LKR:2000.00</p>
    <p>Colombo Fort Bus Station/ Maharagama Bus Stand/ Panadura Bus Stand/ Kalutara Bus Stand/ Aluthgama Bus Stand/ Ambalangoda Bus Stand/ Hikkaduwa Bus Stand/ Galle Bus Stand/ Weligama Bus Stand/ Matara Central Bus Stand</p>
</div>

<div class="footer">
   
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/1200px-MasterCard_Logo.svg.png" alt="Mastercard">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/PayPal.svg/1200px-PayPal.svg.png" alt="PayPal">
    <!-- Add more payment method icons as needed -->
</div>

</body>
</html>
    