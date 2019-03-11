<?php
include '../view/login.html';

include '../moduel/connect.php';

if (isset($_POST['email']) && isset($_POST['pass'])) {
    if (!empty($_POST['email']) && !empty($_POST['pass'])) {
        $email = $_POST['email'];
        $pass = md5($_POST['pass']);

        if ($email == 'admin@email.com' && $pass = '123') {
            $sql = 'SELECT * FROM user';
            $result = $connect->query($sql);
            while($row = $result->fetch_assoc()) {
                echo "Name: ";
                echo $row['name']; echo "<br>";
                echo "Email: ";
                echo $row['email']; echo "<br>";
                echo "Phone: ";
                echo $row['phone']; echo "<br>";
                echo "Address: ";
                echo $row['address']; echo "<br>";
                echo "-------------------"; echo "<br>";
            }
        } else {
            $sql = "SELECT * FROM user WHERE email = '$email' AND pass = '$pass'";
            $result = $connect->query($sql);
            if ($result->fetch_assoc() == "") {
                echo "User Not Found";
            } else {
                while($row = $result->fetch_assoc()) {
                    echo "Name: ";
                    echo $row['name']; echo "<br>";
                    echo "Email: ";
                    echo $row['email']; echo "<br>";
                    echo "Phone: ";
                    echo $row['phone']; echo "<br>";
                    echo "Address: ";
                    echo $row['address']; echo "<br>";
                }
            }
        }

    }
}

?>
