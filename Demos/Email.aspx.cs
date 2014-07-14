using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
      MailMessage myMessage = new MailMessage();
      myMessage.Subject = "Test Message";
      myMessage.Body = "Hello World, front Planet Wrox!";
      myMessage.From = new MailAddress("sean@seantrobinson.co.uk", "Sender Name");
      myMessage.To.Add(new MailAddress("sean.t.robinson@googlemail.com", "Reciever Name"));
      SmtpClient mySmtpClient = new SmtpClient();
      mySmtpClient.Send(myMessage);
    }
}