<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="findJobPage.aspx.cs" Inherits="AwP_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="filter-box" style="width: 290px; height: 0px;">
        <div class="drop-down-filter">
            <h3 class="filters" style="height: 21px">Filters</h3>
            <p class="filter-title">Category</p>
            <asp:DropDownList ID="CategoryDropDown"  runat="server" Font-Size="15px" Height="25px" Style="margin-left: 0px" Width="250px" OnSelectedIndexChanged="CategoryDropDown_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <p class="filter-title">Location</p>
            <asp:DropDownList ID="LocationDropDownList" runat="server" Font-Size="15px" Height="25px" Style="margin-left: 0px" Width="250px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" Font-Size="20px" runat="server" BackColor="#F6830F" ForeColor="White" Height="35px" Text="Search" Width="252px" OnClick="Button1_Click" CausesValidation="False" EnableViewState="False" />
        </div>
    </div>

    <div class="auto-style4 main-div" style="width: 604px; left: 322px; top: -26%; height: 650px;">
        <div class="jobs-available" style="height: 720px; width: 579px; margin-left: 23px;">
            <h3 class="job-title">
                Jobs
                <asp:Label  ID="JobTitle12" runat="server" Text=""></asp:Label>
            </h3>
            <hr />
              <asp:Panel ID="Panel2"  runat="server">
            
            <div class="jobs">
                <div class="job-details">
                    <asp:Panel ID="TitlePanel" runat="server">
                    <h2 class="find-job-title">
                        <asp:Label ID="JobTitle" runat="server" Text="Business Development Associate"></asp:Label>

                    </h2>
                   </asp:Panel>

                    <small>Company Name-
                    <asp:Label ID="CompanyName" runat="server" Text="BYJU'S The Learning App"></asp:Label></small>
                    <p>
                        Address-
                    <asp:Label ID="Address" runat="server" Text="Mumbai"></asp:Label>
                    </p>
                    <ul>
                        <li>Start Date-<asp:Label ID="StartDate" runat="server" Text="Immediately"></asp:Label></li>
                        <li>Salary Rs.-
                        <asp:Label ID="Salary" runat="server" Text="10000"></asp:Label></li>
                        <li>Apply Date- 
                        <asp:Label ID="ApplyDate" runat="server" Text="11 Nov 20"></asp:Label>
                        </li>
                    </ul>

                    <p class="view-details">
                        <asp:Button ID="ViewDetails" runat="server" BackColor="Blue" BorderColor="White" ForeColor="White" OnClick="ViewDetails_Click" Text="ViewDetails" />
                    </p>
                </div>
            </div>
             </asp:Panel>
               <asp:Panel ID="Panel1" runat="server">
           <h2 style="height: 42px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please Search Jobs in Your Location </h2>
                &nbsp;</asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
              <img class="not-found" src="Images/NotFound.png" alt="Not Found" style="width: 237px;  margin-left: 161px"/>
           <h1 style="height: 42px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jobs Not Found </h1>
                &nbsp;</asp:Panel>


         

        </div>
    </div>







</asp:Content>
