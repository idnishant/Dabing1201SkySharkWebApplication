<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Dabing1202SkySharkWebApplication._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form2" runat="server">
<h1>Welcome to SkyShark Airlines</h1>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/skyShark.png" Height="200px" Width="763px" />
<p>Lunched in 1999, SkyShark Airlines is a United State-based airline that has rapidlly grown in the past years. </p>
<fome id="form1" runat="server">
    <table>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
            <td></td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Specify a valid username" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please specify a valid password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
        </tr>
          <tr>
            <td></td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td>
            <td></td>
        </tr>
    </table>
       
</fome>
    </form>
</asp:Content>
