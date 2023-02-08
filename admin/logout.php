<?php
session_start();

// destroy the session
session_destroy();
header('Location: ../admin/login.php');
exit;
?>
