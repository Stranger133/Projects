<?php

$host = "";
$db_username = "";
$password = "";
$db_name = "";

$con = new mysqli($host, $db_username, $password, $db_name);

if($con->connect_errno){
    die("Connection error: ". $mysqli->connect_error);
}
?>
<html>
    <head>
        <title>Flex Box</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            ::-webkit-scrollbar {
                width: 7px;
            }
            ::-webkit-scrollbar:hover {
                width: 10px;
            }
            ::-webkit-scrollbar-track {
                background-color: #F6F1F1;
                border-radius: 15px;
            }
            ::-webkit-scrollbar-thumb {
                background: #65a3be; 
                border-radius: 15px;
            }
            ::-webkit-scrollbar-thumb:hover {
                background: #146C94;
            }


            html{
                scroll-behavior: smooth;
            }

            body{
                margin: 0;
                padding: 0;
                overflow-x: hidden;
                background-color: #f6f1f1;
                font-family: sans-serif;
            }
            #nav{
                position: fixed;
                display: flex;
                justify-content: space-between;
                top: 0;
                width: 100%;
                min-height: auto;
                background-color: #AFD3E2;
                z-index: 1;
                padding: 10px;
                min-height: 45px;
            }
            #logo{
                position: relative;
                left: 20;
                max-width: 45px;
                max-height: 45px;
            }
            .itm2{
                display: grid;
                grid-row: auto;
                justify-content: space-between;
                position: relative;
                top:20;
                right: 20;
                display: flex;
            }
            .itm2 a{
                font-size: 16px;
            }
            .itm2 a:hover{
                color: #19A7CE;
                transition: color 0.5s ease;
            }
            #cart a i:hover{
                color: #19A7CE;
                transition: color 0.5s ease;
            }
            .container{
                position: relative;
                left: 2.5%;
                display: flex;
                justify-content: last baseline;
                justify-items: center;
                overflow-x: auto;
                overscroll-behavior-inline: contain;
                width: 95%;
                min-height: 600px;
            }
            .items{
                position: relative;
                background-color: white;
                min-width: 200px;
                margin: 10px;
            }
            .items img{
                position: absolute;
                border: 2px solid #65a3be;
                width: 100%;
                height: 50%;
                object-fit: cover;
            }
            .name{
                position: relative;
                top: 270;
                left: 20;
                max-height: 5%;
            }
            .description{
                position: relative;
                top: 280;
                left: 20;
                max-height: 5%;
            }
            .price {
                position: relative;
                top: 300;
                left: 20;
            }
            .items a{
                position: absolute;
                object-fit: contain;
                bottom: 0;
                width: 100%;
                height: 7%;
                text-align: center;
                background-color: #19A7CE;
            }
            .items a:hover{
                background-color: #AFD3E2;
                transition: all 0.3s ease-in;
            }
            .items a i{
                position: relative;
                top: 12;
            }
            .items a:hover i {
                color: #146C94;
                top: 7;
                transition: all 0.3s ease-in;
            }

            #intro{
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 400px;
                width: auto;
                margin-top: 150px;
                background-color: #19A7CE;
            }
            #intro h1{
                color: white;
                border: none;
            }
            input{
                border-radius: 50px;
                background-color: #F6F1F1;
                border: none;
                min-width: 60%;
                min-height: 50px;
                padding: 20px;
                font-size: 24px;
                font-family: Arial, Helvetica, sans-serif;
            }
            a{
                color: #F6F1F1;
                text-decoration: none;
            }
            h1{
                margin-left: 3%;
                border-left: 5px double #146C94;
                padding-left: 5px;
            }
            #totop{
                position: fixed;
                background-color: #146C94;
                width: 50px;
                height: 50px;
                border-radius: 40px;
                right: 20;
                bottom: 20;
                text-decoration: none;
                text-align: center;
                z-index: 1;
            }
            #totop i{
                position: relative;
                margin-top: 35%;
            }
        </style>
    </head>
    <body>
        <div id="nav">
            <div class="itm1"><img src="logo no back.png" id="logo"/></div>
            <div class="itm2">
                <div id="shop"><a href="">Shop</a></div>
                <div id="contact"><a href="">Contact us</a></div>
                <div id="cart"><a href=""><i class="fa-solid fa-cart-shopping"></i></a></div>
            </div>
        </div>
        <section id="search">
            <div id="intro">
                <div><h1>Search</h1></div>
                <div><input/></div>
            </div>
        </section>
        <h1>Shirts</h1>
        <div class="container">
            <?php
            $query1 = "SELECT * FROM products WHERE type='s'";
            $result1 = mysqli_query($con, $query1);
            $cur1=  mysqli_fetch_array($result1, MYSQLI_ASSOC);
            $line1 = $cur1;
            if(!$result1) {die();}
            do{
                if($line1){
                    echo '
                    <div class="items">
                        <img src="boy.jpg"/><br>
                        <h2 class="name">'.$line1["name"].'</h2>
                        <div class="description">'.$line1["description"].'</div>
                        <h2 class="price">'.$line1["id"].' $</h2>
                        <a href=""><i class="fa-solid fa-cart-plus"></i></a>
                    </div> ';
                }
                
            }while ($line1 =  $cur1);
            ?>
        </div>
        <h1>Pants</h1>
        <div class="container">
            <?php
            $query2 = "SELECT * FROM products WHERE type='p'";
            $result2 = mysqli_query($con, $query2);
            $cur2 = mysqli_fetch_array($result2, MYSQLI_ASSOC);
            $line2 = $cur2;
            if(!$result2) {die();}
            do{
                if($line2){
                    echo '
                    <div class="items">
                        <img src="boy.jpg"/><br>
                        <h2 class="name">'.$line2["name"].'</h2>
                        <div class="description">'.$line2["description"].'</div>
                        <h2 class="price">'.$line2["id"].' $</h2>
                        <a href=""><i class="fa-solid fa-cart-plus"></i></a>
                    </div> ';
                }
                
            }while ($line2 =  cur2);
            ?>
        </div>
        <a href="#search" id="totop"><i class="fa-solid fa-arrow-up"></i></a>
    </body>
</html>
