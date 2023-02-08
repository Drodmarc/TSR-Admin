<?php  include '../connection.php';
if (empty($_GET['from_date']) && empty($_GET['to_date'])){
$troubleshooted_query = "SELECT *  FROM `tbl_trblesht_report`
LEFT JOIN tbl_cvehicles
ON tbl_trblesht_report.vid = tbl_cvehicles.vid
WHERE task_status = 'Finished'
AND troubleshooting_status = 'Fixed'";
$result_troubleshooted = mysqli_query($dbc, $troubleshooted_query);
}?>
<!--doctype, head, css link, js link-->
<?php include '../layouts/link.php';?>
<body>
    <!-- navbar -->
    <?php include '../layouts/navbar.php'; ?>
    <!-- Sidebar Menu -->
    <div class="container-fluid">
        <div class="row">
            <!--Sidebar -->
            <?php include 'sidebar.php'; ?>
            <!-- Main -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2  border-bottom">
                    <h2 class="s-header">TOTAL TROUBLESHOOTED</h2>
                    <div class="d-flex justify-content-center">
                        <a href="../index.php" class="btn btn-secondary btn-sm b-mt b-width">Back</a>
                    </div>
                </div>
                <div class="mt-3">
                    <form action="" method="GET">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>From Date</label>
                                    <input type="date" name="from_date" value="<?php if (isset($_GET['from_date'])) {echo $_GET['from_date'];} ?>" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>To Date</label>
                                    <input type="date" name="to_date" value="<?php if (isset($_GET['to_date'])) {echo $_GET['to_date'];} ?>" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4 mt-4">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-sm">Filter</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="table-responsive mt-3 mb-2 bx-shadow">
                    <table class="table table-striped table-md table-hover">
                        <thead class="b-table">
                            <tr class="text-white text-center" style="vertical-align:middle">
                                <th>PLATE NUMBER</th>
                                <th>STATUS</th>
                                <th>DATE CHECKED</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody style="vertical-align:middle">
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
                            ?>
                                        <tr class="text-center">
                                            <td><?php echo $data['vplatenum']; ?></td>
                                            <td><?php echo $data['troubleshooting_status']; ?></td>
                                            <td><?php echo $data['date_performed']; ?></td>
                                            <td>
                                                <a href="history.php?id=<?php echo $data['vid']; ?>" class="btn btn-info btn-sm b-width text-white">History</a>
                                            </td>
                                        </tr>
                                    <?php
                                    }
                               }
                            } else {
                                    ?>
                                    <tr>
                                        <td colspan="" class="d-flex justify-content-center" >No Record</td>
                                    </tr>
                            <?php }
                            if (empty($_GET['from_date']) && empty($_GET['to_date'])){
                                if (mysqli_num_rows($result_troubleshooted) > 0) {
                                    while ($row = mysqli_fetch_assoc($result_troubleshooted)) {
                                        ?>
                                        <tr class="text-center">
                                            <td><?php echo $row['vplatenum']; ?></td>
                                            <td><?php echo $row['troubleshooting_status']; ?></td>
                                            <td><?php echo $row['date_performed']; ?></td>
                                            <td>
                                                <a href="history.php?id=<?php echo $row['vid']; ?>" class="btn btn-info btn-sm b-width text-white">History</a>
                                            </td>
                                        </tr>
                                    <?php
                                    }
                                } else {
                                    ?>
                                    <tr>
                                        <td colspan="" class="d-flex justify-content-center" >No Record</td>
                                    </tr>
                            <?php
                            }}?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
</body>

</html>