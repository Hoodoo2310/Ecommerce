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
    <link rel="stylesheet" href="css/smoothproducts.css">
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
                            <c:choose>
                                <c:when test="${connect == null}">
                                    <li><a href="#" data-toggle="modal" data-target="#login">Connexion</a>
                                        <!-- Modal -->
                                        <div class="modal fade" id="login" role="dialog">
                                            <div class="modal-dialog">
                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="panel-heading">
                                                            <div class="panel-title pull-left">Connexion</div>
                                                            <div class="pull-right"><a href="#">Mot de passe oublié?</a>
                                                                <button aria-hidden="true" data-dismiss="modal" class="close btn btn-xs " type="button"> <i class="fa fa-times"></i> </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="post" action="/clientLogin" id="loginform" class="form-horizontal">
                                                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                                <input id="login-username" type="text" class="form-control" name="email" value="" placeholder="Entrez votre email">
                                                            </div>
                                                            <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                                <input id="login-password" type="password" class="form-control" name="mdp" placeholder="Entrez votre mot de passe">
                                                            </div>
                                                            <div class="input-group">
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input id="login-remember" type="checkbox" name="remember" value="1">
                                                                        Se rappeler de moi
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <input type="hidden" name="action" value="connexion">
                                                                <input type="hidden" name="urlPage" value="${urlPage}">
                                                                <!-- Button -->
                                                                <div class="col-sm-12 controls"><button type="submit" class="btn btn-default btn-topvente">Connexion</button></div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <div class="form-group">
                                                            <div class="col-md-12 control">
                                                                <div><a href="/clientLogin">Je n'ai pas de compte! Inscrivez-vous ici</a></div>
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
                                                        <form method="post" action="/clientLogin">
                                                            <div class="control-group">
                                                                <!-- Username -->
                                                                <label class="control-label"  for="nom">Nom</label>
                                                                <div class="controls">
                                                                    <input type="text" id="nom" name="nom" placeholder="" class="input-xlarge">
                                                                    <p class="help-block">Veuillez entrer votre nom</p>
                                                                </div>
                                                            </div>
                                                            <div class="control-group">
                                                                <!-- Username -->
                                                                <label class="control-label"  for="prenom">Prénom</label>
                                                                <div class="controls">
                                                                    <input type="text" id="prenom" name="prenom" placeholder="" class="input-xlarge">
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
                                                                    <p class="help-block">Le mot de passe doit contenir au moins 4 caractères</p>
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
                                                                    <input type="hidden" name="action" value="add">
                                                                    <button type="submit" class="btn btn-success">S'inscrire</button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li><a href="#" data-toggle="modal" data-target="#user">Bonjour ${utilisateur.getPrenom()} ${utilisateur.getNom()}</a>
                                        <!-- Modal -->
                                        <div class="modal fade" id="user" role="dialog">
                                            <div class="modal-dialog">
                                                <!-- Modal content-->
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <div class="panel-heading">
                                                            <div class="panel-title pull-left">Bonjour ${utilisateur.getPrenom()} ${utilisateur.getNom()}</div>
                                                            <div class="pull-right">
                                                                <button aria-hidden="true" data-dismiss="modal" class="close btn btn-xs " type="button"> <i class="fa fa-times"></i> </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="col-sm-12 controls"><a class="btn btn-primary btn-small " href="/client"> Voir mon compte &nbsp; <i class="fa fa-check"></i> </a></div>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="post" action="/clientLogin">
                                                            <input type="hidden" name="action" value="deconnexion">
                                                            <input type="hidden" name="urlPage" value="${urlPage}">
                                                            <div class="col-sm-12 controls"><button type="submit" class="btn btn-default btn-topvente">Se déconnecter</button></div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="col-sm-12 controls"><button type="submit" class="btn btn-default btn-topvente"></button></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="header-mid">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 header-left">
                        <div class="logo"> <a href="/"><img src="images/logo.png" alt="#"></a> </div>
                    </div>
                    <div class="col-md-6 search_block">
                        <div class="search">
                            <form action="/list-view">
                                <div class="search_cat">
                                    <select class="search-category" name="search-category">
                                        <option class="computer" selected>Toutes les catégories</option>
                                        <c:forEach items="${ listeCategorie }" var="categorie">
                                            <option class="computer">${categorie.getNom()}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="fa fa-angle-down"></span> </div>
                                <input type="text" placeholder="Rechercher...">
                                <button type="submit" class="btn submit"> <span class="fa fa-search"></span></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3 header-right">
                        <div class="cart">
                            <div class="cart-icon dropdown"></div>
                            <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="/cart">
                                Mon Panier (
                                <c:choose>
                                    <c:when test="${listPanierHeader.size() != 0}">
                                        ${listPanierHeader.size()} )<span> <fmt:formatNumber type="number" pattern="###.##" value="${totalpanierHeader}"/> €</span>
                                    </c:when>
                                    <c:otherwise>
                                        0 )<span> 0 €</span>
                                    </c:otherwise>
                                </c:choose>
                            </a>
                            <ul class="dropdown-menu pull-right cart-dropdown-menu">
                                <li>
                                    <table class="table table-striped">
                                        <tbody>
                                        <c:forEach items="${listPanierHeader}" var="panier">
                                            <tr>
                                                <td class="text-center"><a href="/detail_produit?id=${panier.getProduit().getId()}"><img class="img-thumbnail" src="${panier.getProduit().getUrl_photo()}" alt="img"></a></td>
                                                <td class="text-left"><a href="/detail_produit?id=${panier.getProduit().getId()}">${panier.getProduit().getNom()}</a></td>
                                                <td class="text-right quality">X ${panier.getQtt()}</td>
                                                <c:choose>
                                                    <c:when test="${panier.getProduit().getPromo() != 0}">
                                                        <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getProduit().getPrix() - (panier.getProduit().getPrix() * panier.getProduit().getPromo())/100}" /> €</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getProduit().getPrix()}"/> €</td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td class="text-center"><button type="button" title="Remove" class="btn btn-xs remove"><i class="fa fa-times"></i></button></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </li>
                                <li>
                                    <div class="minitotal">
                                        <table class="table pricetotal">
                                            <tbody>
                                            <tr>
                                                <td class="text-right"><strong>Sous Total</strong></td>
                                                <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${totalpanierHeader - (totalpanierHeader * 20 / 100)}"/> €</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>TVA (20%)</strong></td>
                                                <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${totalpanierHeader * 20 / 100}"/> €</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right"><strong>Total</strong></td>
                                                <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${totalpanierHeader}"/> €</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <div class="controls"> <a class="btn btn-primary pull-left" href="/cart" id="view-cart"><i class="fa fa-shopping-cart"></i> Voir mon panier </a> <c:if test="${listPanierHeader.size() != 0}"><a class="btn btn-primary pull-right" href="/checkoutStep1" id="checkout"><i class="fa fa-share"></i> Paiement</a> </c:if></div>
                                    </div>
                                </li>
                            </ul>
                        </div><!-- END DIV CART -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->

    <!-- Main menu Start -->
    <div id="main-menu">
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="navbar-header">
                    <button aria-controls= "navbar" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a href="#" class="navbar-brand">menu</a> </div>
                <div class="navbar-collapse collapse" id="navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="/">Accueil</a></li>
                        <c:forEach items="${ listeCategorie }" var="categorie">
                            <li><a href="/list-view?id=${categorie.getId()}">${categorie.getNom()}</a></li>
                        </c:forEach>
                        </li>
                        <li><a href="/contact">Contactez-nous</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <!-- Main menu End -->