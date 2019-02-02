<?php 
  // Headers
  header('Access-Control-Allow-Origin: *');
  header('Content-Type: application/json');
  
  include_once '../../config/Database.php';
  include_once '../../models/Product.php';
  
  // Instantiate DB & connect
  $database = new Database();
  $db = $database->connect();
  
  // Instantiate product object
  $product = new Product($db);
  
  // Product query
  $result = $product->get_product();  
  // Get row count
  $num = $result->rowCount();
  
  // Check if any products
  if($num > 0) {
    // Post array
    $products_arr = array();
	
    while($row = $result->fetch(PDO::FETCH_ASSOC)) {
      extract($row);
	  
     $product_item = array(
        'id' => $id,
        'name' => $name,
        'description' => $description,
        'price' => $price,
        'image_url' => $image_url,
        'type_id' => $type_id,
        'type_name' => $type_name
      );
	  
      // Push to "data"
      array_push($products_arr, $product_item);
    }
	
    // Turn to JSON & output
    echo json_encode($products_arr);
	
  } else {
    // No Posts
    echo json_encode(
      array('message' => 'No Products Found')
    );
  }