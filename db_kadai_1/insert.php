<?php
//1. POSTデータ取得
$bookname   = $_POST["bookname"];
$bookurl  = $_POST["bookurl"];
$comment = $_POST["comment"];

//*** 外部ファイルを読み込む ***
include("funcs.php");
$pdo = db_conn();

//2. DB接続します


//３．データ登録SQL作成
$stmt = $pdo->prepare("INSERT INTO gs_bm_table(bookname,bookurl,comment,indate)VALUES(:bookname,:bookurl,:comment,sysdate())");
$stmt->bindValue(':bookname',  $bookname,   PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':bookurl', $bookurl,  PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':comment',$comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute(); //実行


//４．データ登録処理後
if($status==false){
  sql_error($stmt);
}else{
   redirect("index.php");
}

?>
