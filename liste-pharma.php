<?php
    include('connect.php');

if ($_GET["trouver"] === "Trouver") {
    
	extract($_GET);

	$var_select = "";
	

	
	if(isset($query)){
			$req_query ="nom_pharma LIKE '%".$query."%'";	
	}
	if(isset($commune)){
		$req_commune ="nom_commune LIKE '%".$commune."%'";
	}
	

	$var_select = " AND ".$req_query." AND ".$req_commune;

	$sql="SELECT * FROM pharmacie, commune WHERE pharmacie.id_commune = commune.id";
  
    // $sql="SELECT * FROM pharmacie";
    $sql=$sql.$var_select;
	$req=$bdd->prepare($sql);
	$req->execute();
    
	if($req === false){	
		trigger_error('Wrong SQL: ' . $sql);
	}
	else{
      
		$json_data=array();
        $res = $req->fetchAll(PDO::FETCH_ASSOC);
		foreach($res as $array)
		{  
			foreach ($array as $k => $v) {
				$json_array[$k]=$v;  
			}
			array_push($json_data,$json_array);  
		}  
        //echo json_encode($json_data);  
        
	$req->closeCursor();
    unset($db);
    }
    
}

?>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharma Chap</title>
    <!-- icon -->
    <link rel="icon" href="img/logo.png" />
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- js -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/sweetalert.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript" src="js/search.js"></script>
    <style type="text/css">
    body {
        background: url(img/pharma.jpg) no-repeat;
        background-size: cover;
    }
    </style>
</head>

<body>
        <div id="header" class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-xs-4" style="text-align: left;">
                <div id="logo-" class="login-screen-title">
                    <span id="logo" style="">
                    <img src="img/logo1.png" style="width: 100px;">
                    </span>
                </div>
            </div>
            <div class="col-md-9 col-xs-8" style="text-align: right;">
                <br>
                <br>
            
            </div>
        </div>
        </div>
<div id="" class="container-fluid" >
    <div  style="padding-top: 50px;">
        <?php
        foreach ($json_data as $pharmacie) {
            ?> 
        <div class="panel panel-default "style=" display:inline; width:300px; height:200px;">
            <div class="panel-heading" style="background-color:#2aaae2; color: white;" >
                <b>
                <?php
                    echo $pharmacie['nom_pharma']   
                ?>
                </b>
            </div>
            <div class="panel-body" style="background-color:white; color:black" >
                <b>
                <?php
                echo $pharmacie['localisation']."<br>"." - ".$pharmacie['nom_commune']."<br> Contact: ".$pharmacie['contact'];
            
                    }
                ?> 
                </b>
            </div>
        </div>
        </div> 
</div>
</body>
<script src="js/alertifyjs/css/alertify.min.js"></script>

</html>