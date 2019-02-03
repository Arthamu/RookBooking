<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel='stylesheet'
	href="https://fullcalendar.io/releases/fullcalendar/4.0.0-alpha.4/fullcalendar.min.css">
<script
	src="https://fullcalendar.io/releases/fullcalendar/4.0.0-alpha.4/fullcalendar.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<script type="text/javascript" src="./js/angular.js"></script>

<script type="text/javascript">

var selectedDate=null;
	document.addEventListener('DOMContentLoaded', function() {
		var srcCalendarEl = document.getElementById('source-calendar');
		var destCalendarEl = document.getElementById('destination-calendar');

		var srcCalendar = new FullCalendar.Calendar(srcCalendarEl, {
			timeZone : 'UTC',

			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaDay,agendaWeek,listMonth'
			},

			views: {
			   
			    agendaWeek: {
			    	titleRangeSeparator:' - '
			    }
			},
			selectable :true,
			themeSystem : 'bootstrap4',

			weekNumbers : true,
			eventLimit : true, // allow "more" link when too many events
			events : [ 
			{
				title : 'First half',
				start : '2019-02-11T10:00:00',
				end : '2019-02-11T12:00:00'
			}, 
			{
				title : 'Second Date',
				start : '2019-02-11T13:00:00',
				end : '2019-02-11T16:00:00'
			}, 
			{
				title : 'Second Date',
				start : '2019-03-11T13:00:00',
				end : '2019-03-11T16:00:00'
			},
			{
				title : 'Second Date',
				start : '2019-03-11T13:00:00',
				end : '2019-03-11T16:00:00'
			} ]
			,
			navLinks:true
			,
			dateClick: function(info) {

			    selectedDate= info.dateStr;
			    alert('Coordinates: ' + info.jsEvent.pageX + ',' + info.jsEvent.pageY);
			    alert('Current view: ' + info.view.type);

			    // change the day's background color just for fun
			    info.dayEl.style.backgroundColor = 'red';
			  }

		});

		srcCalendar.render();
	});
</script>


<script type="text/javascript">
var app=angular.module('appRo',[]);
app.controller('myCtrl',function($scope,$timeout){
	
	$scope.selectedDate='dad';
	$timeout(function () {
		$scope.selectedDate=selectedDate;
	},100);
	
	
});
</script>
</head>
<body class='container-fluid'>

	<div class='row mt-3'>

		<div id='source-calendar' class='col-6 offset-2'></div>
		
		<div class='' ng-app='appRo'>
		<div ng-controller='myCtrl'>
		
		{{selectedDate}}
		</div>
		
		
		</div>	
	
	
	</div>
</body>
</html>