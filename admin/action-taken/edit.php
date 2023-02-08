<?php
include '../connection.php';
session_start();
$query = "SELECT * FROM tbl_user_technician";
$result = mysqli_query($dbc, $query);
if (!$result) {
    die('Query Failed' . mysqli_connect_error());
}

// QUERY ACTION TAKEN
$action_id = $_GET['id'];
$query_one_data = "SELECT * FROM tbl_action_taken
LEFT JOIN tbl_pivot_cause_action
ON tbl_action_taken.action_id = tbl_pivot_cause_action.action_taken_id
LEFT JOIN tbl_cause_of_offline
ON tbl_cause_of_offline.cause_id = tbl_pivot_cause_action.cause_of_offline_id
WHERE action_id = $action_id";
$query_run_one_data = mysqli_query($dbc, $query_one_data);
$data = mysqli_fetch_array($query_run_one_data);

// EDIT ACTION TAKEN
if (isset($_POST['submit'])){
    // UPDATE ACTION TAKEN in table action taken
    $action_taken = $_POST['action_taken'];
    $query_update = "UPDATE tbl_action_taken SET action_taken_name = '$action_taken'
    WHERE action_id = $action_id";
    $query_run = mysqli_query($dbc, $query_update);

    // UPDATE ACTION TAKEN AND CAUSE OF OFFLINE IN PIVOT
    $cause_of_offline_id = $_POST['cause_of_offline'];
    $query_update_pivot = "UPDATE tbl_pivot_cause_action SET cause_of_offline_id = $cause_of_offline_id
    WHERE action_taken_id = $action_id";
    $query_run_pivot = mysqli_query($dbc, $query_update_pivot);

    // Save session variable
    $_SESSION['success'] = "Successfully Updated";

    //redirect to index page after update
    header('Location: index.php');
}

?>

<!--doctype, head, css link, js link & title -->
<?php include '../layouts/link.php'; ?>
<body>
    <!-- navbar -->
    <?php include '../layouts/navbar.php'; ?>
    <div class="container-fluid">
        <div class="row">
            <!--Sidebar -->
            <?php include 'sidebar.php'; ?>
            <!-- Main -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2  border-bottom">
                    <h2 class="s-header">EDIT ACTION TAKEN</h2>
                    <div class="b-mt">
                        <a href="index.php" class="btn btn-secondary btn-sm btn-sm b-width">Back</a>
                    </div>
                </div>
                <div class="mt-4">
                    <div class="card bx-shadow">
                        <div class="card-body p-4">
                            <form method="post" action="">
                            <div class="form-group mb-3">
                                    <label class="form-label">Cause of Offline</label>
                                    <select class="form-select" name="cause_of_offline" required>
                                        <?php
                                        $cause_of_offline = "SELECT * FROM tbl_cause_of_offline";
                                        $cause_of_offline_query = mysqli_query($dbc, $cause_of_offline);
                                        ?>
                                        <option selected disabled value=""><?= $data['cause_of_offline_name'] ?></option>
                                        <?php while ($data1 = mysqli_fetch_assoc($cause_of_offline_query)) : ?>
                                            <option value="<?php echo $data1['cause_id'] ?>"> <?php echo $data1['cause_of_offline_name']; ?></option>
                                        <?php endwhile; ?>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label"><b>Action Taken</b></label>
                                    <input type="text" name="action_taken" value="<?= $data['action_taken_name'] ?>" class="form-control" placeholder="Enter Content" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" name="submit" class="btn btn-success w-50">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
</body>

</html>