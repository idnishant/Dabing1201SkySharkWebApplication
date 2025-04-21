﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddFI.aspx.cs" Inherits="Dabing1201SkySharkWebApplication.BM.AddFI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Manager
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
        ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#F7F6F3" />
        <DynamicSelectedStyle BackColor="#5D7B9D" />
        <Items>
            <asp:MenuItem NavigateUrl="~/BM/AddFI.aspx" Selected="True" Text="Add Flight" Value="Add Flight"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/RequestID.aspx" Text="Request ID" Value="Request ID"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/Reports.aspx" Text="Reports" Value="Reports"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/BM/FreqFI.aspx" Text="Frequent Fliers" Value="Frequent Fliers"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#5D7B9D" />
    </asp:Menu>
    <div class="tabContents">
        <table>
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Add New Flight"></asp:Label>
                </td>
                <td></td>
                
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"  Font-Bold="true"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Flight Number"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFlightNumber" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Flight Number Required" ControlToValidate="txtFlightNumber"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Departure Time"></asp:Label></td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar> <asp:TextBox ID="txtDepartureTime" runat="server"></asp:TextBox>(HH:MM)</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDepartureTime" ErrorMessage="Departure Time Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Origin Place"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtOriginPlace" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOriginPlace" ErrorMessage="Origin Place Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Arrival Time"></asp:Label></td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>  <asp:TextBox ID="txtArivaleTime" runat="server"></asp:TextBox>(HH:MM)</td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtArivaleTime" ErrorMessage="Arrival Time Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Destination"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtDestination" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDestination" ErrorMessage="Destination Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Aircraft Type"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtAircraftType" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAircraftType" ErrorMessage="Aircraft Type Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Number of seats(Executive) "></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtNoOfExecSeats" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtNoOfExecSeats" ErrorMessage="No of Executive Seats Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Executive Class Fares "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtExecFare" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtExecFare" ErrorMessage="Executive Fares Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Number of Seates(Business)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNoOfBusiSeats" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNoOfBusiSeats" ErrorMessage="No of Business Seats  Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Business Class Fares"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBusiFares" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtBusiFares" ErrorMessage="Business Fares Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                  &nbsp;&nbsp;  <asp:Button ID="Button2" runat="server" Text="Cancle" OnClick="Button2_Click" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</form>
</asp:Content>
