<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
    <head>
        <title>Movies Store a Entertainment Category Website Template | Contact :: w3layouts</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script> 
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script language="JavaScript">
            function Validate()
            {

                var image = document.getElementById("image").value;
                if (image != '') {
                    var checkimg = image.toLowerCase();
                    if (!checkimg.match(/(\.jpg|\.png|\.JPG|\.PNG|\.jpeg|\.JPEG)$/)) {
                        alert("Please enter Image File Extensions .jpg,.png,.jpeg");
                        document.getElementById("image").focus();
                        return false;
                    }
                    return true;
                } else {
                    alert("Please enter Image.");
                    return false;
                }

            }
        </script>
    </head>
    <body>
        <div class="header">
            <div class="headertop_desc">
                <div class="wrap">
                    <div class="nav_list">
                        <ul>
                            <li><a href="home.htm">Home</a></li>
                            <li><a href="contact.html">Contact</a></li>
                        </ul>
                    </div>
                    <div class="account_desc">
                        <ul>    
                            <li><a href="sellerlogin.htm">Sell</a></li>
                            <li><a href="#">Checkout</a></li>
                                <c:choose>
                                    <c:when test="${sessionScope.loginDetails.name == null}" > 
                                    <div class="dropdown">
                                        <li><a href="#">MY Account</a></li>
                                        <div class="dropdown-content">
                                            <a href="#">Register</a>
                                            <a href="sellerlogin.htm">Login</a>
                                        </div>
                                    </div>
                                </c:when >
                                <c:when test="${sessionScope.loginDetails.name != null}" >
                                    <div class="dropdown">
                                        <li><a href="#">MY Account</a></li>
                                        <div class="dropdown-content">
                                            <a href="sellerLogout.htm">Log Out</a>
                                        </div>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    do nothing
                                </c:otherwise>
                            </c:choose>

                        </ul>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="wrap">
                <div class="header_top">
                    <div class="logo">
                        <a href="home.htm"><img src="images/logo.jpg" width="200px" height="95px" alt="" /></a>
                    </div>
                    <div class="header_top_right">
                        <div class="shortcutHome">
                            <a href="Saddproduct.htm"><img src="images/posting.png"><br>ADD PRODUCT</a>
                            <a href="Product.htm"><img src="images/photo.png"><br>MY PRODUCT</a>
                            <a href="sellerLogout.htm"><img src="images/halaman.png"><br>LOG OUT</a>
                        </div>
                    </div>
                    <script type="text/javascript">
                        function DropDown(el) {
                            this.dd = el;
                            this.initEvents();
                        }
                        DropDown.prototype = {
                            initEvents: function () {
                                var obj = this;

                                obj.dd.on('click', function (event) {
                                    $(this).toggleClass('active');
                                    event.stopPropagation();
                                });
                            }
                        }

                        $(function () {

                            var dd = new DropDown($('#dd'));

                            $(document).click(function () {
                                // all dropdowns
                                $('.wrapper-dropdown-2').removeClass('active');
                            });

                        });
                    </script>
                    <div class="clear"></div>
                </div>     				
            </div>
        </div>
        <div class="main">
            <div class="wrap">
                <div class="content">
                    <div class="section group">
                        <div class="col span_2_of_3">
                            <div class="contact-form">
                                <div  class="form">
                                    <form:form action="Saddproduct.htm" method="post" commandName="ProductDetails" onsubmit="return Validate();" enctype="multipart/form-data">
                                        <!--<form id="contactform">--> 

                                        <select class="select-style gender" name="type">
                                            <option value="select">TYPE</option>
                                            <option value="D">Decoration</option>
                                            <option value="LG">Light</option>
                                            <option value="S">Sound</option>
                                            <option value="P">Program</option>
                                            <option value="B">Bandbaja</option>
                                            <option value="F">Food</option>
                                            <option value="LD">LODGE</option>
                                            <option value="C">Cake</option>
                                        </select><br><br>
                                        <p class="contact"><label for="name">Product Name</label></p> 
                                        <input  name="productName" placeholder="" required="" tabindex="1" type="text"> 
                                        <p class="contact"><label for="username">Product Description</label></p> 
                                        <input style="width:400px; height:100px" name="description" placeholder="" required="" tabindex="2" type="text"> 
                                        <p class="contact"><label >Product Image</label></p>
                                        <form:input path="filedata" id="image" type="file"/>
                                        <!--<input type="file" name="photo" size="50"/>-->
                                        </br>	 
                                        <p class="contact"><label for="password">PRICE IN RUPEE</label></p> 
                                        <input type="text"  name="price" required=""> </br>                                       
                                        <input class="buttom" name="submit" id="submit" tabindex="5" value="ADD PRODUCT" type="submit" onsubmit="Validate()"> 	 
                                        <p>
                                            <label for="password"><font style="color: greenyellow">${Success}</font></label>
                                        </p>
                                    </form:form>
                                </div>
                            </div>
                        </div>		
                    </div> 
                </div>
            </div>
            <div class="footer">
                <!--                <div class="wrap">	
                                    <div class="section group">
                                        <div class="col_1_of_4 span_1_of_4">
                                            <h4>Information</h4>
                                            <h4>PRODUCTS</h4>
                                            <ul>
                                                <li><a href="contact.html">Puja</a></li>
                                                <li><a href="contact.html">Wedding</a></li>
                                                <li><a href="contact.html">BIRTHDAY</a></li>
                                                <li><a href="contact.html">Meeting</a></li>
                                            </ul>
                                        </div>
                                                                <div class="col_1_of_4 span_1_of_4">
                                                                    <h4>Why buy from us</h4>
                                                                    <ul>
                                                                        <li><a href="#">About Us</a></li>
                                                                        <li><a href="#">Customer Service</a></li>
                                                                        <li><a href="#">Privacy Policy</a></li>
                                                                        <li><a href="contact.html">Site Map</a></li>
                                                                        <li><a href="#">Search Terms</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col_1_of_4 span_1_of_4">
                                                                    <h4>My account</h4>
                                                                    <ul>
                                                                        <li><a href="contact.html">Sign In</a></li>
                                                                        <li><a href="index.html">View Cart</a></li>
                                                                        <li><a href="#">My Wishlist</a></li>
                                                                        <li><a href="#">Track My Order</a></li>
                                                                        <li><a href="contact.html">Help</a></li>
                                                                    </ul>
                                                                </div>
                                        <div class="col_1_of_4 span_1_of_4">
                                            <h4>Contact</h4>
                                            <ul>
                                                <li><span>+918158042069</span></li>
                                                <li><span>suvasmnt@yahoo.in</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>-->
                <div class="copy_right">
                    <p>� Movies Store. All Rights Reserved | Design by  <a href="http://w3layouts.com">W3Layouts</a> </p>
                </div>			
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    </body>
</html>
