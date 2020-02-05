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
            <div class="col-md-3">
                <div class="page-title">
                    <h4>${produit.getCategorie().getNom()}</h4>
                </div>
            </div>
            <div class="col-md-9">
                <div class="bread-crumb">
                    <ul>
                        <li><a href="/">Accueil</a></li>
                        <li>\</li>
                        <li><a href="/list-view?id=${produit.getCategorie().getId()}">${produit.getCategorie().getNom()}</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- bredcrumb and page title block end  -->

<div id="product-category">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-4">
                <%@ include file="headerFooter/topVente.jsp"%>
            </div>
            <div class="col-md-9 col-sm-8">
                <!-- right block Start  -->
                <div id="right">
                    <div class="product-detail-view">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="sp-loading"><img src="${produit.getUrl_photo()}" alt=""><br>
                                    LOADING IMAGES</div>
                                <div class="sp-wrap">
                                    <c:forEach items="${ produit.getListPhotos() }" var="photo">
                                        <a class="item" href="${photo.getUrl_photo()}"><img src="${photo.getUrl_photo()}" alt=""></a>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="product-detail-content">
                                    <div class="product-name">
                                        <h4>${produit.getNom()}</h4>
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
                                    <div class="stock">
                                        <span>Stock : </span>
                                        <c:choose>
                                            <c:when test="${produit.getQuantite() != 0}">
                                                Disponible
                                            </c:when>
                                            <c:otherwise>
                                                Non Disponible
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="products-code"> <span>Marque :</span> ${produit.getMarque()}</div>
                                    <div class="product-discription"><span>Description</span>
                                        <p>${fn:replace(produit.getMini_desc(), newLineChar, newLineHtml )} </p>
                                    </div>
                                    <c:choose>
                                        <c:when test="${produit.getQuantite() != 0}">
                                            <form method="post" action="/cart">
                                                <div class="product-qty">
                                                    <label for="qty">Quantité :</label>
                                                    <div class="custom-qty">
                                                        <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;" class="reduced items" type="button"> <i class="fa fa-minus"></i> </button>
                                                        <input type="text" class="input-text qty" title="Qty" value="1" maxlength="8" id="qty" name="qty">
                                                        <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items" type="button"> <i class="fa fa-plus"></i> </button>
                                                    </div>
                                                </div>
                                                <div class="add-to-cart">
                                                    <input type="hidden" name="idProd" value="${produit.getId()}">
                                                    <input type="hidden" name="action" value="addPanier">
                                                    <button type="submit" class="btn btn-default">Ajouter au panier</button>
                                                </div>
                                            </form>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="product-qty">
                                                <label for="qty">Quantité :</label>
                                                <div class="custom-qty">
                                                    <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;" class="reduced items" type="button"> <i class="fa fa-minus"></i> </button>
                                                    <input type="text" class="input-text qty" title="Qty" value="1" maxlength="8" id="qty2" name="qty" disabled>
                                                    <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items" type="button"> <i class="fa fa-plus"></i> </button>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <button type="submit" class="btn btn-default" disabled>Ajouter au panier</button>
                                            </div>
                                        </c:otherwise>
                                    </c:choose>
                                    <ul class="add-links">
                                        <li> <a class="add-to-wishlist" href="#"> <i class="fa fa-heart-o"></i> Ajouter à la liste de souhait </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product-detail-tab">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="tabs">
                                    <ul class="nav nav-tabs">
                                        <li><a class="tab-Description selected" title="Description">Description</a></li>
                                        <li><a class="tab-Reviews" title="Reviews">Avis</a></li>
                                    </ul>
                                </div>
                                <div id="items">
                                    <div class="tab-content">
                                        <ul>
                                            <li>
                                                <div class="items-Description selected">
                                                    <div class="Description">${fn:replace(produit.getDescription(), newLineChar, newLineHtml )}</div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="items-Reviews ">
                                                    <c:forEach items="${produit.getListAvis()}" var="avis">
                                                        <div><fmt:formatDate value="${avis.getDate_avis()}" pattern="dd-MMM-yy"/></div>
                                                        <div>${avis.getUtilisateur().getPrenom()} ${avis.getUtilisateur().getNom()}</div>
                                                        <div>Note : ${avis.getNote()}</div>
                                                        <div style="margin-bottom: 50px;">${avis.getAvis()}</div>
                                                    </c:forEach>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="Related-product">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="Featured-Products-title">
                                    <h1 class="tf">Produits similaires</h1>
                                </div>
                                <div class= "customNavigation"> <a class="btn related_prev prev"><i class="fa fa-angle-left"></i></a> <a class="btn related_next next"><i class="fa fa-angle-right"></i></a> </div>
                                <div id="related-products" class="owl-carousel">
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/2prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/3prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/4prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/5prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/6prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/7prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="product-block ">
                                            <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/1prod281x366.jpg"></a> </div>
                                            <div class="product-details">
                                                <div class="product-name">
                                                    <h4><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h4>
                                                </div>
                                                <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                                                <div class="product-hov">
                                                    <ul>
                                                        <li class="wish"><a href="#" ></a></li>
                                                        <li class="addtocart"><a href="#" >Add to Cart</a> </li>
                                                        <li class="compare"><a href="#" ></a></li>
                                                    </ul>
                                                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- right block end  -->
            </div>
        </div>
    </div>
</div>

<%@ include file="headerFooter/footer.jsp"%>