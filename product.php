<?php

echo "<div class='row product'>";
echo "<div class='col-md-2 noPadding'>";
echo "<img src='".$product['image']."' class='product_image'>";
echo "</div>";
echo "<div class='col-md-8 product_info'>";
echo "<h3 class='product_name'>".$product['name']."</h3>";
echo "<div class='product_description'>".$product['description']."</div>";
echo "<div class='info'>";
echo "<span class='i price'>Price: ".$product['price']."</span><span class='i discount ".($product['discount'] > 0 ? 'bg-success padded':'')."'>Discount: ".$product['discount']."</span>".
        "<span class='i shipping ". ($product['free_shipping'] > 0 ? 'bg-success padded':'') ."'>Free shipping: ".($product['free_shipping'] == 0 ? 'No' : 'Yes')."</span>".
        "<span class='i available ".($product['available'] == 0 ? 'bg-danger padded':'')."'>Available: ".($product['available'] == 0 ? 'No' : 'Yes')."</span>".
        "<span class='i left'>Items left: ".$product['items_left']."</span>";
echo "</div>";
echo "</div>";
echo "<div class='col-md-2 final_price_wrapper'>";
echo "<div class='final_price'>$".number_format(($product['price'] - ($product['price']*$product['discount']/100)),2)."</div>";
echo "</div>";
echo "</div>";