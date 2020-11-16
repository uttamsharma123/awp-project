<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="AwP_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

      <div class="center-content " style="width: 643px; margin-left: 138px; height: 453px;">
       
         
      
           
            <div class="main" style="height: 437px; width: 111%">
               
                <asp:Wizard ID="Wizard1" CssClass="view-details-job-title" runat="server" ActiveStepIndex="0" Height="16px" Width="630px" StartNextButtonText="Update Profile" StepNextButtonText="" StepPreviousButtonText="" OnFinishButtonClick="Wizard1_FinishButtonClick" FinishDestinationPageUrl="~/findJobPage.aspx" style="margin-left: 25px" DisplaySideBar="False">
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Profile">
                            <h3>Profile</h3>
                            <div class="wizard-div">
                                 <p class="para1">Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="UserNameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="NameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Gmail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="GmailLabel" runat="server" Text="Label"></asp:Label></p>
                             <p class="para1">Gender:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label CssClass="asp-label" ID="GenderLabel1" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">DateOf Birth: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="DOBLabel2" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label CssClass="asp-label" ID="AddressLabel3" runat="server" Text="Label"></asp:Label></p>
                            
                            </div>
                           
                        </asp:WizardStep>
                        <asp:WizardStep ID="UpdateStep" runat="server" Title="Update Profile">
                            <h3>Update Profile </h3>
                           <p> 
                               &nbsp;</p> 
                              <p> 
                               <asp:TextBox CssClass="txt-box"  ID="NameTextBox" runat="server"></asp:TextBox>
                           </p> 
                            <p>
                            <asp:TextBox CssClass="txt-box" ID="GmailTextBox" runat="server"></asp:TextBox>
                           </p>
                            <p>
                                <asp:RadioButtonList ID="GenderTextBox" runat="server" RepeatDirection="Horizontal" style="margin-left: 208px" Width="207px">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
                            </p>
                            <p>
                                <asp:TextBox CssClass="txt-box" ID="DOBTextBox" placeholder="Update DOB (DD-MM-YYYY)" runat="server" style="margin-left: 32px"></asp:TextBox>
                                &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="26px" ImageUrl="~/Images/calIcon.png" Width="30px" OnClick="ImageButton1_Click" />
                            </p>
                            <p>
                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" style="margin-left: 198px; margin-top: 10px;" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnDayRender="Calendar1_DayRender" Width="220px">
                                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                    <WeekendDayStyle BackColor="#CCCCFF" />
                                </asp:Calendar>
                            </p>
                            <p>
                               <asp:TextBox placeholder="Update Address" CssClass="txt-box" ID="AddressTextBox" runat="server"></asp:TextBox>

                            </p>
                            <asp:Button  CssClass="btn" ID="UpdateSubmitButton"  runat="server" Text="Update" Font-Size="15px" OnClick="UpdateSubmitButton_Click" />

                        </asp:WizardStep>
                       

                    </WizardSteps>
                </asp:Wizard>
            </div>

        
    
    </div>
</asp:Content>
