<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="headerFooter/header.jsp"%>

<!-- Main Banner Start-->
<div id="banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div id="main-slider" class="owl-carousel">
          <c:forEach items="${ listeSlider }" var="listeSlider">
            <div class="item"><a href="/detail_produit?id=${listeSlider.getProduit().getId()}"><img src="${listeSlider.getUrl_photo()}"></a></div>
          </c:forEach>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Main Banner End -->

<!-- Fashio Sale block Start  -->
<div id="fashion-sale">
  <div class="container">
    <div class="row">
      <div class="col-md-12 fashion">
        <div class="box">
          <div id="fashion-product" class="owl-carousel fashion-product">
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="pursh" alt="pursh" src="images/product/pro1.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Cosmetics</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="sandle" alt="sandal" src="images/product/pro2.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Jewelry</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="jeans" alt="jeans" src="images/product/pro3.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Smart TV </a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="jeans" alt="jeans" src="images/product/pro4.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Téléphone</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="jeans" alt="jeans" src="images/product/pro5.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Handbags</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="jeans" alt="jeans" src="images/product/pro6.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Electronics</a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="pursh" alt="pursh" src="images/product/pro7.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Fashion </a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="sandle" alt="sandal" src="images/product/pro4.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Cellphones </a></h3>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="#"><img class="img-responsive" title="jeans" alt="jeans" src="images/product/pro5.png"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="#">Handbags</a></h3>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Fashio Sale block End  -->

<!-- Featured Products block Start  -->
<div id="Featured">
  <div class="container">
    <div class="row">
      <div class="col-md-12 featured">
        <div class="Featured-Products-title">
          <h2 class="tf">Top des ventes<span> Nos meilleurs produits </span></h2>
        </div>
        <div class= "customNavigation"> <a class="btn featured_prev prev"><i class="fa fa-angle-left"></i></a> <a class="btn featured_next next"><i class="fa fa-angle-right"></i></a> </div>
        <div class="box">
          <div id="featured-products" class="owl-carousel">
            <c:forEach items="${ listeTopVente }" var="topVente">
              <div class="item">
                <div class="product-block ">
                  <div class="image"> <a href="/detail_produit?id=${topVente.getProduit().getId()}"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="${topVente.getUrl()}"></a> </div>
                  <div class="product-details">
                    <div class="product-name">
                      <h3><a href="/detail_produit?id=${topVente.getProduit().getId()}">${topVente.getProduit().getNom()} </a></h3>
                    </div>
                    <c:choose>
                      <c:when test="${topVente.getProduit().getPromo() != 0}">
                        <div class="price"> <span class="price-old"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix()}"/> €</span> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix() - (topVente.getProduit().getPrix() * topVente.getProduit().getPromo())/100}" /> €</span> </div>
                      </c:when>
                      <c:otherwise>
                        <div class="price"> <span class="price-new"><fmt:formatNumber type="number" pattern="###.##" value="${topVente.getProduit().getPrix()}"/> €</span> </div>
                      </c:otherwise>
                    </c:choose>
                    <div class="product-hov">
                      <ul>
                        <c:choose>
                          <c:when test="${topVente.getProduit().getQuantite() != 0}">
                            <form method="post" action="/cart">
                              <input type="hidden" name="idProd" value="${topVente.getProduit().getId()}">
                              <input type="hidden" name="action" value="addPanier">
                              <input type="hidden" name="qty" value="1">
                              <button type="submit" class="btn btn-default">Ajouter au panier</button>
                            </form>
                          </c:when>
                          <c:otherwise>
                            <button class="btn btn-default">Indisponible</button>
                          </c:otherwise>
                        </c:choose>
                      </ul>
                      <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                    </div><!-- end div "product-hov" -->
                  </div><!-- end div "product-details" -->
                </div><!-- end div "product-block" -->
              </div><!-- end div "idem" -->
            </c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Featured Products block End  -->


<!-- Brand logo block Start  -->
<div id="brand">
  <div class="container">
    <div class="row brand">
      <div class="col-md-12">
        <div id="brand-logo" class="owl-carousel">
          <div class="item"><a href="/list-marque?marque=Apple"><img src="images/brand1.png" alt="Apple"></a></div>
          <div class="item"><a href="/list-marque?marque=Xiaomi"><img src="images/brand2.png" alt="Xiaomi"></a></div>
          <div class="item"><a href="/list-marque?marque=Samsung"><img src="images/brand3.png" alt="Samsung"></a></div>
          <div class="item"><a href="/list-marque?marque=Huawei"><img src="images/brand4.png" alt="Huawei"></a></div>
          <div class="item"><a href="/list-marque?marque=Asus"><img src="images/brand5.png" alt="Asus"></a></div>
          <div class="item"><a href="/list-marque?marque=HP"><img src="images/brand6.png" alt="HP"></a></div>
          <div class="item"><a href="/list-marque?marque=Garmin"><img src="images/brand7.png" alt="Garmin"></a></div>
          <div class="item"><a href="/list-marque?marque=Sony"><img src="images/brand8.png" alt="Sony"></a></div>
          <div class="item"><a href="/list-marque?marque=Acer"><img src="images/brand9.png" alt="Acer"></a></div>
        </div>
        <div class= "customNavigation"> <a class="btn brand_prev prev"><i class="fa fa-angle-left"></i></a> <a class="btn brand_next next"><i class="fa fa-angle-right"></i></a> </div>
      </div>
    </div>
  </div>
</div>
<!-- Brand logo block End  -->
<%@ include file="headerFooter/footer.jsp"%>