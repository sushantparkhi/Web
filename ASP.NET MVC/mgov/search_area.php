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
$query = "SELECT * FROM clean_contributors  WHERE area_name LIKE :area_name GROUP BY :area_name";

$query_params = array(
        ':area_name' => $_POST['area_name']
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
          
        
         $post["date"]  = $row["date"];
		  $post["image"]  = $row["image"];
        $post["contributor_name"]  = $row["contributor_name"];
		$post["area_name"]  = $row["area_name"];
	
        $post["clean_id"] = $row["clean_id"];
       
        
        
        
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
?>		<h1>Scheme Search</h1> 
		<form action="search_area.php" method="post"> 
		    Brand:<br /> 
		    <input type="text" name="area_name" placeholder="area_name" /> 
		    <br /><br /> 
		   
		    <input type="submit" value="Login" /> 
		</form> 
		
	<?php
}

?> 