<!DOCTYPE html>
<html>
<head>
	<title>Calendar</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link href="style.css" rel="stylesheet">

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
	<script src="scripts.js"></script>
	
</head>
<body>
	
<?php
$ids=[2,51,43];
foreach($ids as $doctor_id){
?>
<script>
    startDateArray["<?php echo $doctor_id; ?>"] = new Date();
    // startDateArray[51] = new Date();
    // startDateArray[43] = new Date();
</script>

<div class="calendar-position">
		<div class="calendar-body">
			<div><div class="previous" data-id="<?php echo $doctor_id?>"><span class="iconify arrow" data-icon="dashicons:arrow-left-alt2" data-inline="false"></span></div></div>
			<div class="calendar-content">
				<div class="calendar-header">
					<div id="dayofweek" class="dayofweek-<?php echo $doctor_id?>">
						<div>Monday</div>
						<div>Tuesday</div>
						<div>Wednesday</div>
						<div>Thursday</div>
						<div>Friday</div>
						<div>Saturday</div>
						<div>Sunday</div>
					</div>
					<div id="eachday" class="eachday-<?php echo $doctor_id?>">
						<div>Apr 2</div>
						<div>Apr 3</div>
						<div>Apr 4</div>
						<div>Apr 5</div>
						<div>Apr 6</div>
						<div>Apr 7</div>
					</div>
				</div>
				<div id="calendar_content" class="calendar_content-<?php echo $doctor_id?>">
					<div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
					</div>
					<div>
						<div class="active">11:10</div>
						<div class="active">11:20</div>
						<div class="active">13:30</div>
						<div class="active">17:40</div>
					</div>
					<div>
						<div class="active">13:10</div>
						<div class="active">11:20</div>
						<div class="active">14:30</div>
						<div class="active">17:40</div>
					</div>
					<div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
					</div>
					<div>
						<div class="active">11:10</div>
						<div class="active">11:20</div>
						<div class="active">13:30</div>
						<div class="active">17:40</div>
					</div>
					<div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
						<div>-</div>
					</div>
				</div>
			</div>
			<div><div class="next"  data-id="<?php echo $doctor_id?>"><span class="iconify arrow" data-icon="dashicons:arrow-right-alt2" data-inline="false"></span></div></div>
		</div>
	</div>

	
<script>
init(<?php echo $doctor_id ?>,new Date());
startDateArray[<?php echo $doctor_id ?>] = new Date();

</script>

<?php } ?>

<script>
	console.log("======================startDateArray+++++++++++++++++++++++++++");
	console.log(startDateArray)
	console.log("======================startDateArray+++++++++++++++++++++++++++");
</script>


</body>
</html>