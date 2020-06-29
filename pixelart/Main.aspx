<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>pixelart</title>
    <link href="assets/styles/stlGeneral.css" rel="stylesheet" />
    <link href="assets/styles/stlMain.css" rel="stylesheet" />
    <link href="assets/images/pixelart-Favicon-16x16.png" rel="icon" type="image/png"/>
    <link href="assets/styles/stlResponsiveMain.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width" />
    <meta name="viewport" content="initial-scale = 1.0,maximum-scale = 1.0,user-scalable=no" />
    <meta name="keywords" content="pixelart,pixel art,Pixel-Art,PixelArt,Pixelart,pixelArt,pixelart Website,logo,design,studio" />
    
    <meta name="google-site-verification" content="K-LqZc3xu1Y6_iQakmdcl0wle4oBcBT5m5RPA1oSgMs" /> 

    <%-- Scripts --%>
        <%-- jQuery libary --%>
            <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <%-- Google Analytics --%>
            <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-47277497-1', 'pixelart.org.il');
            ga('send', 'pageview');

        </script> 
        <%-- Loading --%>
            <script type="text/javascript">
            $(window).load(function () {
                $(".loader").fadeOut("slow");
            })
        </script>

</head>
<body >
    <div class="loader"></div>
    <form id="form1" runat="server">
        <div id="header" class="section">
            <div class="main">
                <div id="headerLogo">
                    <div id="imgLogo"></div>
                    <div id="textLogo">pixelart</div>
                </div>
                <img src="assets/images/pixelartLogo.png" id="imglogoSmall" width="22" hidden="hidden"/>

                <div id="headerNav">
                    <a href="Main.aspx">HOME</a>
                    <a href="About.aspx">ABOUT</a>
                    <a href="Portfolio.aspx">PORTFOLIO</a>
                    <a href="Contact.aspx">CONTACT</a>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="info section">
            <div class="main">
                <div id="infoAbout">
                    <div id="aboutImg"></div>
                    <div class="infoTitle"><h2>About pixelart</h2></div>
                    <div class="infoDesc">
                        <p>pixelart is making websites and designs for your company, ex bussiness cards, logos & more</p>
                    </div>
                </div>

                <div id="infoReview">
                    <div id="reviewImg"></div>
                    <div class="infoTitle"><h2>Customers reviews</h2></div>
                    <div class="infoDesc">
                        <p>I don’t have enough words to masure how you made me so much happy. Good Luck!! Noam</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="teaser" class="section">
        <div class="main">
            
            <div id="teaserDesc">
                <h1>"Implements your desirable<br /> internet necessities"</h1>
            </div>
        </div>
    </div>
        <div id="iconsWrap" class="info section">
        <div class="main">
            <%-- Start Of Rotate // Optional !!  --%>
            <div class="layoutrow icons">
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/sysIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Content Management</p>
                    </div>
                </div>
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/galleryIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Photo Videos and Galleries</p>
                    </div>
                </div>
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/socialIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Social Networks</p>
                    </div>
                </div>
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/saleIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Sales and Advertising</p>
                    </div>
                </div>
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/googleIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Google Promotion</p>
                    </div>
                </div>
                <div class="layoutcol_1 ">
                    <div>
                        <img src="assets/images/mobileIcon.png" />
                    </div>
                    <div>
                        <p class="icon">Smartphone Compatibility</p>
                    </div>
                </div>
            </div>
            <%-- End Of Rotate --%>
            

        </div>
    </div>
        <div id="footer" class="section">
            <div class="main">
                <div id="contact" class="section">
                    <div id="contactDesc">
                        <h1>Let’s get started</h1>
                        <p id="LetDesc">Leave us a message and we will call you back. <br />
                            We are certain for your statisfaction</p>
                    </div>
                    <div id="contactFields">
                        <asp:RequiredFieldValidator ID="YourNameValidRequired" runat="server" ErrorMessage="*" ControlToValidate="YourName" ValidationGroup="save" />
                        <asp:TextBox ID="YourName" CssClass="txtfield" runat="server" placeholder="Your name" ></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="YourEmailValidRequired" runat="server" ErrorMessage="*" ControlToValidate="YourEmail" ValidationGroup="save" />
                        <asp:TextBox ID="YourEmail" CssClass="txtfield" runat="server" placeholder="Your email" />
                        <asp:RegularExpressionValidator runat="server" ID="YourEmailValidRegExp" SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ValidationGroup="save" />
                        <br />
                        <asp:RequiredFieldValidator ID="CommentsValidRequired" runat="server" ErrorMessage="*" ControlToValidate="Comments" ValidationGroup="save" />
                        <asp:TextBox ID="Comments" CssClass="txtfield" runat="server" placeholder="Message" TextMode="MultiLine" EnableTheming="True" Height="150" />
                        <br /><br />
                        <asp:Label ID="lblError" runat="server" ></asp:Label>
                        <asp:Button ID="btnSend" runat="server" Text="SEND" ValidationGroup="save" OnClick="btnSend_Click" />
                    </div>
                </div>
                <div id="junk">
                    <div id="junkImg"></div>
                    <h2 style="text-align: center;">Did you know that coffee is the best worker?</h2>
                    
                </div>
                <div class="clear"></div>

                <div id="copyright"> Copyright © 2014 pixelart. All Rights Reserved &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <a href="Main.aspx">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="About.aspx">ABOUT</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="Portfolio.aspx">PORTFOLIO</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="Contact.aspx">CONTACT</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <a href="https://www.facebook.com/pixelarto" target="_blank"><img src="assets/images/socialFacbook.png" alt="facebook" width="30" height="30" /></a>
                </div> 
                <div class="clear"></div>
                

            </div>
        </div>
    </form>


    <%-- Scripts --%>
        <%-- Parallax --%>
            <script src="assets/js/parallax.js"></script> 
        <%-- Smooth scroll --%>
            <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenMax.min.js"></script>
            <script src="http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/plugins/ScrollToPlugin.min.js"></script>
            <script>
                $(function () {

                    var $window = $(window);
                    var scrollTime = 0.6;
                    var scrollDistance = 570;

                    $window.on("mousewheel DOMMouseScroll", function (event) {

                        event.preventDefault();

                        var delta = event.originalEvent.wheelDelta / 120 || -event.originalEvent.detail / 3;
                        var scrollTop = $window.scrollTop();
                        var finalScroll = scrollTop - parseInt(delta * scrollDistance);

                        TweenMax.to($window, scrollTime, {
                            scrollTo: { y: finalScroll, autoKill: true },
                            ease: Power1.easeOut,
                            overwrite: 5
                        });

                    });
                });
            </script>

</body>
</html>
