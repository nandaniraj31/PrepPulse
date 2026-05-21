<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String user = (String) session.getAttribute("username");

if(user == null){
response.sendRedirect("login.jsp");
return;
}
%>

<!DOCTYPE html>
<html>

<head>

<title>PrepPulse Dashboard</title>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
transition:0.3s;
}

body{
display:flex;
background:#0f172a;
color:white;
}

/* LIGHT MODE */

body.light{
background:#f3f4f6;
color:black;
}

body.light .sidebar{
background:white;
}

body.light .sidebar a{
color:black;
}

body.light .sidebar a:hover{
background:#2563eb;
color:white;
}

body.light .card,
body.light .chart-box,
body.light .activity-box,
body.light .navbar{
background:white;
color:black;
}

body.light .search-box{
background:#e5e7eb;
color:black;
}

/* SIDEBAR */

.sidebar{
width:250px;
height:100vh;
background:#111827;
padding:25px;
position:fixed;
left:0;
top:0;
}

.logo{
font-size:30px;
font-weight:bold;
margin-bottom:40px;
color:#38bdf8;
}

.sidebar a{
display:block;
color:white;
text-decoration:none;
padding:15px;
margin-top:10px;
border-radius:12px;
font-size:17px;
}

.sidebar a:hover{
background:#2563eb;
transform:translateX(5px);
}

/* MAIN */

.main{
margin-left:250px;
width:100%;
padding:25px;
}

/* NAVBAR */

.navbar{
background:#1e293b;
padding:20px;
border-radius:18px;
display:flex;
justify-content:space-between;
align-items:center;
margin-bottom:30px;
}

.search-box{
background:#0f172a;
padding:12px 18px;
border:none;
border-radius:12px;
width:320px;
color:white;
font-size:15px;
outline:none;
}

.right-nav{
display:flex;
align-items:center;
gap:20px;
}

.theme-btn{
background:#2563eb;
border:none;
padding:10px 16px;
border-radius:10px;
color:white;
cursor:pointer;
font-size:15px;
}

.profile{
width:45px;
height:45px;
border-radius:50%;
background:#38bdf8;
display:flex;
justify-content:center;
align-items:center;
font-weight:bold;
font-size:18px;
}

/* HERO */

.hero{
background:linear-gradient(to right,#1e293b,#0f172a);
padding:40px;
border-radius:20px;
margin-bottom:30px;
display:flex;
justify-content:space-between;
align-items:center;
}

.hero h1{
font-size:42px;
margin-bottom:15px;
}

.hero p{
color:#cbd5e1;
font-size:18px;
min-height:250px;
}

.hero button{
margin-top:20px;
padding:14px 25px;
border:none;
background:#22c55e;
color:white;
border-radius:12px;
font-size:16px;
cursor:pointer;
}

.hero button:hover{
transform:scale(1.05);
}

/* CARDS */

.cards{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:20px;
margin-bottom:30px;
}

.card{
background:#1e293b;
padding:25px;
border-radius:18px;
box-shadow:0px 0px 10px rgba(255,255,255,0.08);
}

.card:hover{
transform:translateY(-5px);
box-shadow:0 0 20px rgba(56,189,248,0.4);
}

.card h2{
font-size:36px;
margin-bottom:10px;
color:#38bdf8;
}

.card p{
color:#cbd5e1;
}

/* GRID */

.grid{
display:grid;
grid-template-columns:1fr 1fr;
gap:25px;
}

/* CHART */

.chart-box{
background:#1e293b;
padding:25px;
border-radius:18px;
height:500px;
display:flex;
flex-direction:column;
justify-content:center;
align-items:center;
}

.chart-container{
width:100%;
height:350px;
position:relative;
}


/* ACTIVITY */

.activity-box{
background:#1e293b;
padding:25px;
border-radius:18px;
}

.activity-box h2{
margin-bottom:20px;
}

.activity{
background:#0f172a;
padding:18px;
border-radius:12px;
margin-bottom:15px;
}

.activity:hover{
transform:scale(1.02);
}

/* RESPONSIVE */

@media(max-width:1100px){

.cards{
grid-template-columns:repeat(2,1fr);
}

.grid{
grid-template-columns:1fr;
}

}

@media(max-width:700px){

.sidebar{
display:none;
}

.main{
margin-left:0;
}

.cards{
grid-template-columns:1fr;
}

.navbar{
flex-direction:column;
gap:20px;
}

.search-box{
width:100%;
}

}

</style>

</head>

<body id="body">

<!-- SIDEBAR -->

<div class="sidebar">

<div class="logo">
PrepPulse 🚀
</div>

<a href="dashboard.jsp">
<i class="fa-solid fa-house"></i>
Dashboard
</a>

<a href="aptitude.jsp">
<i class="fa-solid fa-calculator"></i>
Aptitude
</a>

<a href="reasoning.jsp">
<i class="fa-solid fa-brain"></i>
Reasoning
</a>

<a href="dsa.jsp">
<i class="fa-solid fa-code"></i>
DSA
</a>

<a href="verbalability.jsp">
<i class="fa-solid fa-book"></i>
Verbal Ability
</a>

<a href="profile.jsp">
<i class="fa-solid fa-user"></i>
Profile
</a>

<a href="logout">
<i class="fa-solid fa-right-from-bracket"></i>
Logout
</a>

</div>

<!-- MAIN -->

<div class="main">

<!-- NAVBAR -->

<div class="navbar">

<input type="text"
placeholder="Search topics..."
class="search-box"
id="searchInput">

<div class="right-nav">

<button class="theme-btn"
onclick="toggleTheme()">
🌙 Theme
</button>

<div class="profile"
onclick="window.location.herf='profile.jsp'">
style="cursor:pointer;">
<%= user.charAt(0) %>
</div>

</div>

</div>

<!-- HERO -->

<div class="hero">

<div>

<h1>
Hello, <%= user %> 👋
</h1>

<p>
Welcome to your Smart Placement Preparation Portal.<br>
Track progress, solve DSA, practice aptitude and prepare for placements.
</p>

<button onclick="window.location.href='aptitude.jsp'">
Start Practice
</button>

</div>

</div>

<!-- CARDS -->

<div class="cards">

<div class="card">

<h2>120</h2>

<p>Total Questions Solved</p>

</div>

<div class="card">

<h2>82%</h2>

<p>Accuracy</p>

</div>

<div class="card">

<h2>15</h2>

<p>Mock Tests Given</p>

</div>

<div class="card">

<h2>5⭐</h2>

<p>Current Rank</p>

</div>

</div>

<!-- GRID -->

<div class="grid">

<!-- CHART -->

<div class="chart-box">

<h2>
Performance Analytics 📊
</h2>

<div class="chart-container">
<canvas id="myChart"></canvas>
</div>

</div>

<!-- ACTIVITY -->

<div class="activity-box">

<h2>
Recent Activity 🚀
</h2>

<div class="activity">
Completed Aptitude Mock Test
</div>

<div class="activity">
Solved 15 DSA Questions
</div>

<div class="activity">
Accuracy Improved by 5%
</div>

<div class="activity">
Completed Probability Topic
</div>

<div class="activity">
Practiced Array Problems
</div>

</div>

</div>

</div>

<script>

function toggleTheme(){

document.body.classList.toggle("light");

}

const ctx =
document.getElementById('myChart');

new Chart(ctx, {

type:'doughnut',

data:{

labels:[
'Aptitude',
'DSA',
'Reasoning',
'Verbal'
],

datasets:[{

data:[35,30,20,15],

backgroundColor:[
'#3b82f6',
'#22c55e',
'#f59e0b',
'#ec4899'
]

}]

},

options:{
responsive:true,
maintainAspectRatio:false,
plugins:{
legend:{
position:'top',
labels:{
color:'white'
}
}
}
}

document.getElementById("searchInput")
.addEventListener("keyup",function(){

let value=this.value.toLowerCase();

let links=document.querySelectorAll(".sidebar a");

links.forEach(function(link){

if(link.innerText.toLowerCase().includes(value)){

link.style.display="block";

}else{

link.style.display="none";

}

});

});

</script>

</body>

</html>