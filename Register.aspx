<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.master" AutoEventWireup="true"
    CodeBehind="Register.aspx.cs" Inherits="IntelArcade.WebApp.Register" %>

<%@ Register Src="InfoBoxes/WhyRegister.ascx" TagName="WhyRegister" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <script type="text/javascript">
        function Hide() {

            document.getElementById('requiredIndigator1').style.display = 'none';
            document.getElementById('requiredIndigator2').style.display = 'none';
            document.getElementById('requiredIndigator3').style.display = 'none';
            document.getElementById('requiredIndigator4').style.display = 'none';
            document.getElementById('requiredIndigator5').style.display = 'none';
            document.getElementById('requiredIndigator6').style.display = 'none';
            document.getElementById('requiredIndigator7').style.display = 'none';
            document.getElementById('requiredIndigator8').style.display = 'none';
            document.getElementById('requiredIndigator9').style.display = 'none';
            document.getElementById('requiredIndigator10').style.display = 'none';
            document.getElementById('requiredIndigator11').style.display = 'none';

        }
        $('span').each(function (i) {


            var title = this.attr('title');
            alert(title);
         
        });
    </script>
    <div class="contentBody">
        <div runat="server" id="InputPanel">
            <h2 style="font-size: 1.2em">
                Register with DIAL<span style="color: White; font-size: 16px;">a</span><span class="highlight">BRAIN</span>
                <%--<%=PageTitle %>--%></h2>
            <table>
                <tr>
                    <td>
                        <div style="width: 100%;">
                            <img src="images/Why Register.jpg" class="leftImage" alt="Big Image" />
                            <p>
                                Registration could not be simpler.  Please enter your real name, aliases are not
                               accepted. Your email address will be your Sign-in username. You may have separate business and private accounts.<br />
                            </p>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                        <iac:FieldSet runat="server" ID="FieldSet1" class="formData" Title="Personal Details">
                            <iac:InputContainer runat="server" ID="InputContainer1">
                <div style="padding-left:52px;padding-top:10px;">
                <Item Text="<%$ Resources:Labels,Title%>"><iac:TitleDropDown runat="server" ID="drpTitle" Width="70px"> 
                   <Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:TitleDropDown>
                <span class="validators">
                <span id="requiredIndigator1" style="color:Red" >*</span>
                    <iac:IARequiredFieldValidator InitialValue="Select" runat="server" ID="rfvalTitle" ControlToValidate="drpTitle" ValidationGroup="Register" RenderAsBlockElement="false" />
                </span>
            </Item>
            <Item Text="<%$ Resources:Labels,FirstName%>">  <tel:RadTextBox runat="server" ID="txtFirstName" Width="200px" EmptyMessage="This cannot be edited once saved." ></tel:RadTextBox>
                <span class="validators">
                <span id="requiredIndigator2" style="color:Red" >*</span>
                    <iac:IARequiredFieldValidator runat="server" ID="rfvalFirstName" ControlToValidate="txtFirstName" ValidationGroup="Register" RenderAsBlockElement="false" />
                </span>
            </Item>

            <Item Text="<%$ Resources:Labels,Surname%>"><tel:RadTextBox runat="server" ID="txtSurname" Width="200px" EmptyMessage="This cannot be edited once saved." ></tel:RadTextBox>
                <span class="validators">
                <span id="requiredIndigator4" style="color:Red" >*</span>
                    <iac:IARequiredFieldValidator runat="server" ID="rfvalSurname" ControlToValidate="txtSurname" ValidationGroup="Register" RenderAsBlockElement="false" />
                </span>
            </Item>
                        <Item Text="Currency">
            <iac:CurrencyDropDown  id="Currency" runat="server" Width="200px" AllowCustomText="false">
   <Items><telerik:RadComboBoxItem Text="Select your preferred currency." Selected="true"/></Items></iac:CurrencyDropDown >
                    <span class="validators">
                    <span id="requiredIndigator6" style="color:Red" >*</span>
                        <iac:IARequiredFieldValidator InitialValue="Select your preferred currency." runat="server" Display="Dynamic" ID="rfvalCurrency" ControlToValidate="Currency" ValidationGroup="Register" RenderAsBlockElement="false" />
                    </span>
            </Item>
            
                            <Item Text="<%$ Resources:Labels,Country%>">
                <iac:CountryDropDown AllowCustomText="false" runat="server" ID="cboRegisteredCountry" MaxHeight="200px" Width="200px" >
                  <Items><telerik:RadComboBoxItem Text="This cannot be edited once saved." Selected="true"/></Items></iac:CountryDropDown>
                    <span class="validators">
                    <span id="requiredIndigator7" style="color:Red" >*</span>
                        <iac:IARequiredFieldValidator InitialValue="This cannot be edited once saved." runat="server" ID="rfvalRegisteredCountry" ControlToValidate="cboRegisteredCountry" ValidationGroup="Register" RenderAsBlockElement="false" />
                    </span>
                </Item>
                <Item Text="Time Zone">
                
                    <iac:TimeZoneDropDown runat="server" ID="TimeZone"  Width="200px" MaxHeight="200px" >
                      <Items><telerik:RadComboBoxItem Text="Select" Selected="true"/></Items></iac:TimeZoneDropDown>
                    <span class="validators">
                    <span id="requiredIndigator11" style="color:Red" >*</span>
                        <asp:RequiredFieldValidator runat="server" InitialValue="Select" ID="TimeZoneRequried" ControlToValidate="TimeZone" Text="Required" ToolTip="Required" ValidationGroup="Register" Display="Dynamic" />    
                    </span>
                </Item>

                                <Item Text="Email">
                    <tel:RadTextBox ID="UserName" runat="server" Width="200px" autocomplete="off" EmptyMessage="This cannot be edited once saved." ></tel:RadTextBox>
                    <span class="validators">
                    <span id="requiredIndigator8" style="color:Red" >*</span>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" Text="Required" ToolTip="Required" ValidationGroup="Register" Display="Dynamic" />
                        <iac:EmailAddressValidator ID="valEmail" runat="server" ControlToValidate="UserName" Text="This is not a valid email address" ToolTip="Required" ValidationGroup="Register" Display="Dynamic" />
                        <asp:CustomValidator runat="server" ID="UserNameCustom" ValidationGroup="Register" Display="Dynamic" />
                    </span>
                </Item>
                
                <Item Text="Password">
                    <tel:RadTextBox ID="Password" runat="server" TextMode="Password" Width="196px" autocomplete="off" EnableSingleInputRendering="false">
             <PasswordStrengthSettings ShowIndicator="true"
                    IndicatorElementBaseStyle="Base" TextStrengthDescriptions="Password Strength : Very Week;Password Strength : Week;Password Strength : Medium;Password Strength : Strong;Password Strength : Very Strong"
                    IndicatorElementID="CustomIndicator"></PasswordStrengthSettings>
                    
                    </tel:RadTextBox>
                    <span class="validators">
                     <span id="requiredIndigator9" style="color:Red" >*</span>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" Text="Required" ToolTip="Required" ValidationGroup="Register" />
                        <asp:RegularExpressionValidator style="position:relative;margin-left:-55px;" ID="valPassword" runat="server"  ControlToValidate="Password" ValidationGroup="Register" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" />
                   
                    </span>
                </Item>
                <Item Text="Confirm Password">
                    <tel:RadTextBox ID="ConfirmPassword"  runat="server" TextMode="Password" Width="196px" autocomplete="off" EnableSingleInputRendering="false">
                <ClientEvents></ClientEvents>
                    </tel:RadTextBox>
                    <span class="validators">
                    <span id="requiredIndigator10" style="color:Red" >*</span>
                        <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" Display="Dynamic" ControlToValidate="ConfirmPassword" Text="Required" ToolTip="Required" ValidationGroup="Register" />
                        <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The passwords do not match" ValidationGroup="Register" />
                    </span>

                    <br />
            <span id="CustomIndicator" >&nbsp; </span> <span id="PasswordRepeatedIndicator" class="Base L0">
                &nbsp;</span>  
                   
                </Item>
                <Item Text="Type the code from the image" >
                 <telerik:RadCaptcha  ID="RadCaptcha1" CaptchaAudioLinkButtonText="" CaptchaTextBoxLabel="" CaptchaTextBoxTitle="" CaptchaImage-Width="200" Width="200" style="font-size:12px;color:Gray;width:200px;margin-top:-12px;" runat="server"  ErrorMessage="The code you entered is not valid."
                              ValidationGroup="Register">
                         </telerik:RadCaptcha>
                   </Item>     
            </div>
                            </iac:InputContainer>
                            <div style="float: left; padding-top: 10px; padding-left: 328px;">
                                <span class="register_account">
                                    <asp:LinkButton runat="server" ID="SubmitButton" Text="" ValidationGroup="Register"></asp:LinkButton></span><br />
                            </div>
                        </iac:FieldSet>
                    </td>
                </tr>
                <%--                <tr>
                    <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                    </td>
                </tr>--%>
            </table>
        </div>
        <div runat="server" id="StatusPanel" visible="false">
            <h2>
                <%=global::Resources.FormTitles.AccountCreated %></h2>
            <table>
                <tr>
                    <td>
                        <img src="images/Why Register.jpg" class="leftImage" alt="Big Image" />
                    </td>
                    <td>
                        <div>
                            Congratulations, your <b>DIALa<span class="highlight2">BRAIN</span></b> account
                            has been created and is now awaiting activation.<br />
                            <br />
                            A confirmation email has been sent to&nbsp;
                            <label id="ConfirmationEmail" runat="server" />. Please click the activation link contained in the email to validate your new account.<br />
                            <br />
                            If you don't see this email in your inbox within 15 minutes, look for it in your
                            junk-mail/spam-mail folder. If you find it there, please mark the email as Not Junk
                            and add @dialabrain.com to your address book.
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div class="contentRight">
        <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
  
  <style type="text/css">
        .RadCaptcha span
        {
            position:absolute;
            margin-left:215px;
            font-size:14px;
        }
        .RadCaptcha input
        {
           width:200px;height:21px;
        } 
    </style>
</asp:Content>
