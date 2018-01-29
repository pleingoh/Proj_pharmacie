
<?php
include('connect.php');
  
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pharama Chap</title>
    <!-- icon -->
    <link rel="icon" href="img/logo.png" />
    <!-- css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style type="text/css">
    .form-control {
        border: 1px solid #2aaae2;
    }
    </style>
    <!-- js -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.backstretch.min.js"></script>
    <script type="text/javascript" src="js/sweetalert.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {

        $("body").backstretch(["img/pharma.jpg", "img/pharma3.jpg", "img/pharma1.jpg"], { duration: 1500, fade: "slow" });
    });
    </script>
</head>

<body>
    <div id="header" class="container-fluid">
        <div class="row">
            <div class="col-md-6 col-xs-5" style="text-align: left;">
                <div id="logo-" class="login-screen-title">
                    <span id="logo" style="">
                       <img src="img/logo1.png" style="
    width: 100px;
">
                    </span>
                </div>
            </div>
            <div id="compte_off" class="col-md-6 col-xs-7" style="text-align: right;">
                <br>
                <br>
                <br>
                <ul style="list-style: none;">
                  <!--  <li style="
    border: 1px solid white;background: white;
"><a href="enregistrement.html" style="text-decoration: none;color: #2aaae2;">Ajouter</a></li>
                     <li style="
    border:1px solid white;
"><a href="connexion.html" style="text-decoration: none;">Connexion</a></li> -->
                </ul>
            </div>
            <div id="compte_on" class="col-md-6 col-xs-7" style="text-align: right;display: none;">
                <ul style="list-style: none;">
                    <li style="
    border: 1px solid white;background: white;
"><a href="#" style="text-decoration: none;color:lime;"><i class="fa fa-user"></i> <span id="user"></span></a></li>
                    <li id="sign-out" style="
    border:1px solid white;
"><a href="#" style="text-decoration: none;color: red;"><i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="content" class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12" style="text-align: center">
                <h1 class="ml8">
  <span class="letters-container">
    <span class="letters letters-left"><i class="fa fa-search"></i></span>
    <span class="letters bang" style="color: #f16425;"> ?</span>
  </span>
  <span class="circle circle-white"></span>
  <span class="circle circle-dark"></span>
  <span class="circle circle-container"><span class="circle circle-dark-dashed"></span></span>
</h1>
                <div>
                    <p style="
    font-size: 14px;color: white;margin-top: 10px;
    margin-top: 0px;
">
                        <b style="font-size: 20px;
    background: #00000094;
"><h1 class="ml11">
  <span class="text-wrapper">
    <span class="line line1"></span>
    <span class="letters">Annuaire pour pharmacie</span>
  </span>
</h1>
</b>
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            <br>
            <br>
            <div class="col-md-2"></div>
            <div class="col-md-6 col-xs-12" style="    margin-right: 0;
    padding-right: 0;">
    <form action="liste-pharma.php" method="GET">
                <div id="results_" class="input-group">
                    <span style="color:#d52228;" class="input-group-addon" id="basic-addon1"><i id="start_button" onclick="startDictation(event)" class="fa fa-microphone" aria-hidden="true" style="color:#2aaae2;font-size: 35px;margin-top: -5px;"></i><i id="stop_button" onclick="stopDictation(event)" class="fa fa-microphone-slash" aria-hidden="true" style="display: none;font-size: 35px;margin-top: -5px;color: #f16425"></i></span>
                    <input  class="form-control final" type="text" name="query" placeholder="trouver la pharmacie..." style="font-size: 20px;height: 50px;z-index: 10;">
                    <div class="row">
                        <div id="ulListQ" class="col-md-12 col-xs-12" style="position: absolute;z-index: 5;margin-top: 34px;width: 98%;display: none;">
                            <ul id="ulList" style="list-style: none;display: grid;padding: 2px;margin-top: -8px;">
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 col-xs-12" style="    margin: 0;
    padding: 0;">
                <div class="form-group">
                    <select class="form-control" name="commune" style="font-size: 20px;height: 50px;z-index: 10;">
                        <option desable value="">Commune</option>
                        <?php
                        
                       $reponse = $bdd->query('SELECT * FROM commune');
                        
                       while ($donnees = $reponse->fetch())
                       {
                       ?>
                       <option value="<?php echo $donnees['nom_commune']; ?>"><?php echo $donnees['nom_commune']; ?></option>
                       <?php 
                       }
                    ?>
                    </select>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-4 col-xs-2"></div>
            <div class="col-md-4 col-xs-8">
                <div class="form-group">
                    <input id="" type="submit" name="trouver" value="Trouver" style="background: #2aaae2;color: white;font-weight: bold;border: none !important;font-size: 25px;height: 50px;box-shadow: -2px -1px 5px 3px #0000008c;/* border: 2px solid; */" class="form-control btn btn-primary" >
                </div>
            </div>
            <div class="col-md-4 col-xs-2"></div>
        </div>
    </div>
</form>
    <br>
    <br>
    <br>
    
</body>
<script src="js/anime.min.js"></script>
<script type="text/javascript">
    anime.timeline({loop: true})
  .add({
    targets: '.ml8 .circle-white',
    scale: [0, 3],
    opacity: [1, 0],
    easing: "easeInOutExpo",
    rotateZ: 360,
    duration: 1100
  }).add({
    targets: '.ml8 .circle-container',
    scale: [0, 1],
    duration: 1100,
    easing: "easeInOutExpo",
    offset: '-=1000'
  }).add({
    targets: '.ml8 .circle-dark',
    scale: [0, 1],
    duration: 1100,
    easing: "easeOutExpo",
    offset: '-=600'
  }).add({
    targets: '.ml8 .letters-left',
    scale: [0, 1],
    duration: 1200,
    offset: '-=550'
  }).add({
    targets: '.ml8 .bang',
    scale: [0, 1],
    rotateZ: [45, 15],
    duration: 1200,
    offset: '-=1000'
  }).add({
    targets: '.ml8',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1400
  });

anime({
  targets: '.ml8 .circle-dark-dashed',
  rotateZ: 360,
  duration: 8000,
  easing: "linear",
  loop: true
});

// Wrap every letter in a span
$('.ml11 .letters').each(function(){
  $(this).html($(this).text().replace(/([^\x00-\x80]|\w)/g, "<span class='letter'>$&</span>"));
});

anime.timeline({loop: true})
  .add({
    targets: '.ml11 .line',
    scaleY: [0,1],
    opacity: [0.5,1],
    easing: "easeOutExpo",
    duration: 700
  })
  .add({
    targets: '.ml11 .line',
    translateX: [0,$(".ml11 .letters").width()],
    easing: "easeOutExpo",
    duration: 700,
    delay: 100
  }).add({
    targets: '.ml11 .letter',
    opacity: [0,1],
    easing: "easeOutExpo",
    duration: 600,
    offset: '-=775',
    delay: function(el, i) {
      return 34 * (i+1)
    }
  }).add({
    targets: '.ml11',
    opacity: 0,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });
</script>

</html>