<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Footer block Start  -->
<footer id="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class= "newslatter">
                    <h2 class="tf">Soyez le premier à recevoir nos nouvelles offres</h2>
                    <p>Inscrivez-vous à notre newsletter</p>
                    <div class="input-group">
                        <form method="post" action="/newsletter">
                            <input class=" form-control" type="text" name="email" placeholder="Saisissez votre email ici......">
                            <button type="submit" value="Sign up" class="btn btn-large btn-primary">S'inscrire</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="about">
                    <div class="footer-logo"></div>
                    <p>Tout l'univers du hi-tech à porter de clic</p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="new-store">
                    <ul class="toggle-footer">
                        <li><a href="#">Livraison</a></li>
                        <li><a href="#">Retours Gratuits</a></li>
                        <li><a href="#">E-Réservation et Retrait</a></li>
                        <li><a href="#">Paiement sécurisé</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="information">
                    <ul class="toggle-footer">
                        <li><a href="#">Mentions Légales</a></li>
                        <li><a href="#">Conditions générales de vente</a></li>
                        <li><a href="#">Politiques de cookies</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="contact">
                    <h4>Contactez-nous</h4>
                    <ul class="toggle-footer">
                        <li> <i class="fa fa-map-marker"></i>
                            <div class="address-info">JD Discount 1 rue de la paix ,Paris, FRANCE </div>
                        </li>
                        <li> <i class="fa fa-mobile"></i>
                            <div class="call-info">+33 (0)1 02 03 04 05<br>
                                <span>+33 (0)6 05 04 03 02</span> </div>
                        </li>
                        <li> <i class="fa fa-envelope"></i>
                            <div class="email-info"> <a href="#">support@jd-discount.com</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="social-link">
                        <ul>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="copy-right">
                        <p> All Rights Reserved. Copyright 2017 Powered by lionode.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-offer">
            <h2></h2>
        </div>
    </div>
</footer>
<!-- Footer block End  -->

</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jQuery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="Bootstrap/js/bootstrap.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/globle.js"></script>
<script type="text/javascript" src="js/smoothproducts.min.js"></script>
<!-- product tab js -->
<script src="js/jquery-ui.js"></script>
<script type="text/javascript">
    $( document ).ready(function() {
        $("#tabs li a").click(function(e){
            var title = $(e.currentTarget).attr("title");
            $("#tabs li a").removeClass("selected")
            $(".tab-content li div").removeClass("selected")
            $(".tab-"+title).addClass("selected")
            $(".items-"+title).addClass("selected")
            $("#items").attr("class","tab-"+title);
        });
        $(window).load( function() {
            $('.sp-wrap').smoothproducts();
        });
    });
</script>

<!-- jQuery (price shorting) -->
<script>
    $( document ).ready(function() {
        $( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 800,
            values: [ 75, 500 ],
            slide: function( event, ui ) {
                $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
            }
        });
        $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
            " - $" + $( "#slider-range" ).slider( "values", 1 ) );
    });
</script>

<!-- checkout-step3 -->
<script>
    function close_accordion_section() {
        jQuery('.accordion .accordion-section-title').removeClass('active');
        jQuery('.accordion .accordion-section-content').slideUp(300).removeClass('open');
        jQuery('.accordion2 .accordion-section-title1').removeClass('active');
        jQuery('.accordion2 .accordion-section-content1').slideUp(300).removeClass('open');
    }

    jQuery('.accordion-section-title').click(function(e) {
        // Grab current anchor value
        var currentAttrValue = jQuery(this).attr('href');

        if(jQuery(e.target).is('.active')) {
            close_accordion_section();
        }else {
            close_accordion_section();

            // Add active class to section title
            jQuery(this).addClass('active');
            // Open up the hidden content panel
            jQuery('.accordion ' + currentAttrValue).slideDown(300).addClass('open');
            jQuery('.accordion2 ' + currentAttrValue).slideDown(300).addClass('open');
        }

        e.preventDefault();
    });
</script>


</body>
</html>