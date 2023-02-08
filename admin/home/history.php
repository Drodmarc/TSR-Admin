<?php
include '../connection.php';
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM tbl_trblesht_report
              LEFT JOIN tbl_cvehicles
              ON tbl_trblesht_report.vid = tbl_cvehicles.vid
              WHERE tbl_trblesht_report.vid = $id
              ORDER BY id DESC";
    $result = mysqli_query($dbc, $query);
}
?>
<!--doctype, head, css link, js link-->
<?php include '../layouts/link.php'; ?>

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
                    <?php $row = mysqli_fetch_array($result) ?>
                    <h2 class="s-header d-flex justify-content-center"><span style="color: #084695"><?= $row['vplatenum']; ?></span></h2>
                    <div class="d-flex justify-content-center">
                        <a href="../home/troubleshooted.php" class="btn btn-secondary btn-sm b-mt b-width">Back</a>
                    </div>
                </div>
                <div class="table-responsive mt-3 mb-2 bx-shadow">
                    <table class="table table-striped table-md table-hover">
                        <thead class="b-table">
                            <tr class="text-white text-center" style="vertical-align:middle">
                                <th>DATE CHECKED</th>
                                <th>STATUS</th>
                                <th>TECHNICIAN</th>
                                <th>ACTION</th>
                            </tr>
                        </thead>
                        <tbody style="vertical-align:middle">
                            <?php
                            if (mysqli_num_rows($result) > 0) {
                                while ($data = mysqli_fetch_assoc($result)) {
                                    $work_start = strtotime($data['work_time_start']);
                                    $work_end = strtotime($data['work_time_end']);
                                    $arrival_result = $work_end - $work_start;
                                    $min = floor(($arrival_result % 3600) / 60);
                                    $hr = floor(($arrival_result % 86400) / 3600);
                            ?>
                                    <tr class="text-center">
                                        <td><?= $data['date_performed']; ?></td>
                                        <td><?= $data['troubleshooting_status']; ?></td>
                                        <td><?= $data['technician']; ?></td>
                                        <td>
                                            <!-- Button trigger modal -->
                                            <button type="button" class="btn btn-info btn-sm text-white" data-bs-toggle="modal" data-bs-target="#Modal1<?php echo $data['id'] ?>">Details</button>
                                        </td>
                                        <!--Form Modal -->
                                        <div class="modal fade" id="Modal1<?php echo $data['id'] ?>" tabindex="-1" aria-labelledby="Modal1Label" aria-hidden="true">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header d-flex justify-content-center">
                                                        <h1 class="modal-font" id="Modal1Label"><?php echo $data['vplatenum']; ?></h1>
                                                    </div>
                                                    <div class="modal-body">
                                                        <fieldset disabled>
                                                            <div class="row mb-3">
                                                                <div class="col">
                                                                    <label class="form-label">DATE CHECKED</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['date_performed']; ?>">
                                                                </div>
                                                                <div class="col">
                                                                    <label class="form-label">STATUS</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['troubleshooting_status']; ?>">
                                                                </div>
                                                            </div>
                                                            <div class=" row mb-3">
                                                                <div class="col">
                                                                    <label class="form-label">TRAVEL DURATION</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php
                                                                                                                                                                    if ($hr > 1 && $min > 1) {  // checked if hr and min are greater than 1
                                                                                                                                                                        echo "$hr hrs and $min mins";
                                                                                                                                                                    } elseif ($hr > 1 && $min == 1) { //checked if hr is greater than 1 and min is equal to 1
                                                                                                                                                                        echo "$hr hrs, $min min";
                                                                                                                                                                    } elseif ($hr == 1 && $min > 1) { //checked if hr is equal than 1 and min is greater to 1
                                                                                                                                                                        echo "$hr hr, $min mins";
                                                                                                                                                                    } elseif ($hr > 1 && $min == 0) {
                                                                                                                                                                        echo "$hr hrs";
                                                                                                                                                                    } elseif ($hr == 0 && $min > 1) {
                                                                                                                                                                        echo "$min mins";
                                                                                                                                                                    } elseif ($hr == 0 && $min == 1) {
                                                                                                                                                                        echo "$min min";
                                                                                                                                                                    } elseif ($hr == 1 && $min == 0) {
                                                                                                                                                                        echo "$hr hr";
                                                                                                                                                                    } elseif ($hr == 0 && $min == 0) {
                                                                                                                                                                        echo "0";
                                                                                                                                                                    } else {
                                                                                                                                                                        echo "$hr hr, $min min";
                                                                                                                                                                    } ?>">
                                                                </div>
                                                                <div class="col">
                                                                    <label class="form-label">WORK DURATION</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php
                                                                                                                                                                    if ($hr > 1 && $min > 1) {  // checked if hr and min are greater than 1
                                                                                                                                                                        echo "$hr hrs and $min mins";
                                                                                                                                                                    } elseif ($hr > 1 && $min == 1) { //checked if hr is greater than 1 and min is equal to 1
                                                                                                                                                                        echo "$hr hrs, $min min";
                                                                                                                                                                    } elseif ($hr == 1 && $min > 1) { //checked if hr is equal than 1 and min is greater to 1
                                                                                                                                                                        echo "$hr hr, $min mins";
                                                                                                                                                                    } elseif ($hr > 1 && $min == 0) {
                                                                                                                                                                        echo "$hr hrs";
                                                                                                                                                                    } elseif ($hr == 0 && $min > 1) {
                                                                                                                                                                        echo "$min mins";
                                                                                                                                                                    } elseif ($hr == 0 && $min == 1) {
                                                                                                                                                                        echo "$min min";
                                                                                                                                                                    } elseif ($hr == 1 && $min == 0) {
                                                                                                                                                                        echo "$hr hr";
                                                                                                                                                                    } elseif ($hr == 0 && $min == 0) {
                                                                                                                                                                        echo "0";
                                                                                                                                                                    } else {
                                                                                                                                                                        echo "$hr hr, $min min";
                                                                                                                                                                    } ?>">
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col">
                                                                    <label class="form-label">TECHNICIAN</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['technician']; ?>">
                                                                </div>
                                                                <div class="col">
                                                                    <label class="form-label">COORDINATED BY</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['coordinated_by']; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="col">
                                                                    <label class="form-label">WITNESS BY</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['checked_by']; ?>">
                                                                </div>
                                                                <div class="col">
                                                                    <label class="form-label">CONTACT N0.</label>
                                                                    <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['contact_num']; ?>">
                                                                </div>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label">ADDRESS</label>
                                                                <textarea class="form-control form-control-sm border-light bg-light shadow-sm" rows="1"><?php echo $data['complete_address']; ?></textarea>
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label">REASON FOR OFFLINE</label>
                                                                <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['reason_offline']; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label">CAUSE OF OFFLINE</label>
                                                                <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['cause_offline']; ?>">
                                                            </div>
                                                            <div class="mb-3">
                                                                <label class="form-label">ACTION TAKEN</label>
                                                                <input type="text" class="form-control form-control-sm border-light bg-light shadow-sm" value="<?php echo $data['action_taken']; ?>">
                                                            </div>
                                                        </fieldset>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary btn-sm b-wdith" data-bs-dismiss="modal">Close</button>
                                                            <!-- Button trigger modal -->
                                                            <button type="button" class="btn btn-primary btn-sm b-wdith" data-bs-toggle="modal" data-bs-target="#Modal2<?php echo $data['id'] ?>">Image</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Image Modal -->
                                        <div class="modal fade" id="Modal2<?php echo $data['id'] ?>" tabindex="-1" aria-labelledby="Modal2Label" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h1 class="modal-title fs-5" id="Modal2Label">Image</h1>
                                                    </div>
                                                    <div class="modal-body">
                                                        <?php if ($data['image_url'] == "") {
                                                        ?>
                                                            <img src="../layouts/img/no_image.png?>" class="img-fluid" alt="">
                                                        <?php } else { ?>
                                                            <img src="../../uploads/<?php echo $data['image_url'] ?>" class="img-fluid" alt="">
                                                        <?php }  ?>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary btn-sm b-wdith" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                <?php
                                }
                            } else {
                                ?>
                                <tr>
                                    <td colspan="12">No Record</td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </main>
        </div>
    </div>
</body>

</html>