<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
String user =
(String) session.getAttribute("username");

if(user == null){
    response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>

<head>

<title>Verbal Ability</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Arial;
}

body{
background:#f2f2f2;
display:flex;
}

/* SIDEBAR */

.sidebar{
width:220px;
height:100vh;
background:#111827;
padding:20px;
color:white;
}

.sidebar h2{
margin-bottom:30px;
}

.sidebar a{
display:block;
color:white;
text-decoration:none;
padding:12px;
margin-top:10px;
border-radius:5px;
}

.sidebar a:hover{
background:#2563eb;
}

/* MAIN */

.main{
flex:1;
padding:40px;
}

.heading{
margin-bottom:30px;
}

.card-container{
display:grid;
grid-template-columns:repeat(2,1fr);
gap:20px;
}

.card{
background:white;
padding:25px;
border-radius:12px;
box-shadow:0px 0px 10px lightgray;
}

.card h3{
margin-bottom:10px;
}

.card p{
color:gray;
margin-bottom:15px;
}

button{
padding:10px 20px;
background:#2563eb;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}

button:hover{
background:#1d4ed8;
}

</style>

</head>

<body>

<!-- SIDEBAR -->

<div class="sidebar">

<h2>PrepPulse 🚀</h2>

<a href="dashboard.jsp">Dashboard</a>

<a href="aptitude.jsp">Aptitude</a>

<a href="reasoning.jsp">Reasoning</a>

<a href="dsa.jsp">DSA</a>

<a href="verbalability.jsp">Verbal Ability</a>

<a href="profile.jsp">Profile</a>

<a href="LogoutServlet">Logout</a>

</div>

<!-- MAIN CONTENT -->

<div class="main">

<div class="heading">

<h1>Verbal Ability 📚</h1>

<p>Practice English and communication skills</p>

</div>

<div class="card-container">

<div class="card">

<h3>Synonyms & Antonyms</h3>

<p>
Improve vocabulary and word understanding.
</p>

<button>Start Practice</button>

</div>

<div class="card">

<h3>Reading Comprehension</h3>

<p>
Practice passage-based questions.
</p>

<button>Start Practice</button>

</div>

<div class="card">

<h3>Error Detection</h3>

<p>
Find grammatical errors in sentences.
</p>

<button>Start Practice</button>

</div>

<div class="card">

<h3>Sentence Improvement</h3>

<p>
Enhance sentence structure and grammar.
</p>

<button>Start Practice</button>

</div>

</div>

</div>

</body>
</html>