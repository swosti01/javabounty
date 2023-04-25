    <!DOCTYPE html>
<html>
  <head>
    <title>Bounty | Sign In</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/stylex.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/stylex.css">
    <style>
      .signinBody{height:100vh;padding:0 2.2em;background:var(--col3);}
      .signinNavbar{padding:1em 0;}
      .signinMainTitleCrate{font-size:26px;letter-spacing:.1em;}
      .signinSingleLink{font-size:18px;text-decoration: none;color:var(--col1);margin:0 30px;}
      .signinSingleLink:hover{text-decoration: underline;transition:.3s;}


      .signinTextCrate{padding: 100px;}
      .signiTextSloth{font-size:18px;line-height:34px;}

      .signinFormBigTitle{font-size:46px;}
      .signinFormCrate{padding:100px;}
      .signinFrom{padding:10px 70px 100px 0;}
      .signinInputs{font-size:18px;padding:10px;background:#fff;border:1px solid #000;border-radius:6px;
        margin:10px 0;}
      .signinSigninCrate{padding-top:10px;}
      .signinButton{font-size:20px;padding:7px 25px;border-radius:4px;background:var(--col1);color:var(--col4);
        border:1px solid var(--col1);cursor: pointer;}
      .signinButton:hover {background:var(--col3);color:var(--col1);transition:.3s;}
      .signinForgetpwLink{color:#000;}
    </style>
  </head>
  <body>
    <div class="signinBody bor">
      <div class="inrSigninBody bor flex fdc h100">
        
        <div class="signinNavbar bor flex jcsb">
          <a href="admin?page=index" class="signinMainTitleCrate ff1 totext">
            BOUNTY
          </a>            
          <div class="signinMainLinkCrate flex jcfe ff1">
            <a href="#" class="signinSingleLink bor flexmid">Customer</a>
            <a href="#" class="signinSingleLink bor flexmid">Solution</a>
            <a href="#" class="signinSingleLink bor flexmid">About Us</a>
<!--            <a href="admin?page=registerpage" class="signinSingleLink bor flexmid">Sign Up</a>-->
          </div>
        </div>

        <div class="signinContentCrate bor fg1 flex">
          <div class="signinTextCrate bor w50 flexmid plr50">
            <div class="signiTextSloth bor ff1">
              <div class="landImageSloth bor flex">
                <img src="image/background.png" alt="" class="landImageImg w100 bor">
              </div><br>
              The only way to do great work is to love what you do. 
              If you haven't found it yet, keep looking. Don't settle. 
              As with all matters of the heart, you'll know when you find it.
              <br/>- Steve Jobs
            </div>
          </div>
          <div class="signinFormCrate bor w50 flex fdc jcc">
            <div class="signinFormBigTitle bor ff1">Welcome</div>
            <form action="admin?page=login" method="post" class="signinFrom bor flex fdc" >
                <input type="text" class="signinInputs signinInputEmail ff1" placeholder="work email" name="Workemail" value="kritesh@bounty.com">
                <input type="text" class="signinInputs signinInputEmail ff1" placeholder="password" name="Password" value="pass1234">
              <div class="signinSigninCrate bor flex pb10">
              <input type="submit" value="Signin" class="signinButton totext ff1">
              </div>
              <a href="#" class="signinForgetpwLink ff1">Forget Password</a>
            </form>
          </div>
        </div>

      </div>
    </div>
    <script src="js1/script1.js"></script>
    <script>
      //var mainbody = document.querySelector(".mainbody");
      //var inrgmblock = document.querySelectorAll(".inrgmblock");
    </script>
  </body>
</html>
