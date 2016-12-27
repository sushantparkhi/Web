<?php

require("config.inc.php");

if (!empty($_POST)) {
    // Example:
    move_uploaded_file($_FILES['myFile']['tmp_name'], "uploads/" . $_FILES['myFile']['name']);
	
		$query = "INSERT INTO complaint_new ( c_name, c_description,address,image_url) VALUES ( :c_name, :c_description, :address,:image_url) ";

	 $query_params = array(
        ':c_name' => $_POST['c_name'],
        ':c_description' => $_POST['c_description'],
        ':address' => $_POST['address'],
		':image_url' => "uploads/" . $_FILES['myFile']['name']
		);
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
		<form action="image.php" method="post" enctype="multipart/form-data"> 
		    name:<br /> 
		    <input type="text" name="c_name" placeholder="c_name" /> 
		    <br /><br /> 
		     Desc:<br /> 
		    <input type="text" name="c_description" placeholder="c_description" /> 
		    <br /><br /> 
		    Address:<br /> 
		    <input type="text" name="address" placeholder="address" /> 
		    <br /><br />
			
			  <input type="text" name="image_url" placeholder="image_url" /> 
		    <br /><br />
			
			<input type="file" name="myFile" id="myFile">
		
		    <input type="submit" value="Add Comment" /> 
		</form> 
	<?php
}

?> 