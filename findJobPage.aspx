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
            <asp:Button ID="Button1" Font-Size="20px" runat="server" BackColor="#F6830F" ForeColor="White" Height="35px" Text="Search" Width="252px" OnClick="Button1_Click" />
        </div>
    </div>

    <div class="auto-style4 main-div" style="width: 604px; left: 322px; top: -26%; height: 734px;">
        <div class="jobs-available" style="height: 720px; width: 579px; margin-left: 23px;">
            <h3 class="job-title">Jobs in
                <asp:Label ID="Label1" runat="server" Text="Mumbai"></asp:Label>
            </h3>
            <hr />
            <asp:Panel ID="Panel1" runat="server">
            <div class="jobs">
                <div class="job-details">
                    <h2 class="find-job-title">
                        <asp:Label ID="Label2" runat="server" Text="Business Development Associate"></asp:Label></h2>

                    <small>Company Name-
                    <asp:Label ID="Label3" runat="server" Text="BYJU'S The Learning App"></asp:Label></small>
                    <p>
                        Address-
                    <asp:Label ID="Label4" runat="server" Text="Mumbai"></asp:Label>
                    </p>
                    <ul>
                        <li>Start Date-<asp:Label ID="Label5" runat="server" Text="Immediately"></asp:Label></li>
                        <li>Salary Rs.-
                        <asp:Label ID="Label6" runat="server" Text="10000"></asp:Label></li>
                        <li>Apply Date- 
                        <asp:Label ID="Label7" runat="server" Text="11 Nov 20"></asp:Label>
                        </li>
                    </ul>
                    <small style="font-size: 12px;">Description-
                    <asp:Label ID="Label8" runat="server" Text="The hiring for this job will be online and the company will provide work from home/ deferred joining till current COVID-19 situation improves" ForeColor="#7E7474"></asp:Label>
                    </small>

                    <p class="view-details">
                        <asp:HyperLink ID="HyperLink2" runat="server">View Details ></asp:HyperLink>
                    </p>
                </div>
            </div>
             </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
            
            <div class="jobs">
                <div class="job-details">
                    <h2 class="find-job-title">
                        <asp:Label ID="Label9" runat="server" Text="Business Development Associate"></asp:Label></h2>

                    <small>Company Name-
                    <asp:Label ID="Label10" runat="server" Text="BYJU'S The Learning App"></asp:Label></small>
                    <p>
                        Address-
                    <asp:Label ID="Label11" runat="server" Text="Mumbai"></asp:Label>
                    </p>
                    <ul>
                        <li>Start Date-<asp:Label ID="Label12" runat="server" Text="Immediately"></asp:Label></li>
                        <li>Salary Rs.-
                        <asp:Label ID="Label13" runat="server" Text="10000"></asp:Label></li>
                        <li>Apply Date- 
                        <asp:Label ID="Label14" runat="server" Text="11 Nov 20"></asp:Label>
                        </li>
                    </ul>
                    <small style="font-size: 12px;">Description-
                    <asp:Label ID="Label15" runat="server" Text="The hiring for this job will be online and the company will provide work from home/ deferred joining till current COVID-19 situation improves" ForeColor="#7E7474"></asp:Label>
                    </small>

                    <p class="view-details">
                        <asp:HyperLink ID="HyperLink1" runat="server">View Details ></asp:HyperLink>
                    </p>
                </div>
            </div>
             </asp:Panel>


        </div>
    </div>







</asp:Content>
