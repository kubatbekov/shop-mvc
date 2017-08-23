<?php

function print_debug($array=""){
    echo "<pre style='background: black;color: yellow;'>";
    print_r($array);
    echo "</pre>";
}
function print_die($array=""){
    echo "<pre style='background: black;color: yellow;'>";
    print_r($array);
    echo "</pre>";
    die();
}
?>