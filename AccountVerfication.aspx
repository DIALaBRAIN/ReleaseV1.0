<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/InteractiveBase.master" CodeBehind="AccountVerfication.aspx.cs" Inherits="IntelArcade.WebApp.AccountVerfication" %>
<%@ Register Src="InfoBoxes/WhyRegister.ascx" TagName="WhyRegister" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<div class="contentBody">
<div runat="server" id="StatusPanel" >
            <h2>
                <%=global::Resources.FormTitles.AccountVerification%></h2>
          <h3>Congratulations!</h3>

<p>You have now completed the <i>Seeker</i> registration. You are now ready to use this exciting new marketplace for professional services. Simply search or browse through the services and engage professionals without the need to travel. Simply find the expert, consultant or tutor, that can best assist you, load enough credit to cover the cost of your proposed meeting and fix a time.</p>
<p>When the service <i>Provider</i> accepts your meeting, don't worry; your money will not be passed on. Your money is only transferred after the meeting is held and you are only charged for the minutes that you are actually connected. Any excess credit is returned to your account and you may download it again at your convenience.</p> 
<p>If you yourself are a professional or your company can offer professional services, then why not "<a href="MemberPages/ProviderSetupStatus.aspx">Become a Professional Service Provider</a>".  If you want to understand more about becoming a <i>Provider</i>, have a look at the <a href="../guides/Benefits of becoming a Service Provider">Benefits of becoming a Service Provider</a>.</p>

<p>The <i>Provider</i> sign-up process walks you through the steps necessary to create an online profile of yourself. It allows you to: </p>
<p>
    <ul>
    <li>Let others know who you are as an individual</li>
    <li>Brand your company</li>
    <li>Promote your work history and professional profile</li>
    <li>Create specific services for individuals and groups </li>
    <li>Sell resources such as e-books or multi-media files </li>
    <li>Deliver specific e-resources to specific clients</li>
    </ul>
</p>
<p><a href="MemberPages/ProviderSetupStatus.aspx">Become a Professional Service Provider</a></p>
        </div>
        </div>
        <div class="contentRight">
        <uc1:WhyRegister ID="WhyRegister1" runat="server" />
    </div>
</asp:Content>