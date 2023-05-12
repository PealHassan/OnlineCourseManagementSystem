<!DOCTYPE html>
<html>
<head>
	<title>Add Course</title>
	<style>
		form {
			
			
			margin: 200px auto;
			max-width: 600px;
			padding: 20px;
			background-color: #f5f5f5;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			border: 2px solid green; /* added green border */
		}
		h1 {
			text-align: center;
			margin-bottom: 20px;
			color: #333;
		}
		label {
			display: block;
			margin-bottom: 10px;
			color: #333;
		}
		input[type="text"], select {
			padding: 10px;
			border: none;
			border-radius: 5px;
			width: 100%;
			margin-bottom: 20px;
			box-sizing: border-box;
			font-size: 16px;
		}
		textarea {
			padding: 10px;
			border: none;
			border-radius: 5px;
			width: 100%;
			height: 150px;
			margin-bottom: 20px;
			box-sizing: border-box;
			font-size: 16px;
		}
		input[type="submit"] {
		    background-color: green;
		    color: #fff;
		    padding: 10px 20px;
		    border: none;
		    border-radius: 5px;
		    font-size: 16px;
		    cursor: pointer;
		    margin: 0 auto;
		    display: block;
		}
		
		input[type="submit"]:hover {
			background-color: #00cc00;
		}
		
	</style>
</head>
<body>
	<form method="post" action="AddCourse.jsp">
		<h1>Add New Course</h1>
		<label for="course-name" name = "course_name"><b>Course Name:</b></label>
		<input type="text" id="course-name" name="course_name" placeholder="Enter course name" required>
		<label><b>Course ID</b></label>
		<input type="text" name="courseId" required>
		<label for="teacher"><b>Teacher:</b></label>
		<select id="teacher" name="teacher_name">
			<option value="Mr. John Doe">Mr. John Doe</option>
			<option value="Ms. Jane Smith">Ms. Jane Smith</option>
			<option value="Dr. David Lee">Dr. David Lee</option>
			<option value="Peal">Peal</option>
		</select>

		<label for="course-description" name = "course_description"><b>Course Description:</b></label>
		<textarea id="course-description" name = "course_description" placeholder="Enter course description" required></textarea>

		<input type="submit" value="Add Course">
	</form>
</body>
</html>
