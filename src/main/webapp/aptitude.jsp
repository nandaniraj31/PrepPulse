<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>Aptitude Practice</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
display:flex;
background:#f3f4f6;
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
color:white;
font-size:28px;
font-weight:bold;
margin-bottom:40px;
}

.sidebar a{
display:block;
color:white;
text-decoration:none;
padding:14px;
margin-top:12px;
border-radius:8px;
transition:0.3s;
}

.sidebar a:hover{
background:#2563eb;
}

/* MAIN */

.main{
margin-left:240px;
width:100%;
padding:30px;
}

.heading{
font-size:36px;
font-weight:bold;
margin-bottom:10px;
}

.subheading{
color:gray;
margin-bottom:35px;
}

/* CARDS */

.cards{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:25px;
}

.card{
background:white;
padding:25px;
border-radius:16px;
box-shadow:0px 0px 10px lightgray;
transition:0.3s;
}

.card:hover{
transform:translateY(-5px);
}

.card h2{
margin-bottom:12px;
}

.card p{
color:gray;
margin-bottom:18px;
}

.btn{
background:#2563eb;
color:white;
border:none;
padding:10px 18px;
border-radius:8px;
cursor:pointer;
}

.btn:hover{
background:#1e40af;
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

<div class="heading">
Aptitude Practice 📘
</div>

<div class="subheading">
Practice placement aptitude topic-wise.
</div>

<div class="cards">

<div class="card">
<h2>Percentage</h2>
<p>Increase, decrease and percentage tricks.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Profit & Loss</h2>
<p>CP, SP, discount and marked price problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Time & Work</h2>
<p>Efficiency and work completion questions.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Time Speed Distance</h2>
<p>Train, boat and speed related problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Probability</h2>
<p>Chance and event based aptitude questions.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Permutation & Combination</h2>
<p>Arrangement and selection problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Simple Interest</h2>
<p>Basic interest calculation problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Compound Interest</h2>
<p>Growth and annual interest questions.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Ratio & Proportion</h2>
<p>Ratio simplification and comparison.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Average</h2>
<p>Mean and weighted average questions.</p>
<button class="btn">Start Practice</button>
</div>

</div>

</div>

</body>
</html>