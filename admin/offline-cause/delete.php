<?php
if (isset($_GET['id'])) {
include '../connection.php';
$id = $_GET['id'];
$sql_select_pivot = "SELECT * FROM tbl_pivot_cause_action WHERE cause_of_offline_id = $id";
$query_run = mysqli_query($dbc, $sql_select_pivot);
   if (mysqli_num_rows($query_run) == 0){
    mysqli_query($dbc, "DELETE FROM tbl_cause_of_offline WHERE cause_id= $id");
    session_start();
    $_SESSION["delete"] = "Content Deleted Successfully!";
    header("Location: index.php");
   }else{
    session_start();
    $_SESSION["delete1"] = "";
    header("Location: index.php");
   }
}else{
    echo "Content does not exist";
}