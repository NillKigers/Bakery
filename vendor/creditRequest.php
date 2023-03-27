<?php
    session_start();
    require_once('connect.php');

    $userName = $_POST['userName'];
    $phone = $_POST['phone'];

    if (empty($userName) || empty($phone)) {
        $_SESSION['message'] = 'Поля  "Ваше имя" и "Номер телефона" не могут быть пустыми';
        header('Location: ../menu.html');
    }
    else {
        mysqli_query($connect, "INSERT INTO `users` (`id`, `userName`, `phone`) 
		VALUES (NULL, '$userName', '$phone')");
        $_SESSION['message'] = 'Заявка успешно отправлена. </br> В скором времени Вам позвонит наш агент';
        header('Location: ../menu.html');
    }
?>