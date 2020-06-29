using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

public class Email
{
    private string fromAdd;
    private string bcc;
    private string cc;

    private string subject;
    private string body;
    private string fromName;
    /// <param name="fromAdd">Sender address</param>
    /// <param name="bcc">Bcc recepient</param>
    /// <param name="cc">Cc recepient</param>
    /// <param name="subject">Subject of mail message</param>
    /// <param name="body">Body of mail message</param>
    /// <param name="fromName">Senders Name</param>

    public Email(string fromAdd, string bcc, string cc, string subject, string body, string fromName)
    {
        this.fromAdd = fromAdd;
        this.bcc = bcc;
        this.cc = cc;

        this.subject = subject;
        this.body = body;
        this.fromName = fromName;
    }

    /// <summary>
    /// Sends an mail message
    /// </summary>
    /// <param name="toAdd">Recepient address</param>
    /// <param name="toName">For who is this email</param>
   public void Send(string toAdd, string toName)
   {
      // יצירת אובייקט אימייל
      MailMessage mMailMessage = new MailMessage();

      // השמת מוען
      mMailMessage.From = new MailAddress("pixelart.supp@outlook.com");

      // השמת נמען
      mMailMessage.To.Add(new MailAddress(toAdd));

      // בודק אם הוכנס Bcc
      if (this.bcc != null && this.bcc != "")
      {
         // השמת Bcc
         mMailMessage.Bcc.Add(new MailAddress(this.bcc));
      }

      // בודק אם הוכנס Cc
      if (this.cc != null && this.cc != "")
      {
         // השמת CC
          mMailMessage.CC.Add(new MailAddress(this.cc));
      }       
       
       // השמת נושא
      mMailMessage.Subject = subject;

      // השמת תוכן
      this.body = string.Format("Hi {0},<br /><br />{1}<br />My email: {2} <br /><br />Regards, {3} ", toName, this.body, this.fromAdd, this.fromName);
      mMailMessage.Body = this.body;

      // אם הפורמט גוף הוא מסוג טקסט או HTML
      mMailMessage.IsBodyHtml = true;

      // אם האימייל חשוב
      mMailMessage.Priority = MailPriority.High;

      // הצהרה על SmtpClient
      SmtpClient mSmtpClient = new SmtpClient();
      mSmtpClient.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
      mSmtpClient.Port = 587;
      mSmtpClient.EnableSsl = true;
      mSmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
      mSmtpClient.UseDefaultCredentials = false;
      mSmtpClient.Credentials = new System.Net.NetworkCredential("pixelart.supp", "Omb259@pix");

      // שליחת האימייל
      mSmtpClient.Send(mMailMessage);
   }
}
