<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="AwP_Project.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 441px; margin-left: 251px">


        <asp:Panel ID="TitlePanel" runat="server" Height="467px" Width="500px" style="margin-left: 0px; margin-bottom: 89px;">
            <div class="ViewDetails" style="margin-left: 0px">
                <h2 class="find-job-title view-details-job-title">

                    <asp:Label ID="JobTitle" runat="server"></asp:Label> <br />
                    

                </h2>


                <p style="height: 22px; margin-bottom: 2px">Company Name-</p>
                      <small class="small-tag"> <asp:Label ID="CompanyName" runat="server"></asp:Label></small>
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
               <p>About <asp:Label ID="CompanyName1" runat="server"></asp:Label></p> 
                   <small  class="small-tag"><asp:Label ID="AboutCompany" runat="server" Text=""></asp:Label></small>
                <p>Skill Required</p>
                <small class="small-tag"> <asp:Label ID="SkillRequired" runat="server" Text=""></asp:Label></small>
                
                 <p class="ApplyButton">
                    <asp:Button ID="ApplyNowBtn" Font-Size="16px" runat="server" Text="Apply Now" BackColor="#F6830F" BorderStyle="Outset" ForeColor="White" OnClick="ApplyNowBtn_Click" Width="122px" />
                
               
                    <asp:Button ID="CancelButton" Font-Size="16px" runat="server" Text="Cancel" BackColor="#F6830F" BorderStyle="Outset" ForeColor="White" style="margin-left: 24px" OnClick="CancelButton_Click" />
                </p>
                
            </div>
        </asp:Panel>
        <asp:Panel ID="MsgPanel" runat="server" Height="467px" Width="500px" style="margin-left: 0px; margin-bottom: 89px;">
            <div class="ViewDetails" style="margin-left: 0px">
             <br />
                <h1>
                    <asp:Label ID="HelloName" runat="server" Text=""></asp:Label> &nbsp;We will inform you through your Email </h1>
                <h1>Thank You:) </h1>
                
            </div>
             <p class="ApplyButton">
                    <asp:Button ID="GoHomePage" Font-Size="16px" runat="server" Text="Go Home Page" BackColor="#F6830F" BorderStyle="Outset" ForeColor="White"  Width="122px" OnClick="GoHomePage_Click" />
                </p>
        </asp:Panel>
        </div>
     
</asp:Content>
