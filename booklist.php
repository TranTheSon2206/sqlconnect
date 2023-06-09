<?php
    $myDB = new mysqli('localhost','root','','author');

    if ($myDB->connect_error)
    {
        die('Connect Error ('. $myDB->connect_errno .')' . $myDB->connect_error);
    }

    $sql = "SELECT * FROM books WHERE available = 1 ORDER BY title";
    $result = $myDB->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Available Books</title>
</head>
<body>
    <table cellspacing="2" cellpadding="6" align="center" border="1">
        <tr>
            <td colspan="3">
                <h3>These books are currently available</h3>
            </td>
        </tr>
        <tr align="center">
            <td align="center">Title</td>
            <td align="center">Year Published</td>
            <td align="center">ISBN</td>
        </tr>

        <?php
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>".$row["title"]."</td>";
                echo "<td>".$row["pub_year"]."</td>";
                echo "<td>".$row["ISBN"]."</td>";
                echo "</tr>";
            }
        ?>
    </table>
</body>
</html>