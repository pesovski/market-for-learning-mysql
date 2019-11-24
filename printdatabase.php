<?php
include 'db.php';

echo "<div class='row'>";

echo "<div class='col-md-3'> <h3>Category</h3>";
$sql = "SELECT * FROM category";
$result = $mysqli->query($sql);
if ($result->num_rows === 0) {
    echo "<h1>No results found</h1>";
} else {
	echo "<table class='table table-condensed table-bordered'>";
	echo "<thead><tr><td>id</td><td>name</td></tr></thead><tbody>";
    while ($cat = $result->fetch_assoc()) {
        echo "<tr><td>".$cat['id']."</td><td>".$cat['name']."</td></tr>";
    }            
    echo "</tbody></table>";
}
echo "</div>";

echo "<div class='col-md-3'> <h3>Users</h3>";
$sql = "SELECT * FROM users";
$result = $mysqli->query($sql);
if ($result->num_rows === 0) {
    echo "<h1>No results found</h1>";
} else {
	echo "<table class='table table-condensed table-bordered'>";
	echo "<thead><tr><td>id</td><td>firstname</td><td>lastname</td></tr></thead><tbody>";
    while ($user = $result->fetch_assoc()) {
        echo "<tr><td>".$user['id']."</td><td>".$user['firstname']."</td><td>".$user['lastname']."</td></tr>";
    }            
    echo "</tbody></table>";
}
echo "</div>";

echo "<div class='col-md-3'><h3>Orders</h3>";
$sql = "SELECT * FROM orders";
$result = $mysqli->query($sql);
if ($result->num_rows === 0) {
	echo "<h1>No results found</h1>";
} else {
	echo "<table class='table table-condensed table-bordered'>";
	echo "<thead><tr><td>id</td><td>user_id</td><td>product_id</td><td>completed</td><td>created_at</td></tr></thead><tbody>";
    while ($order = $result->fetch_assoc()) {
        echo "<tr><td>".$order['id']."</td><td>".$order['user_id']."</td><td>".$order['product_id']."</td><td>".$order['completed']."</td><td>".$order['created_at']."</td></tr>";
    }            
    echo "</tbody></table>";
}
echo "</div>";

echo "<div class='col-md-3'><h3>Cart</h3>";
$sql = "SELECT * FROM cart";
$result = $mysqli->query($sql);
if ($result->num_rows === 0) {
    echo "<h1>No results found</h1>";
} else {
	echo "<table class='table table-condensed table-bordered'>";
	echo "<thead><tr><td>id</td><td>user_id</td><td>product_id</td><td>created_at</td></tr></thead><tbody>";
    while ($order = $result->fetch_assoc()) {
        echo "<tr><td>".$order['id']."</td><td>".$order['user_id']."</td><td>".$order['product_id']."</td><td>".$order['created_at']."</td></tr>";
    }            
    echo "</tbody></table>";
}
echo "</div>";

echo "<div class='col-md-12'><h3>Products</h3>";
$sql = "SELECT * FROM products";
$result = $mysqli->query($sql);
if ($result->num_rows === 0) {
    echo "<h1>No results found</h1>";
} else {
	echo "<table class='table table-condensed table-bordered'>";
	echo "<thead><tr><td>id</td><td>name</td><td>image</td><td>description</td><td>free_shipping</td><td>price</td><td>discount (%)</td><td>available</td><td>items_left</td><td>category_id</td></tr></thead><tbody>";
    while ($product = $result->fetch_assoc()) {
        echo "<tr><td>".$product['id']."</td><td>".$product['name']."</td><td>".$product['image']."</td><td>".$product['description']."</td><td>".$product['free_shipping']."</td><td>".$product['price']."</td><td>".$product['discount']."</td><td>".$product['available']."</td><td>".$product['items_left']."</td><td>".$product['category_id']."</td></tr>";
    }            
    echo "</tbody></table>";
}
echo "</div>";

echo "</div>";
?>