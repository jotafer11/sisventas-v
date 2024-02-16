<?php

include ('../../config.php');

$id_venta = $_GET['id_venta'];

$sentencia = $pdo->prepare("DELETE FROM tb_ventas where id_venta=:id_venta");


$sentencia->bindParam('id_venta', $id_venta);


if($sentencia->execute()) {
    ?>
    <script>
        location.href = "<?php echo $URL;?>/ventas";
    </script>
    <?php
}else{
    echo "error al intentar borrar una venta";
}