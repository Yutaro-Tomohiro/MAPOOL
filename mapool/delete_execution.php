<?php
require_once('config.php');
require_once('./helpers/db_helper.php');
require_once('./helpers/extra_helper.php');

require 'vendor/autoload.php';

$dbh = get_db_connect();

$url = $_POST['url'];

$arr = explode("/",$url);

$key = $arr[3];

use Aws\S3\S3Client;
use Aws\CommandPool;

$credentials = [
    'key'    => '',//need your aws s3 key
    'secret' => '',//need your aws s3 secret key
];

$bucket_version = 'latest';
$bucket_region  = 'ap-northeast-1';
$bucket_name    = 'world-map-image-storage';


$s3 = new S3Client([
    'credentials' => $credentials,
    'region'      => $bucket_region,
    'version'     => $bucket_version,
]);

$result = $s3->deleteObject(array(
        'Bucket' => $bucket_name,
        'Key' => $key,
       
    ));

$image = delete_image($dbh, $url);
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
	<link href="css/jqvmap.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/style.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="css/style-save.css" media="screen" rel="stylesheet" type="text/css" />
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
		    
			<div  class="msg"><p>画像を削除しました</p></div>
		
			<br>
			<div class="link">
				<a class="alink" href = "view.php">画像を見る</a>
				<a class="alink" href = "delete.php">追加で削除する</a>
			</div>
		</div>
	  </div>
  	</div>
<div class="footer">
	<div class="fixsize text-center text-muted cr">Copyright © 2019 - MAPOOL</div>
</div>
</body>
</html>
