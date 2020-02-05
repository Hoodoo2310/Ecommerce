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
                        <h4>Mon Panier</h4>
                    </div>
                </div>
                <div class="col-md-9 col-sm-9 col-xs-9">
                    <div class="bread-crumb">
                        <ul>
                            <li><a href="/">Accueil</a></li>
                            <li>\</li>
                            <li><a href="/cart">Panier</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- bredcrumb and page title block end  -->

    <div id="cart-page-contain">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-xs-12">
                    <!-- left block Start  -->
                    <form method="post" action="/cart">
                        <div class="cart-content table-responsive">
                            <table class="cart-table table-responsive" style="width:100%">
                                <tbody>
                                <tr class="Cartproduct carttableheader">
                                    <td style="width:15%">Produit</td>
                                    <td style="width:45%">Nom</td>
                                    <td style="width:45%">Prix</td>
                                    <td style="width:10%">Quantité</td>
                                    <td style="width:5%">Promo</td>
                                    <td style="width:15%">Total</td>
                                    <td class="delete" style="width:10%">&nbsp;</td>
                                </tr>
                                <c:forEach items="${listPanier}" var="panier">
                                    <tr class="Cartproduct">
                                        <td ><div class="image"><a href="/detail_produit?id=${panier.getProduit().getId()}"><img alt="img" src="${panier.getProduit().getUrl_photo()}"></a></div></td>
                                        <td><div class="product-name">
                                            <h4><a href="/detail_produit?id=${panier.getProduit().getId()}">${panier.getProduit().getNom()} </a></h4>
                                        </div>
                                            <c:choose>
                                                <c:when test="${panier.getProduit().getPromo() != 0}">
                                                    <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getProduit().getPrix() - (panier.getProduit().getPrix() * panier.getProduit().getPromo())/100}" /> €</td>
                                                </c:when>
                                                <c:otherwise>
                                                    <td class="text-right price-new"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getProduit().getPrix()}"/> €</td>
                                                </c:otherwise>
                                            </c:choose>
                                        <td class="product-quantity"><div class="quantity">
                                            <input type="number" size="4" class="input-text qty text" title="Qty" value="${panier.getQtt()}" name="cart" min="0" step="1">
                                        </div></td>
                                        <td>${panier.getProduit().getPromo()} %</td>
                                        <c:choose>
                                            <c:when test="${panier.getProduit().getPromo() != 0}">
                                                <td class="price"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getQtt() * (panier.getProduit().getPrix() - (panier.getProduit().getPrix() * panier.getProduit().getPromo())/100)}" /> €</td>
                                            </c:when>
                                            <c:otherwise>
                                                <td class="price"><fmt:formatNumber type="number" pattern="###.##" value="${panier.getQtt() * panier.getProduit().getPrix()}"/> €</td>
                                            </c:otherwise>
                                        </c:choose>
                                        <td>
                                            <form method="post" action="/cart">
                                                <input type="hidden" name="action" value="deletePanier">
                                                <input type="hidden" name="idProd" value="${panier.getProduit().getId()}">
                                                <button type="submit" class="btn btn-default btn-delete-panier"><span class="glyphicon glyphicon-trash "></span></button>
                                            </form>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="cart-bottom">
                            <div class="box-footer">
                                <div class="pull-left"><a class="btn btn-default" href="/"> <i class="fa fa-arrow-left"></i> &nbsp; Continuer mes achats </a></div>
                                <div class="pull-right">
                                    <input type="hidden" name="action" value="updatePanier">
                                    <button class="btn btn-default" type="submit"><i class="fa fa-undo"></i> &nbsp; Mise à jour panier</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- left block end  -->
                </div>
                <div class="col-md-3 col-xs-12">
                    <!-- right block Start  -->
                    <div id="right">
                        <div class="sidebar-block">
                            <div class="sidebar-widget">
                                <div class="sidebar-title">
                                    <h4>Cart Summary</h4>
                                </div>
                                <div id="order-detail-content" class="title-toggle table-block">
                                    <div class="carttable">
                                        <table class="table" id="cart-summary">
                                            <tbody>
                                            <tr>
                                                <td>Total HT</td>
                                                <td class="price"><fmt:formatNumber type="number" pattern="###.##" value="${total - (total * 20 / 100)}"/> €</td>
                                            </tr>
                                            <tr class="cart-total-price ">
                                                <td>Total (TTC)</td>
                                                <td class="price"><fmt:formatNumber type="number" pattern="###.##" value="${total}"/> €</td>
                                            </tr>
                                            <tr>
                                                <td>Total TVA</td>
                                                <td id="total-tax" class="price"><fmt:formatNumber type="number" pattern="###.##" value="${total * 20 / 100}"/> €</td>
                                            </tr>
                                            <tr>
                                                <td>Livraison</td>
                                                <td class="price"><span class="success">20 €</span></td>
                                            </tr>
                                            <tr>
                                                <td> Total</td>
                                                <td id="total-price"><fmt:formatNumber type="number" pattern="###.##" value="${total + 20}"/> €</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${listPanier.size() != 0}">
                                <div class="checkout"> <a href="/checkoutStep1" title="checkout" class="btn btn-default ">Procéder au paiement</a> </div>
                            </c:if>
                        </div>
                    </div>
                    <!-- left block end  -->
                </div>
            </div>
        </div>
    </div>

<%@ include file="headerFooter/footer.jsp"%>