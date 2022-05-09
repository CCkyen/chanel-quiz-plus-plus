<?php session_start();
    session_destroy();


include 'php/header.php';
?>
<style>
    .Index {
        height: 100px;
        text-align: center;
        font-size: 28px;
        background-color: peachpuff;
        padding-top: 30px;
        color: white;
        margin-top: 70px;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;

    }

    .Button {
        text-align: center;
        padding-top: 250px;
        font-size: 25px;
        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;

    }
</style>

<body background="img/General Knowledge Quiz (1).png">

    <div class="Index">
        <p>Are you ready to take this super fun General knowledge Quiz?</p>
    </div>

    <a href="question.php">
        <div class="Button" button type="button" class="btn btn-light"> Try our Quiz!</button>
    </a>
</body>

</html>