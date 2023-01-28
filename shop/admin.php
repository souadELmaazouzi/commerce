<?php
session_start();
if(isset($_SESSION['email'])==false ):
    header("location:Adminlogin.html");
  endif;
  if(isset($_GET["add"]) && $_GET["add"]=="error")
  {
      echo '<script> alert("Error !") </script>';
  }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap style -->
    <link id="callCss" rel="stylesheet" href="themes/bootshop/bootstrap.min.css" media="screen" />
    <link href="themes/css/base.css" rel="stylesheet" media="screen" />
    <!-- Bootstrap style responsive -->
    <link href="themes/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="themes/css/font-awesome.css" rel="stylesheet" type="text/css">
    <!-- Google-code-prettify -->
    <link href="themes/js/google-code-prettify/prettify.css" rel="stylesheet" />
    <!-- fav and touch icons -->
    <link rel="shortcut icon" href="themes/images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144"
        href="themes/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114"
        href="themes/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="themes/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="themes/images/ico/apple-touch-icon-57-precomposed.png">
   
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <script src="themes/js/jquery.js" type="text/javascript"></script>
    
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

    
    <style type="text/css" id="enject"></style>
    <!--==our css ==============-->
    <link rel="stylesheet" href="css/styleAdmin.css">
    <link rel="stylesheet" href="css/index.css">
</head>

<body>
    <div id="header">
        <div class="container">

            <!-- Navbar ================================================== -->
            <div id="logoArea" class="navbar">
                <a id="smallScreen" data-target="#topMenu" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div >
                    <a class="brand" href="index.html"><img src="themes/images/logo.png" alt="Bootsshop" /></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End====================================================================== -->
    <div id="mainBody">
        <div class="container">
            <div class="row">
                <!-- Sidebar ================================================== -->

                <!-- Sidebar end=============================================== -->
                <div class="span2"></div>

                <div class="span8">
                    <ul class="breadcrumb">
                        <li><a href="#" id="btnAdd"  >Add</a> <span class="divider">/</span></li>
                        <li><a href="#" id="btnDelete">Delete</a> <span class="divider">/</span></li>
                        <li><a href="#" id="btnModify">Modify</a> <span class="divider">/</span></li>
                        <li><a href="#" id="btnInfos">Infos</a> <span class="divider">/</span></li>
                        <li><a href="#" id="btnCommande">Commande List</a> <span class="divider">/</span></li>
                        <li><a href="adminMessages.html" id="btnEmploye">Messages</a> <span class="divider"></span></li>

                    </ul>
                    <!-- add ================================================-->
                    <div class="well" id="divAdd">
                        <h3>Add Product</h3>

                        <form class="form-horizontal " method="post" action="AdminLogin/addArticle.php" enctype="multipart/form-data" >

                        <div class="control-group  ">
                                <label class="control-label" for="inputreference">Reference <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="inputreference" name="reference" placeholder="Reference">
                                </div>
                            </div>                        
                            <div class="control-group  ">
                                <label class="control-label" for="inputFname1">Label <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="inputdesignation" name="designation" placeholder="Product Name">
                                </div>
                            </div>
                            <div class="control-group ">
                                <label class="control-label">Categorie <sup>*</sup></label>
                                <div class="controls">
                                    <select class="span2" id="selectCategorie" name="categorie">
                                       
                                        
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPrice">price 1 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price1" id="inputPrice1" placeholder="Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPrice">price 2 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price2"  id="inputPrice2" placeholder="Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPrice">price 3 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price3" id="inputPrice3" placeholder="Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputQuantity">Quantity <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="quantite" id="inputQuantity" placeholder="Quantity">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="input_description">Description <sup>*</sup></label>
                                <div class="controls">
                                  
                                    <textarea name="description" id="inputDescription" rows="5" cols="50"></textarea>


                                </div>
                            </div>
                           
                            <div class="control-group">
                                <label class="control-label" for="images">Add Pictures <sup>*</sup></label>
                                <div class="controls">
                                    <input type="file" id="fileimages" name="image[]"   value="select 4 images"  multiple>
                                </div>
                            </div>
                            <div class="control-group">

                                <div class="controls">
                                        
                                        <img src="" alt="" id="image1" 
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
                                        <img src="" alt="" id="image2" 
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
                                        <img src="" alt="" id="image3" 
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
                                        <img src="" alt="" id="image4" 
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
    
                                </div>
                            </div>
                            <div class="control-group">
                                <hr>
                                <div class="controls">
                                    <input type="Submit" id="addProduct" value="Add product" style="padding:10px 30px ;"
                                        class="btn  btn-light">
                                </div>
                            </div>


                        </form>
                    </div>

 <!-- end add ================================================-->

 <!-- delete ================================================-->
 <div class="well" id="divDelete">
                        <h3>Delete Product</h3>

                        <form class="form-horizontal" >

                            <div class="control-group  ">
                                <label class="control-label" for="inputFname1">Label <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="inputDeleteName" placeholder="Product Name">
                                </div>
                            </div>
                            <div class="control-group ">
                                <label class="control-label">Categorie <sup>*</sup></label>
                                <div class="controls">
                                    <select class="span2" id="selectCategorie2" name="days">
                                     
                                       
                                    </select>
                                </div>
                            </div>
                           
                            <div class="control-group">
                                <hr>
                                <div class="controls">
                                    <input type="button" id="DeleteProduct" value="Search" style="padding:10px 30px ;"
                                        class="btn  btn-success">
                                </div>
                            </div>
                            <div class="control-group">
                                <hr>
                                <div id="imgs"class="controls  ">    
                                <!--images place-->
                                </div>
                            </div>
                            

                        </form>
                       
                    </div>

                    <!--modal for delete -->

                    <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                 <span aria-hidden="true">&times;</span>
          </button>
      </div>
      <div class="modal-body">
          <div class="insideModal">
            <div id="mdImage" >
                <img id="modal-image"  alt="">
            </div>
            <div id="modal-description" > 

            </div>
          </div>
            <h4>Do you want to Delete the products reference : <span id="deleteReference"></span>  </h4>
          </div>
          <div class="modal-footer ">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <span class="modal-footer-delete">
             <!--button delete from jquery-->
            </span>
       </div>
    </div>
  </div>
</div>
 <!--------------------->
 <!-- end delete ================================================-->

 <!-- Modify ================================================-->
 <div class="well" id="divModify">
                        <h3>Modify Product</h3>

                        <form class="form-horizontal " method="post" action="AdminLogin/addArticle.php" enctype="multipart/form-data" >

                           <div class="control-group reference-modify ">
                                <label class="control-label" for="inputreference">Reference <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="reference-modify" name="referencesModify" placeholder="Reference">
                                </div>
                            </div> 
                            <div class="control-group  ">
                                <div class="controls">
                                    <input type="button" class="btn btn-primary" id="search-modify" name="reference-Modifys" value="Search">
                                </div>
                            </div> 
                            <div id="show-modify"><!--to hide =============-->
                             <div class="control-group  ">
                                <label class="control-label" for="inputFname1">Label <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="designation-modify" name="designation" placeholder="Product Name">
                                </div>
                             </div>
                             <div class="control-group ">
                                <label class="control-label">Categorie <sup>*</sup></label>
                                <div class="controls">
                                    <select class="span2" id="selectCategorie-modify" name="categorie">
                                       
                                        
                                    </select>
                                </div>
                            </div>
                           
                             <div class="control-group">
                                <label class="control-label" for="inputPrice">price 1 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price1" id="Price1-modify" placeholder="Price">
                                </div>
                             </div>
                             <div class="control-group">
                                <label class="control-label" for="inputPrice">price 2 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price2"  id="Price2-modify" placeholder="Price">
                                </div>
                             </div>
                             <div class="control-group">
                                <label class="control-label" for="inputPrice">price 3 (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="price3" id="Price3-modify" placeholder="Price">
                                </div>
                             </div>
                             <div class="control-group">
                                <label class="control-label" for="inputQuantity">Quantity <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" name="quantite" id="Quantity-modify" placeholder="Quantity">
                                </div>
                             </div>
                             <div class="control-group">
                                <label class="control-label" for="input_description">Description <sup>*</sup></label>
                                <div class="controls">
                                  
                                    <textarea name="description" id="Description-modify" rows="5" cols="50"></textarea>


                                </div>
                             </div>
                           
                             <div class="control-group">
                                <label class="control-label" for="images">Add Pictures <sup>*</sup></label>
                                <div class="controls">
                                    <input type="file" id="fileimages-modify" name="image" multiple>
                                </div>
                             </div>

                             <div class="control-group">
                                <div class="controls">
                                    <img src="" alt="" id="image1-modify" 
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
                                </div>
                             </div>

                             <div class="control-group">
                                <hr>
                                <div class="controls">
                                    <input type="Submit" id="ModifyProducts" name="btnModify" value="Modify product" style="padding:10px 30px ;"
                                        class="btn  btn-success">
                                </div>
                             </div>
                            </div>  
                            <!--end to hide ===============-->                     

                         </form>
                    </div>

 <!-- end Modify ================================================-->

  <!-- infos ================================================-->
 <div class="well" id="divInfos">
                        <h3>Infos Product</h3>

                        <form class="form-horizontal ">

                            <div class="control-group  ">
                                <label class="control-label" for="inputFname1">Label <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="infosLabel" placeholder="Product Name">
                                </div>
                            </div>
                           
                            <div class="control-group">
                                <hr>
                                <div class="controls">
                                    <input type="submit" id="infosProduct" value="Add product" style="padding:10px 30px ;"
                                        class="btn  btn-success">
                                </div>
                            </div>

                        </form>

                                 <div class="Imagesinfos">
                                    
                                </div>
                                <table id="example">
    <thead>
      <tr><th>label</th><th>Description</th><th>prix1</th><th>prix2</th><th>prix3</th>
    <th>quantite</th><th>image</th></tr> 
    </thead>
    <tbody id="tbodyInfos">
    </tbody>
  </table>

                    </div>
                   
                            
                             
 <!-- end infos ================================================-->

  <!-- commande list ================================================-->
  <div class="well" id="divCommande">
                 <table class="table table-striped">
                 <thead>
                 <th>Nom Et Prenom</th>
                 <th>Ville</th>
                 <th>Adresse</th>
                 <th>Produits et quantite et prix </th>
                 <th>Livraison</th>
                 <th> Total </th>
                 <th> Valider</th>
                 <th> Supprimer</th>
                 </thead>
                 <tbody id="CommandeListTable">
                   <tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr>
                 </tbody>
                 </table>
                    </div>
 <!-- end commande list ================================================-->

  <!-- Employe ================================================-->
  <div class="well" id="divEmploye">
                        <h3>Add Employe</h3>

                        <form class="form-horizontal ">

                            <div class="control-group  ">
                                <label class="control-label" for="inputFname1">Label <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="inputFname1" placeholder="Product Name">
                                </div>
                            </div>
                            <div class="control-group ">
                                <label class="control-label">Categorie <sup>*</sup></label>
                                <div class="controls">
                                    <select class="span2" name="days">
                                        <option value="">-</option>
                                        <option value="1">cameras</option>
                                        <option value="2">Computers</option>
                                        <option value="3">Phones</option>
                                        <option value="4">sound</option>
                                        <option value="5">women's clothes</option>
                                        <option value="6">women's shoes</option>
                                        <option value="7">women's bag</option>
                                        <option value="8">men's clothes</option>
                                        <option value="9">men's shoes</option>
                                        <option value="10">kids clothes</option>
                                        <option value="11">kids shoes</option>
                                        <option value="12">food</option>
                                        <option value="13">health and beauty</option>
                                        <option value="14">sports</option>
                                        <option value="15">books</option>
                                        <option value="16">other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputPrice">price (Dh) <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" id="inputPrice" placeholder="Price">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="inputQuantity">Quantity <sup>*</sup></label>
                                <div class="controls">
                                    <input type="number" id="inputQuantity" placeholder="Quantity">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="input_description">Description <sup>*</sup></label>
                                <div class="controls">
                                    <input type="text" id="input_description" placeholder="Description">
                                </div>
                            </div>
                           
                            <div class="control-group">
                                <label class="control-label" for="images">Add Pictures <sup>*</sup></label>
                                <div class="controls">
                                    <input type="file" id="fileimages" multiple>
                                </div>
                            </div>
                            <div class="control-group">

                                <div class="controls">
                                    <img src="" alt="" id="image1"
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">

                                    <img src="themes/images/products/1.jpg" alt=""
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">

                                    <img src="themes/images/products/1.jpg" alt=""
                                        style="width: 100px; border: 1px dotted gray; padding-right: 10px;">
                                </div>
                            </div>
                            <div class="control-group">
                                <hr>
                                <div class="controls">
                                    <input type="submit" id="addProduct" value="Add product" style="padding:10px 30px ;"
                                        class="btn  btn-success">
                                </div>
                            </div>


                        </form>
                    </div>
 <!-- end Employe ================================================-->
                </div>
                <div class="span2"></div>
            </div>
        </div>
    </div>

    <!-- Footer ================================================================== -->
    <div id="footerSection">
        <div class="container">
            <div class="row">
                <div class="span3">
                    <h5>ACCOUNT</h5>
                    <a href="login.html">YOUR ACCOUNT</a>
                    <a href="login.html">PERSONAL INFORMATION</a>
                    <a href="login.html">ADDRESSES</a>
                    <a href="login.html">DISCOUNT</a>
                    <a href="login.html">ORDER HISTORY</a>
                </div>
                <div class="span3">
                    <h5>INFORMATION</h5>
                    <a href="contact.html">CONTACT</a>
                    <a href="register.html">REGISTRATION</a>
                    <a href="legal_notice.html">LEGAL NOTICE</a>
                    <a href="tac.html">TERMS AND CONDITIONS</a>
                    <a href="faq.html">FAQ</a>
                </div>
                <div class="span3">
                    <h5>OUR OFFERS</h5>
                    <a href="#">NEW PRODUCTS</a>
                    <a href="#">TOP SELLERS</a>
                    <a href="special_offer.html">SPECIAL OFFERS</a>
                    <a href="#">MANUFACTURERS</a>
                    <a href="#">SUPPLIERS</a>
                </div>
                <div id="socialMedia" class="span3 pull-right">
                    <h5>SOCIAL MEDIA </h5>
                    <a href="#"><img width="60" height="60" src="themes/images/facebook.png" title="facebook"
                            alt="facebook" /></a>
                    <a href="#"><img width="60" height="60" src="themes/images/twitter.png" title="twitter"
                            alt="twitter" /></a>
                    <a href="#"><img width="60" height="60" src="themes/images/youtube.png" title="youtube"
                            alt="youtube" /></a>
                </div>
            </div>
            <p class="pull-right">&copy; Bootshop</p>
        </div><!-- Container End -->
    </div>
    <!-- Placed at the end of the document so the pages load faster ============================================= -->
    <script src="themes/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="themes/js/google-code-prettify/prettify.js"></script>
    <script src="themes/js/bootshop.js"></script>
    <script src="themes/js/jquery.lightbox-0.5.js"></script>
    <script src="javascript/scriptAdmin.js"  ></script>
  
    <!-- Themes switcher section ============================================================================================= -->
    <div id="secectionBox">
        <link rel="stylesheet" href="themes/switch/themeswitch.css" type="text/css" media="screen" />
        <script src="themes/switch/theamswitcher.js" type="text/javascript" charset="utf-8"></script>
        <div id="themeContainer">
            <div id="hideme" class="themeTitle">Style Selector</div>
            <div class="themeName">Oregional Skin</div>
            <div class="images style">
                <a href="themes/css/#" name="bootshop"><img src="themes/switch/images/clr/bootshop.png"
                        alt="bootstrap business templates" class="active"></a>
                <a href="themes/css/#" name="businessltd"><img src="themes/switch/images/clr/businessltd.png"
                        alt="bootstrap business templates" class="active"></a>
            </div>
            <div class="themeName">Bootswatch Skins (11)</div>
            <div class="images style">
                <a href="themes/css/#" name="amelia" title="Amelia"><img src="themes/switch/images/clr/amelia.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="spruce" title="Spruce"><img src="themes/switch/images/clr/spruce.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="superhero" title="Superhero"><img
                        src="themes/switch/images/clr/superhero.png" alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="cyborg"><img src="themes/switch/images/clr/cyborg.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="cerulean"><img src="themes/switch/images/clr/cerulean.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="journal"><img src="themes/switch/images/clr/journal.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="readable"><img src="themes/switch/images/clr/readable.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="simplex"><img src="themes/switch/images/clr/simplex.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="slate"><img src="themes/switch/images/clr/slate.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="spacelab"><img src="themes/switch/images/clr/spacelab.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="united"><img src="themes/switch/images/clr/united.png"
                        alt="bootstrap business templates"></a>
                <p style="margin:0;line-height:normal;margin-left:-10px;display:none;"><small>These are just examples
                        and you can build your own color scheme in the backend.</small></p>
            </div>
            <div class="themeName">Background Patterns </div>
            <div class="images patterns">
                <a href="themes/css/#" name="pattern1"><img src="themes/switch/images/pattern/pattern1.png"
                        alt="bootstrap business templates" class="active"></a>
                <a href="themes/css/#" name="pattern2"><img src="themes/switch/images/pattern/pattern2.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern3"><img src="themes/switch/images/pattern/pattern3.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern4"><img src="themes/switch/images/pattern/pattern4.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern5"><img src="themes/switch/images/pattern/pattern5.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern6"><img src="themes/switch/images/pattern/pattern6.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern7"><img src="themes/switch/images/pattern/pattern7.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern8"><img src="themes/switch/images/pattern/pattern8.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern9"><img src="themes/switch/images/pattern/pattern9.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern10"><img src="themes/switch/images/pattern/pattern10.png"
                        alt="bootstrap business templates"></a>

                <a href="themes/css/#" name="pattern11"><img src="themes/switch/images/pattern/pattern11.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern12"><img src="themes/switch/images/pattern/pattern12.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern13"><img src="themes/switch/images/pattern/pattern13.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern14"><img src="themes/switch/images/pattern/pattern14.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern15"><img src="themes/switch/images/pattern/pattern15.png"
                        alt="bootstrap business templates"></a>

                <a href="themes/css/#" name="pattern16"><img src="themes/switch/images/pattern/pattern16.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern17"><img src="themes/switch/images/pattern/pattern17.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern18"><img src="themes/switch/images/pattern/pattern18.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern19"><img src="themes/switch/images/pattern/pattern19.png"
                        alt="bootstrap business templates"></a>
                <a href="themes/css/#" name="pattern20"><img src="themes/switch/images/pattern/pattern20.png"
                        alt="bootstrap business templates"></a>

            </div>
        </div>
    </div>
    <span id="themesBtn"></span>
</body>

</html>