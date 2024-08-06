<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #555;
        }
        .item-list {
            margin-bottom: 20px;
        }
        .item {
            margin-bottom: 10px;
        }
        label {
            margin-left: 8px;
            cursor: pointer;
        }
        button {
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 4px;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f4f4f4;
            color: #333;
        }
        tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }
        tbody tr:nth-child(even) {
            background-color: #ffffff;
        }
        #total {
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
<form action="OrdersServelet">
    <h1>Select Items to Add to Dropdown</h1>
    
    <!-- Item List with Checkboxes -->
    <div class="item-list">
        <div class="item">
            <input type="checkbox" id="item1" class="itemm" data-name="Pizza" data-cost="12.99">
            <label for="item1">Pizza - $12.99</label>
        </div>
        <div class="item">
            <input type="checkbox" id="item2" class="itemm" data-name="Burger" data-cost="8.50">
            <label for="item2">Burger - $8.50</label>
        </div>
        <div class="item">
            <input type="checkbox" id="item3" class="itemm" data-name="Pasta" data-cost="10.00">
            <label for="item3">Pasta - $10.00</label>
        </div>
        <div class="item">
            <input type="checkbox" id="item4" class="itemm" data-name="Salad" data-cost="6.75">
            <label for="item4">Salad - $6.75</label>
        </div>
        <div class="item">
            <input type="checkbox" id="item5" class="itemm" data-name="Sushi" data-cost="15.25">
            <label for="item5">Sushi - $15.25</label>
        </div>
    </div>
    
    <button type="button" onclick="addSelectedItems()">Add Items</button>
    
    <input type="hidden" id="hidarr" name="hidarr">
    <!-- Table to Display Selected Items -->
    <h2>Selected Items</h2>
    <table id="itemsTable">
        <thead>
            <tr>
                <th>Name</th>
                <th>Cost</th>
            </tr>
        </thead>
        <tbody>
            <!-- Selected items will be added here -->
        </tbody>
    </table>
    
    <button type="submit">get Payment</button>
    <div id="total">${sessionScope.totalcost}</div>
     <button onclick="getalert()">Pay Now</button>
</form>
    <script>
        function addSelectedItems() {
            let checkboxes = document.getElementsByClassName('itemm');
            let tableBody = document.getElementById('itemsTable').getElementsByTagName('tbody')[0];   
           
            tableBody.innerHTML = '';
            let str="";

            for (let i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    let itemName = checkboxes[i].getAttribute('data-name');
                    let itemCost = checkboxes[i].getAttribute('data-cost');
                    
                    // Create a new row and cells
                    let row = tableBody.insertRow();
                    let cellName = row.insertCell(0);
                    let cellCost = row.insertCell(1);
                    
                    cellName.textContent = itemName;
                    cellCost.textContent = '$' + parseFloat(itemCost).toFixed(2);
                    str += itemName + ".." + itemCost + " "; 

                }
            }
            document.getElementById('hidarr').value=str;
        }
        function getalert(){
        	//document.getElementById("total").innerHTML='';
         	window.alert("payment successfully");
         	event.preventDefault();
         	window.location.href('home.jsp');
        }
    </script>
</body>
</html>

