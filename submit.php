<?php
$host = "localhost";
$username = "root";
$password = "";
$dbname = "zohoformdb";

$conn = new mysqli($host, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$issue_name = $_POST['issue_name'];
$issue_description = $_POST['issue_description'];
$email = $_POST['email'];

$file_path = '';
if (isset($_FILES['attachment']) && $_FILES['attachment']['error'] == 0) {
    $target_dir = "uploads/";
    if (!is_dir($target_dir)) {
        mkdir($target_dir, 0777, true);
    }
    $file_path = $target_dir . basename($_FILES["attachment"]["name"]);
    move_uploaded_file($_FILES["attachment"]["tmp_name"], $file_path);
}

$sql = "INSERT INTO zohoformfeedback (issue_name, issue_description, file_path, email) VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($sql);

if (!$stmt) {
    die("SQL prepare failed: " . $conn->error);
}

$stmt->bind_param("ssss", $issue_name, $issue_description, $file_path, $email);

if ($stmt->execute()) {
    echo "<script>
        alert('Your Issue has been submitted successfully!');
        window.location.href = 'https://sankalp.netcreativemind.com/ITIRegistration';
    </script>";
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
