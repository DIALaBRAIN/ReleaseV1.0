<%@ Page Title="" Language="C#" MasterPageFile="~/SimpleMaster.Master" AutoEventWireup="true"
    CodeBehind="SignIn.aspx.cs" Inherits="IntelArcade.WebApp.SignIn" %>

<%@ Register Src="InfoBoxes/WhyRegister.ascx" TagName="WhyRegister" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script src="/Client/jquery-1.5.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var d = new Date()
            var offsetMins = -d.getTimezoneOffset();
            $('#<%=TimezoneOffset.ClientID %>').val(offsetMins);
        })
    </script>
    <style type="text/css">
        input[type="submit"]
        {
            display: block;
            background: url("/images/ia_btn_signin.png") 0px 0px no-repeat; /* '0px 0px' tells browser to start at top-left of the image */
            width: 99px;
            height: 32px; /* width & height of individual link image */
            font: 10px/20px Verdana, sans-serif;
            font-weight: bold; /* '11px/18px' is the font-size and line-height  */ /* Adjust line-height to center the text in the block height (height : 20px) */
            text-align: center; /* can replace with 'text-indent : <length>' for different effect */
            color: White;
            text-decoration: none; /*padding-top:1px;*/
            border: none;
            cursor: auto;
        }
        
        input[type="submit"]:Hover
        {
            background: url("/images/ia_btn_signin.png") 0px -32px no-repeat; /* '-20px' tells browser the roll over part is 20px down from top */
            color: White;
            text-align: center;
            border: none;
            cursor:hand;
        }
    </style>
    <link rel="stylesheet" href="Styles/Default-100.css" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:HiddenField ID="TimezoneOffset" runat="server" />
    <div class="contentBody">
        <h2 style="font-size: 1.2em">
            Sign-in to DIAL<span style="color: White; font-size: 16px;">a</span><span class="highlight">BRAIN</span><span
                class="bodyHeaderInfo"><p>
                    Not a member? <a href="/Register.aspx">Register Now</a></p>
            </span>
        </h2>
        <asp:Panel runat="server" ID="ControlPanel" DefaultButton="Submit">
            <table>
                <tr>
                    <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                        <iac:FieldSet ID="FieldSet1" runat="server" class="formData" Title="Sign-in">
                            <iac:InputContainer runat="server" ID="InputContainer1" defaultbutton="Submit">
                    <Item Text="Email Address">
                        <asp:TextBox ID="UserName" runat="server" Width="200px" />
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
                    <Item><table><tr><td><asp:Button ID="Submit" runat="server" Text="" ValidationGroup="LoginUserValidationGroup" /></td><td style="padding-left:20px;padding-right:5px;"><span class="editButton"><a title="Reset Password" href="/ResetPassword.aspx"></a</span></td><td> <span class="registerButton"> <a title="Register Now" href="/Register.aspx"></a></span></td></tr></table></Item><br/>

                            </iac:InputContainer>
                        </iac:FieldSet>
                    </td>
                    <tr>
                <tr>
                    <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div class="contentRight">
        <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
</asp:Content>
