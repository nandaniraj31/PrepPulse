<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <title>PrepPulse Quiz</title>

    <style>

        body{
            font-family:Arial;
            background:#f4f6f9;
            padding:30px;
        }

        .quiz-box{
            background:white;
            width:60%;
            margin:auto;
            padding:30px;
            border-radius:12px;
            box-shadow:0px 0px 10px lightgray;
        }

        h1{
            margin-bottom:20px;
        }

        .option{
            margin-top:15px;
        }

        button{
            margin-top:20px;
            padding:10px 20px;
            background:#2563eb;
            color:white;
            border:none;
            border-radius:8px;
            cursor:pointer;
        }

        #score{
            margin-top:20px;
            font-size:20px;
            font-weight:bold;
        }

    </style>

</head>

<body>

<div class="quiz-box">

    <h1 id="question">
        Question
    </h1>

    <div id="options"></div>

    <button onclick="nextQuestion()">
        Next Question
    </button>

    <p id="score"></p>

</div>

<script>

let questions = [

{
question:"What is 25% of 400?",
options:["50","100","150","200"],
answer:"100"
},

{
question:"What is 15 + 10 ?",
options:["20","25","30","35"],
answer:"25"
},

{
question:"What is probability range?",
options:["0 to 1","1 to 10","0 to 100","-1 to 1"],
answer:"0 to 1"
}

];

let currentQuestion = 0;

let score = 0;

function loadQuestion(){

    document.getElementById("question").innerHTML =
        questions[currentQuestion].question;

    let optionsHtml = "";

    for(let i=0;
        i<questions[currentQuestion].options.length;
        i++){

        optionsHtml +=
        `
        <div class="option">

        <input type="radio"
               name="option"
               value="${questions[currentQuestion].options[i]}">

        ${questions[currentQuestion].options[i]}

        </div>
        `;
    }

    document.getElementById("options").innerHTML =
        optionsHtml;
}

function nextQuestion(){

    let selected =
        document.querySelector('input[name="option"]:checked');

    if(selected){

        if(selected.value ==
           questions[currentQuestion].answer){

            score++;
        }
    }

    currentQuestion++;

    if(currentQuestion < questions.length){

        loadQuestion();

    }else{

        document.querySelector(".quiz-box").innerHTML =
        `
        <h1>Quiz Completed 🎉</h1>

        <h2>Your Score:
        ${score}/${questions.length}
        </h2>
        `;
    }
}

loadQuestion();

</script>

</body>
</html>