<%@ Page Title="jQuery Demo" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="jQuery_Demo.aspx.cs" Inherits="Demos_jQuery_Demo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <input id="Button1" type="button"  value="Button"  />
  <script type="text/javascript">
    $(document).ready(function() {
      $('#MainContent').css('background-color', 'green')

      $('#Button1').click(function() {
        $('#MainContent').css('background-color', 'red').animate({ width: '100px', height: '800px' })
      });
    });
  </script>
</asp:Content>

