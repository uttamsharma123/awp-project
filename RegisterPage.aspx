<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="AwP_Project.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet1.css" />
    <title></title>
    <style type="text/css">
        
        .auto-style10 {
            margin-left: 110px;
        }
        .auto-style11 {
            margin-left: 110px;
        }
        .auto-style12 {
            margin-left: 112px;
        }
        .auto-style13 {
            margin-left: 140px;
        }
        .auto-style14 {
            margin-left: 57px;
        }
        .auto-style15 {
            margin-left: 123px;
        }
        
        </style>
</head>
<body>
   
    <div class="center-content">
         
        <form id="register" runat="server">
            <h1>Registration Form</h1>
            <div class="main">
                <div class="register-container">
                    <div class="items">


                        &nbsp;<label>FullName : </label>
                        <asp:TextBox ID="FullName" Font-Size="15px" Height="25px" runat="server" Width="210px" CssClass="auto-style11  text-box" style="margin-left: 112px"></asp:TextBox>
                        <asp:RequiredFieldValidator Font-Size="15px" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name" ControlToValidate="FullName" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div  class="items">

                   
                    <label>Username : </label>
                    <asp:TextBox ID="Username"  Font-Size="15px" Height="25px" runat="server" Width="210px" CssClass="auto-style10  text-box" style="margin-left: 106px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Username is required" ControlToValidate="Username" Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="items">
                        <label>Password :  </label>
                        <asp:TextBox ID="Password" Font-Size="15px" Height="25px" runat="server" Width="210px" TextMode="Password" CssClass="auto-style12  text-box" style="margin-left: 108px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Font-Size="15px" runat="server" ErrorMessage="Password is required" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>


                    </div>
                    <div class="items">
                        <label> Confirm Password :  </label>
                        <asp:TextBox ID="ConfirmPassword" Font-Size="15px" Height="25px" runat="server" Width="210px" TextMode="Password" CssClass="auto-style14  text-box" style="margin-left: 52px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" Font-Size="15px" runat="server" ErrorMessage="Confirm Password is required" ControlToValidate="ConfirmPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Font-Size="15px" ErrorMessage="Both Password must be same" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>

                    </div>
                    <div class="items">
                        <label>Gmail : </label>
                        <asp:TextBox ID="Gmail" Font-Size="15px" Height="25px" runat="server" Width="210px" CssClass="auto-style13  text-box" style="margin-left: 136px"></asp:TextBox>
                        <asp:RequiredFieldValidator Font-Size="15px" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Gmail is required" ControlToValidate="Gmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator Font-Size="15px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Gmail ID" ForeColor="Red" ControlToValidate="Gmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>


                    </div>
                    <div class="items">
                        <label>Country : </label>
                        <asp:DropDownList Font-Size="15px" ID="CountryDropDownList1" runat="server" Width="210px" Height="25px" CssClass="auto-style15">
                            <asp:ListItem>Select Country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>USA</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>South Africa</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>Sri Lanka</asp:ListItem>
                            <asp:ListItem>Nepal</asp:ListItem>
                            <asp:ListItem>Russia</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator  Font-Size="15px" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Select a country" ControlToValidate="CountryDropDownList1" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>

                    </div>
                    <div class="items">
                        <p class="buttons">
                            <asp:Button ID="RegisterBtn"  runat="server" Text="Register" Font-Size="20px" OnClick="Button1_Click" Width="102px" BackColor="#F6830F" CssClass="btn" ForeColor="White" />
                        
                            <asp:Button ID="ResetBtn" Font-Size="20px" runat="server" Text="Reset"  font-siOnClick="Button2_Click" CausesValidation="False" BackColor="#F6830F" ForeColor="White" CssClass="btn" Width="97px" />

                        </p>
                        

                    </div>
                </div>
            </div>

        
        </form>
    </div>




</body>
</html>

