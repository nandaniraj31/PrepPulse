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

<title>User Profile</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
background:#0f172a;
color:white;
display:flex;
}

/* SIDEBAR */

.sidebar{
width:240px;
height:100vh;
background:#111827;
padding:25px;
position:fixed;
left:0;
top:0;
}

.logo{
font-size:28px;
font-weight:bold;
margin-bottom:40px;
color:#22c55e;
}

.sidebar a{
display:block;
color:white;
text-decoration:none;
padding:14px;
margin-top:12px;
border-radius:10px;
transition:0.3s;
}

.sidebar a:hover{
background:#2563eb;
}

/* MAIN */

.main{
margin-left:240px;
width:100%;
padding:40px;
}

/* PROFILE TOP */

.profile-top{
display:flex;
justify-content:space-between;
align-items:center;
background:#1e293b;
padding:35px;
border-radius:20px;
box-shadow:0px 0px 10px rgba(255,255,255,0.1);
margin-bottom:30px;
}

.left{
display:flex;
align-items:center;
gap:25px;
}

.avatar{
width:110px;
height:110px;
border-radius:50%;
background:#2563eb;
display:flex;
justify-content:center;
align-items:center;
font-size:45px;
font-weight:bold;
}

.user-info h1{
font-size:38px;
margin-bottom:10px;
}

.user-info p{
color:#cbd5e1;
margin-bottom:8px;
}

.edit-btn{
background:#2563eb;
padding:12px 22px;
border-radius:10px;
text-decoration:none;
color:white;
font-weight:bold;
}

.edit-btn:hover{
background:#1d4ed8;
}

/* TABS */

.tabs{
display:flex;
gap:20px;
margin-bottom:30px;
}

.tab{
padding:12px 20px;
background:#1e293b;
border-radius:10px;
cursor:pointer;
transition:0.3s;
}

.tab:hover{
background:#2563eb;
}

/* CONTENT GRID */

.grid{
display:grid;
grid-template-columns:2fr 1fr;
gap:25px;
}

/* LEFT CONTENT */

.content{
background:#1e293b;
padding:30px;
border-radius:20px;
}

.section{
margin-bottom:35px;
}

.section h2{
margin-bottom:15px;
color:#38bdf8;
}

.section p{
color:#cbd5e1;
line-height:28px;
}

/* RIGHT SIDEBAR */

.right-panel{
background:#1e293b;
padding:25px;
border-radius:20px;
height:fit-content;
}

.right-panel h2{
margin-bottom:20px;
}

.stat{
background:#0f172a;
padding:18px;
border-radius:12px;
margin-bottom:15px;
}

.stat h3{
font-size:28px;
margin-bottom:5px;
color:#22c55e;
}

.stat p{
color:#cbd5e1;
}

/* SKILLS */

.skills{
display:flex;
flex-wrap:wrap;
gap:12px;
margin-top:15px;
}

.skill{
background:#2563eb;
padding:10px 16px;
border-radius:30px;
font-size:14px;
}

/* RESPONSIVE */

@media(max-width:900px){

.grid{
grid-template-columns:1fr;
}

.profile-top{
flex-direction:column;
align-items:flex-start;
gap:25px;
}

}

</style>

</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar">

<div class="logo">
PrepPulse 🚀
</div>

<a href="dashboard.jsp">Dashboard</a>

<a href="aptitude.jsp">Aptitude</a>

<a href="reasoning.jsp">Reasoning</a>

<a href="dsa.jsp">DSA</a>

<a href="verbalability.jsp">Verbal Ability</a>

<a href="profile.jsp">Profile</a>

<a href="logout">Logout</a>

</div>

<!-- MAIN -->

<div class="main">

<!-- PROFILE HEADER -->

<div class="profile-top">

<div class="left">

<div class="avatar">
<%= user.charAt(0) %>
</div>

<div class="user-info">

<h1><%= user %></h1>

<p>B.Tech Student</p>

<p>Placement Preparation Portal User</p>

<p>Asansol Engineering College</p>

</div>

</div>

<a href="#" class="edit-btn">
<i class="fa-solid fa-pen"></i>
Edit Profile
</a>

</div>

<!-- TABS -->

<div class="tabs">

<div class="tab">Overview</div>

<div class="tab">Coding Score</div>

<div class="tab">Achievements</div>

<div class="tab">Bookmarks</div>

</div>

<!-- GRID -->

<div class="grid">

<!-- LEFT -->

<div class="content">

<div class="section">

<h2>About Me</h2>

<p>
Passionate engineering student focused on placement preparation,
DSA, aptitude and full stack development.
Preparing for TCS, campus placements and software roles.
</p>

</div>

<div class="section">

<h2>Education</h2>

<p>
B.Tech in Computer Science Engineering<br>
Asansol Engineering College
</p>

</div>

<div class="section">

<h2>Skills</h2>

<div class="skills">

<div class="skill">Java</div>

<div class="skill">JSP</div>

<div class="skill">Servlet</div>

<div class="skill">MySQL</div>

<div class="skill">DSA</div>

<div class="skill">HTML</div>

<div class="skill">CSS</div>

<div class="skill">JavaScript</div>

</div>

</div>

<div class="section">

<h2>Achievements</h2>

<p>
✔ Solved 120+ DSA Questions<br><br>

✔ Completed Aptitude Preparation Track<br><br>

✔ Built Smart Placement Preparation Portal Project
</p>

</div>

</div>

<!-- RIGHT PANEL -->

<div class="right-panel">

<h2>Profile Stats 📊</h2>

<div class="stat">

<h3>120</h3>

<p>Questions Solved</p>

</div>

<div class="stat">

<h3>82%</h3>

<p>Accuracy</p>

</div>

<div class="stat">

<h3>15</h3>

<p>Mock Tests</p>

</div>

<div class="stat">

<h3>5⭐</h3>

<p>Current Rank</p>

</div>

</div>

</div>

</div>

</body>

</html>