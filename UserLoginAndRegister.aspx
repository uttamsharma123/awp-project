<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLoginAndRegister.aspx.cs" Inherits="AwP_Project.RegisterPage" %>

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
            margin-left: 68px;
        }
        .auto-style16 {
            margin-left: 69px;
        }
                
        .auto-style17 {
            margin-left: 325px;
        }
                
        .auto-style18 {
            margin-left: 5px;
        }
                
        .auto-style19 {
            color: black;
            text-align: center;
            height: 37px;
        }
                
        </style>
</head>
<body>
      <form id="RegisterForm"  runat="server">
         
   <!--this is for Registration Panel -->
          <asp:Panel ID="RegisterPanel"  Visible="false" runat="server">
                            
      <h1>Welcome To Job Portal</h1>
    
          <div class="center-content">
         
     
           
          
            <div class="main">
                <div class="register-container">
                    <div class="items">


                        <label>FullName : </label>
                        <asp:TextBox ID="FullName" Font-Size="15px" Height="25px" runat="server" Width="210px" CssClass="auto-style11  text-box" style="margin-left: 114px"></asp:TextBox>
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
                        <p class="buttons">
                            <asp:Button ID="RegisterBtn"  runat="server" Text="Register" Font-Size="20px" Width="102px" BackColor="#F6830F" CssClass="ok-btn btn" ForeColor="White" OnClick="RegisterBtn_Click1" />
                        
                            <asp:Button ID="ResetBtn" Font-Size="20px" runat="server" Text="Reset"  font-siOnClick="Button2_Click" CausesValidation="False" BackColor="#F6830F" ForeColor="White" CssClass="ok-btn btn " Width="97px" OnClick="ResetBtn_Click" />

                        </p>
                        

                    </div>
                    <p class="auto-style19">Already Registered? <asp:LinkButton CssClass="sign-up" ID="RegisterLinkButton2" runat="server" OnClick="RegisterLinkButton_Click" CausesValidation="False">Login now</asp:LinkButton>
                    </p>
                </div>
            </div>

        
     
    </div>
 </asp:Panel>
    <!--Registration panel Closed-->
<!--***************************************************************************************************************************************-->
   <!--this is for Login Panel -->
         
    <asp:Panel ID="LoginPanel" Visible="true" runat="server">
          <h1>Welcome to Job Portal</h1>
    <div class="center-content">
       
         
      
        
            <div class="main">
                    <asp:Image ID="Image3" runat="server" style="margin-top:20px" CssClass="auto-style17" Height="100px" ImageUrl="~/Images/user.png" />

                <div class="register-container login-form">

                    <div  class="items">

                   
                    <label> <asp:Image ID="Image1" runat="server" Height="24px" ImageUrl="~/Images/UserIcon2.png" Width="36px" CssClass="auto-style15" /> </label>
                    <asp:TextBox ID="LoginUsername"  Font-Size="15px" Height="29px" runat="server" placeholder="Enter Username" Width="210px" CssClass="auto-style10  text-box" style="margin-left: 0px"></asp:TextBox>
                     <br />
                        <small class="small-label"> 
                            <asp:RequiredFieldValidator ControlToValidate="LoginUsername" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
                        </small>
                    </div>
                    <div class="items">
                    <label> <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/Images/PassIcon.png" CssClass="auto-style16" /> </label>
                       
                        <asp:TextBox ID="LoginPassword" Font-Size="15px" Height="28px"  placeholder="Enter Password" runat="server" Width="210px" TextMode="Password" CssClass="auto-style12  text-box" style="margin-left: 5px"></asp:TextBox>

                        <br />
                        <small class="small-label">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="LoginPassword" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                        </small>
                    </div>
                  

                   
                    <div class="items">
                        <p class="buttons login-button">
                             <asp:Button ID="LoginButton1"  runat="server" Text="OK" Font-Size="20px" OnClick="Ok_Click" Width="102px" BackColor="#F6830F" CssClass="auto-style18 ok-btn" ForeColor="White" />
                        
                        </p>
                        

                    </div>
                    <p class="not-register">Not Registered? <asp:LinkButton CssClass="sign-up" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Signup now</asp:LinkButton>
                    </p>
                </div>
            </div>

        
    
    </div>
      
        </asp:Panel>
    <!--Login panel Closed-->
<!--***************************************************************************************************************************************-->
    </form>



</body>
</html>

