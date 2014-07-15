<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ContactForm.ascx.cs" Inherits="Controls_ContactForm" %>
<style type="text/css">
  .auto-style1 {
    width: 100%;
  }

  .auto-style2 {
    width: 18px;
  }

  .auto-style3 {
    height: 23px;
  }

  .auto-style4 {
    width: 176px;
  }
</style>

<script type="text/javascript">
  function ValidatePhoneNumbers(source, args) {
    var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
    var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');
    if (phoneBusiness.value != '' || phoneHome.value != '') {
      args.IsValid = true;
    }
    else {
      args.IsValid = false;
    }
  }
</script>

<asp:UpdatePanel runat="server" ID="UpdatePanel1">
  <ContentTemplate>
    <table class="auto-style1" runat="server" id="FormTable">
      <tr>
        <td colspan="3">Feel free to contact us using the form below!</td>
      </tr>
      <tr>
        <td class="auto-style4">Name</td>
        <td class="auto-style2">
          <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" CssClass="ErrorMessage" Text="*" ControlToValidate="Name"></asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style4">E-mail Address</td>
        <td class="auto-style2">
          <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style4">E-mail address again</td>
        <td class="auto-style2">
          <asp:TextBox ID="ConfirmEmailAddress" runat="server"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Re-type the email address">*</asp:CompareValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style4">Home phone number</td>
        <td class="auto-style2">
          <asp:TextBox ID="PhoneHome" runat="server"></asp:TextBox>
        </td>
        <td>
          <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="ValidatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style4">Work phone number</td>
        <td class="auto-style2">
          <asp:TextBox ID="PhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="auto-style4">Comments</td>
        <td class="auto-style2">
          <asp:TextBox ID="Comments" runat="server" Height="63px" TextMode="MultiLine" Width="292px"></asp:TextBox>
        </td>
        <td>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
      </tr>
      <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style2">
          <asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" />
        </td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td class="auto-style3" colspan="3">
          <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" />
        </td>
      </tr>
    </table>
    <asp:Label ID="Message" runat="server" Text="Message Sent" Visible="false" />
  </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1" >
  <ProgressTemplate>
    <div class="PleaseWait">
      Please Wait...
    </div>
  </ProgressTemplate>
</asp:UpdateProgress>

