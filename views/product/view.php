<?php include_once ROOT.'/views/layouts/header.php'?>


<section>

            <div class="col-sm-9 padding-right">
                <?php if(!empty($product)):?>
                    <div class="product-details"><!--product-details-->
                        <div class="col-sm-5">
                            <div class="view-product">
                                <img src="/templates/images/product-details/1.jpg" alt="" />
                                <h3>ZOOM</h3>
                            </div>
                            <div id="similar-product" class="carousel slide" data-ride="carousel">

                                <!-- Controls -->
                                <a class="left item-control" href="#similar-product" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right item-control" href="#similar-product" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>

                        </div>
                        <div class="col-sm-7">
                            <div class="product-information"><!--/product-information-->
                                <img src="/templates/images/product-details/new.jpg" class="newarrival" alt="" />
                                <h2><?php echo $product->name;?></h2>
                                <p>Web ID: <?php echo $product->code;?></p>
                                <img src="/templates/images/product-details/rating.png" alt="" />
                                <span>
                                        <span>US $<?php echo $product->price;?></span>
                                        <label>Quantity:</label>
                                        <input type="text" value="3" />
                                        <button type="button" class="btn btn-fefault cart add-to-cart" data-id="<?php echo $product->id;?>">
                                            <i class="fa fa-shopping-cart"></i>
<!--                                           <span data-id="--><?php //echo $product->id;?><!--" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</span>-->
                                                    Add to cart

                                        </button>
                                    </span>
                                <p><b>Availability:</b> In Stock</p>
                                <p><b>Condition:</b> New</p>
                                <p><b>Brand:</b> <?php echo $product->brand;?></p>
                                <a href=""><img src="/templates/images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                            </div><!--/product-information-->
                        </div>
<!--                        <div class="row">-->
                            <div class="col-md-12">
                                <h5>Details</h5>
                                <p> <?php echo $product->description;?></p>
                            </div>
<!--                        </div>-->
                    </div><!--/product-details-->
                <?php endif;?>




            </div>

</section>
<?php include_once ROOT.'/views/layouts/footer.php'?>



