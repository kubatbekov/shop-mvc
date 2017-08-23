<div class="page-buffer"></div>
</div>

<footer id="footer" class="page-footer"><!--Footer-->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2017</p>
                <p class="pull-right">shop.com</p>
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