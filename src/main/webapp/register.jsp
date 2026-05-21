<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>

    <title>Register</title>

    <style>

        body{
            font-family: Arial;
            background: #f4f4f4;
        }

        .box{
            width: 350px;
            background: white;
            padding: 30px;
            margin: 100px auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }

        input{
            width: 100%;
            padding: 10px;
            margin-top: 10px;
        }

        button{
            width: 100%;
            padding: 10px;
            background: blue;
            color: white;
            border: none;
            margin-top: 15px;
            cursor: pointer;
        }

    </style>

</head>

<body>

<div class="box">

    <h2>User Registration</h2>

    <form action="register" method="post">

        <input type="text" name="name" placeholder="Enter Name">

        <input type="email" name="email" placeholder="Enter Email">

        <input type="password" name="password" placeholder="Enter Password">

        <button type="submit">Register</button>

    </form>

</div>

</body>

</html>