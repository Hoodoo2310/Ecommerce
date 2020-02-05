<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<% pageContext.setAttribute("newLineChar", "\n"); %>
<% pageContext.setAttribute("newLineHtml", "<br/>"); %>

<%@ include file="headerFooter/header.jsp"%>

<!-- bredcrumb and page title block start  -->
<div id="bread-crumb">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-3 col-xs-3">
                <div class="page-title">
                    <h4>${categorie.getNom()}</h4>
                </div>
            </div>
            <div class="col-md-9 col-sm-9 col-xs-9">
                <div class="bread-crumb">
                    <ul>
                        <li><a href="/">Accueil</a></li>
                        <li>\</li>
                        <li><a href="/liste-marque?marque=${marque}">${marque}</a></li>
                        <li><a href="list-view?id=${categorie.getId()}">${categorie.getNom()}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bredcrumb and page title block end  -->

<!-- left colunm and right colunm block end  -->
<div id="product-category">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <%@ include file="headerFooter/topVente.jsp"%>
            </div>
            <!-- right block Start  -->
            <div class="col-md-9  col-sm-8">
                <div id="right">
                    <div class="category-banner">  </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="shoring pull-right">
                                <div class="short-by">
                                    <p>Trier par</p>
                                    <div class="select-item">
                                        <select>
                                            <option value="" selected="selected">Nom (A to Z)</option>
                                            <option value="">Nom(Z - A)</option>
                                            <option value="">Prix(Croissant)</option>
                                            <option value="">Prix(Décroissant)</option>
                                            <option value="">Avis(highest)</option>
                                            <option value="">Avis(lowest)</option>
                                        </select>
                                        <span class="fa fa-angle-down"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-list-view">
                        <ul>
                            <c:forEach items="${ listProdByMarque }" var="produit">
                                <li>
                                    <div class="product-block ">
                                        <div class="item col-md-4 col-sm-6 col-xs-4">
                                            <div class="image"> <a href="/detail_produit?id=${produit.getId()}&id_cat=${produit().getCategorie().getId()}"><img class="img-responsive" title="${produit.getNom()}" alt="${produit.getNom()}" src="${produit.getUrl_photo()}"></a> </div>
                                        </div>
                                        <div class="item col-md-8 col-sm-6 col-xs-8">
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="/detail_produit?id=${produit.getId()}&id_cat=${produit().getCategorie().getId()}">${produit.getNom()} </a></h4>
                                                </div>
                                                <div class="review">
                                                    <span class="rate">
                                                        <i class="fa fa-star rated"></i>
                                                        <i class="fa fa-star rated"></i>
                                                        <i class="fa fa-star rated"></i>
                                                        <i class="fa fa-star rated"></i>
                                                        <i class="fa fa-star"></i>
                                                    </span>
                                                        ${produit.getListAvis().size()} Avis | <a href="#" data-toggle="modal" data-target="#avis">Ajouter votre avis </a>
                                                    <div class="modal fade" id="avis" role="dialog">
                                                        <c:choose>
                                                            <c:when test="${connect == null}">
                                                                <div class="modal-dialog">
                                                                    <!-- Modal content-->
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <div class="panel-heading">
                                                                                <div class="panel-title pull-left">Donner son avis</div>
                                                                                <div class="pull-right">
                                                                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button"><i class="fa fa-times"></i> </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <div class="control-group">
                                                                                <div class="controls">Merci de bien vouloir vous connecter ou créer un compte avant de laisser un avis</div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class="modal-dialog">
                                                                    <!-- Modal content-->
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <div class="panel-heading">
                                                                                <div class="panel-title pull-left">Donner son avis</div>
                                                                                <div class="pull-right">
                                                                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button"><i class="fa fa-times"></i> </button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <form method="post" action="/detail_produit">
                                                                                <div class="control-group">
                                                                                    <!-- Note -->
                                                                                    <label class="control-label"  for="note">Note</label>
                                                                                    <div class="controls">
                                                                                        <input type="number" step=".1" id="note" name="note" placeholder="Veuillez entrer la note que vous donnez" class="input-xlarge">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="control-group">
                                                                                    <!-- Avis -->
                                                                                    <label class="control-label"  for="addAvis">Avis</label>
                                                                                    <div class="controls">
                                                                                        <textarea type="text" id="addAvis" name="avis" placeholder="Merci de donner votre avis" class="input-xlarge"></textarea>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="control-group">
                                                                                    <!-- Button -->
                                                                                    <div class="controls">
                                                                                        <input type="hidden" name="action" value="addAvis">
                                                                                        <button type="submit" class="btn btn-success">Donner son avis</button>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </div>
                                                <c:choose>
                                                    <c:when test="${produit.getPromo() != 0}">
                                                        <div class="price"> <span class="price-old"><fmt:formatNumber type="number" pattern="###.##" value="${produit.getPrix()}"/> €</span> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${produit.getPrix() - (produit.getPrix() * produit.getPromo())/100}" /> €</span> </div>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <div class="price"> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${produit.getPrix()}"/> €</span> </div>
                                                    </c:otherwise>
                                                </c:choose>
                                                <div class="product-discription">
                                                    <p>${fn:replace(produit.getMini_desc(), newLineChar, newLineHtml )}</p>
                                                </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="addtocart"><a href="#">Ajouter au panier</a> </li>
                                                    </ul>
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
            <!-- right block end  -->
        </div>
    </div>
</div>
<!-- left colunm and right colunm block block end  -->

<%@ include file="headerFooter/footer.jsp"%>
