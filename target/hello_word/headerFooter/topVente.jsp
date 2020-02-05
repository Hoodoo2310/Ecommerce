<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<!-- left block Start  -->
<div id="left">
    <div class="sidebar-block">
        <div class="sidebar-widget Category-block">
            <div class="sidebar-title">
                <h4> Categories</h4>
            </div>
            <ul class="title-toggle">
                <c:forEach items="${ listeCategorie }" var="categorie">
                    <li><a href="/list-view?id=${categorie.getId()}">${categorie.getNom()}</a></li>
                </c:forEach>
            </ul>
        </div>

        <div class="sidebar-widget Best-Products-block">
            <div class="sidebar-title">
                <h4> Top des Ventes</h4>
            </div>
            <ul class="title-toggle">
                <c:forEach items="${ listeTopVente }" var="topVente">
                    <li>
                        <div class="product-block ">
                            <div class="item col-md-4 col-sm-4 col-xs-4">
                                <div class="image"> <a href="/detail_produit?id=${topVente.getProduit().getId()}"><img class="img-responsive" src="${topVente.getProduit().getUrl_photo()}"></a> </div>
                            </div>
                            <div class="item col-md-8 col-sm-8 col-xs-8">
                                <div class="product-details">
                                    <div class="product-name">
                                        <h5><a href="/detail_produit?id=${topVente.getProduit().getId()}&id_cat=${topVente.getProduit().getCategorie().getId()}"><p class="info">${topVente.getProduit().getNom()}</p></a></h5>
                                    </div>
                                    <div class="review"></div>
                                    <c:choose>
                                        <c:when test="${topVente.getProduit().getPromo() != 0}">
                                            <div class="price"> <span class="price-old"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix()}"/> €</span> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix() - (topVente.getProduit().getPrix() * topVente.getProduit().getPromo())/100}" /> €</span> </div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="price"> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix()}"/> €</span> </div>
                                        </c:otherwise>
                                    </c:choose>
                                    <div class="addto-cart">
                                        <c:choose>
                                            <c:when test="${topVente.getProduit().getQuantite() != 0}">
                                                <form method="post" action="/cart">
                                                    <input type="hidden" name="idProd" value="${topVente.getProduit().getId()}">
                                                    <input type="hidden" name="action" value="addPanier">
                                                    <input type="hidden" name="qty" value="1">
                                                    <button type="submit" class="btn btn-default btn-topvente">Au panier</button>
                                                </form>
                                            </c:when>
                                            <c:otherwise>
                                                <button class="btn btn-default btn-topvente">Indisponible</button>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>
<!-- left block end  -->
