<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="RegistrationGuide.aspx.cs" Inherits="IntelArcade.WebApp.RegistrationGuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%--<div style="height:205px">--%>
<p class="headingsNew"><span >DIALa</span><span class="highlight">BRAIN</span> </p>
<div style="width:80px;height:80px;float:left;">
<img src="images/reg-signin.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px;padding-right:10px"/>
</div>
<p style="padding-left:10px;padding-right:10px;">Registration with  <b>DIALa<span class="highlight2">BRAIN</span></b> is free. You will be asked for your real name and a valid email address. There is no need to load any money unless you want to buy something. 

</p><br/>

<p class="headingsNew" ><span style="margin-left:-65px">Registering as a <i>Seeker</i></span></p><br/>
<div style="width:80px;height:80px;float:left;">
<img src="images/Seeker.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px;padding-right:10px"/></div>
<p style="padding-left:10px;padding-right:10px"> If you are seeking professional advice, register with <b>DIALa<span class="highlight2">BRAIN</span></b>. You will be asked if you are registered for VAT or TAX. We ask for these details as they are relevant for producing accurate invoices. Your details will not be shared with anyone outside of the company except those persons or entities with whom you are conducting business. </p>
<br/>
<%--</div>--%>
<p class="headingsNew">Registering as a <i>Provider</i></p><br/>
<div style="width:80px;height:80px;float:left;">
<img src="images/Provider-my.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px;padding-right:10px"/>
</div><p style="padding-left:10px;padding-right:10px">If you are a professional, a company or a even an individual with a specific expertise and feel qualified to provide professional advice or training, why not register with <b>DIALa<span class="highlight2">BRAIN</span></b>. Under the Account menu there is a sub-menu “<a href="/ProviderSetup/CompanyDisplay.aspx">Become a Provider – Setup</a>” that will guide you through the process. Or if your are not quite ready, why not look at the <a href="ProviderGuide.aspx">Becoming a Service Provider</a> Guide or the <a href="P_BenenfitsGuide.aspx">Provider Benefits</a> Guide.</p><br/>
<%--<p style="background: #6F6F6F; color:White;padding: 3px 0 4px 15px;font: bold 1.2em  Arial, Sans-Serif;margin: 0 0 10px 0;">Registering as a Company or Legal Entity</p><br/>
<img src="images/Net-Presence---Company.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px;padding-right:10px"/><p style="padding-left:10px;padding-right:10px">A company or other legal entity may register with <b>DIALa</b><span class="highlight2">BRAIN</span> as either a <i>Seeker</i> or a <i>Provider</i>. To register for use of the website as a company or other legal entity, you will be asked to provide certain information, including the company/entity name. You will also be asked to identify the name of one individual that is legally authorised to represent the company/entity and to provide its registered VAT number, if applicable. You will also be asked to provide a valid email address, which the site will use as the company/entity's unique identifier, as well as a password, which will be required each time you access the site. Finally, if the company/entity registers as a <i>Provider</i>, you will be requested to provide the email address you use with PayPal so that you may receive payment when you render a <i>Service</i> or sell a <i>Product</i> to a <i>Seeker</i>. </p>--%>

<p class="headingsNew">Guidance</p>
		<div class="contentBody_leftSide" style="padding-left:10px">
            <b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Frequently Asked Questions</span></b><br />
            <ul style="padding-left:30px">
			<li><a href="UsageFAQ.aspx">Using this site</a></li><li><a href="ProviderFAQ.aspx">Service Providers</a></li><li><a href="SeekerFAQ.aspx">Service Seekers</a></li><li><a href="BillingFAQ.aspx">Billing and Payments</a></li><li><a href="DIALaBRAINFAQ.aspx" >What is <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span>?</a></li></ul><br/>
            
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Guides for Seekers and Providers</span></b><br />
			<ul style="padding-left:30px"><li><a href="PrePayGuide.aspx"><span style="color:#414141; font-weight:bold">d<span class="highlight2">b</span></span>-<i>Time</i> and PrePay</a></li><li><a href="InvoiceGuide.aspx">Making and receiving Payments</a></li><li><a href="FeedbackGuide.aspx">Recommendations and Feedback</a></li><li><a href="RegistrationGuide.aspx">Registering with <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span></a></li></ul><br/>
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Service Seeker Guides</span></b><br />
			<ul style="padding-left:30px"><li><a href="TrustGuide.aspx">Building trust</a></li><li><a href="SelectionGuide.aspx">Selecting a Provider and Having a Meeting</a></li></ul>

		</div>
		<div class="contentBody_rightSide">
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default">Service Provider and Company Guides</span></b><br />
			<ul style="padding-left:30px"><li><a href="P_BenenfitsGuide.aspx">The benefits for Providers</a></li><li><a href="ConferencingGuide.aspx">Web conferencing tools</a></li><li><a href="ProviderGuide.aspx">Becoming a service Provider</a></li><li><a href="ReferredGuide.aspx">How to pay almost no commission</a></li><li><a href="ProfileGuide.aspx">Writing a profile</a></li><li><a href="PhotographGuide.aspx">Photos and creating the right image</a></li><li><a href="MarketGuide.aspx">How to market yourself</a></li><li><a href="FeesGuide.aspx">What are my costs as a Provider</a></li></ul><br/>
			<b><img src="/images/arrow.gif" alt=">" /> <span class="title"  style="text-decoration:none; color:#414141; cursor:default"><span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span> &amp; Policies </span></b><br />
			<ul style="padding-left:30px"><li><a href="OverviewGuide.aspx">An overview of <span style="color:#414141; font-weight:bold">DIALa<span class="highlight2">BRAIN</span></span></a></li><li><a href="PrivacyGuide.aspx">Privacy Policy</a></li><li><a href="SeekerTermsGuide.aspx">Seeker Terms and Conditions</a></li><li><a href="ProviderTermsGuide.aspx">Provider Terms and Conditions</a></li><li><a href="ContactUsGuide.aspx">Contact Us</a></li></ul>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
