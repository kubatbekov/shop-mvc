<?php include_once ROOT.'/views/layouts/header.php'?>

<?php
$uploads_dir = ROOT.'/upload';
$newname=2;

if(isset($_POST['submit'])){
    foreach ($_FILES["pictures"]["error"] as $key => $error) {
        if ($error == UPLOAD_ERR_OK) {
            $tmp_name = $_FILES["pictures"]["tmp_name"][$key];
            $name = $_FILES["pictures"]["name"][$key];
            move_uploaded_file($tmp_name, "$uploads_dir/$newname.jpg");

        }
    }
}

?>
<form action="" method="post" enctype="multipart/form-data">
    <input type="file" name="pictures[]"><br><br>
    <input type="submit" name="submit" >
</form>
