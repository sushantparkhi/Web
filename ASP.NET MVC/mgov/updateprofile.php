<?php

/*
Our "config.inc.php" file connects to database every time we include or require
it within a php script.  Since we want this script to add a new user to our db,
we will be talking with our database, and therefore,
let's require the connection to happen:
*/
require("config.inc.php");

//if posted data is not empty
if (!empty($_POST)) {
    //If the username or password is empty when the user submits
    //the form, the page will die.
    //Using die isn't a very good practice, you may want to look into
    //displaying an error message within the form instead.  
    //We could also do front-end form validation from within our Android App,
    //but it is good to have a have the back-end code do a double check.
    if (empty($_POST['email'])) {
        
        
        // Create some data that will be the JSON response 
        $response["success"] = 0;
        $response["message"] = "Please Enter Username";
        
        //die will kill the page and not execute any code below, it will also
        //display the parameter... in this case the JSON data our Android
        //app will parse
        die(json_encode($response));
    }
    
    //if the page hasn't died, we will check with our database to see if there is
    //already a user with the username specificed in the form.  ":user" is just
    //a blank variable that we will change before we execute the query.  We
    //do it this way to increase security, and defend against sql injections
   
    
    
    //fetch is an array of returned data.  If any data is returned,
    //we know that the username is already in use, so we murder our
    //page
   
    
    //If we have made it here without dying, then we are in the clear to 
    //create a new user.  Let's setup our new query to create a user.  
    //Again, to protect against sql injects, user tokens such as :user and :pass
    $query ="UPDATE user_new SET no_male=:no_male,no_female=:no_female,category =:category,handicapped=:handicapped,marital_status=:marital_status,occupation=:occupation WHERE email=:email";
    
	$query1 = "INSERT INTO applied_scheme(scheme_name,email) VALUES(:scheme_name,:email) ";
    
	
    //Again, we need to update our tokens with the actual data:
    $query_params = array(
        ':category' => $_POST['category'],
       ':handicapped' => $_POST['handicapped'], 
        ':marital_status' => $_POST['marital_status'],
        ':occupation' => $_POST['occupation'],
      ':email' => $_POST['email'],
      ':no_male' => $_POST['no_male'],
      ':no_female' => $_POST['no_female']

    );
	
	 $query_params1 = array(
        
      ':email' => $_POST['email'],
   ':scheme_name' => $_POST['scheme_name']

    );
    
    //time to run our query, and create the user
    try {
        $stmt   = $db->prepare($query);
 $result = $stmt->execute($query_params);
	 $stmt   = $db->prepare($query1);
		 $result = $stmt->execute($query_params1);
       
    }
    catch (PDOException $ex) {
        // For testing, you could use a die and message. 
        //die("Failed to run query: " . $ex->getMessage());
        
        //or just use this use this one:
        $response["success"] = 0;
        $response["message"] = "Database Error2. Please Try Again!";
        die(json_encode($response));
    }
    
    //If we have made it this far without dying, we have successfully added
    //a new user to our database.  We could do a few things here, such as 
    //redirect to the login page.  Instead we are going to echo out some
    //json data that will be read by the Android application, which will login
    //the user (or redirect to a different activity, I'm not sure yet..)
    $response["success"] = 1;
    $response["message"] = "Information Successfully updated!!!";
    echo json_encode($response);
    
    //for a php webservice you could do a simple redirect and die.
    //header("Location: login.php"); 
    //die("Redirecting to login.php");
    
    
} else {
?>
	<h1>Register</h1> 
	<form action="updateprofile.php" method="post"> 
	    Category:<br /> 
	    <input type="text" name="category" value="" /> 
	    <br /><br /> 
	    Handicapped:<br /> 
	    <input type="text" name="handicapped" value="" /> 
	    <br /><br />
	    Status:<br /> 
	    <input type="text" name="marital_status" value="" /> 
	    <br /><br />
	    occupation:<br /> 
	    <input type="text" name="occupation" value="" /> 
		 Male:<br /> 
	    <input type="text" name="no_male" value="" /> 
		 Female:<br /> 
	    <input type="text" name="no_female" value="" /> 
	    <br /><br /> 
		 Female:<br /> 
	    <input type="text" name="scheme_name" value="" /> 
	    <br /><br /> 
		email:<br />
		 <input type="text" name="email" value="" /> 
	    <input type="submit" value="update  User" /> 
	</form>
	<?php
}

?>