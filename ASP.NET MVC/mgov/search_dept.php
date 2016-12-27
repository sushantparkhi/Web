<?php

/*
Our "config.inc.php" file connects to database every time we include or require
it within a php script.  Since we want this script to add a new user to our db,
we will be talking with our database, and therefore,
let's require the connection to happen:
*/
require("config.inc.php");



if (!empty($_POST)) {

//initial query  
$query = "SELECT * FROM department WHERE d_name LIKE :d_name";

$query_params = array(
        ':d_name' => $_POST['d_name']
    );
    

//execute query
try {
   
    $stmt   = $db->prepare($query);
    
    
    $result = $stmt->execute($query_params);
}


catch (PDOException $ex) {
    $response["success"] = 0;
    $response["message"] = "Database Error!";
    die(json_encode($response));
}
// Finally, we can retrieve all of the found rows into an array using fetchAll 
$rows = $stmt->fetchAll();

//agar value hue to if chalega 
if ($rows) {
    $response["success"] = 1;
    $response["message"] = "Post Available!";
    $response["posts"]   = array();
    
    
    foreach ($rows as $row) {
          $post = array();
          
        
        
        
	$post["d_id"]  = $row["d_id"];
        $post["d_name"] = $row["d_name"];
        $post["d_description"]    = $row["d_description"];
       
        
        
        
        //update our repsonse JSON data
        array_push($response["posts"], $post);
    }
    
    // echoing JSON response 
    echo json_encode($response);
    
    
} else {
    $response["success"] = 0;
    $response["message"] = "No Post Available!";
    die(json_encode($response));
}

} else {
?>		<h1>Shop Search</h1> 
		<form action="search_dept.php" method="post"> 
		    Brand:<br /> 
		    <input type="text" name="d_name" placeholder="dept_name" /> 
		    <br /><br /> 
		   
		    <input type="submit" value="Login" /> 
		</form> 
		
	<?php
}

?> 