<?php include_once ROOT.'/views/layouts/header.php'?>

<?php include_once ROOT.'/views/layouts/header.php'?>


    <section>

                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <?php if(!empty($searchProducts)):?>
                            <h5 class="alert alert-success">Результаты поиска</h5>
                            <?php foreach ($searchProducts as $product ):?>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <a href="/product/<?php echo $product->id;?>">
                                                    <img src="/templates/images/home/product1.jpg" alt="" />
                                                </a>
                                                <h2>$<?php echo $product->price;?></h2>
                                                <p>
                                                    <a href="/product/<?php echo $product->id;?>">
                                                        <?php echo $product->name;?>
                                                    </a>
                                                </p>
                                                <span data-id="<?php echo $product->id;?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</span>

                                            </div>
                                            <!--                                        Если товар новый то показываем его как new-->
                                            <?php if($product->is_new):?>
                                                <img src="/templates/images/home/new.png" class="new" alt="" />
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
    </section>
<?php include_once ROOT.'/views/layouts/footer.php'?>
<?php include_once ROOT.'/views/layouts/footer.php'?>