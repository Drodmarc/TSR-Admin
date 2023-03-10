<?php
session_start();
include '../connection.php';
$query = "SELECT * FROM tbl_action_taken
LEFT JOIN tbl_pivot_cause_action
ON tbl_action_taken.action_id = tbl_pivot_cause_action.action_taken_id
LEFT JOIN tbl_cause_of_offline
ON tbl_cause_of_offline.cause_id = tbl_pivot_cause_action.cause_of_offline_id
";
$result = mysqli_query($dbc, $query);
if (!$result) {
  die('Query Failed' . mysqli_connect_error());
}
?>

<!--doctype, head, css link, js link & title -->
<?php include '../layouts/link.php'; ?>
<link rel="stylesheet" href="../alertify/alertify.min.css" />
<body>
  <!-- navbar -->
  <?php include '../layouts/navbar.php'; ?>
  <div class="container-fluid">
    <div class="row">
      <!--Sidebar -->
      <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
        <div class="position-sticky">
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link s-font" aria-current="page" href="../index.php">
                <i class="fa-solid fa-house"></i>
                Home
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link s-font" href="../user-list/index.php">
                <i class="fa-solid fa-user-plus"></i>
                Users
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link s-font" href="../offline-reason/index.php">
                <i class="fa-solid fa-circle-exclamation"></i>
                Offline Reason
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link s-font" href="../offline-cause/index.php">
                <i class="fa-solid fa-circle-xmark"></i>
                Offline Cause
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link s-font" href="../action-taken/index.php">
                <i class="fa-solid fa-hands-praying"></i>
                Action Taken
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link s-font" href="#">
                <i class="fa-solid fa-right-from-bracket"></i>
                Sign out
              </a>
            </li>
          </ul>
        </div>
      </nav>
      <!-- Main -->
      <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 main">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2  border-bottom">
          <h2 class="s-header">ACTION TAKEN</h2>
          <div class="b-mt">
            <a href="new.php" class="btn btn-success btn-sm btn-sm b-width">New</a>
          </div>
        </div>
        <div class="table-responsive mt-3 mb-5 bx-shadow">
          <table class="table table-striped table-md table-hover">
            <thead style="background: #9F2727;">
              <tr class="text-white text-center" style="vertical-align:middle">
                <th>ID</th>
                <th>CONTENT</th>
                <th>CAUSE OF OFFLINE</th>
                <th>DATE CREATED</th>
                <th>ACTIONS</th>
              </tr>
            </thead>
            <tbody style="vertical-align:middle">
              <?php
              if (mysqli_num_rows($result) > 0) {
                while ($data = mysqli_fetch_assoc($result)) {
              ?>
                  <tr class="text-center">
                    <td><?php echo $data['action_id']; ?></td>
                    <td><?php echo $data['action_taken_name']; ?></td>
                    <td><?php echo $data['cause_of_offline_name']; ?></td>
                    <td><?php echo date('M d, Y', strtotime($data['date_created'])); ?></td>
                    <td>
                      <a href="edit.php?id=<?= $data['action_id'] ?>" class="btn btn-danger btn-sm b-width">Edit</a>
                      <a href="delete.php?id=<?= $data['action_id'] ?>" class="btn btn-danger btn-sm b-width" onclick="return confirm('Are you sure you want to delete this record?')">Delete</a>
                    </td>
                  </tr>
                <?php
                }
              } else {
                ?>
                <tr>
                  <td colspan="4">No Record</td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </main>
    </div>
  </div>
  <script src="../alertify/alertify.min.js"></script>
  <script>
    <?php
    if (isset($_SESSION['delete'])) { ?>
      alertify.set('notifier', 'position', 'top-right');
      alertify.success('<?= $_SESSION['delete'] ?>');
     <?php } else { ?>
      alertify.set('notifier', 'position', 'top-right');
      alertify.success('<?= $_SESSION['success'] ?>');
  <?php  }
    unset($_SESSION['delete']);
    unset($_SESSION['success']);
    ?>
  </script>
</body>

</html>