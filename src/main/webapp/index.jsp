<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel='stylesheet' href="https://fullcalendar.io/releases/fullcalendar/4.0.0-alpha.4/fullcalendar.min.css">
<script
  src="https://fullcalendar.io/releases/fullcalendar/4.0.0-alpha.4/fullcalendar.min.js"
  ></script>


<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
	  var srcCalendarEl = document.getElementById('source-calendar');
	  var destCalendarEl = document.getElementById('destination-calendar');

	  var srcCalendar = new FullCalendar.Calendar(srcCalendarEl, {
		  timeZone: 'UTC',
		    themeSystem: 'bootstrap4',
		    header: {
		      left: 'prev,next today',
		      center: 'title',
		      right: 'month,agendaWeek,agendaDay,listMonth'
		    },
		    weekNumbers: true,
		    eventLimit: true, // allow "more" link when too many events
		    events: [
			      {
			        title: 'First half',
			        start: '2019-01-11T10:00:00',
			        end: '2019-01-11T12:00:00'
			      },
			      {
			        title: 'Second Date',
			        start: '2019-01-11T13:00:00',
			        end: '2019-01-11T16:00:00'
			      }
			    ]
		  });

		 
	




	  srcCalendar.render();
	});
</script>
</head>
<body class='container-fluid'>

	<div class='row mt-3'>
	
  <div id='source-calendar' class='col-6'></div>
  <div id='destination-calendar' class='col-6'></div>

	</div>
</body>
</html>