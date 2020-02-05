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
            <h4>Order</h4>
          </div>
        </div>
        <div class="col-md-7 col-sm-7 col-xs-7">
          <div class="bread-crumb">
            <ul>
              <li><a href="/">Accueil</a></li>
              <li>\</li>
              <li><a href="/cart">Panier</a></li>
              <li>\</li>
              <li><a href="/checkoutStep4">Confirmation</a></li>
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
              <div class="checkout-stap ">
                <div class="title"> <span class="stap">1 </span><a href="/checkoutStep1">Adresse de facturation et d'expédition</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap ">
                <div class="title"><span class="stap">2 </span><a href="/checkoutStep2">Mode de livraison</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap">
                <div class="title"><span class="stap">3 </span><a href="/checkoutStep3">Mode de Paiement</a></div>
              </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="checkout-stap active">
                <div class="title"><span class="stap">4 </span><a href="/checkoutStep4">Confirmation</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <h2 class="delivery-method tf">Résumé de la commande</h2>
        </div>
        <div class="col-md-12">
          <div class="cart-content table-responsive">
            <table class="cart-table ">
              <tbody>
                <tr class="Cartproduct carttableheader">
                  <td style="width:10%"> Produit</td>
                  <td style="width:45%">Détails</td>
                  <td style="width:10%">QTT</td>
                  <td style="width:5%">Promo</td>
                  <td style="width:15%">Total</td>
                  <td class="delete" style="width:10%">&nbsp;</td>
                </tr>
                <tr class="Cartproduct">
                  <td ><div class="image"><a href="product-details.html"><img alt="img" src="images/product/cart70x92.jpg"></a></div></td>
                  <td><div class="product-name">
                      <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
                    </div>
                    <span class="size">24 x 2.3 M</span>
                    <div class="price"><span>$8.80</span></div></td>
                  <td class="product-quantity"><div class="quantity">
                      <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="cart" min="0" step="1">
                    </div></td>
                  <td>0</td>
                  <td class="price">$300</td>
                  <td class="delete"><a title="Delete"> <i class="glyphicon glyphicon-trash "></i></a></td>
                </tr>
                <tr class="Cartproduct">
                  <td ><div class="image"><a href="product-details.html"><img alt="img" src="images/product/cart2-70x92.jpg"></a></div></td>
                  <td><div class="product-name">
                      <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
                    </div>
                    <span class="size">24 x 2.3 M</span>
                    <div class="price"><span>$8.80</span></div></td>
                  <td class="product-quantity"><div class="quantity">
                      <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="cart" min="0" step="1">
                    </div></td>
                  <td>0</td>
                  <td class="price">$300</td>
                  <td class="delete"><a title="Delete"> <i class="glyphicon glyphicon-trash"></i></a></td>
                </tr>
                <tr class="Cartproduct">
                  <td ><div class="image"><a href="product-details.html"><img alt="img" src="images/product/car3-70x92.jpg"></a></div></td>
                  <td><div class="product-name">
                      <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
                    </div>
                    <span class="size">24 x 2.3 M</span>
                    <div class="price"><span>$8.80</span></div></td>
                  <td class="product-quantity"><div class="quantity">
                      <input type="number" size="4" class="input-text qty text" title="Qty" value="1" name="cart" min="0" step="1">
                    </div></td>
                  <td>0</td>
                  <td class="price">$300</td>
                  <td class="delete"><a title="Delete"> <i class="glyphicon glyphicon-trash "></i></a></td>
                </tr>
                <tr class="cart-detail">
                  <td colspan="4">Total products</td>
                  <td colspan="2" class="price">$216.51</td>
                </tr>
                <tr class="cart-detail">
                  <td colspan="4">Shipping</td>
                  <td colspan="2" class="price"><span class="success">Free shipping!</span></td>
                </tr>
                <tr class="cart-detail cart-total-price ">
                  <td colspan="4" >Total (tax excl.)</td>
                  <td colspan="2" class="price">$216.51</td>
                </tr>
                <tr class="cart-detail">
                  <td colspan="4">Total tax</td>
                  <td colspan="2" class="price" id="total-tax">0.00</td>
                </tr>
                <tr class="cart-detail">
                  <td colspan="4"> Total</td>
                  <td colspan="2" class="price" id="total-price">$216.51</td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="col-xs-12 col-sm-12">
          <div class="cart-bottom">
            <div class="box-footer">
              <div class="pull-left"><a href="checkout-step3.jsp" class="btn btn-default"> <i class="fa fa-arrow-left"></i> &nbsp; Payment Method </a></div>
              <div class="pull-right"> <a class="btn btn-primary btn-small " href="thanks-for-order.html"> Confirm Order &nbsp; <i class="fa fa-check"></i> </a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<%@ include file="headerFooter/footer.jsp"%>