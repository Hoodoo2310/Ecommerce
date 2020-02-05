<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="headerFooter/header.jsp"%>

  <!-- bredcrumb and page title block start  -->
  <div id="bread-crumb">
    <div class="container">
      <div class="row">
        <div class="col-md-5 col-sm-5 col-xs-5">
          <div class="page-title">
            <h4>Payment method</h4>
          </div>
        </div>
        <div class="col-md-7 col-sm-7 col-xs-7">
          <div class="bread-crumb">
            <ul>
              <li><a href="/">Accueil</a></li>
              <li>\</li>
              <li><a href="/cart"> Panier </a></li>
              <li>\</li>
              <li><a href="/checkoutStep3"> Mode de Paiement</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- bredcrumb and page title block end  -->
  
  <div id="checkout-step-contain">
    <div class="container">
      <div class="account-content checkout-staps">
        <div class="staps">
          <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap">
                <div class="title"> <span class="stap">1 </span><a href="/checkoutStep1">Adresse de facturation et d'expédition</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap">
                <div class="title"><span class="stap">2 </span><a href="/checkoutStep2">Mode de livraison</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap active">
                <div class="title"><span class="stap">3 </span><a href="/checkoutStep3">Mode de Paiement</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap">
                <div class="title"><span class="stap">4 </span><a href="#">Confirmation</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <h2 class="delivery-method tf"> Choisissez votre moyen de paiement </h2>
        </div>
        <div class="col-xs-12 col-sm-12">
          <div class="paymentBox">
            <div class="accordion">
              <div class="accordion-section"> <a href="#accordion-1" class="accordion-section-title"> Paiement en espèce à la livraison</a>
                <div id="accordion-1" class="accordion-section-content open" style="display: block;">
                  <div class="panel-collapse collapse in" id="collapseOne">
                    <div class="panel-body">
                      <p>Toutes les transactions sont sécurisées et cryptées. Pour en savoir plus, veuillez consulter notre politique de confidentialité</p>
                      <br>
                      <div class="radio">
                        <label>
                          <input type="radio" value="option1" id="optionsRadios1" name="espece">
                          Paiement en espèce à la livraison </label>
                      </div>
                      <div class="form-group">
                        <label for="CommentsOrder">Ajouter un commentaire à votre commande</label>
                        <textarea rows="3" cols="26" name="CommentsOrder" class="form-control" id="CommentsOrder"></textarea>
                      </div>
                      <div class="form-group clearfix">
                        <div class="checkbox">
                          <label>
                            <input type="checkbox" value="">
                            J'ai lu et accepte les <a href="/termsConditions">Termes &amp; Conditions</a> </label>
                        </div>
                      </div>
                      <div class="pull-right"><a class="btn btn-large btn-primary" href="/checkoutStep4"> Confirmation&nbsp;<i class="fa fa-arrow-right"></i> </a></div>
                    </div>
                  </div>
                </div>
                <!--end .accordion-section-content--> 
              </div>
              <!--end .accordion-section-->
              <div class="accordion-section"> <a href="#accordion-2" class="accordion-section-title">PayPal</a>
                <div style="display: none;" class="accordion-section-content" id="accordion-2">
                  <div class="panel-body">
                    <p>Toutes les transactions sont sécurisées et cryptées. Pour en savoir plus, veuillez consulter notre politique de confidentialité.</p>
                    <br>
                    <label class="checkbox-inline">
                      <input type="checkbox" value="1" >
                      Payer avec Paypal</label>
                    <div class="form-group">
                      <label for="CommentsOrder2">Ajouter un commentaire à votre commande</label>
                      <textarea rows="3" cols="26" name="CommentsOrder2" class="form-control" id="CommentsOrder2"></textarea>
                    </div>
                    <div class="form-group clearfix">
                      <label class="checkbox-inline" >
                        <input type="checkbox" value="1">
                        J'ai lu et accepte les <a href="/termsConditions">Termes &amp; Conditions</a></label>
                    </div>
                    <div class="pull-right"><a class="btn btn-large btn-primary" href="/checkoutStep4"> Confirmation&nbsp;<i class="fa fa-arrow-right"></i> </a></div>
                  </div>
                </div>
                <!--end .accordion-section-content--> 
              </div>
              <!--end .accordion-section-->
              <div class="accordion-section"> <a href="#accordion-3" class="accordion-section-title active">Carte Bancaire</a>
                <div style="display: none;" class="accordion-section-content " id="accordion-3">
                  <div class="panel-body">
                    <p>Toutes les transactions sont sécurisées et cryptées. Pour en savoir plus, veuillez consulter notre politique de confidentialité.</p>
                    <br>
                    <div class=" open">
                      <div class="creditCard">
                        <label for="CardNumber">Numéro de carte bancaire *</label>
                        <input type="text" name="Number" id="CardNumber">
                      </div>
                      <div class="paymentInput">
                        <label for="CardNumber2">Nom sur la carte de crédit *</label>
                        <input type="text" id="CardNumber2" name="CardNumber2">
                      </div>
                      <div class="paymentInput">
                        <div class="form-group">
                          <label>Date d'expiration *</label>
                          <select name="expire" aria-required="true" class="form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                            <option value="">Mois</option>
                            <option value="1">01 - January</option>
                            <option value="2">02 - February</option>
                            <option value="3">03 - March</option>
                            <option value="4">04 - April</option>
                            <option value="5">05 - May</option>
                            <option value="6">06 - June</option>
                            <option value="7">07 - July</option>
                            <option value="8">08 - August</option>
                            <option value="9">09 - September</option>
                            <option value="10">10 - October</option>
                            <option value="11">11 - November</option>
                            <option value="12">12 - December</option>
                          </select>
                          <select name="year" aria-required="true" class="form-control select2-hidden-accessible" tabindex="-1" aria-hidden="true">
                            <option value="">Année</option>
                            <option value="2013">2013</option>
                            <option value="2014">2014</option>
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                            <option value="2020">2020</option>
                            <option value="2021">2021</option>
                            <option value="2022">2022</option>
                            <option value="2023">2023</option>
                            <option value="2024">2024</option>
                            <option value="2025">2025</option>
                            <option value="2026">2026</option>
                          </select>
                        </div>
                      </div>
                      <div class="paymentInput clearfix">
                        <label for="VerificationCode">Code de vérification
                          *</label>
                        <input type="text" style="width:90px;" name="VerificationCode" id="VerificationCode">
                      </div>
                      <div>
                        <input type="checkbox" id="saveInfoid">
                        <label for="saveInfoid" class="saveinfo">&nbsp;Sauvegarder les infos de ma carte</label>
                      </div>
                    </div>
                    <div class="pull-right"><a class="btn btn-large btn-primary" href="/checkoutStep4"> Confirmation&nbsp;<i class="fa fa-arrow-right"></i> </a></div>
                  </div>
                </div>
                <!--end .accordion-section-content--> 
              </div>
              <!--end .accordion-section--> 
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@ include file="headerFooter/footer.jsp"%>