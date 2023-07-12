<!DOCTYPE html>
<html lang="en">
<head>
    <title>The PHP app!</title>
    <meta charset="UTF-8">
</head>
<body>
    <?php
        echo '<h1>Hello PHP app!</h1>';

        foreach ($_SERVER as $k => $v) {
            echo "$k: $v <br />";
        }
    ?>
</body>
</html>