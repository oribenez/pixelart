using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class Contact : System.Web.UI.Page
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
                string fromAdd = YourEmail.Text.Trim();
                string subject = "pixelart";
                string body = Comments.Text.Trim();
                string fromName = YourName.Text.Trim();

                Email contact = new Email(fromAdd, "", "", subject, body, fromName);

                contact.Send("oriben467@gmail.com", "Ori");
                contact.Send("miaraofir@gmail.com", "Ofir");

                lblError.Text = "Email sent successfully";
                lblError.ForeColor = Color.Blue;
            }
            catch (Exception)
            {
                lblError.Text = "It's not working, try later";
                lblError.ForeColor = Color.Red;
            }
        }
    }
}