<%@ page import="java.sql.*,com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
	<title>PoshTeam</title>
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
		.logout-btn {
		position: fixed;
		bottom: 100px;
		right: 915px;
	}

	.logout-btn a {
		display: inline-block;
		padding: 10px 20px;
		background-color: #f44336;
		color: #fff;
		text-decoration: none;
		border-radius: 5px;
		font-size: 16px;
		transition: background-color 0.3s ease;
	}

	.logout-btn a:hover {
		background-color: #d32f2f;
	}
		
	</style>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	
</head>
<body>
<div class="logout-btn">
			<a href="Home.jsp" class="btn btn-primary">Logout</a>
		</div>

	<form method="post" action = "AddCourse.jsp" id = "course-form">
		<h1>Add New Course</h1>
		<label for="course-name" name = "course_name"><b>Course Name:</b></label>
		<input type="text" id="course-name" name="course_name" placeholder="Enter course name" required>
		<label><b>Course ID</b></label>
		<input type="text" name="courseId" required>
		<label><b>Category</b></label>
		<input type="text" id="course-name" name="category" placeholder="Category" required>
		
		
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
		<script>
		  // Select the form element
		  const form = document.querySelector('form');
		
		  // Add a submit event listener to the form element
		  form.addEventListener('submit', (event) => {
		    // Prevent the default form submission behavior
		    event.preventDefault();
		
		    // Display the Sweet Alert
		    swal("Course added!", "Your course has been successfully added.", "success")
		    .then(() => {
		      // Submit the form
		      form.submit();
		    });
		  });
		</script>
		
		
	</form>
</body>
</html>
