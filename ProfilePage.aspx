<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="ProfilePage.aspx.cs" Inherits="AwP_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

      <div class="center-content " style="width: 643px; margin-left: 138px; height: 453px;">
       
         
      
           
            <div class="main" style="height: 437px; width: 111%; margin-left: 0px;">
               
                <asp:Wizard ID="Wizard1" CssClass="view-details-job-title" runat="server" ActiveStepIndex="0" Height="16px" Width="630px" StartNextButtonText="Update and Delete Profile" StepNextButtonText="" StepPreviousButtonText="" OnFinishButtonClick="Wizard1_FinishButtonClick" FinishDestinationPageUrl="~/findJobPage.aspx" style="margin-left: 25px" DisplaySideBar="False">
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Profile">
                            <h3>Profile</h3>
                            <div class="wizard-div">
                                 <p class="para1">Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="UserNameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="NameLabel" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Gmail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="GmailLabel" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Skills:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label CssClass="asp-label" ID="SkillsLabel" runat="server" Text="Label"></asp:Label></p>
                            
                                <p class="para1">Gender:&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label CssClass="asp-label" ID="GenderLabel1" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">DateOf Birth: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label CssClass="asp-label" ID="DOBLabel2" runat="server" Text="Label"></asp:Label></p>
                            <p class="para1">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label CssClass="asp-label" ID="AddressLabel3" runat="server" Text="Label"></asp:Label></p>
                            
                            </div>
                           
                        </asp:WizardStep>
                        <asp:WizardStep ID="UpdateStep" runat="server" Title="Update Profile">
                            <h3>Update And Delete Profile </h3>
                             <asp:RadioButtonList ID="UpdateAndDeleteRadioButtonList1" runat="server"  RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="UpdateAndDeleteRadioButtonList1_SelectedIndexChanged" style="height: 27px">
                                    <asp:ListItem>Update</asp:ListItem>
                                    <asp:ListItem>Delete</asp:ListItem>
                                </asp:RadioButtonList>
                            <asp:Panel ID="DeletePanel1" runat="server">

                                <p> 
                               <asp:TextBox CssClass="txt-box"  ID="UserNameForDelete" runat="server" Enabled="False"></asp:TextBox>
                               </p> 
                                <p> 
                               <asp:TextBox CssClass="txt-box" placeholder="Enter Password to Confirm" ID="PasswordForDelete" runat="server" TextMode="Password"></asp:TextBox>
                               </p>
                            <asp:Button  CssClass="btn" ID="DeleteButton1"  runat="server" Text="Delete" Font-Size="15px" OnClick="DeleteButton1_Click"  />

                            </asp:Panel>
                            <asp:Panel ID="UpdatePanel1" runat="server">
                                 <p> 
                               &nbsp;</p> 
                              <p> 
                               <asp:TextBox CssClass="txt-box"  ID="NameTextBox" runat="server" Enabled="False"></asp:TextBox>
                           </p> 
                            <p>
                            <asp:TextBox CssClass="txt-box" ID="GmailTextBox" runat="server" Enabled="False"></asp:TextBox>
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
                                <asp:DropDownList Font-Size="15px" ID="DropDownList1" runat="server" Height="20px" style="margin-left: 0px" Width="207px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="-1">Select Year Of DOB</asp:ListItem>
                                    <asp:ListItem>1991</asp:ListItem>
                                    <asp:ListItem>1992</asp:ListItem>
                                    <asp:ListItem>1993</asp:ListItem>
                                    <asp:ListItem>1994</asp:ListItem>
                                    <asp:ListItem>1995</asp:ListItem>
                                    <asp:ListItem>1996</asp:ListItem>
                                    <asp:ListItem>1997</asp:ListItem>
                                    <asp:ListItem>1998</asp:ListItem>
                                    <asp:ListItem>1999</asp:ListItem>
                                    <asp:ListItem>2000</asp:ListItem>
                                    <asp:ListItem>2001</asp:ListItem>
                                    <asp:ListItem>2002</asp:ListItem>
                                </asp:DropDownList></p>
                            <p>
                                &nbsp;
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
                              <p>
                               <asp:TextBox placeholder="Enter Your Skills eg.MsOffice" CssClass="txt-box" ID="SkillsTextBox1" runat="server"></asp:TextBox>

                            </p>
                            <asp:Button  CssClass="btn" ID="UpdateSubmitButton"  runat="server" Text="Update" Font-Size="15px" OnClick="UpdateSubmitButton_Click" />

                            </asp:Panel>
                        </asp:WizardStep>
                       

                    </WizardSteps>
                </asp:Wizard>
            </div>

        
    
    </div>
</asp:Content>
