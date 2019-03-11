<?php
include '../view/register.html';

include '../moduel/connect.php';

if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['pass']) && isset($_POST['phone']) && isset($_POST['address'])) {
    if (!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['pass']) && !empty($_POST['phone']) && !empty($_POST['address'])) {
        $name = $_POST['name'];
        $email = $_POST['email'];
        $pass = md5($_POST['pass']);
        $phone = $_POST['phone'];
        $address = $_POST['address'];

        if ($email == 'admin@email.com') {
            echo "Faild - email is already exists";
        } else {
            $sql = "INSERT INTO user (name, email, pass, phone, address) VALUES ('$name', '$email', '$pass', '$phone', '$address')";
            if ($connect->query($sql)) {
                echo "Add Successful";
            } else {
                echo "Faild - email is already exists";
            }
        }

    }
}
?>
