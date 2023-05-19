<!DOCTYPE html>
<html>
  <head>
    <title>Online Course Management System</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        background-image: url("pic1.jpg");
        background-size: cover;
      }

      .header {
        text-align: center;
        padding: 20px;
        box-shadow: 0 0 100px rgba(0, 0, 0, 1);
        margin-bottom: 100px;
      }

      .header h1 {
        font-size: 32px;
        margin: 0;
      }

      .credit {
        text-align: center;
        font-size: 200px;
        color: black;
        margin-bottom: 20px;
      }

      .btn-group {
        display: flex;
        justify-content: center;
        margin-left: 0px;
        margin-top: 100px;
      }

      .btn-group .btn {
      	color: black;
        margin: 0 10px;
        background-color: rgba(255, 255, 255, 0.6);
        border: none;
        box-shadow: none;
      }

      .btn-group .btn:hover {
        background-color: rgba(255, 255, 255, 0.2);
      }

      .btn-group .btn i {
        margin-right: 5px;
      }
    </style>
  </head>
  <body>
    <div class="header">
      <h1>Online Course Management System</h1>
    </div>
    <div class="credit">
      <p><i>PoshTeam</i></p>
    </div>

    <div class="container text-center">
      <div class="btn-group">
        <a href="student-login.html" class="btn btn-primary btn-lg"><i class="fas fa-user-graduate"></i> Student</a>
        <a href="teacher-login.html" class="btn btn-primary btn-lg"><i class="fas fa-chalkboard-teacher"></i> Teacher</a>
        <a href="admin-login.html" class="btn btn-primary btn-lg"><i class="fas fa-user-shield"></i> Admin</a>
      </div>
    </div>

    

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  </body>
</html>
