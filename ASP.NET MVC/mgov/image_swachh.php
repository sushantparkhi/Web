<?php

require("config.inc.php");

if (!empty($_POST)) {
    // Example:
    move_uploaded_file($_FILES['myFile']['tmp_name'], "uploads/" . $_FILES['myFile']['name']);
	
		$query = "INSERT INTO complaint_cleanliness ( complaint ,address,image) VALUES ( :complaint, :address,:image) ";

	 $query_params = array(
        ':complaint' => $_POST['complaint'],
        ':address' => $_POST['address'],
       
		':image' => "uploads/" . $_FILES['myFile']['name']
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
		<form action="image_swachh.php" method="post" enctype="multipart/form-data"> 
		    Complaint:<br /> 
		    <input type="text" name="complaint" placeholder="complaint" /> 
		    <br /><br /> 
		     
		    Address:<br /> 
		    <input type="text" name="address" placeholder="address" /> 
		    <br /><br />
			
			  <input type="text" name="image" placeholder="image" /> 
		    <br /><br />
			
			<input type="file" name="myFile" id="myFile">
		
		    <input type="submit" value="Add Comment" /> 
		</form> 
	<?php
}

?> 