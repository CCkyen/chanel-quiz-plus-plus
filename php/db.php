    <?php

    function getQuestions(){    
        //prepare connection parameters.
        $dbName = getenv('DB_NAME');
        $dbUser = getenv('DB_USER');
        $dbPassword = getenv('DB_PASSWORD');
        $dbHost = getenv('DB_HOST');

        // connect to mySQL database using PHP PDO Object
        $dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbName;charset=utf8", $dbUser, $dbPassword);

        // the following tells PDO we want it to throw Exceptions for every error.
        // this is far more useful than the default mode of throwing php errors.
        $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Create a multidimensional array with questions
        // holding also the answers to each questions

        $query = $dbConnection->query("SELECT * from Questions");
        $questions = $query->fetchAll(PDO::FETCH_ASSOC);

        // print_r($questions);

        for ($q = 0; $q < count($questions); $q++) {
            $question = $questions[$q];
            $subQuery = $dbConnection->prepare("SELECT * from Answers where Answers.QuestionID =  ?");
            $subQuery->bindValue(1, $question['ID']);
            $subQuery->execute();
            $Answers = $subQuery->fetchAll(PDO::FETCH_ASSOC);

            $questions[$q]['Answers'] = $Answers;
        }

        return $questions;
    }
    ?>