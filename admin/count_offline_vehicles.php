<?php
include 'connection.php';
require 'function.php';
$query_offline_v = "SELECT * FROM `tbl_cvehicles`
WHERE accnt_id = 22 AND service_status = 'Done'
OR accnt_id = 43 AND service_status = 'Done'";
$result_offline_v = mysqli_query($dbc, $query_offline_v);

$offline = 0;
$online = 0;

while ($row = $result_offline_v->fetch_assoc()) {
  $imei_vehicle =  $row['imei'];
  $vehicle_id = $row['vid'];

  $query_last_log = "SELECT gps_date,address FROM $imei_vehicle
  ORDER BY gps_date DESC LIMIT 1";

  $result_last_log = mysqli_query($dbc, $query_last_log);
  $row1 = mysqli_fetch_array($result_last_log);
  $gps_date = $row1['gps_date'];
  $last_gps_date = (strtotime($gps_date));
  $now = (strtotime("now"));
  $sub = $now - $last_gps_date;
  // if gps_date is greater than or equal to 259200secs or 3 days from now update the status of vehicle
  if ($sub >= 259200) {
    $service_status_offline = "no service";
    $query = 'UPDATE tbl_cvehicles
      SET service_status = "' . $service_status_offline . '" WHERE vid = "' . $vehicle_id . '"';
    if (!mysqli_query($dbc, $query)) {
      echo ("Error description: " . mysqli_error($dbc));
    }
  }
}
// QUERY OFFLINE VEHICLE OF DOLE AND XDE
$query_all_vehicle = "SELECT * FROM `tbl_cvehicles`
WHERE accnt_id = 22 AND service_status = 'no service'
OR accnt_id = 43 AND service_status = 'no service'";
$result_offline_vehicle = mysqli_query($dbc, $query_all_vehicle);

$offline = 0;
$online = 0;
while ($row = $result_offline_vehicle->fetch_assoc()) {
  $imei_vehicle =  $row['imei'];
  $vehicle_id = $row['vid'];
  $vpltnum = $row['vplatenum'];
  $service_status = $row['service_status'];

  $query_last_log = "SELECT gps_date FROM $imei_vehicle WHERE log_id=(SELECT MAX(log_id) FROM `$imei_vehicle`)";
  // $query_last_log = "SELECT gps_date,address FROM $imei_vehicle
  // ORDER BY gps_date DESC LIMIT 1";

  $result_last_log = mysqli_query($dbc, $query_last_log);

  $row1 = mysqli_fetch_array($result_last_log);

  $gps_date = $row1['gps_date'];

  $duration = fordate($gps_date);

  $string = preg_match_all("/[0-9]/", $duration);

  if ($string == 1) {

    $number_hour = substr($duration, 0, 1);
    $word_hour = substr($duration, 2, 90);
  } else {

    $number_hour = substr($duration, 0, 2);
    $word_hour = substr($duration, 3, 90);
  }

  if (((($number_hour >= 3 && $word_hour == 'days ago') || $word_hour == 'week ago' || $word_hour == 'weeks ago' || $word_hour == 'month ago' || $word_hour == 'months ago' || $word_hour == 'year ago' || $word_hour == 'years ago') && $service_status == 'no service')) {
    $offline++;
  }
}