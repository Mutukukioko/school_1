<?php
$conn= pg_connect("host=localhost port=5432 dbname=masenodb user=postgres password='mutuku254'");

$result = pg_query($conn,"select * from students");
while($row = pg_fetch_object($result)){
    echo"\n".$row->full_name;
}
pg_close($conn);
?>
