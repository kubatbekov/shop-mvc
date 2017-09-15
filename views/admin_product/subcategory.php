<?php if(!empty($subcategories)):?>
    <option >Выберите подкатегорию</option>
    <?php foreach ($subcategories as $subcategory):?>
        <option value="<?php echo $subcategory->id?>"><?php echo $subcategory->name?></option>
    <?php endforeach;?>
<?php endif;?>

