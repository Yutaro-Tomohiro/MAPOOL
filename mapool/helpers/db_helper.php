<?php
//DBに接続
function get_db_connect() {
	try{
		$dsn = DSN;
		$user = DB_USER;
		$password = DB_PASSWORD;

		$dbh = new PDO($dsn, $user, $password);
	}
	catch (PDOException $e){
		echo ($e->getMessage());
		die();
	}
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbh;
}

//S3にアップロードした画像のURLを保存
function insert_image($dbh, $country, $url){
	
	$sql = "INSERT INTO map_image(country, url) VALUE (:country, :url)";
	$stmt = $dbh->prepare($sql);
	$stmt->bindValue(':country', $country, PDO::PARAM_STR);
	$stmt->bindValue(':url', $url, PDO::PARAM_STR);
	if($stmt->execute()){
		return TRUE;
	}
	else{
		return FALSE;
	}
}

//アップロードした画像のURLを取得し、画像一覧させる
function select_image($dbh, $country) {
	$sql = "SELECT * FROM map_image WHERE country = :country";
	$stmt = $dbh->prepare($sql);
	$stmt->bindValue(':country', $country);
	$stmt->execute();

	$image = $stmt->fetchAll();
	
	foreach ($image as $val) {
        
            echo '<img src="'.$val['url'].'" alt="picuture" height="300"><br>';
        }
	
}

//S3にアップロードした画像のURLを削除
function delete_image($dbh, $url) {
	$sql = "DELETE FROM map_image WHERE url = :url";
	$stmt = $dbh->prepare($sql);
	$stmt->bindValue(':url', $url, PDO::PARAM_STR);
	$stmt->execute();
}