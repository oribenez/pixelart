<%@ Page Title="" Language="C#" MasterPageFile="~/MPpage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style>

        section {
            padding: 0px;
        }
        #junk {
            float: right;
            padding: 195px 0 0 0;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headerTitle" Runat="Server">
    Contact us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="headerContent" Runat="Server">
    If you have a project and want me to take its visuals to the next level, let’s talk and I will create the magic for you. <br />
    In case you are living in Israel or close to Shoham we can also meet up, have a drink and talk about your project face to face.
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headerImg" Runat="Server">
    <div id="israel">
        <div id="mapAddress"></div>
        <div id="shoham"></div>
    </div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="mainContent" Runat="Server">
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="footerHolder" Runat="Server">
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
        <p>
            <b>
                Ori Ben-Ezra.
            </b>

            <br />
            Phone: 054-8321468.
            <br />
            Email: Oriben467@gmail.com
            <br />
            <br />

            <b>
                Ofir Miara.
            </b>

            <br />
            Phone: 050-5794175.
            <br />
            Email: Ofirmiara@gmail.com
        </p> 
    </div>
    <div class="clear"></div>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="jsScripts" Runat="Server">

</asp:Content>

