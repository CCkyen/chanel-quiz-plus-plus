<?php



include ('data-collector.php');
include ('db.php');
//include ('header.php');

//Evaluate data in $_POST variable.
$currentQuestionIndex = 0;

if (isset($_POST['lastQuestionIndex'])) {
    $lastQuestionIndex = $_POST['lastQuestionIndex'];

    if (isset($_POST['nextQuestionIndex'])) {
        $currentQuestionIndex = $_POST['nextQuestionIndex'];
    }
}

//Check is $_SESSION['questions'] exists.
if (isset($_SESSION['questions'])) {
    //echo 'questions data EXISTS in session.<br>';
    //$questions = getQuestions();
    $questions = $_SESSION['questions'];
} else {
    //  echo 'questions data does NOT exist in session.<br>';//

    //Get questions data from database using php/db.php...
    $questions = getQuestions();

    //...and save that data in $_SESSION.
    $_SESSION['questions'] = $questions;
}

//DevOnly: Debug output to see what is inside the array $question
//print "<pre>";
//print_r($_SESSION['questions']);
//echo '</pre>';
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="styleshost">
</head>

<body>

    <div class="row">
        <div class="col-sm-12">

            <h3> Frage <?php echo $currentQuestionIndex; ?> </h3>
            <p><?php echo $questions[$currentQuestionIndex]['Question']; ?></p>

            <form <?php if ($currentQuestionIndex + 1 == count($questions)) echo 'action="php/result.php" '; ?> method="post">
                <?php
                $answers = $questions[$currentQuestionIndex]['Answers'];
                $type = $questions[$currentQuestionIndex]['Type'];
                $maxPoints = 0;

                for ($a = 0; $a < count($answers); $a++) {
                    echo '<div class="form-check">';
                    $IsCorrectAnswer = $answers[$a]['IsCorrectAnswer'];

                    if ($type == 1) {
                        //multiple
                        echo 'input class="form-check-input"  type="checkbox" name"a-' . $a . '" value="' . $IsCorrectAnswer . '" id="i-' . $a . '">';
                    } else {
                        //single
                        echo 'input class="form-check-input" type="radio" name="a-0" value "' . $IsCorrectAnswer . ' " id=i-' . $a . '">';
                    }

                    $maxPoints += $IsCorrectAnswer; //same as : $maxPoints = $maxPoints + $isCorrectAnswer;

                    echo '<label class="form-check-label" for ="i-' . $a . '">';
                    echo $answers[$a]['answer'];
                    echo '</label>';
                    echo '</div>';
                }
                ?>
                <!--Hidden Fields-->
                <input type="hidden" name="lastQuestionIndex" value="<?php echo $currentQuestionIndex; ?>">
                <input type="hidden" name="nextQuestionIndex" value="<?php echo $currentQuestionIndex + 1; ?>">
                <input type="hidden" name="maxPoints" value="<?php echo $maxPoints; ?>">

                <p class="warning"></p>
                <input type="submit">
            </form>
        </div>
    </div>

</body>

</html>