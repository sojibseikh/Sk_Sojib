<?php

include_once 'config/database.php';

include('header.php');


$db = new Database();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $email = $_POST['email'];
    $message = $_POST['message'];

    date_default_timezone_set("Asia/Dhaka");
    $datetime = date("Y-m-d h:i:sa");

    if(empty($email)){
          echo "<script>alert('Please input your email.');

                      </script>";
    }else{
      $sql = "insert into message(email, message, date) values ('$email', '$message', '$datetime')";
    $result = $db->insert($sql);

    if($result){
         echo "<script>alert('Message sent successfully .');

                      </script>";

    }else{
         echo "<script>alert('Message Sent Failed please try agin.');

                      </script>";

    }
    }


} ?>


<div id="m_color">
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
    <div class="container-fulid" >

      <div class="row">
          <form method="post" action="">
          <div class="col-sm-offset-4 col-sm-10 inp wrapper" id="div_in">
              <span class="bg-animate1"></span>
              <h2 class="text-left">Conact Me</h2><br><br>
            <input type="email"  placeholder=" Enter your Email" required name="email" id="inp"><br>

                <br><br>
             <textarea placeholder=" Enter your Meassage" rows="1" cols="22" required name="message" id="inp"></textarea><br>
                <br><br><br>
              <button  type="submit"  class="btn btn-info" value="S U B M I T" id="submit" name="submit">S U B M I T</button>
              <div id="mr1">
              <h1 >Wellcome to our Contact Section</h1>
                  <p>Only for website Regarding. </p>
                  <p>Please input orginal email account</p>
                  <p>Wait for my reply</p><br><br><br><br>
                  <a href="index.php" class="btn btn-info "><b style="color: white;">Back Home</b> </a> <span class="glyphicon glyphicon-arrow-left"></span>
               </div>
            </div>
              </form>


        </div>
    </div>


    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
</div>

<?php include('end.php'); ?>
