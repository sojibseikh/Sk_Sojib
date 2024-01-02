<?php

include_once 'config/database.php';


include('header.php');

$db = new Database();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $email = $_POST['email'];

    date_default_timezone_set("Asia/Dhaka");
    $datetime = date("Y-m-d h:i:sa");

    if(empty($email)){
          echo "<script>alert('Please input your email.');

                      </script>";
    }else{
      $sql = "insert into sub(email, date) values ('$email', '$datetime')";
    $result = $db->insert($sql);

    if($result){
         echo "<script>alert('Add to card  successfully.');

                      </script>";

    }else{
         echo "<script>alert('Card add Failed please try agin.');

                      </script>";

    }
    }


}



 ?>


<div id="m_color">
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>

    <div class="container-fulid">
        <div class="container">
        <div class="row">
            <div class="col-md-4">
            <textarea type="text" name="search" placeholder="Search any service"></textarea>
            <input type="submit" name="submit" value="SEARCH" class="btn btn-success">
            </div>
            </div>
        </div>


        <div class="row" style=" margin-left: 80px;">

            <?php

            $sql = "select * from service";
            $result = $db->select($sql);

            if($result){
                while($row = mysqli_fetch_assoc($result)){
                 ?>
            <div class="col-md-6">
                <div class="thumbnail" style="width: 85%;">
                    <img src="admin_panel/<?=$row['photo']?>" width="100%" height="300px;">
                    <h4><?=$row['title']?></h4>
                    <a href="admin_panel/<?=$row['file']?>" class="btn btn-primary">&nbsp; <span class="glyphicon glyphicon-eye-open"></span> View Demo &nbsp;</a>
                    <a href="#magicdiv" class="fancybox btn btn-warning pull-right"> &nbsp;<i class="fa-solid fa-cart-shopping"></i>&nbsp; <b><?=$row['date']?></b> Buy Now &nbsp;</a>
               </div>
                  <div id="magicdiv" style="width: 400px;background-color: #fff;display: none;">
                    <img src="images/logo1.jpeg" width="100%" height="280px;">
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's </p>
                    <div style="color: black;font-size: 50px;">
                    <h2><b>Payment With</b></h2>
                    <a style="color: black;" href="#"><i class="fa-brands fa-cc-visa"></i></a>
                    <a style="color: black;" href="#"><i class="fa-brands fa-cc-mastercard"></i></a>
                    <a style="color: black;" href="#"><i class="fa-brands fa-cc-paypal"></i></a>
                    <a style="color: black;" href="#"><i class="fa-brands fa-cc-amazon-pay"></i></a>
                    <a style="color: black;" href="#"><i class="fa-brands fa-cc-apple-pay"></i></a>
                    </div>
                    <br>



                    <form class="form-horizontal" action="" method="post">
                     <a href="servicse.php" class="btn btn-danger">Back</a>
                     <input style="height: 25px;font-size: 15px;padding-bottom: 5px;" value=" C A R D &nbsp A D D" type="submit" class="pull-right  btn btn-danger">
                     <input type="text" class="pull-right "  name="email" required placeholder="Enter your email">
                    </form>

                 </div>



            </div>





            <?php
                }
            }


            ?>





        </div>
    </div>










    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
</div>

<?php include('end.php'); ?>
