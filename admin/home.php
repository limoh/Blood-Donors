<?php
require_once 'php/DBConnect.php';
$db = new DBConnect();
$db->auth();

$success = NULL;
$message = NULL;
if (isset($_POST['submit'])) {
    $f_name = $_POST['f_name'];
    $m_name = $_POST['m_name'];
    $l_name = $_POST['l_name'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $bday = $_POST['bday'];
    $designation = $_POST['designation'];
    $landline = $_POST['landline'];
    $phone = $_POST['phone'];
    $prc_nr = uniqid();

    $flag = $db->addEmployee($username, $password, $f_name, $m_name, $l_name, $prc_nr, $designation, $landline, $phone, $bday);

    if ($flag) {
        $success = "User has been added to the database successfully!";
    } else {
        $message = "Error adding the employee to the database!". $flag;
    }
}
$title = "Admin Home";
$setHomeActive = "active";
include_once 'layout/_header.php';
include_once 'layout/navbar.php';
?>

<div class="container">
    <div class="col-md-3"></div>
    <div class="col-md-6">

        <?php if (isset($success)): ?>
            <div class="alert-success"><?= $success; ?></div>
        <?php endif ?>
        <?php if (isset($message)): ?>
            <div class="alert-success"><?= $message; ?></div>
<?php endif ?>

        <div class="panel panel-default">
            <div class="panel-heading">
                <h3>Add Employee</h3>
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="post" action="home.php">
                    <div class="form-group">
                        <label class="col-md-3">Name:</label>
                        <div class="col-sm-3"> <input type="text" name="firstName" class="form-control" placeholder="First Name" required="true"> </div>
                        <div class="col-sm-3"><input type="text" name="middleName" class="form-control" placeholder="Middle Name"></div>
                        <div class="col-sm-3"><input type="text" name="lastName" class="form-control" placeholder="Last Name" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Username:</label>
                        <div class="col-sm-9"><input type="text" name="username" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Password:</label>
                        <div class="col-sm-9"><input type="password" name="password" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Date of Birth:</label>
                        <div class="col-sm-9"><input type="date" name="dob" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Designation:</label>
                        <div class="col-sm-9"><input type="text" name="designation" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Landline:</label>
                        <div class="col-sm-9"><input type="number"  name="landline" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3">Mobile:</label>
                        <div class="col-sm-9"><input type="number"  name="mobile" class="form-control" required="true"></div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3"></label>
                        <button type="submit" class="btn btn-success btn-md" name="submit">Add Employee</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-3"></div>
</div>

<?php include 'layout/_footer.php'; ?>