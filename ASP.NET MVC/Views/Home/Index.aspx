<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <!--=============== basic  ===============-->

    <meta charset="UTF-8">
    <title>Sushant Parkhi - Designer and Developer</title>
    <meta name="description" content="I am Freelance developer providing services and solution for web designing and development with providing other services like SEO, App Development using various technologies like ASP.NET, C#, Jquery, HTML5, CSS3 etc. ">
    <meta name="keywords" content="Website, Designer, Developer, C#, ASP.NET, Microsoft, Android, iPhone, SEO, MVC, Jquery, Javascript, AJAX">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="author" content="Sushant Parkhi" />
    <!--=============== css  ===============-->

    <link rel="stylesheet" href="/Content/css/font-awesome.min.css">
    <link rel="stylesheet" href="/Content/css/normalize.css" type="text/css" media="screen">
    <link type="text/css" rel="stylesheet" href="/Content/css/animate.css">
    <link rel="stylesheet" href="/Content/css/grid.css" type="text/css" media="screen">
    <link rel="stylesheet" href="/Content/css/owl.carousel.css" type="text/css" media="screen">
    <link rel="stylesheet" href="/Content/css/magnific-popup.css" media="all">
    <link rel="stylesheet" href="/Content/css/style.css" type="text/css" media="screen">

    <!--=============== colors  ===============-->

    <%--    <link rel="alternate stylesheet" type="text/css" href="/Content/css/blue-style.css" title="blue" media="screen" />
    <link rel="alternate stylesheet" type="text/css" href="/Content/css/green-style.css" title="green" media="screen" />
    <link rel="alternate stylesheet" type="text/css" href="/Content/css/yellow-style.css" title="yellow" media="screen" />--%>
    <link rel="stylesheet" type="text/css" href="/Content/css/orange-style.css" title="red" media="screen" />

    <!--=============== fonts  ===============-->

    <link href='http://fonts.googleapis.com/css?family=Istok+Web|Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!--=============== google map ===============-->

    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

    <!--=============== favicons ===============-->

    <link rel="shortcut icon" href="/Content/images/favicon.ico">
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-48890013-1', 'sushantparkhi.com');
        ga('send', 'pageview');

    </script>
</head>

<body onload="initialize()">

    <!--=============== main ===============-->
    <div id="main">

        <!--=============== intro ===============-->

        <div id="intro">

            <!--=============== navigation ===============-->

            <div class="nav-holder">

                <div class="nav-button transition">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>

                <div class="nav-border fade"></div>
                <div class="link-holder fade">
                    <ul>
                        <li class="cur"><a href="#about" class="scroll-link transition">About</a></li>
                        <li><a href="#work" class="scroll-link transition">Portfolio</a></li>
                        <li><a href="#services" class="scroll-link transition">Services</a></li>
                        <li><a href="#contacts" class="scroll-link transition">Contacts</a></li>
                    </ul>
                </div>

            </div>
            <!--=============== navigation end ===============-->

            <!--=============== text-ticker-holder ===============-->

            <div class="text-ticker-holder">

                <div class="overlay"></div>
                <div class="container">

                    <div class="anim-text-holder">

                        <h1 class="animtext">Hi i am Sushant Parkhi</h1>
                        <h3 class="animtext fade"><span itemprop="title">Web Designer & Developer</span></h3>

                        <div class="start-holder fade">

                            <div class="start-decor transition"></div>

                            <a href="#about" class="scroll-link start"><i class="fa fa-angle-down"></i></a>

                        </div>

                    </div>

                </div>

            </div>
            <!--=============== text-ticker-holder end===============-->

        </div>
        <!--=============== intro end ===============-->

        <!--=============== wrapper ===============-->

        <div id="wrapper">

            <!--=============== left-sidebar ===============-->

            <div class="left-sidebar">
                <a href="#intro" class="scroll-link logo">
                    <img itemprop="logo" src="/Content/images/logo_Small.png" alt=""></a>
                <div class="desktop-screen-navigation" id="nav">
                    <ul>
                        <li class="current transition"><a href="#about" class="scroll-link transition">About</a></li>
                        <li class="transition"><a href="#work" class="scroll-link transition">Portfolio</a></li>
                        <li class="transition"><a href="#services" class="scroll-link transition">Services</a></li>
                        <li class="transition"><a href="#contacts" class="scroll-link transition">Contacts</a></li>
                    </ul>
                </div>
                <a class="nav-top scroll-link" href="#intro"><i class="fa fa-angle-up fa-2x"></i><span class="transition2"></span></a>
            </div>
            <!--=============== left-sidebar end ===============-->

            <!--=============== content-holder ===============-->

            <div class="content-holder">

                <!--=============== section about ===============-->

                <div id="about" class="sections">

                    <div class="container animaper anim">

                        <h2>about</h2>
                        <h4 class="margin">A small introduction about my self</h4>


                        <div class="grid-half right">

                            <div class="photo-holder">
                                <img src="/Content/images/photo.jpg" alt="" class="respimg">
                            </div>

                        </div>

                        <div class="grid-half right">

                            <h3><span itemprop="name">Sushant Parkhi</span></h3>
                            <h3 class="margin">Web Designer & Developer</h3>
                            <p>I create professional, conservative, sublime, artistic, clean, simple, retro, or whatevero designs. I adapt to suit your needs and communicate to your audience. </p>
                            <p>I work with individuals, small companies, and organizations where approvals on the client's end are fairly quick and there is no "decision or design by committee". I also don't take on rush jobs that are a week or less turn around time from the time all content lands on my plate.</p>

                            <div class="clear"></div>
                            <a href="#work" class="button scroll-link transition">view my work</a>

                        </div>

                        <div class="clear"></div>

                        <!--skills-->

                        <div class="piechart-holder">

                            <div class="piechart grid-2">
                                <span class="chart skilBg" data-percent="70">
                                    <span class="percent"></span>
                                </span>

                                <h4>PHOTOSHOP</h4>

                            </div>
                            <div class="piechart grid-2">
                                <span class="chart skilBg" data-percent="95">
                                    <span class="percent"></span>
                                </span>

                                <h4>ASP.NET / SQL SERVER</h4>

                            </div>
                            <div class="piechart grid-2">
                                <span class="chart skilBg" data-percent="90">
                                    <span class="percent"></span>
                                </span>

                                <h4>HTML5 / CSS3</h4>

                            </div>

                        </div>

                    </div>

                    <div class="show-skills-holder">
                        <span class="decor-fix"></span>
                        <div class="show-skills"><i class="fa fa-angle-up fa-2x transition"></i><span>show skills</span></div>
                    </div>

                </div>
                <!--=============== section about end ===============-->


                <!--=============== section facts ===============-->

                <div id="facts" class="sections">
                    <div class="parallax-facts"></div>
                    <div class="overlay"></div>

                    <div class="content">

                        <div class="container">
                            <h4 class="margin">ABOUT ANYTHING </h4>
                            <h2 class="color-white">FUN FACTS</h2>

                            <ul>

                                <!-- fact 1-->

                                <li class="transition scale-small animaper">
                                    <div class="conter-decor">
                                        <span class="rotade rot-top-left"></span>
                                        <span class="rotade rot-top-right"></span>
                                        <span class="rotade rot-bottom-left"></span>
                                        <span class="rotade rot-bottom-right"></span>
                                    </div>
                                    <div class="milestone-counter">

                                        <div class="stats animaper">
                                            <div class="num" data-content="5" data-num="5">0</div>
                                        </div>

                                    </div>

                                    <h6><span></span>Clients</h6>

                                </li>

                                <!-- fact 2-->

                                <li class="transition scale-small animaper">
                                    <div class="conter-decor">
                                        <span class="rotade rot-top-left"></span>
                                        <span class="rotade rot-top-right"></span>
                                        <span class="rotade rot-bottom-left"></span>
                                        <span class="rotade rot-bottom-right"></span>
                                    </div>
                                    <div class="milestone-counter">

                                        <div class="stats animaper">
                                            <div class="num" data-content="6" data-num="6">0</div>
                                        </div>

                                    </div>

                                    <h6><span></span>Projects completed</h6>

                                </li>

                                <!-- fact 3-->

                                <li class="transition scale-small animaper">

                                    <div class="conter-decor">
                                        <span class="rotade rot-top-left"></span>
                                        <span class="rotade rot-top-right"></span>
                                        <span class="rotade rot-bottom-left"></span>
                                        <span class="rotade rot-bottom-right"></span>
                                    </div>
                                    <div class="milestone-counter">

                                        <div class="stats animaper">
                                            <div class="num" data-content="6" data-num="6">0</div>
                                        </div>
                                    </div>

                                    <h6><span></span>Websites published</h6>

                                </li>

                            </ul>

                        </div>

                    </div>

                </div>
                <!--=============== section facts end ===============-->

                <!--=============== section work ===============-->

                <div id="work" class="sections">

                    <div class="background-white">

                        <div class="content">

                            <div class="container animaper anim">

                                <h2>Work </h2>
                                <h4 class="margin">PORTFOLIO</h4>

                                <!-- portfolio filters -->

                                <%-- <div id="options" class="clear">

                                    <ul id="filters" class="option-set" data-option-key="filter">

                                        <li class="filter actcat transition" data-filter="all">All</li>
                                        <li class="filter transition" data-filter="category_1">Web </li>
                                        <li class="filter transition" data-filter="category_2">Design</li>
                                        <li class="filter transition" data-filter="category_3">Branding</li>

                                    </ul>

                                </div>--%>

                                <!-- Projects links -->

                                <div id="folio_container">

                                    <!-- 1 project ajax page-->

                                    <div class="box grid-2   mix category_1 mix_all activefol">

                                        <a href="http://www.chemtechlabs.com" target="_blank" class="popup-with-move-anim ">

                                            <div class="folio-img-holder">
                                                <img src="/Content/images/folio/thumbs/chemtech.jpg" class="respimg" alt="" title="">
                                                <div class="folio-overlay">
                                                    <h3>Chem-Tech Laboratories</h3>
                                                    <h5>Design - Web</h5>
                                                    <div class="folio-button"><i class="fa fa-rocket"></i></div>
                                                </div>
                                            </div>

                                        </a>

                                    </div>

                                    <!-- 2 project ajax page-->

                                    <div class="box grid-2  mix category_2 mix_all">

                                        <a href="http://www.baof.in" target="_blank" class="popup-with-move-anim ">

                                            <div class="folio-img-holder">
                                                <img src="/Content/images/folio/thumbs/baof.jpg" class="respimg" alt="" title="">
                                                <div class="folio-overlay">
                                                    <h3>Balaji Agro Organics and Fertilisers</h3>
                                                    <h5>Design - Web</h5>
                                                    <div class="folio-button"><i class="fa fa-rocket"></i></div>
                                                </div>
                                            </div>

                                        </a>

                                    </div>

                                    <!-- 3 project ajax page-->

                                    <div class="box grid-2   mix category_3 mix_all">

                                        <a href="http://www.khandelwalroadlines.com" target="_blank" class="popup-with-move-anim ">

                                            <div class="folio-img-holder">
                                                <img src="/Content/images/folio/thumbs/khandelwal.jpg" class="respimg" alt="" title="">
                                                <div class="folio-overlay">
                                                    <h3>Khandelwal Roadlines</h3>
                                                    <h5>Design - Web</h5>
                                                    <div class="folio-button"><i class="fa fa-rocket"></i></div>
                                                </div>
                                            </div>

                                        </a>

                                    </div>

                                    <!-- 4 project youtube  video-->

                                    <div class="box  grid-2  mix category_2 mix_all">

                                        <a href="http://www.vulcorub.com" target="_blank" class="popup-with-move-anim ">

                                            <div class="folio-img-holder">
                                                <img src="/Content/images/folio/thumbs/vulcorub.jpg" class="respimg" alt="" title="">
                                                <div class="folio-overlay">
                                                    <h3>Vulcorub</h3>
                                                    <h5>Design - Web</h5>
                                                    <div class="folio-button"><i class="fa fa-rocket"></i></div>
                                                </div>
                                            </div>

                                        </a>

                                    </div>

                                    <!-- 5 project vimeo video-->

                                    <div class="box grid-2  mix category_3 mix_all">

                                        <a href="http://www.fifthseasonevents.com" target="_blank" class="popup-with-move-anim ">

                                            <div class="folio-img-holder">
                                                <img src="/Content/images/folio/thumbs/fifth.jpg" class="respimg" alt="" title="">
                                                <div class="folio-overlay">
                                                    <h3>Fifth Season Events</h3>
                                                    <h5>Design - Web</h5>
                                                    <div class="folio-button"><i class="fa fa-rocket"></i></div>
                                                </div>
                                            </div>

                                        </a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="workshadow"></div>

                </div>
                <!--=============== section work  end===============-->

                <div class="clear"></div>

                <!--=============== section services===============-->

                <div id="services" class="sections">

                    <div class="content">

                        <div class="container animaper anim">

                            <h4 class="margin">What i do </h4>
                            <h2>Services</h2>
                            <div class="content-separator"><i class="fa fa-cogs"></i><span></span></div>

                            <div id="services-carusel" class="owl-carousel">

                                <!-- 1 item -->

                                <div class="item">

                                    <div class="services-box">

                                        <div class="icon-holder">
                                            <i class="fa fa-picture-o"></i>
                                        </div>

                                        <div class="services-box-info">

                                            <span class="services-decor"></span>
                                            <h4>Web Design</h4>
                                            <p>Need something truly custom developed from scratch. Here's what I offer to you with affordable price</p>
                                            <h5>WHAT i OFFER</h5>
                                            <ul>
                                                <li>Hosting</li>
                                                <li>Domain</li>
                                                <li>Customized Design</li>
                                                <li>Responsive Layout</li>
                                                <li>40+ Email Accounts</li>
                                                <li>and Lot More...</li>
                                            </ul>
                                            <div class="clear"></div>
                                            <div class="price"><a href="#contacts" class="scroll-link transition">Contact</a></div>

                                        </div>
                                    </div>

                                </div>


                                <!-- 2 item -->

                                <div class="item">

                                    <div class="services-box">

                                        <div class="icon-holder">
                                            <i class="fa fa-globe"></i>
                                        </div>

                                        <div class="services-box-info">

                                            <span class="services-decor"></span>
                                            <h4>Web Developement</h4>
                                            <p>I can develop complex website applications that can help your business run more efficiently according to your requirements.</p>
                                            <h5>WHAT i KNOW</h5>
                                            <ul>
                                                <li>ASP.NET / ASP.NET MVC</li>
                                                <li>HTML5 / CSS3</li>
                                                <li>SQL SERVER</li>
                                                <li>WINDOWS AZURE</li>
                                                <li>and Lot More...</li>
                                            </ul>
                                            <div class="clear"></div>
                                            <div class="price"><a href="#contacts" class="scroll-link transition">Contact</a></div>


                                        </div>

                                    </div>

                                </div>

                                <!-- 3 item -->

                                <div class="item">

                                    <div class="services-box">

                                        <div class="icon-holder">
                                            <i class="fa fa-camera"></i>
                                        </div>

                                        <div class="services-box-info">

                                            <span class="services-decor"></span>
                                            <h4>Others</h4>
                                            <p>With the development I provide supporting services needed for your web to run efficiently.</p>
                                            <h5>WHAT i OFFER</h5>
                                            <ul>
                                                <li>SEO</li>
                                                <li>E-Commerce</li>
                                                <li>Bulk SMS</li>
                                                <li>Gateway Integration</li>
                                                <li>and Lot More...</li>

                                            </ul>
                                            <div class="clear"></div>
                                            <div class="price"><a href="#contacts" class="scroll-link transition">Contact</a></div>
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                </div>

                <!--=============== section services  end===============-->

                <!--=============== section order ===============-->

                <div id="order" class="sections">

                    <div class="content">
                        <a href="#contact_form" class="button transition scroll-link">Get in touch</a>
                    </div>

                    <div class="ordershadow"></div>

                </div>
                <!--=============== section order end ===============-->

                <div class="clear"></div>

                <!--=============== section testimonials ===============-->

                <%-- <div id="testimonials" class="sections">
                    <div class="parallax-testimonials"></div>
                    <div class="overlay"></div>
                    <div class="content">
                        <div class="container">

                            <h4 class="margin">Say about me</h4>
                            <h2 class="color-white">Testimonials</h2>
                            <div class="content-separator"><i class="fa fa-comment-o"></i><span></span></div>
                            <div id="testimonials-slider" class="owl-carousel">

                                <!-- fist-slide -->

                                <div class="item">
                                    <div class="user-photo">
                                        <img src="/Content/images/users/1.jpg" alt="" class="respimg">
                                    </div>
                                    <p class="transition">" Nulla tincidunt interdum leo. Cras molestie eros velit, vitae malesuada mauris tincidunt ut. Interdum et malesuada fames ac ante " </p>
                                    <div class="client-name">Cras Molestie via Twitter <span class="client-line"><span class="circle"></span></span></div>

                                </div>

                                <!-- second-slide -->

                                <div class="item">
                                    <div class="user-photo">
                                        <img src="/Content/images/users/2.jpg" alt="" class="respimg">
                                    </div>
                                    <p class="transition">" Aenean at lacus nec odio condimentum egestas. Pellentesque et pellentesque orci. Donec in commodo sapien. Donec id ante odio. "</p>
                                    <div class="client-name">Pellentesque Orci via Facebook <span class="client-line"><span class="circle"></span></span></div>

                                </div>

                                <!-- third-slide -->

                                <div class="item">
                                    <div class="user-photo">
                                        <img src="/Content/images/users/3.jpg" alt="" class="respimg">
                                    </div>
                                    <p class="transition">" Vestibulum accumsan viverra facilisis. Sed at euismod elit, eu convallis felis. Pellentesque pretium tellus non nisl placerat posuere. "</p>
                                    <div class="client-name">Accumsan Viverra via Twitter <span class="client-line"><span class="circle"></span></span></div>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="testimonials-shadow"></div>

                </div>--%>

                <!--=============== section map ===============-->

                <div id="mapbox" class="sections">

                    <div id="map_canvas"></div>

                </div>
                <!--=============== section map end===============-->

                <!--=============== section contacts ===============-->

                <div id="contacts" class="sections">

                    <div itemscope itemtype="http://schema.org/Organization" class="content">

                        <div class="container animaper anim">

                            <h4 class="margin">Get in touch</h4>
                            <h2 class="color-white">Contacts</h2>
                            <div class="grid-2">
                                <div class="contact-details">

                                    <h3>Contact Info</h3>
                                    <ul>
                                        <li><i class="fa fa-mobile "></i><span itemprop="telephone">+91 9981 58 58 00</span></li>
                                        <li><i class="fa fa-envelope-o"></i><span>sushant@sushantparkhi.com</span></li>
                                        <li><i class="fa fa-home"></i><span itemprop="address" itemscope itemtype="http://data-vocabulary.org/Address"><span itemprop="streetAddress">14 B Sector A</span><span itemprop="addressLocality"> Sainath Colony</span></span></li>
                                    </ul>

                                </div>

                            </div>

                            <div class="grid-4">

                                <div class="contact-form clear">

                                    <p>Projects are always different, so in order to provide an accurate service I need a lot of details from you. So please feel free to contact me anytime or place enquiry here.</p>
                                    <div class="clear"></div>
                                    <fieldset id="contact_form">

                                        <label for="name">
                                            <input type="text" name="name" id="name" placeholder="Name" />
                                        </label>

                                        <label for="email">
                                            <input type="text" name="email" class="right" id="email" placeholder="Email" />
                                        </label>

                                        <div class="clear"></div>

                                        <label for="message">
                                            <textarea name="message" id="message" placeholder="Message"></textarea>
                                        </label>

                                        <div class="clear"></div>

                                        <label>
                                            <button class="submit_btn transition" id="submit_btn"><i class="fa fa-envelope-o fa-2x"></i></button>
                                        </label>

                                        <div id="result"></div>

                                    </fieldset>

                                </div>

                            </div>

                        </div>
                    </div>

                </div>
                <!--=============== contacts end ===============-->

                <!--=============== section footer ===============-->

                <div id="footer" class="sections ws">
                    <div class="content">
                        <div class="container">

                            <a class="to-top scroll-link" href="#intro"><i class="fa fa-angle-up transition"></i></a>

                            <div class="clear"></div>

                            <div class="social-list">

                                <ul>
                                    <li><a href="#" target="_blank" class="transition"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#" target="_blank" class="transition"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#" target="_blank" class="transition"><i class="fa fa-linkedin"></i></a></li>
                                </ul>

                            </div>

                            <p>Sushant Parkhi ©2014  All rights reserved.</p>

                        </div>

                    </div>

                </div>
                <!--=============== section footer end ===============-->

            </div>
            <!--=============== content-holder end ===============-->

        </div>
        <!--=============== wrapper end ===============-->

    </div>
    <!--=============== main end ===============-->

    <!--=============== javascript ===============-->

    <script type="text/javascript" src="/Content/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="/Content/js/jpreloader.min.js"></script>
    <script type="text/javascript" src="/Content/js/smoothscroll.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.scrollTo-1.4.2-min.js"></script>
    <script type="text/javascript" src="/Content/js/mixitup.js"></script>
    <script type="text/javascript" src="/Content/js/appear.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.nav.js"></script>
    <script type="text/javascript" src="/Content/js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.lettering.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.textillate.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.fittext.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.parallax-1.1.3.js"></script>
    <script type="text/javascript" src="/Content/js/jquery.easypiechart.js"></script>
    <script type="text/javascript" src="/Content/js/scripts.js"></script>
</body>
</html>
