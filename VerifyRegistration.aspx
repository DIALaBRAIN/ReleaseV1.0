<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.Master" AutoEventWireup="true" CodeBehind="VerifyRegistration.aspx.cs" Inherits="IntelArcade.WebApp.VerifyRegistration" %>
<%@ Register src="InfoBoxes/WhyRegister.ascx" tagname="WhyRegister" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="contentBody" >
        <h2><span><%=PageTitle %></span></h2>
        <asp:Panel runat="server" ID="ControlPanel" DefaultButton="Submit">
            <iac:FieldSet ID="FieldSet1" runat="server" class="formData" Title="Account Information">
                <iac:InputContainer runat="server" ID="InputContainer1">
                    <Item Text="Email Address">
                        <asp:TextBox ID="UserName" runat="server" Width="200px" ReadOnly="true" />
                        <span class="validators">
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                    CssClass="failureNotification" Text="Required" ToolTip="Required" 
                                    ValidationGroup="LoginUserValidationGroup" />
                        </span>
                    </Item>
                    <Item Text="Password">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="200px" />
                        <span class="validators">
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                    CssClass="failureNotification" Text="Required" ToolTip="Required"
                                    ValidationGroup="LoginUserValidationGroup" />
                        </span>
                    </Item>
                    <Item><iac:IACheckBox runat="server" ID="RememberUser" Text="Keep me signed-in on this computer" /></Item>
                    <Item><span class="signin_verify"><asp:LinkButton ID="Submit" runat="server"   ValidationGroup="LoginUserValidationGroup" /></span></Item>
                    <Item><asp:LinkButton runat="server" ID="ForgottenPassword">I've forgotten my registration password</asp:LinkButton></Item>
                </iac:InputContainer>
            </iac:FieldSet>

           <%-- <iac:FieldSet ID="FieldSet2" runat="server" class="formData" Title="Please sign-in to continue  ">
            Please sign-in to verify your registration and complete the registration process.
            </iac:FieldSet>--%>
        </asp:Panel>
    </div>
    <div class="contentRight">
        <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
</asp:Content>
