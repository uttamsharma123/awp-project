<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="findJobPage.aspx.cs" Inherits="AwP_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main"  height: 150%">
       
        <table>
            <tr>
                <td style="width: 280px">
                    
                        <div class="drop-down-filter">
                            <h3 class="filters">Filters</h3>
                            <p class="filter-title">Category</p>
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="17px" Height="25px" style="margin-left: 0px" Width="250px">
                                <asp:ListItem>Marketing</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                              <p class="filter-title">Location</p>
                              <asp:DropDownList ID="DropDownList2" runat="server"  Font-Size="17px" Height="25px" style="margin-left: 0px" Width="250px">
                                  <asp:ListItem>Sion</asp:ListItem>
                            </asp:DropDownList>
                        </div>


                </td>
                <td class="auto-style4" style="width: 552px">
                    <div class="jobs-available"style="height: 497px; width: 549px; margin-left: 23px;">
                        <h3 class="job-title">Jobs in <asp:Label ID="Label1" runat="server" Text="Sion"></asp:Label> </h3>
                        <hr />
                        <h4 class="category-title"><asp:Label ID="Label2" runat="server" Text="Marketing"></asp:Label></h4>
                    </div>
                    
                 </td>
            </tr>
        </table>


    </div>
</asp:Content>
