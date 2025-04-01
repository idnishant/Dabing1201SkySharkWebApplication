<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Dabing1201SkySharkWebApplication.Test._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to SkyShark Airlines Home Page</h1>
    <asp:Image ID="Image1" runat="server" Height="260px" ImageUrl="~/skyShark.png" Width="850px" />
    <p>Lunched in 1999, ShyShark Airlines is a United States- based airline that has rapidally grown in the past years. </p>
  <form id="form1"  runat="server">
      <table>
          <tr>
              <td></td>
              <td>
                  <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
              <td></td>
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please specify valid Username" ControlToValidate="txtUserName" ForeColor="#FF3300"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td>
                  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
              </td>
              <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please specify valid password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td></td>
              <td>
                  <asp:Button ID="Button1" runat="server" Text="Button" /></td>
              <td></td>
          </tr>
          <tr>
              <td></td>
              <td></td>
              <td></td>
          </tr>
      </table>
  </form>
</asp:Content>
