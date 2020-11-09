<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="AwP_Project.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 358px; margin-left: 251px">


        <asp:Panel ID="TitlePanel" runat="server" Height="430px" Width="500px" style="margin-left: 0px">
            <div class="ViewDetails" style="margin-left: 0px">
                <h2 class="find-job-title view-details-job-title">

                    <asp:Label ID="JobTitle" runat="server"></asp:Label> <br />
                    

                </h2>


                <small>Company Name-
                    <asp:Label ID="CompanyName" runat="server"></asp:Label></small>
                <p>
                    Address-
                    <asp:Label ID="Address" runat="server"></asp:Label>
                </p>
                <ul>
                    <li>Start Date-<asp:Label ID="StartDate" runat="server"></asp:Label></li>
                    <li>Salary Rs.-
                        <asp:Label ID="Salary" runat="server"></asp:Label></li>
                    <li>Apply Date- 
                        <asp:Label ID="ApplyDate" runat="server"></asp:Label>
                    </li>
                </ul>
                <p>Description <asp:Label ID="DetailsDescription" runat="server" Text=""></asp:Label></p>
                
                <p class="ApplyButton">
                    <asp:Button ID="ApplyNowBtn" Font-Size="16px" runat="server" Text="Apply Now" BackColor="#F6830F" BorderStyle="Outset" ForeColor="White" />
                </p>
                
            </div>
        </asp:Panel>
        </div>
    
</asp:Content>
