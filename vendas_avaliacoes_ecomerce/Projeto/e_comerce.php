
<?php

ini_set('max_execution_time', 0);

require = 'conexao.php'

$filename = '../Dados/olist_order_items_dataset.csv'

if(file_exists($filename)){

    mysql_query($conecta, "LOAD DATA INFILE '' INTO TABLE order_items
    FIELDS TERMINATED BY ','
    LINES TERMINATED '\n'
    IGNORE 1 ROWS");

} else{
    echo "Arquivo não existe!";
}

?>