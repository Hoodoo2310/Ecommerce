<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>JD Discount</title>
    <meta content="" name="description">
    <meta content="" name="author">
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
    <link rel="icon" type="image/png" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/favicon.png">
    <link href="Bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Poppins:300,500,600,700' rel='stylesheet' type='text/css'>
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
</head>
<body id="index">
<div class="wrapar">
    <!-- Header Start-->
    <div class="header">
        <div class="header-top">
            <div class="container">
                <div class="call pull-left">
                    <p>Contacter nous : <span>+33 (0)1 02 03 04 05</span></p>
                </div>
                <div class="user-info pull-right">
                    <div class="user">
                        <ul>
                            <li><a href="#" data-toggle="modal" data-target="#login">Login</a>
                                <!-- Modal -->
                                <div class="modal fade" id="login" role="dialog">
                                    <div class="modal-dialog">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <div class="panel-heading">
                                                    <div class="panel-title pull-left">Login</div>
                                                    <div class="pull-right"><a href="#">Mot de passe oublié?</a>
                                                        <button aria-hidden="true" data-dismiss="modal" class="close btn btn-xs " type="button"> <i class="fa fa-times"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-body">
                                                <form id="loginform" class="form-horizontal">
                                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">
                                                    </div>
                                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                                    </div>
                                                    <div class="input-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input id="login-remember" type="checkbox" name="remember" value="1">
                                                                Se rappeler de moi</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <!-- Button -->
                                                        <div class="col-sm-12 controls"> <a id="btn-login" href="#" class="btn btn-primary btn-success">Login</a> </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <div class="form-group">
                                                    <div class="col-md-12 control">
                                                        <div>Je n'ai pas de compte! <a href="#">Inscrivez-vous ici</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a href="#" data-toggle="modal" data-target="#register">S'inscrire</a>
                                <div class="modal fade" id="register" role="dialog">
                                    <div class="modal-dialog">
                                        <!-- Modal content-->
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <div class="panel-heading">
                                                    <div class="panel-title pull-left">S'inscrire</div>
                                                    <div class="pull-right">
                                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button"><i class="fa fa-times"></i> </button>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-body">
                                                <div class="control-group">
                                                    <!-- Username -->
                                                    <label class="control-label"  for="username">Nom</label>
                                                    <div class="controls">
                                                        <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                                                        <p class="help-block">Veuillez entrer votre nom</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <!-- Username -->
                                                    <label class="control-label"  for="username">Prénom</label>
                                                    <div class="controls">
                                                        <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
                                                        <p class="help-block">Veuillez entrer votre prénom</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <!-- E-mail -->
                                                    <label class="control-label" for="email">E-mail</label>
                                                    <div class="controls">
                                                        <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
                                                        <p class="help-block">Merci de renseigner votre e-mail</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <!-- Password-->
                                                    <label class="control-label" for="password">Mot de passe</label>
                                                    <div class="controls">
                                                        <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                                                        <p class="help-block">Veuillez entrer un mot de passe</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <!-- Password -->
                                                    <label class="control-label"  for="password_confirm">Mot de passe (Confirmation)</label>
                                                    <div class="controls">
                                                        <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="input-xlarge">
                                                        <p class="help-block">Veuillez confirmer votre mot de passe</p>
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <!-- Button -->
                                                    <div class="controls">
                                                        <button class="btn btn-success">S'inscrire</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>