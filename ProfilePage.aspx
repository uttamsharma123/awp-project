<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="AwP_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

      <div class="center-content " style="width: 643px; margin-left: 138px">
       
         
      
           
            <div class="main" style="height: 389px; width: 111%">
               
                <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0" Height="84px" Width="630px" StartNextButtonText="Update" StepNextButtonText="" StepPreviousButtonText="" DisplaySideBar="False" OnFinishButtonClick="Wizard1_FinishButtonClick">
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="">
                            <p>Username <asp:Label CssClass="asp-label" ID="UserNameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p>Name <asp:Label CssClass="asp-label" ID="NameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p>Gmail <asp:Label CssClass="asp-label" ID="GmailLabel" runat="server" Text="Label"></asp:Label></p>

                        </asp:WizardStep>
                        <asp:WizardStep ID="UpdateStep" runat="server" Title="Update Profile">
                           <p> 
                               <asp:TextBox CssClass="txt-box"  ID="UserNameTextBox" runat="server"></asp:TextBox>
                           </p> 
                              <p> 
                               <asp:TextBox CssClass="txt-box"  ID="NameTextBox" runat="server"></asp:TextBox>
                           </p> 
                            <p>
                            <asp:TextBox CssClass="txt-box" ID="GmailTextBox" runat="server"></asp:TextBox>


                            </p>
                            <p>
                            <asp:TextBox  CssClass="txt-box" placeholder="Current Password" ID="CurrentTextBox3" runat="server"></asp:TextBox>

                            </p>
                           <p>
                            <asp:TextBox CssClass="txt-box" placeholder="New Password" ID="NewPassTextBox4" runat="server"></asp:TextBox>

                           </p>
                            <p>
                            <asp:TextBox  CssClass="txt-box" placeholder="Confirm Password" ID="ConfirmPassTextBox5" runat="server"></asp:TextBox>

                            </p>
                            <asp:Button  CssClass="btn" ID="UpdateSubmitButton" runat="server" Text="Button" />

                        </asp:WizardStep>
                       

                    </WizardSteps>
                </asp:Wizard>
            </div>

        
    
    </div>
</asp:Content>
