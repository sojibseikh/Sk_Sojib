<?php

include_once 'config/database.php';


include('header.php');

$db = new Database();


?>


<div id="m_color">
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>

    <div class="container-fulid">
        <div class="row">
        <?php
         $sql = "select * from videos";
         $result = $db->select($sql);

        if($result){
            while($row = mysqli_fetch_assoc($result)){

            ?>
              <div class="col-md-6">
                <div class="thumbnail" style="width: 80%;">
                <iframe width="100%" height="300px;" src="https://www.youtube.com/embed/<?=$row['video_code']?>" allowfullscreen></iframe>
                <h4><?=$row['video_title']?></h4>
                </div>

            </div>



            <?php
            }
        }

         ?>


            <div class="col-md-6">
                <div class="thumbnail" style="width: 80%;">
                <iframe width="100%" height="300px;" src="https://www.youtube.com/embed/0YFrGy_mzjY" allowfullscreen></iframe>
                <h4>How To Make A Portfolio Website Complete Responsive Website Design</h4>
                </div>

            </div>
            <div class="col-md-6">
                <div class="thumbnail" style="width: 80%;">
                <iframe width="100%" height="300px;" src="https://www.youtube.com/embed/hlwlM4a5rxg" allowfullscreen></iframe>
                <h4>Login Form in HTML &amp; CSS</h4>
                </div>

            </div>
        </div>
    </div>










    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
    <br> <br><br> <br><br> <br><br> <br><br> <br><br> <br>
</div>

<?php include('end.php'); ?>
