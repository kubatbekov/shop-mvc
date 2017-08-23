
<footer id="footer"><!--Footer-->


    <div class="footer-widget">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Service</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Online Help</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Order Status</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Quock Shop</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">T-Shirt</a></li>
                            <li><a href="#">Mens</a></li>
                            <li><a href="#">Womens</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>Policies</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Terms of Use</a></li>
                            <li><a href="#">Privecy Policy</a></li>
                            <li><a href="#">Refund Policy</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="#">Company Information</a></li>
                            <li><a href="#">Careers</a></li>
                            <li><a href="#">Store Location</a></li>

                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-sm-offset-1">
                    <div class="single-widget">
                        <h2>About Shopper</h2>
                        <form action="#" class="searchform">
                            <input type="text" placeholder="Your email address" />
                            <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                            <p>Get the most recent updates from <br />our site and be updated your self...</p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->


<!--Slider-->
<script src="/myframework/templates/js/jquery.cycle2.carousel.min.js"></script>
<script src="/myframework/templates/js/jquery.cycle2.min.js"></script>


<script src="/myframework/templates/js/jquery.js"></script>
<script src="/myframework/templates/js/bootstrap.min.js"></script>
<script src="/myframework/templates/js/jquery.scrollUp.min.js"></script>
<script src="/myframework/templates/js/price-range.js"></script>
<script src="/myframework/templates/js/jquery.prettyPhoto.js"></script>
<script src="/myframework/templates/js/main.js"></script>
<script src="/myframework/templates/js/jquery.validate.min.js"></script>
<script src="/myframework/templates/js/validateForm.js"></script>

<script>
    // Добавляем товар в корзину
    $(document).ready(function () {
        $(".add-to-cart").bind("click", function () {
            // Получаем id товара
            var id=$(this).attr('data-id');
            // отправляем ajax запрос к action
            $.ajax({
                url: "/myframework/cart/addAjax/"+id,
                method: 'POST',
                success:function(response){
                    $("#cartCount").html(response);
                },
                error:function () {
                    alert('error ajax');
                }
            });
        });
    });


</script>
</body>
</html>