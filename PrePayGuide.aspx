<%@ Page Title="PrePay db-Time" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="PrePayGuide.aspx.cs" Inherits="IntelArcade.WebApp.PrePayGuid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
<style type="text/css">
    span.SpellE {mso-style-name:"";
	mso-spl-e:yes;}
</style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

<iac:MoreLess2 ID="MoreLess1" runat="server">
<Less>
<div style="height:185px">
<p class="headingsNew">PrePay d<span class="highlight">b</span>-<i>Time</i></p>
 <p>
    <img src="images/free-1st-session.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:7px;"><b><i>Free 1<sup>st</sup> Meeting</i></b><br/> 
     If you see this icon there is no charge for your first meeting (Durations cannot be altered).</div><br/>
       
       <img src="images/free.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:7px;"><b><i>
       Free calls - if cut-short</i></b><br/> There is no charge if a call lasts less than 90 seconds.....</div><br/>   
   
      
</p>
</div>
</Less>

<More>
   <p class="headingsNew">PrePay d<span class="highlight">b</span>-<i>Time</i></p>

    <p>
    <img src="images/free-1st-session.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:7px;"><b><i>Free 1<sup>st</sup> Meeting</i></b><br/> 
      If you see this icon there is no charge for your first meeting (Durations cannot be altered).</div><br/>
       
     <img src="images/free.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:7px;"><b>
     <i>Free calls - if cut-short</i></b><br/> There is no charge if a call lasts less than 90 seconds.</div><br/>
      <img src="images/prepay5.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:7px;"><b><i>Prepay 5</i></b><br/> 
      5 hours of <b>d<span class="highlight2">b</span></b>-<i>Time</i>. This is the cost of the web-conferencing and is paid for by the service Providers.</div><br/>
      <img src="images/prepay20.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
      <div style="padding-top:7px;"><b><i>Prepay 20</i></b><br/> 20 hours of <b>d<span class="highlight2">b</span></b>-<i>Time</i>. This is the cost of the web-conferencing and is paid for by the service Providers.</div><br/>
      <img src="images/prepay100.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
      <div style="padding-top:7px;"><b><i>Prepay 100</i></b><br/> 100 hours of <b>d<span class="highlight2">b</span></b>-<i>Time</i>. This is the cost of the web-conferencing and is paid for by the service Providers.</div><br/><br/>
       
     
</p>

</More>
</iac:MoreLess2>
<br/>
<%--<iac:MoreLess2 ID="MoreLess2" runat="server">
<Less> 
<div style="height:186px">
<p class="headingsNew"><i>Providers</i> & Toll-Free Calls</p>
      <img src="images/free.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px" /><div style="padding-top:7px;"><b><i>No Charge</i></b><br/> 
      As a <em>Provider</em>, by default, there is no <b>d<span class="highlight2">b</span></b>-<i>Time</i> charge billed to you.</div>  
</div>
--%>
<%--</Less>
 <More>
<p class="headingsNew"><i>Providers</i> & Toll-Free Calls</p>
      <img src="images/prepay100.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:0px;"><b><i>Prepay 100</i></b><br/> 100 hours of <b>d<span class="highlight2">b</span></b>-<i>Time</i>, it costs a little more than a fifth of <i>PayAsYouGo</i>.<br/> 
        Ideal for <em>Providers</em> offering Toll-Free video calls.</div><br/>
      <img src="images/free.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px" /><div style="padding-top:7px;"><b><i>No Charge</i></b><br/> As a <em>Provider</em>, by default, there is no <b>d<span class="highlight2">b</span></b>-<i>Time</i> charge billed to you.</div><br/><br/>
     <img src="images/free-db-time.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><div style="padding-top:0px;"><b><i>Free d<span class="highlight2">b</span>-time</i></b><br/> 
      When allocating <i>PrePay</i> <em>20</em> or <em>100</em> to any service, this icon will appear to indicate a Toll-Free service. This is great for offering an all-in price.</div><br/><br/>
</More>  
</iac:MoreLess2>--%>
<br />
<p class="headingsNew">Guidance</a></p>
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
