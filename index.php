<?php
session_start();

if ($_SESSION['user']) {
    header('Location: profile.php');
}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Авторизация и регистрация</title>
    <link rel="stylesheet" href="assets/css/main.css">
</head>
<body>

<!-- Форма авторизации -->

    <form action="vendor/creditRequest.php" method="post" class="cli-form-block" data-title="Форма">
	<div class="cli-input-group" >
		<div class="cli-form-field">
			<input type="text" name="userName" placeholder="Ваше имя" class="cli-form-field-input">
		</div>
		<div class="cli-form-field">
			<input type="text" name="phone" placeholder="Номер телефона" class="cli-form-field-input">
		</div>
	</div>
	<button	class="cli-btn full primary big" type="submit" data-title="Кнопка">
		<span data-controls-disabled="true" class="cli-btn-text">Оставить заявку</span>
	</button>
        <?php
            if ($_SESSION['message']) {
                echo '<p style="border: 2px solid #DE0024; font-size: 14px; background: white; border-radius: 10px; padding: 10px; margin-top: 20px; text-align: center; font-weight: bold;">' . $_SESSION['message'] . ' </p>';
            }
            unset($_SESSION['message']);
        ?>
    </form>

</body>
</html>