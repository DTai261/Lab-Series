<!DOCTYPE html>
<html>
<head>
    <title>Super Secret Storage File Upload</title>
</head>
<body>
    <h2>File Upload</h2>
    <form action="upload.php" method="post" enctype="multipart/form-data">
        Select File to Upload:
        <input type="file" name="fileToUpload" id="fileToUpload"><br>
        <input type="submit" value="Upload File" name="submit">
    </form>
    <?php
    $uploadDir = "./Uploads/";

    if (isset($_POST["submit"])) {
        $targetFile = $uploadDir . basename($_FILES["fileToUpload"]["name"]);
        $uploadOk = 1;
        // $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
        $imageFileType = strtolower(explode('.', $targetFile)[2]);

        // Allow certain file formats (you can modify or add more formats here)
        if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }

        // Check if file already exists
        if ($uploadOk == 1 && file_exists($targetFile)) {
            echo "Sorry, the file already exists.";
            $uploadOk = 0;
        }

        // Check file size (you can set a limit here)
        if ($uploadOk == 1 && $_FILES["fileToUpload"]["size"] > 5000000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }


        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            // echo "Sorry, your file was not uploaded.";
        } else {
            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $targetFile)) {
                echo "The file " . basename($_FILES["fileToUpload"]["name"]) . " has been uploaded.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }
    }


    // Display list of uploaded files
    $uploaded_files = scandir($uploadDir);
    echo '<h2>Uploaded Files:</h2>';
    foreach ($uploaded_files as $file) {
        if ($file != '.' && $file != '..') {
            echo '<p><a href="download.php?file=' . urlencode($file) . '">' . $file . '</a></p>';
        }
    }
    echo '<p><a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ">' . 'Super_secret_file' . '</a></p>';
    ?>

</body>
</html>
