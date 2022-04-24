<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="QueryStat.aspx.cs" Inherits="Dabing1201SkySharkWebApplication.LOB.QueryStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Business Executive
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">
        <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#F7F6F3" />
            <DynamicSelectedStyle BackColor="#5D7B9D" />
            <Items>
                <asp:MenuItem Text="Create Reservation" Value="Create Reservation" NavigateUrl="~/LOB/CreateRes.aspx"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/CancleRes.aspx" Text="Cancle Reservation" Value="Cancle Reservation"></asp:MenuItem>
                <asp:MenuItem Text="Quary Status" Value="Quary Status" Selected="True"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/LOB/ConfirmRes.aspx" Text="Confirm Reservation" Value="Confirm Reservation"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#5D7B9D" />
        </asp:Menu>
        <div  class="tabContents">
            <table>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Enquiry About Flight and Ticket Status"></asp:Label></td>
                    <td></td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ChangePassword.aspx">Change Password</asp:HyperLink></td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Logoff.aspx">Logoff</asp:HyperLink></td>
                    <td></td>
                </tr>

            </table>
            <asp:Wizard ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="1">
                <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
                <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" VerticalAlign="Top" />
                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Query Flight Status">
                        <!-- 1-->
                            <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="Enquiry  Flight Status"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Flight Numner"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="txtFltNo" runat="server"></asp:TextBox>
                                     </td>
                                    <td></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="Class"></asp:Label></td>
                                    <td>
                                        <asp:ListBox ID="lstClass" runat="server">
                                            <asp:ListItem>Executive</asp:ListItem>
                                            <asp:ListItem>Business</asp:ListItem>
                                        </asp:ListBox></td>
                                    <td></td>
                                </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                                    <td>
                                        <asp:Calendar ID="calDepDate" runat="server" OnSelectionChanged="calDepDate_SelectionChanged"></asp:Calendar>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                      </td>
                                    <td><asp:Button ID="btnFStatSubmit" runat="server" Text="Query Status" OnClick="btnFStatSubmit_Click" /></td>
                                    <td>
                                        </td>
                                </tr>
                            </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Query Ticket Status">

                        <!--2-->
                        <table>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Enquiry Ticket Status"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                              <tr>
                                    <td>
                                        <asp:Label ID="lblTicketStatus" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></td>
                                    <td></td>
                                    <td></td>
                                </tr>

                            <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Ticket No"></asp:Label></td>
                                    <td>
                                        <asp:TextBox ID="txtTNo" runat="server"></asp:TextBox></td>
                                    <td></td>
                                </tr>
                            <tr>
                                    <td></td>
                                   
                                    <td>
                                        <asp:Button ID="btnTStatSubmit" runat="server" Text="Submit" OnClick="btnTStatSubmit_Click" /></td>
                             <td></td>    
                            </tr>
                            </table>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
            </div>
         </form>
</asp:Content>

