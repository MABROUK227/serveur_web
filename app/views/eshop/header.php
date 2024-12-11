<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $data['page_title'] ?> | Blib</title>
    <link href="<?php echo ASSETS . THEME ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo ASSETS . THEME ?>css/font-awesome.min.css" rel="stylesheet">
    <link href="<?php echo ASSETS . THEME ?>css/prettyPhoto.css" rel="stylesheet">
    <link href="<?php echo ASSETS . THEME ?>css/price-range.css" rel="stylesheet">
    <link href="<?php echo ASSETS . THEME ?>css/animate.css" rel="stylesheet">
	<link href="<?php echo ASSETS . THEME ?>css/main.css" rel="stylesheet">
	<link href="<?php echo ASSETS . THEME ?>css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="<?php echo ASSETS . THEME ?>images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo ASSETS . THEME ?>images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo ASSETS . THEME ?>images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo ASSETS . THEME ?>images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="<?php echo ASSETS . THEME ?>images/ico/apple-touch-icon-57-precomposed.png">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  
	
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index"><img style="width: 100px; hight:100px" src="<?php echo ASSETS . THEME ?>images/home/log.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
						<div class="btn-group">
						<div id="google_element"  style="width: 150px;margin-right:30px;height:2px"></div>
								</div>
							<div class="btn-group">
								
								<button  type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									<?php if(isset($_SESSION['cur'])){echo  strtoupper($_SESSION['cur']);} else{echo "DH";} ?>
									<span class="caret"></span>
								</button>
								
								
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<?php if(isset($data['user_data'])): ?>
									<li><a href="#"><i class="fa fa-user"></i> <?= $data['user_data']->email ?></a></li>
								<?php  else: ?>
									<li><a href="#"><i class="fa fa-user"></i>compte</a></li>
									<?php endif; ?> 
								<li><a href="wishlist"><i class="fa fa-star"></i> list<span class="badge bg-theme"  ><?php if(is_array($data['rows_wish_list'])){echo count($data['rows_wish_list']);}else{echo "";}?></span> </a></li>
	
								<li><a href="cart"><i class="fa fa-shopping-cart"  > produit <span class="badge bg-theme"  ><?php if(is_array($data['rows'])){echo count($data['rows']);}else{echo "";}?></span></i></a></li>
								<li><a href="<?php if(!empty($data['user_data'])){
											echo "checkout";

										}else{
											echo "login";
										}  ?>"><i class="fa fa-crosshairs"></i> Chec</a></li>
								<?php if(isset($data['user_data'])): ?>
								<li><a href="logout"><i class="fa fa-lock"></i> Logout</a></li>
								<?php  else: ?>
									<li><a href="login"><i class="fa fa-lock"></i> Login</a></li>
									<?php endif; ?> 
									
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop">Produits</a></li>
										<li><a href="<?php if(!empty($data['user_data'])){
											echo "checkout";

										}else{
											echo "login";
										}  ?>">Checkout</a></li> 
										<li><a href="cart">Cart</a></li> 
										
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">Connexion<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
									<li><a href="login">connexion</a></li> 
									<li><a href="signup">inscription</a></li> 
                                    </ul>
                                </li> 
								<li><a href="contact">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3"  >
						<div class="search_box pull-right">
						<form action="results" method="get" >
                            <input type="text" placeholder="Search" name="prod_result">
                            
                        </form>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header>
	<!--/header-->