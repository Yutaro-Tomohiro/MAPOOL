<?php
    require_once('config.php');
    require_once('./helpers/db_helper.php');
    require_once('./helpers/extra_helper.php');

	$dbh = get_db_connect();

    $country = $_POST['country'];

  
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <link href="css/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/style-action.css" media="screen" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.vmap.js"></script>
    <script src="js/jquery.vmap.world.js"></script>
    <script src="js/jquery.vmap.sampledata.js"></script>
  <head>
    <title>JQVMap - 世界地図サンプル</title>
    
    <link href="css/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
    
  </head>
  <body>
    <div class="container-fluid pd">
      <div class="row pd">
        <div class="col-md-12 pd">
          <div class="nav">
            <img class="logo" src="image/MAPOOL-logo.png">
            <ul>
              <li><a href = "map.php">UPLOAD</a></li>
              <li><a href = "delete.php">DELETE</a></li>
              <li><a href = "view.php">VIEW</a></li>
            </ul>
          </div>
          <div class="images">
        	   <?php  $image = select_image($dbh, $country); ?>
          </div>
          <a class="act-btn" href = "view.php">国の選択</a>
        </div>
      </div>
    </div>
    <div class="footer">
        <div class="fixsize text-center text-muted cr">Copyright © 2019 - MAPOOL</div>
    </div>
  </body>
</html>