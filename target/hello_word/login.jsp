<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- bredcrumb and page title block start  -->
<div id="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="page-title">
                    <h4>Authentification</h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="bread-crumb">
                    <ul>
                        <li><a href="/">Accueil</a></li>
                        <li>\</li>
                        <li><a href="/clientLogin">Authentification</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bredcrumb and page title block end  -->

<div id="blog-page-contain">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12  col-sm-12 Authentication">
                <h2 class="Authentication-title tf"> ${msgError}</h2>
                <h2 class="Authentication-title tf"> Authentification</h2>
                <div class="row">
                    <div class="col-xs-12 col-sm-4 ">
                        <h4 class="block-title-2"> Créer un compte </h4>
                        <form method="post" action="/clientLogin" class="account-creat">
                            <div class="form-group">
                                <input type="text" name="nom" placeholder="Entez votre nom" id="exampleInputName" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="text" name="prenom" placeholder="Entez votre prenom" id="exampleInputPrenom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" placeholder="Entrez votre email" id="InputEmail1" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" placeholder="Entrez votre mot de passse" id="InputPassword1" class="form-control">
                            </div>
                            <input type="hidden" name="action" value="add">
                            <button class="btn   btn-primary" type="submit"><i class="fa fa-user"></i> Créer un compte</button>
                        </form>
                    </div>
                    <div class="col-xs-12 col-sm-4 ">
                        <h4 class="block-title-2"><span>Déjà inscrit ?</span></h4>
                        <form method="post" action="/clientLogin" class="registered">
                            <div class="form-group">
                                <input type="email" name="email" placeholder="Entrez votre email" id="InputEmail2" class="form-control">
                            </div>
                            <div class="form-group">
                                <input type="password" name="mdp" placeholder="Entrer votre mot de passe" id="InputPassword2" class="form-control">
                            </div>
                            <div class="checkbox">
                                <label class="">
                                    <input type="checkbox" name="vehicle" value="Bike">
                                    Se souvenir de moi </label>
                            </div>
                            <div class="forgot-password">
                                <p><a href="forgot-password.html" title="Recover your forgotten password">Mot de passe oublié ? </a></p>
                            </div>
                            <input type="hidden" name="action" value="connexion">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-sign-in"></i> Se connecter</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="headerFooter/footer.jsp"%>