<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MENU.aspx.cs" Inherits="MENU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
        
        <!-- Page Header Start -->
        <div class="page-header mb-0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Food Menu</h2>
                    </div>
                    <div class="col-12">
                        <a href="">Home</a>
                        <a href="">Menu</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
        
        <!-- Food Start -->
        <div class="food mt-0">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-4">
                        <div class="food-item">
                            <i class="flaticon-burger"></i>
                            <h2>Burgers</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasel nec pretium mi. Curabit facilis ornare velit non vulputa. Aliquam metus tortor auctor quis sem. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="food-item">
                            <i class="flaticon-snack"></i>
                            <h2>Snacks</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasel nec pretium mi. Curabit facilis ornare velit non vulputa. Aliquam metus tortor auctor quis sem. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="food-item">
                            <i class="flaticon-cocktail"></i>
                            <h2>Beverages</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasel nec pretium mi. Curabit facilis ornare velit non vulputa. Aliquam metus tortor auctor quis sem. 
                            </p>
                            <a href="">View Menu</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Food End -->
        

        <!-- Menu Start -->
        <div class="menu">
            <div class="container">
                <div class="section-header text-center">
                    <p>Food Menu</p>
                    <h2>Delicious Food Menu</h2>
                </div>
                <div class="menu-tab">
                    <ul class="nav nav-pills justify-content-center">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#burgers">Burgers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#snacks">Snacks</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#beverages">Beverages</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div id="burgers" class="container tab-pane active">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-burger.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Mini cheese Burger</span> <strong>$9.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-burger.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Double size burger</span> <strong>$11.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-burger.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Bacon, EGG and Cheese</span> <strong>$13.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-burger.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Pulled porx Burger</span> <strong>$18.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-burger.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Fried chicken Burger</span> <strong>$22.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="img/menu-burger-img.jpg" alt="Image">
                                </div>
                            </div>
                        </div>
                        <div id="snacks" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-snack.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Corn Tikki - Spicy fried Aloo</span> <strong>$15.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-snack.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Bread besan Toast</span> <strong>$35.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-snack.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Healthy soya nugget snacks</span> <strong>$20.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-snack.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Tandoori Soya Chunks</span> <strong>$30.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="img/menu-snack-img.jpg" alt="Image">
                                </div>
                            </div>
                        </div>
                        <div id="beverages" class="container tab-pane fade">
                            <div class="row">
                                <div class="col-lg-7 col-md-12">
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-beverage.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Single Cup Brew</span> <strong>$7.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-beverage.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Caffe Americano</span> <strong>$9.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-beverage.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Caramel Macchiato</span> <strong>$15.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-beverage.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Standard black coffee</span> <strong>$8.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                    <div class="menu-item">
                                        <div class="menu-img">
                                            <img src="img/menu-beverage.jpg" alt="Image">
                                        </div>
                                        <div class="menu-text">
                                            <h3><span>Standard black coffee</span> <strong>$12.00</strong></h3>
                                            <p>Lorem ipsum dolor sit amet elit. Phasel nec preti facil</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 d-none d-lg-block">
                                    <img src="img/menu-beverage-img.jpg" alt="Image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Menu End -->


        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="footer-contact">
                                    <h2>Our Address</h2>
                                    <p><i class="fa fa-map-marker-alt"></i>123 Street, New York, USA</p>
                                    <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                                    <p><i class="fa fa-envelope"></i>info@example.com</p>
                                    <div class="footer-social">
                                        <a href=""><i class="fab fa-twitter"></i></a>
                                        <a href=""><i class="fab fa-facebook-f"></i></a>
                                        <a href=""><i class="fab fa-youtube"></i></a>
                                        <a href=""><i class="fab fa-instagram"></i></a>
                                        <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="footer-link">
                                    <h2>Quick Links</h2>
                                    <a href="">Terms of use</a>
                                    <a href="">Privacy policy</a>
                                    <a href="">Cookies</a>
                                    <a href="">Help</a>
                                    <a href="">FQAs</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="footer-newsletter">
                            <h2>Newsletter</h2>
                            <p>
                                Lorem ipsum dolor sit amet elit. Quisque eu lectus a leo dictum nec non quam. Tortor eu placerat rhoncus, lorem quam iaculis felis, sed lacus neque id eros.
                            </p>
                            <div class="form">
                                <input class="form-control" placeholder="Email goes here">
                                <button class="btn custom-btn">Submit</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <p>Copyright &copy; <a href="#">Your Site Name</a>, All Right Reserved.</p>
                    <p>Designed By <a href="https://htmlcodex.com">HTML Codex</a></p>
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
</asp:Content>

