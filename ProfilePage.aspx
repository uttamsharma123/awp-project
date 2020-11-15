<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="AwP_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center-content" style="width: 135%; height:100%">
        <div class="main">
           <p class="profile-btn">
               <asp:Button ID="UpdateProfileButton" CssClass="btn" Font-Size="15px"  runat="server" Text="Update Profile" BackColor="#F6830F" ForeColor="White" />
               <asp:Button ID="DeleteProfilButton" CssClass="btn" Font-Size="15px"  runat="server" Text="Delete Profile" BackColor="#F6830F" ForeColor="White" />
           </p>

            <p >
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EnrollInJob %>" SelectCommand="SELECT [FullName], [Username], [Gmail] FROM [Users]"></asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="Username" DataSourceID="SqlDataSource1" RepeatLayout="Flow">
                    <ItemTemplate>
                        FullName:
                        <asp:Label ID="FullNameLabel" runat="server" Text='<%# Eval("FullName") %>' />
                        <br />
                        Username:
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                        <br />
                        Gmail:
                        <asp:Label ID="GmailLabel" runat="server" Text='<%# Eval("Gmail") %>' />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
            </p>
            <p >&nbsp;</p>
        </div>

    </div>


</asp:Content>
