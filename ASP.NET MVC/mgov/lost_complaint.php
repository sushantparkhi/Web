<?php

//load and connect to MySQL database stuff
require("config.inc.php");

if (!empty($_POST)) {
	//initial query
	$query = "INSERT INTO lost_complaint ( type,registeration_no,lost_date,lost_time,lost_address,contact_no,name) VALUES ( :type, :registeration_no, :lost_date ,:lost_time,:lost_address,:contact_no ,:name) ";
      //  $query2 = "INSERT INTO address ( c_name, c_description) VALUES ( :c_name, :c_description) where shop_id=:shopid";
        //$query3 = "Update shop_info set no_of_reviews=(no_of_reviews+1)  where shop_id=:shopid";
        
    //Update query
    $query_params = array(
        ':type' => $_POST['type'],
        ':registeration_no' => $_POST['registeration_no'],
        ':lost_date' => $_POST['lost_date'],
		 ':lost_time' => $_POST['lost_time'],
		  ':lost_address' => $_POST['lost_address'],
		   ':contact_no' => $_POST['contact_no'],
		    ':name' => $_POST['name'],
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
		<form action="lost_complaint.php" method="post"> 
		    name:<br /> 
		    <input type="text" name="type" placeholder="type" /> 
		    <br /><br /> 
		     Desc:<br /> 
		    <input type="text" name="registeration_no" placeholder="registeration_no" /> 
		    <br /><br /> 
		    Address:<br /> 
		    <input type="text" name="lost_date" placeholder="date" /> 
		    <br /><br />
			  Address:<br /> 
		    <input type="text" name="lost_time" placeholder="time" /> 
		    <br /><br />
			  Address:<br /> 
		    <input type="text" name="lost_address" placeholder="address" /> 
		    <br /><br />
			  Address:<br /> 
		    <input type="text" name="contact_no" placeholder="number" /> 
		    <br /><br />  Address:<br /> 
		    <input type="text" name="name" placeholder="name" /> 
		   
		
		    <input type="submit" value="Submit Complaint" /> 
		</form> 
	<?php
}

?> 