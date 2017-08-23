<?php include_once ROOT.'/views/layouts/header.php'?>

<?php include_once ROOT.'/views/layouts/header.php'?>


    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian"><!--category-productsr-->


                            <?php if(!empty($categories)):?>
                                <?php foreach ($categories as $category ):?>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <a href="/myframework/category/<?php echo $category->id;?>">
                                                    <?php echo $category->name;?>
                                                </a>
                                            </h4>
                                        </div>
                                    </div>
                                <?php endforeach;?>
                            <?php endif;?>

                        </div><!--/category-products-->

                    </div>
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <?php if(!empty($searchProducts)):?>
                            <h5 class="alert alert-success">Результаты поиска</h5>
                            <?php foreach ($searchProducts as $product ):?>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="/myframework/product/<?php echo $product->id;?>">
                                                    <img src="/myframework/templates/images/home/product1.jpg" alt="" />
                                                </a>
                                                <h2>$<?php echo $product->price;?></h2>
                                                <p>
                                                    <a href="/myframework/product/<?php echo $product->id;?>">
                                                        <?php echo $product->name;?>
                                                    </a>
                                                </p>
                                                <span data-id="<?php echo $product->id;?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</span>

                                            </div>
                                            <!--                                        Если товар новый то показываем его как new-->
                                            <?php if($product->is_new):?>
                                                <img src="/myframework/templates/images/home/new.png" class="new" alt="" />
                                            <?php endif;?>

                                        </div>
                                    </div>
                                </div>
                            <?php endforeach;?>
                            <?php else:?>
                                     <h5 class="alert alert-danger">Поиск не дал никаких результатов</h5>
                        <?php endif;?>






                    </div><!--features_items-->




                </div>
            </div>
        </div>
    </section>
<?php include_once ROOT.'/views/layouts/footer.php'?>
<?php include_once ROOT.'/views/layouts/footer.php'?>