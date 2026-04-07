<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Mini E-Commerce | Rakesh</title>

<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        background: linear-gradient(135deg, #667eea, #764ba2);
        color: white;
        text-align: center;
    }

    header {
        padding: 20px;
        font-size: 28px;
        font-weight: bold;
        letter-spacing: 2px;
        animation: slideDown 1s ease;
    }

    .container {
        margin-top: 40px;
        animation: fadeIn 2s ease;
    }

    .card {
        background: white;
        color: black;
        width: 300px;
        margin: auto;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: scale(1.05);
    }

    button {
        padding: 10px 20px;
        border: none;
        border-radius: 8px;
        background: #667eea;
        color: white;
        font-size: 16px;
        cursor: pointer;
        margin-top: 10px;
        transition: 0.3s;
    }

    button:hover {
        background: #764ba2;
        transform: scale(1.1);
    }

    #total {
        margin-top: 20px;
        font-size: 20px;
        font-weight: bold;
    }

    @keyframes slideDown {
        from { transform: translateY(-50px); opacity: 0; }
        to { transform: translateY(0); opacity: 1; }
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</head>

<body>

<header>🛒 Mini E-Commerce Store</header>

<div class="container">
    <div class="card">
        <h2>📦 Premium Headphones</h2>
        <p>Price: ₹500</p>
        <button onclick="addCart()">Add to Cart</button>
        <button onclick="removeCart()">Remove</button>
        <p id="total">Total: ₹0</p>
    </div>
</div>

<script>
let total = 0;
let price = 500;

function addCart() {
    total += price;
    updateTotal();
}

function removeCart() {
    if (total >= price) {
        total -= price;
    }
    updateTotal();
}

function updateTotal() {
    document.getElementById("total").innerText = "Total: ₹" + total;
}
</script>

</body>
</html>