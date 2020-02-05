<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="headerFooter/header.jsp"%>

<!-- bredcrumb and page title block start  -->
<div id="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">
                <div class="page-title">
                    <h4>Contactez-nous</h4>
                </div>
            </div>
            <div class="col-md-9 col-sm-9 col-xs-9">
                <div class="bread-crumb">
                    <ul>
                        <li><a href="/">Accueil</a></li>
                        <li>\</li>
                        <li><a href="contact-us.html">Contactez-nous</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bredcrumb and page title block end  -->

<div id="contact-page-contain">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12">
                <div class="map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.4566444531342!2d2.3280719150408884!3d48.868570779288476!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66e31bb649637%3A0xc231c2c26c37df78!2s1%20Rue%20de%20la%20Paix%2C%2075002%20Paris!5e0!3m2!1sfr!2sfr!4v1579207178147!5m2!1sfr!2sfr" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <div class="contact-title">
                    <h2 class="tf">Contact</h2>
                    <p class="text-center">N'hésitez pas à nous contacter pour tout renseignement. Nous vous répondrons dans les plus bref délais. </p>
                </div>
            </div>
        </div>
        <div class="contact-submit">
            <form method="post" action="/contact">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="input-group">
                            <input type="text" class="form-control" name="nom" placeholder="Nom de famille *" required>
                        </div>
                        <!-- /input-group -->
                        <div class="input-group">
                            <input type="email" class="form-control" name="email" placeholder="E-mail *" required>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class="input-group">
                            <input type="text" class="form-control" name="prenom" placeholder="Prénom *" required>
                        </div>
                        <!-- /input-group -->
                        <div class="input-group">
                            <input type="text" class="form-control" name="objet" placeholder="Objet *" required>
                        </div>
                        <!-- /input-group -->
                    </div>
                    <div class="col-md-12">
                        <div class="input-group">
                            <textarea class="form-control" name="message" id="textarea_message" placeholder="Message *"></textarea>
                        </div>
                        <div class="col-md-12 text-center">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-envelope-o"></i> Envoyer </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="address">
                    <h2 class="tf"><i class="fa fa-map-marker"></i></h2>
                    <div class="address-info">JD Discount 1 rue de la paix ,Paris, FRANCE </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="complaint">
                    <h2 class="tf"><i class="fa fa-mobile"></i></h2>
                    <div class="call-info">+33 (0)1 02 03 04 05<br>
                        <span>+33 (0)6 05 04 03 02</span> </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="feedback">
                    <h2 class="tf"><i class="fa fa-envelope"></i></h2>
                    <div class="email-info"> <a href="#">support@jd-discount.com</a><br>
                        <span><a href="#">info@jd-discount.com</a></span></div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@ include file="headerFooter/footer.jsp"%>