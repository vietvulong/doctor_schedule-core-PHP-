<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "twivuze";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $doctor_id = $_POST['doctor_id'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];

    $sql = "SELECT * FROM (SELECT t1.date AS slot_date, t2.time AS slot_time FROM (SELECT id, DATE FROM calendars WHERE doctor_id = {$doctor_id}) t1 LEFT JOIN timeslots t2 ON t1.id = t2.calender_id) t3 WHERE slot_date BETWEEN '{$start_date}' AND '{$end_date}' order by slot_date ASC";
    $result = $conn->query($sql);
    $row_cnt = $result->num_rows;

    $sqll = "SELECT COUNT(slot_date) AS slot_count, slot_date FROM (SELECT t1.date AS slot_date, t2.time AS slot_time FROM (SELECT id, DATE FROM calendars WHERE doctor_id = {$doctor_id}) t1 LEFT JOIN timeslots t2 ON t1.id = t2.calender_id) t3 WHERE slot_date BETWEEN '{$start_date}' AND '{$end_date}' GROUP BY slot_date";
    $resultl = $conn->query($sqll);
    
    $max_count = 0;
    if ($result->num_rows > 0) {
        // output data of each row
        $i = 0;
        $date_key = "";

        while($row = $resultl->fetch_assoc()) {
            if($row["slot_count"] > $max_count){
                $max_count = $row["slot_count"];
            }
        }

        if($max_count < 4) $max_count = 4;

        while($row = $result->fetch_assoc()) {

            if($i == 0){
                $date_key = $row["slot_date"];
            }

            if($date_key == $row["slot_date"] && $i == $row_cnt -1){
                $time_array[] = $row["slot_time"];
                $response[$date_key] = $time_array;
            }

            if($date_key != $row["slot_date"]){
               
                $response[$date_key] = $time_array;
                $date_key = $row["slot_date"];
                $time_array = [];

                if($i == $row_cnt -1){
                    $time_array[] = $row["slot_time"];
                    $response[$date_key] = $time_array;
                }
            }

            $time_array[] = $row["slot_time"];

            $i++;
        }

        for($j=0;$j<6;$j++){
            $date = new DateTime($start_date.'+'.$j.'day');
            $key = $date->format('Y-m-d');
            for($k=0; $k<$max_count;$k++){
                if(isset($response[$key][$k])){

                    $new_response[$key][$k] = $response[$key][$k];
                }
                else{
                    $new_response[$key][$k] = '-';
                }
            }
            
        }

        $res['res'] = $new_response;
        $res['max'] = $max_count;
        echo json_encode($res);
    }else{
        echo json_encode("empty");
    }
    
    $conn->close();
?>