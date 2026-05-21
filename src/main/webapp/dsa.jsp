<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

<title>DSA Practice</title>

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
DSA Practice 💻
</div>

<div class="subheading">
Master coding interview questions topic-wise.
</div>

<div class="cards">

<div class="card">
<h2>Arrays</h2>
<p>Practice traversal, two pointer, prefix sum and more.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Strings</h2>
<p>Pattern matching, palindrome, substring questions.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Linked List</h2>
<p>Singly, doubly linked list interview questions.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Stack & Queue</h2>
<p>Important LIFO/FIFO based coding problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Trees</h2>
<p>Binary tree, BST and recursion problems.</p>
<button class="btn">Start Practice</button>
</div>

<div class="card">
<h2>Recursion</h2>
<p>Backtracking and recursive thinking problems.</p>
<button class="btn">Start Practice</button>
</div>

</div>

</div>

</body>
</html>