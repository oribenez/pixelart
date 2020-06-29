<%@ Page Title="pixelart - Portfolio" Language="C#" MasterPageFile="~/MPpage.master" AutoEventWireup="true" CodeFile="Portfolio.aspx.cs" Inherits="Portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="headerTitle" runat="Server">
    One picture is worth a thousand words
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="headerContent" runat="Server">
    pixelart is making websites and designs for your company,for ex bussiness cards, logos & more
    pixelart is making websites and designs for your company,for ex bussiness cards, logos & more
    pixelart is making websites and designs for your company,for ex bussiness cards, logos & more
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headerImg" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="mainContent" Runat="Server">
    <p>There aren't projects at this moment...</p>
    <%--<ul id="da-thumbs" class="da-thumbs">
		<li>
			<a href="http://dribbble.com/shots/505046-Menu">
				<img src="images/1.jpg" />
				<div><span>Menu by Simon Jensen</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/504336-TN-Aquarium">
				<img src="images/2.jpg" />
				<div><span>TN Aquarium by Charlie Gann</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/504197-Mr-Crabs">
				<img src="images/3.jpg" />
				<div><span>Mr. Crabs by John Generalov</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/503731-Gallery-of-Mo-2-Mo-logo">
				<img src="images/4.jpg" />
				<div><span>Gallery of Mo 2.Mo logo by Adam Campion</span></div>
			</a>
		</li>
		<li>	
			<a href="http://dribbble.com/shots/503058-Ice-Cream-nom-nom">
				<img src="images/5.jpg" />
				<div><span>Ice Cream - nom nom by Eight Hour Day</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/502927-My-Muse">
				<img src="images/6.jpg" />
				<div><span>My Muse by Zachary Horst</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/502538-Natalie-Justin-Cleaning">
				<img src="images/7.jpg" />
				<div><span>Natalie & Justin Cleaning by Justin Younger</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/502523-App-Preview">
				<img src="images/8.jpg" />
				<div><span>App Preview by Ryan Deshler</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/501695-Cornwall-Map">
				<img src="images/9.jpg" />
				<div><span>Cornwall Map by Katharina Maria Zimmermann</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/500861-final-AD-logo">
				<img src="images/10.jpg" />
				<div><span>final AD logo by Annette Diana</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/500369-Land-Those-Planes">
				<img src="images/11.jpg" />
				<div><span>Land Those Planes by Lee Ann Marcel</span></div>
			</a>
		</li>
		<li>
			<a href="http://dribbble.com/shots/497795-Seahorse">
				<img src="images/12.jpg" />
				<div><span>Seahorse by Trevor Basset</span></div>
			</a>
		</li>
	</ul>--%>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="jsScripts" Runat="Server">
    <script type="text/javascript" src="assets/js/jquery.hoverdir.js"></script>	
	    <script type="text/javascript">
	        $(function () {

	            $(' #da-thumbs > li ').each(function () { $(this).hoverdir(); });

	        });
	    </script>
</asp:Content>

