<?php
session_start();
include '../connection.php';
$query = "SELECT * FROM tbl_user_technician";
$result = mysqli_query($dbc, $query);
if (!$result) {
    die('Query Failed' . mysqli_connect_error());
}

// INSERT ACTION TAKEN
if (isset($_POST['submit'])){
    // INSERT ACTION TAKEN in table action taken
    $action_taken = $_POST['action_taken'];
    $query_insert = "INSERT INTO tbl_action_taken (action_taken_name)
    VALUES ('$action_taken')";
    $query_run = mysqli_query($dbc, $query_insert);

    // SELECT LAST DATA IN ACTION TAKEN
    $query_last_data = "SELECT * FROM tbl_action_taken
    WHERE date_created = (SELECT MAX(date_created) FROM tbl_action_taken)";
    $query_run_last_data = mysqli_query($dbc, $query_last_data);
    $row = mysqli_fetch_array($query_run_last_data);
    $action_taken_id = $row['action_id'];

    // INSERT ACTION TAKEN AND CAUSE OF OFFLINE IN PIVOT
    $cause_of_offline_id = $_POST['cause_of_offline'];
    $query_insert_pivot = "INSERT INTO tbl_pivot_cause_action (cause_of_offline_id, action_taken_id)
    VALUES ('$cause_of_offline_id', '$action_taken_id')";
    $query_run_pivot = mysqli_query($dbc, $query_insert_pivot);
   
    // Save session variable
    $_SESSION['success'] = "Successfully Created";

    //redirect to index page after create
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
                    <h2 class="s-header">NEW ACTION TAKEN</h2>
                    <div class="b-mt">
                        <a href="index.php" class="btn btn-secondary btn-sm btn-sm b-width">Back</a>
                    </div>
                </div>
                <div class="mt-4">
                    <div class="card bx-shadow">
                        <div class="card-body p-4">
                            <form method="post" action="new.php">
                            <div class="form-group mb-3">
                                    <label class="form-label">Cause of Offline</label>
                                    <select class="form-select" name="cause_of_offline">
                                        <?php
                                        $cause_of_offline = "SELECT * FROM tbl_cause_of_offline";
                                        $cause_of_offline_query = mysqli_query($dbc, $cause_of_offline);
                                        ?>
                                        <option selected disabled value="">Select Cause of Offline</option>
                                        <?php while ($data = mysqli_fetch_assoc($cause_of_offline_query)) : ?>
                                            <option value="<?php echo $data['cause_id'] ?>"> <?php echo $data['cause_of_offline_name']; ?></option>
                                        <?php endwhile; ?>
                                    </select>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="form-label"><b>Action Taken</b></label>
                                    <input type="text" name="action_taken" class="form-control" placeholder="Enter Content" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" name="submit" class="btn btn-success w-50">Create</button>
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