<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerFooter/header.jsp"%>

<div class="header-mid">
  <div class="container">
    <div class="row">
      <div class="col-md-3 header-left">
        <div class="logo"> <a href="index.html"><img src="images/logo.png" alt="#"></a> </div>
      </div>
      <div class="col-md-6 search_block">
        <div class="search">
          <form action="grid-view.html">
            <div class="search_cat">
              <select class="search-category" name="search-category">
                <option class="computer" selected>All Categories</option>
                <option class="computer">Men</option>
                <option class="computer">Women</option>
                <option class="computer">Kids</option>
                <option class="computer">Computer</option>
                <option class="computer">Electronics</option>
              </select>
              <span class="fa fa-angle-down"></span> </div>
            <input type="text" placeholder="Search...">
            <button type="submit" class="btn submit"> <span class="fa fa-search"></span></button>
          </form>
        </div>
      </div>
      <div class="col-md-3 header-right">
        <div class="cart">
          <div class="cart-icon dropdown"></div>
          <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="cart.html">Mon Panier( 2 )<span> $261.20</span></a>
          <ul class="dropdown-menu pull-right cart-dropdown-menu">
            <li>
              <table class="table table-striped">
                <tbody>
                <tr>
                  <td class="text-center"><a href="product.html"><img class="img-thumbnail" src="images/product/car3-70x92.jpg" alt="img"></a></td>
                  <td class="text-left"><a href="#">Black African Print Pencil Skirt</a></td>
                  <td class="text-right quality">X1</td>
                  <td class="text-right price-new">$254.00</td>
                  <td class="text-center"><button type="button" title="Remove" class="btn btn-xs remove"><i class="fa fa-times"></i></button></td>
                </tr>
                <tr>
                  <td class="text-center"><a href="product.html"><img class="img-thumbnail" src="images/product/car3-70x92.jpg" alt="img"></a></td>
                  <td class="text-left"><a href="#">Black African Print Pencil Skirt</a></td>
                  <td class="text-right quality">X1</td>
                  <td class="text-right price-new">$254.00</td>
                  <td class="text-center"><button type="button" title="Remove" class="btn btn-xs remove"><i class="fa fa-times"></i></button></td>
                </tr>
                </tbody>
              </table>
            </li>
            <li>
              <div class="minitotal">
                <table class="table pricetotal">
                  <tbody>
                  <tr>
                    <td class="text-right"><strong>Sub-Total</strong></td>
                    <td class="text-right price-new">$210.00</td>
                  </tr>
                  <tr>
                    <td class="text-right"><strong>Eco Tax (-2.00)</strong></td>
                    <td class="text-right price-new">$2.00</td>
                  </tr>
                  <tr>
                    <td class="text-right"><strong>VAT (20%)</strong></td>
                    <td class="text-right price-new">$42.00</td>
                  </tr>
                  <tr>
                    <td class="text-right"><strong>Total</strong></td>
                    <td class="text-right price-new">$254.00</td>
                  </tr>
                  </tbody>
                </table>
                <div class="controls"> <a class="btn btn-primary pull-left" href="cart.html" id="view-cart"><i class="fa fa-shopping-cart"></i> View Cart </a> <a class="btn btn-primary pull-right" href="checkout.html" id="checkout"><i class="fa fa-share"></i> Checkout</a> </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

</div>
<!-- Header End -->

<!-- Main menu Start -->
<div id="main-menu">
  <div class="container">
    <nav class="navbar navbar-default">
      <div class="navbar-header">
        <button aria-controls= "navbar" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        <a href="#" class="navbar-brand">menu</a> </div>
      <div class="navbar-collapse collapse" id="navbar">
        <ul class="nav navbar-nav">
          <li><a href="index.html">HOME</a></li>
          <li><a href="grid-view.html">WOMEN</a></li>
          <li><a href="grid-view.html">MEN</a><span class="new">new</span></li>
          <li class="dropdown"> <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle" href="#"> PAGES<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="checkout.html">Checkout</a></li>
              <li><a href="cart.html">Shoping Cart</a></li>
              <li><a href="checkout-step1.html">Billing & shipping address</a></li>
              <li><a href="checkout-step2.html">Delivery method </a></li>
              <li><a href="checkout-step3.html">Payment method</a></li>
              <li><a href="checkout-step4.html">Order riview</a></li>
              <li><a href="404.html">Page Notfound</a></li>
            </ul>
          </li>
          <li><a href="blog.html">BLOG</a></li>
          <li><a href="contact-us.html">CONTACTEZ-NOUS</a></li>
          <li><a href="about-us.html">A PROPOS DE NOUS</a></li>
        </ul>
      </div>
    </nav>
  </div>
</div>
<!-- Main menu End -->

<!-- Main Banner Start-->
<div id="banner">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div id="main-slider" class="owl-carousel">
          <div class="item"><img src="images/main-banner1.jpg" alt="main-banner1"></div>
          <div class="item"><img src="images/main-banner2.jpg" alt="main-banner2"></div>
          <div class="item"><img src="images/main-banner3.jpg" alt="main-banner3"></div>
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
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/feature-pro-2.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
                  </div>
                  <div class="price"> <span class="price-old">$123.20</span> <span class="price-new">$14.99</span> </div>
                  <div class="product-hov">
                    <ul>
                      <li class="addtocart"><a href="#" >Ajouter au panier</a> </li>
                    </ul>
                    <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="product-block ">
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/feature-pro-3.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
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
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/feature-pro-4.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
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
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/2prod281x366.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
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
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/feature-pro-3.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
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
                <div class="image"> <a href="product-detail-view.html"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="images/product/feature-pro-2.jpg"></a> </div>
                <div class="product-details">
                  <div class="product-name">
                    <h3><a href="product-detail-view.html">Black African Print Pencil Skirt </a></h3>
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
</div>
<!-- Featured Products block End  -->



<!-- Brand logo block Start  -->
<div id="brand">
  <div class="container">
    <div class="row brand">
      <div class="col-md-12">
        <div id="brand-logo" class="owl-carousel">
          <div class="item"><a href="#"><img src="images/brand1.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand2.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand3.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand4.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand5.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand6.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand7.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand8.png" alt="#"></a></div>
          <div class="item"><a href="#"><img src="images/brand9.png" alt="#"></a></div>
        </div>
        <div class= "customNavigation"> <a class="btn brand_prev prev"><i class="fa fa-angle-left"></i></a> <a class="btn brand_next next"><i class="fa fa-angle-right"></i></a> </div>
      </div>
    </div>
  </div>
</div>
<!-- Brand logo block End  -->
<%@ include file="headerFooter/footer.jsp"%>