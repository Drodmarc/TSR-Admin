<?php
if (isset($_GET['from_date']) && isset($_GET['to_date'])) {
    $from_date = $_GET['from_date'];
    $to_date = $_GET['to_date'];

    $query = "SELECT *  FROM `tbl_trblesht_report`
             LEFT JOIN tbl_cvehicles
             ON tbl_trblesht_report.vid = tbl_cvehicles.vid
             WHERE task_status = 'Finished'
             AND troubleshooting_status = 'Fixed'
             AND date_work_end BETWEEN '$from_date' AND '$to_date'";
    $result = mysqli_query($dbc, $query);

    if (mysqli_num_rows($result) > 0) {
        while ($data = mysqli_fetch_assoc($result)) {
            echo "perform filter query";
        }
    } else {
        echo "no record";
    }
} else {
    $troubleshooted_query = "SELECT *  FROM `tbl_trblesht_report`
                            LEFT JOIN tbl_cvehicles
                            ON tbl_trblesht_report.vid = tbl_cvehicles.vid
                            WHERE task_status = 'Finished'
                            AND troubleshooting_status = 'Fixed'";
    $result_troubleshooted = mysqli_query($dbc, $troubleshooted_query);
    if (mysqli_num_rows($result_troubleshooted) > 0) {
        while ($row = mysqli_fetch_assoc($result_troubleshooted)) {
            echo " perform all query";
        }
    } else {
        echo " no record";
    }
}
