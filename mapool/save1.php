<?php
	require_once('config.php');
	require_once('./helpers/db_helper.php');
	require_once('./helpers/extra_helper.php');

	require 'vendor/autoload.php';

	$dbh = get_db_connect();

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


    $country = $_POST['country'];
    // アップロードされた画像の処理
    $file = $_FILES['image']['tmp_name'];
    $size = filesize( $_FILES['image']['tmp_name'] );

    function image_validation($file){
	    if (!is_uploaded_file($file))
	    {
	        throw new Exception('ファイルを選択してください');//ファイルが選択されているかのバリデーション
	    }
	    else if(!exif_imagetype($file))
	    {
	    	throw new Exception('画像ファイルを選択してください');//選択されたファイルが画像形式かのバリデーション
	    }
	    else
	    {
	    	return $file;
	    }
	}

	try {
	    $file = image_validation($file);
	    // S3バケットに画像をアップロード
	    $result = $s3->putObject(array(
	        'Bucket' => $bucket_name,
	        'Key' => $country.'_'.time(). '.jpg',
	        'Body' => fopen($file, 'rb'),
	        'ACL' => 'public-read', // 画像は一般公開される
	        'ContentType' => mime_content_type($file),
	    ));
	    $url = $result['ObjectURL'];
	    insert_image($dbh, $country, $url);

	} catch (Exception $e) {
	    $err_msg = $e->getMessage();
	}
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

		    <div>
			<?php if(isset($err_msg)){ ?>
				<div class="msg"><?php echo $err_msg; ?></div>
			<?php }else{ ?>
				<div  class="msg"><?php echo "画像を保存しました"; ?></div>
			<?php } ?>
			</div>

			<br>
			<div class="link">
				<a class="alink" href = "view.php">画像を見る</a>
				<a class="alink" href = "map.php">追加で保存する</a>
			</div>
		</div>
	  </div>
  	</div>
<div class="footer">
	<div class="fixsize text-center text-muted cr">Copyright © 2019 - MAPOOL</div>
</div>
</body>
</html>