<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master" CodeBehind="ProviderSetupStatus.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ProviderSetupStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:PostBackProxy runat="server" ID="CreateCompanyProxy" />
    <h2 style="font-size:1.2em"><%=global::Resources.FormTitles.BecomeProvider%></h2>
    <div runat="server" id="ContentContainer">        
        <div><img src="../images/bigimage.gif" class="leftImage" alt="Big Image" />
        <p>This page allows you to continue to complete your <b>DIALa<span class="highlight2">BRAIN</span></b> <i>Provider</i> profile. The links below will guide you through the process, after the initial form on your Business, you do not have to follow the order laid out below. If you do leave the process at any time, you can always return to it again. However please note that you will not show up in the search results unless you have completed your personal profile with a photograph and detailed at least one service that you offer.
        </p><br />
        </div>
        <br />
        <h3></h3>
        <br />
        <iac:FieldSet runat="server" ID="FieldSet1" Title="Provider Requirements" class="formData" >
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
        <p>To be considered a service <em>Provider</em>, there are a few requirements. You must:<br/></p>
        <div style="padding-left:10px;">
        <ul style="padding-left:10px;">
        <li>Be a professional or have appropriate experience or training in your given service area.  </li>
        <li>If you have a VAT / sales TAX code, you must complete that part of the form with the rates that apply to your services and products. This must be done before the creating the services and products. </li>
        <li>You must add at least one service or product.</li>
        </ul>
        </div>
        <br />
        <table style="padding-left:20px" width="50%">
            <tr><td><h4>Account</h4></td><td>&nbsp;</td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="CompanyDetails" OnCommand="EditLink_Command" CommandName="Company" Text="Business Details" /></td><td><asp:Image ID="imgCompanyDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ContactDetails" OnCommand="EditLink_Command" CommandName="ContactDetails" Text="Contact Details" /></td><td><asp:Image ID="imgContactDetails" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="BankAccount" OnCommand="EditLink_Command" CommandName="BankAccount" Text="Bank Account" /></td><td><asp:Image ID="imgBankAccount" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="VatTax" OnCommand="EditLink_Command" CommandName="VatTax" Text="Sales Tax/VAT Details" /></td><td><asp:Image ID="imgVatTax" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><h4>Profile</h4></td><td>&nbsp;</td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ProviderProfile" OnCommand="EditLink_Command" CommandName="ProviderProfile" Text="Personal Profile" /></td><td><asp:Image ID="imgProviderProfile" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="WorkHistoryLink" OnCommand="EditLink_Command" CommandName="WorkHistory" Text="Work History" /></td><td><asp:Image ID="imgWorkHistory" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /> </td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="ProfessionalQualifications" OnCommand="EditLink_Command" CommandName="Qualifications" Text="Qualifications" /></td><td><asp:Image ID="imgQualifications" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="Services" OnCommand="EditLink_Command" CommandName="Services" Text="Services" /></td><td><asp:Image ID="imgServices" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td> </tr>
            <tr><td><asp:LinkButton runat="server" ID="Languages" OnCommand="EditLink_Command" CommandName="Languages" Text="Languages" /></td><td><asp:Image ID="imgLanguages" Width="16px" Height="16px" ImageUrl="~/images/blank_tick.png" runat="server" /></td> </tr>
        </table>
        </iac:InputContainer></iac:FieldSet></div>
</asp:Content>