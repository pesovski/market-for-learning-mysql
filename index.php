<?php
    include 'db.php';

    //$sql = isset($_POST['sql']) ? $_POST['sql'] : 'select * FROM products';

    $sql = '';
    if(isset($_POST['sql'])) {
        $sql = $_POST['sql'];
    } else {
        $sql = 'SELECT * FROM products WHERE 1';
    }

?>

<html>
<head>
    <title>Market</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-6 noPadding">
                <a class="btn btn-lg btn-block btn-default active" href="#structureModal" data-toggle="modal">S T R U C T U R E</a>
            </div>
            <div class="col-md-6 noPadding">
                <a class="btn btn-lg btn-block btn-default active" href="#dataModal" data-toggle="modal">D A T A</a>
            </div>
        </div>
    </div>
    <div class="container content">
        <div class="row">
            <div class="col-md-12 noPadding">
                <form method="POST" action="">
                    <div class="input-group">
                        <textarea class="form-control" name="sql" rows="3" style="resize:none" required><?= $sql ?></textarea>
                        <div class="input-group-addon">
                            <button class="btn btn-primary" type="submit">Execute</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        
    <?php

        if (!$result = $mysqli->query($sql)) { 
            echo "<h2>Sorry, the website is experiencing problems.</h2>";

            echo "<h4>Error: Our query failed to execute and here is why: </h4>";
            echo "<h4>Query: " . $sql . "</h4>";
            echo "<h4>Errno: " . $mysqli->errno . "</h4>";
            echo "<h4>Error: " . $mysqli->error . "</h4>";
            exit;
        }
        if ($result->num_rows === 0) { 

            echo "<h1>No results found</h1>";

        } else {
            while ($product = $result->fetch_assoc()) {
                include 'product.php';
            }            
        }
    ?>
    </div>

    <div class="modal fade" id="structureModal">
        <div class="modal-dialog modal-extra-lg">
            <div class="modal-content">
                <div class="modal-body">
                    <img src="market.png" width="100%" height="auto"/>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="dataModal">
        <div class="modal-dialog modal-extra-lg">
            <div class="modal-content">
                <div class="modal-body">
                    Loading...
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>
        var textarea = null;
        window.addEventListener("load", function() {
            textarea = window.document.querySelector("textarea");
            textarea.addEventListener("keypress", function() {
                if(textarea.scrollTop != 0){
                    textarea.style.height = textarea.scrollHeight + "px";
                }
            }, false);
        }, false);

        $('#dataModal').on('shown.bs.modal', function (e) {
            $.ajax({
                url: '/market/printdatabase.php',
                success: function(data) {
                    $("#dataModal").find(".modal-body").html(data);
                },
                error: function(data) {
                    alert("An error occured. Please try again.");
                }
            }); 
        });
    </script>
</body>
</html>