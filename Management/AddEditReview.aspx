<%@ Page Title="Planet Wrox - Management - Insert and Update Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReview.aspx.cs" Inherits="Management_AddEditReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="Server">
  <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
      <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" Visible="False" />

      <asp:TemplateField HeaderText="GenreId" SortExpression="GenreId">
        <EditItemTemplate>
          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("GenreId") %>'></asp:TextBox>
        </EditItemTemplate>
        <InsertItemTemplate>
          <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("GenreId") %>'></asp:TextBox>
        </InsertItemTemplate>
        <ItemTemplate>
          <asp:Label ID="Label3" runat="server" Text='<%# Bind("GenreId") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>

      <asp:TemplateField HeaderText="Title" SortExpression="Title">
        <EditItemTemplate>
          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
          <asp:RequiredFieldValidator ID+"reqval1" ControlToValidate="TextBox4" runat="server" ErrorMessage="Enter a title"></asp:RequiredFieldValidator>
        </EditItemTemplate>
        <InsertItemTemplate>
          <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
        </InsertItemTemplate>
        <ItemTemplate>
          <asp:Label ID="Label4" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>

      <asp:TemplateField HeaderText="Body" SortExpression="Body">
        <EditItemTemplate>
          <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Body") %>'></asp:TextBox>
        </EditItemTemplate>
        <InsertItemTemplate>
          <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Body") %>'></asp:TextBox>
        </InsertItemTemplate>
        <ItemTemplate>
          <asp:Label ID="Label2" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>

      <asp:TemplateField HeaderText="Summary" SortExpression="Summary">
        <EditItemTemplate>
          <asp:TextBox ID="TextBox1" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
        </EditItemTemplate>
        <InsertItemTemplate>
          <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500" Height="100" Text='<%# Bind("Summary") %>'></asp:TextBox>
        </InsertItemTemplate>
        <ItemTemplate>
          <asp:Label ID="Label1" runat="server" Text='<%# Bind("Summary") %>'></asp:Label>
        </ItemTemplate>
      </asp:TemplateField>

      <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
      <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />
      <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
  </asp:DetailsView>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([UpdateDateTime], [GenreId], [Body], [Summary], [Title], [Authorized]) VALUES (@UpdateDateTime, @GenreId, @Body, @Summary, @Title, @Authorized)" SelectCommand="SELECT [UpdateDateTime], [GenreId], [Body], [Summary], [Title], [Id], [Authorized] FROM [Review] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Review] SET [UpdateDateTime] = @UpdateDateTime, [GenreId] = @GenreId, [Body] = @Body, [Summary] = @Summary, [Title] = @Title, [Authorized] = @Authorized WHERE [Id] = @Id">
    <DeleteParameters>
      <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
      <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
      <asp:Parameter Name="GenreId" Type="Int32" />
      <asp:Parameter Name="Body" Type="String" />
      <asp:Parameter Name="Summary" Type="String" />
      <asp:Parameter Name="Title" Type="String" />
      <asp:Parameter Name="Authorized" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
      <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
    </SelectParameters>
    <UpdateParameters>
      <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
      <asp:Parameter Name="GenreId" Type="Int32" />
      <asp:Parameter Name="Body" Type="String" />
      <asp:Parameter Name="Summary" Type="String" />
      <asp:Parameter Name="Title" Type="String" />
      <asp:Parameter Name="Authorized" Type="Boolean" />
      <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
  </asp:SqlDataSource>
</asp:Content>

