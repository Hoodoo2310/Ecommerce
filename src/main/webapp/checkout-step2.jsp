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
            <h4>Mode de livraison</h4>
          </div>
        </div>
        <div class="col-md-7 col-sm-7 col-xs-7">
          <div class="bread-crumb">
            <ul>
              <li><a href="index.html">Accueil </a></li>
              <li>\</li>
              <li><a href="cart.html"> Panier </a></li>
              <li>\</li>
              <li><a href="checkout-step2.jsp"> Mode de livraison</a></li>
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
              <div class="checkout-stap active">
                <div class="title"><span class="stap">2 </span><a href="/checkoutStep2">Mode de livraison</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap">
                <div class="title"><span class="stap">3 </span><a href="#">Mode de paiement</a></div>
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
          <h2 class="delivery-method tf"> Choisissez votre mode de livraison </h2>
        </div>
        <div class="col-xs-12 col-sm-12">
          <div class="row">
            <div class="form-group col-lg-12 col-sm-12 col-md-12 -col-xs-12">
              <table class="table-bordered table">
                <tbody>
                  <tr>
                    <td>Transporteur</td>
                    <td>Méthode</td>
                    <td>Information</td>
                    <td>Prix!</td>
                  </tr>
                  <tr>
                    <td><div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios1" value="retrait" >
                          <i class="fa fa-shopping-cart fa-2x"></i> </label>
                      </div></td>
                    <td>Retrait en magasin</td>
                    <td>1 rue de la Paix, 75002 Paris</td>
                    <td>Gratuit!</td>
                  </tr>
                  <tr>
                    <td><div class="radio">
                        <label>
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="livraison" >
                          <i class="fa fa-truck fa-2x"></i> </label>
                      </div></td>
                    <td>Livraison</td>
                    <td>Adresse de livraison</td>
                    <td>20 €</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <div class="cart-bottom">
            <div class="box-footer">
              <div class="pull-left"><a href="/checkoutStep1" class="btn btn-default"> <i class="fa fa-arrow-left"></i> &nbsp; Adresse de livraison </a></div>
              <div class="pull-right"><a class="btn btn-primary btn-small " href="/checkoutStep3"> Méthode de paiement&nbsp; <i class="fa fa-arrow-circle-right"></i> </a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@ include file="headerFooter/footer.jsp"%>