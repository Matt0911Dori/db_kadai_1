<?php
//1. POSTデータ取得
$bookname   = $_POST["bookname"];
$bookurl  = $_POST["bookurl"];
$comment = $_POST["comment"];
$id    = $_POST["id"];  

//2. DB接続
include("funcs.php");  //funcs.php
$pdo = db_conn();      //DB接続関数


//３．データ登録SQL作成
$sql = "UPDATE gs_bm_table SET bookname=:bookname, bookurl=:bookurl, comment=:comment WHERE id=:id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':bookname',  $bookname,   PDO::PARAM_STR);  
$stmt->bindValue(':bookurl', $bookurl,  PDO::PARAM_STR);  
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR); 
$stmt->bindValue(':id', $id,  PDO::PARAM_INT);  
$status = $stmt->execute();


//４．データ登録処理後
if($status==false){
    sql_error($stmt);
}else{
    redirect("bm_list_view.php");
}

?>
