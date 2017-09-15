<?php foreach ($model as $item):?>
    <h1><a href="/news/<?php echo $item->id?>"><?php echo $item->title?></a></h1>
    <p><?php echo $item->text?></p><hr>
<?php endforeach;?>
