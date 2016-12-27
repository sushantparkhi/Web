<?php

//load and connect to MySQL database stuff
require("config.inc.php");

if (!empty($_POST)) {
	//initial query
	$query = "INSERT INTO complaint_new ( c_name, c_description,address) VALUES ( :c_name, :c_description, :address) ";
      //  $query2 = "INSERT INTO address ( c_name, c_description) VALUES ( :c_name, :c_description) where shop_id=:shopid";
        //$query3 = "Update shop_info set no_of_reviews=(no_of_reviews+1)  where shop_id=:shopid";
        
    //Update query
    $query_params = array(
        ':c_name' => $_POST['c_name'],
        ':c_description' => $_POST['c_description'],
        ':address' => $_POST['address'],
		//':image' => $_POST['image'],
	
    );
 /*$query_params2 = array(
        ':shopid' => $_POST['shopid'],
        ':rating' => $_POST['rating']
    );
 $query_params3 = array(
        ':shopid' => $_POST['shopid'],
    );*/
    
	//execute query
    try {
        $stmt   = $db->prepare($query);
        $result = $stmt->execute($query_params);
        /* $stmt   = $db->prepare($query2);
        $result = $stmt->execute($query_params2);
         $stmt   = $db->prepare($query3);
        $result = $stmt->execute($query_params3);*/
    }
    catch (PDOException $ex) {
        // For testing, you could use a die and message. 
        die("Failed to run query: " . $ex->getMessage());
        
        //or just use this use this one:
        $response["success"] = 0;
        $response["message"] = "Database Error. Couldn't add complaint!";
        die(json_encode($response));
    }

    $response["success"] = 1;
    $response["message"] = "Complaint Reported!";
    echo json_encode($response);
   
} else {
?>
		<h1>Add Comment</h1> 
		<form action="submit_complaint.php" method="post"> 
		    name:<br /> 
		    <input type="text" name="c_name" placeholder="c_name" /> 
		    <br /><br /> 
		     Desc:<br /> 
		    <input type="text" name="c_description" placeholder="c_description" /> 
		    <br /><br /> 
		    Address:<br /> 
		    <input type="text" name="address" placeholder="address" /> 
		    <br /><br />
		
		    <input type="submit" value="Add Comment" /> 
		</form> 
	<?php
}

?> 