<!DOCTYPE html>


<html>
    <head>
        <title>phalconOne</title>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/site.css">
        <link rel="stylesheet" href="css/login.css">

    </head>
    <body>
        <div class="container" id="siteContainer">
            {#The logo#}
            <a href="index"><img src="img/DTT%20logo.png" class="logo"></a>

            <hr/>

            <!-- Load in the content-->
            <?php echo $this->getContent(); ?>

            <div id="footer">
                <hr/>
                <p>DTT Multimedia @ 2018. All rights reserved. <a href="user">Site Admin</a></p>
            </div>
        </div>



        <!--Load js  -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        {#Custom js#}
        <script src="js/site.js"></script>

    </body>
</html>