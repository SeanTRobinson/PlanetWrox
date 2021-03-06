﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
      if(!string.IsNullOrEmpty(PhoneHome.Text) || (!string.IsNullOrEmpty(PhoneBusiness.Text)))
      {
        args.IsValid = true;
      }
      else
      {
        args.IsValid = false;
      }
    }
    protected void Send_Click(object sender, EventArgs e)
    {
      if(Page.IsValid)
      {
        string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
        string mailBody = File.ReadAllText(fileName);

        mailBody = mailBody.Replace("##Name##", Name.Text);
        mailBody = mailBody.Replace("##Email##", EmailAddress.Text);
        mailBody = mailBody.Replace("##HomePhone##", PhoneHome.Text);
        mailBody = mailBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
        mailBody = mailBody.Replace("##Comments##", Comments.Text);

        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Response from website";
        myMessage.Body = mailBody;

        myMessage.From = new MailAddress("sean@seantrobinson.co.uk", "Sean Robinson");
        myMessage.To.Add(new MailAddress("sean@seantrobinson.co.uk", "Sean Robinson"));

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);

        Message.Visible = true;
        ThankYouMessage.Visible = true;
        FormTable.Visible = false;
      }
    }
}