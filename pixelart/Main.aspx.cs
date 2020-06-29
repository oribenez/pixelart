using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                if (Session["emailSent"] == null)
                {
                    string fromAdd = YourEmail.Text.Trim();
                    string subject = "pixelart";
                    string body = Comments.Text.Trim();
                    string fromName = YourName.Text.Trim();

                    Email contact = new Email(fromAdd, "", "", subject, body, fromName);

                    contact.Send("oriben467@gmail.com", "Ori");
                    contact.Send("miaraofir@gmail.com", "Ofir");

                    Session["emailSent"] = true;

                    lblError.Text = "Email sent successfully";
                    lblError.ForeColor = Color.Blue;
                }
                else
                {
                    lblError.Text = "You already sent an email";
                    lblError.ForeColor = Color.Red;
                }
            }
            catch (Exception)
            {
                lblError.Text = "It's not working, try later";
                lblError.ForeColor = Color.Red;
            }
        }
    }
}



