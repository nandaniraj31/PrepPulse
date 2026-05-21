<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

<title>Reasoning</title>

<style>

body{
margin:0;
font-family:Arial;
background:#f3f4f6;
display:flex;
}

.sidebar{
width:230px;
height:100vh;
background:#111827;
padding:20px;
position:fixed;
}

.sidebar h2{
color:white;
margin-bottom:30px;
}

.sidebar a{
display:block;
color:white;
padding:14px;
text-decoration:none;
border-radius:8px;
margin-top:10px;
}

.sidebar a:hover{
background:#2563eb;
}

.main{
margin-left:250px;
padding:30px;
width:100%;
}

.heading{
font-size:35px;
font-weight:bold;
margin-bottom:30px;
}

.cards{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:20px;
}

.card{
background:white;
padding:25px;
border-radius:14px;
box-shadow:0px 0px 10px lightgray;
}

.start-btn{
background:#2563eb;
color:white;
padding:10px 18px;
border:none;
border-radius:8px;
margin-top:15px;
cursor:pointer;
}

</style>

</head>

<body>

<div class="sidebar">

<h2>PrepPulse 🚀</h2>

<a href="dashboard.jsp">Dashboard</a>
<a href="aptitude.jsp">Aptitude</a>
<a href="reasoning.jsp">Reasoning</a>
<a href="dsa.jsp">DSA</a>
<a href="verbalability.jsp">Verbal</a>
<a href="profile.jsp">Profile</a>
<a href="logout">Logout</a>

</div>

<div class="main">

<div class="heading">
Logical Reasoning 🧠
</div>

<div class="cards">

<div class="card">
<h2>Blood Relation</h2>
<p>Family tree and relationship problems.</p>
<button class="start-btn">
Start Practice
</button>
</div>

<div class="card">
<h2>Coding Decoding</h2>
<p>Letter and number coding questions.</p>
<button class="start-btn">
Start Practice
</button>
</div>

<div class="card">
<h2>Seating Arrangement</h2>
<p>Circular and linear arrangement.</p>
<button class="start-btn">
Start Practice
</button>
</div>

<div class="card">
<h2>Syllogism</h2>
<p>Logical statement based questions.</p>
<button class="start-btn">
Start Practice
</button>
</div>

</div>

</div>

</body>
</html>