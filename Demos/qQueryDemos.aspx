<%@ Page Title="jQuery Demos" Language="C#" MasterPageFile="~/MasterPages/FrontEnd.master" AutoEventWireup="true" CodeFile="qQueryDemos.aspx.cs" Inherits="Demos_qQueryDemos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1 title="First Header">First Header</h1>
  <table id="DemoTable">
    <tr><td>Row 1 Cell 1</td><td>Row 1 Cell 2</td></tr>
    <tr><td>Row 2 Cell 1</td><td>Row 2 Cell 2</td></tr>
    <tr><td>Row 3 Cell 1</td><td>Row 3 Cell 2</td></tr>
    <tr><td>Row 4 Cell 1</td><td>Row 4 Cell 2</td></tr>
    <tr><td>Row 5 Cell 1</td><td>Row 5 Cell 2</td></tr>
  </table>

  <h2>Second <span style="font-style: italic; font-weight: bold;">Header</span></h2>
  <input id="Button1" type="button" value="button" />
  <input id="Text1" type="text" />
  <input id="Checkbox1" type="checkbox" />
  <input id="Checkbox2" type="checkbox" />
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cpClientScript">
  <script type="text/javascript">
    $(function()
    {
      //$('#DemoTable tr:first').css('background-color', 'green');
      //$('#DemoTable tr:odd').css('background-color', 'green');
      //$('#DemoTable tr:lt(3)').css('background-color', 'green');
      //$(':header').css('background-color', 'green');
      //$('td:contains("Row 2")').css('background-color', 'green');
      //$(':header:has("span")').css('background-color', 'green');
      //$('[type]').css('background-color', 'green'); (Attribute)
      //$('[type=text]').css('background-color', 'green');
      //$(':button, :text').css('background-color', 'green');
      //$(':checkbox').attr('checked', true);
      //alert($('h2 span').css('font-style'));
      //$('#DemoTable tr td')
        //.bind('mouseover', function() { $(this).css('background-color', 'Green') })
      //.bind('mouseout', function() { $(this).css('background-color', '') });

    });
  </script>
</asp:Content>

