<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="P_BenenfitsGuide.aspx.cs" Inherits="IntelArcade.WebApp.P_BenenfitsGuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<iac:MoreLess2 ID="MoreLess1" runat="server">
<Less>
<div style="height:186px">
<p class="headingsNew">The Benefits for <i>Providers</i></p><br/>
<img src="images/Benefits_Prov.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px;padding-right:10px; padding-top:0px;">There are a series of benefits available to <i>Providers</i>, including the use of video conferencing, e-tools, and a host of "back office" functionalities....</p>
</div>
</Less>
<More>
<p class="headingsNew">The Benefits for <i>Providers</i></p><br/>
<img src="images/Benefits_Prov.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px;padding-right:10px; padding-top:0px;">There are a series of benefits available to <i>Providers</i>, including the use of video conferencing, e-tools, and a host of "back office" functionalities.</p>
<br/>
<p style="font-size:15px; font-weight:bold; padding-left:10px;"></p>
</p><br/><br /><br />

 <img src="images/video.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
 <p style="padding-left:10px;padding-right:10px"><strong>Video . . .</strong>  As it is such a rich medium for communication, it allows you to:</p><br/>
  <ul style="padding-left:100px">
   <li><strong>Build rapport</strong> in a fraction of the time that email or phone calls would allow. </li>
   <li><strong>Differentiate yourself</strong>, "If a picture paints a thousand words..." just imagine what video does. </li>
   <li><strong>Improving understanding</strong> by being able to SEE if you have been understood.</li>
   <li><strong>Demonstrate</strong> something that is difficult to illustrate in words.</li>
 </ul><br/>
 <p style="padding-left:10px; font-weight:bold;">There are three basic video types on site...</p><br/>

 
<img src="images/Video_profile.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
<div style="padding-top:0px;"><strong>Video profiles</strong><br/>
  These give an overview of the <i>Provider</i> and their services. </div><br />
<img src="images/Video_service.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Live video</strong><br/>
        All meetings rooms are available from ten minutes prior to the scheduled meeting time. </div><br/>
<img src="images/Video_Product.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Video <i>Products</i></strong><br/>
        These may be examples of past work or <i>Products</i> in their own right.</div></p><br />
    <p style="font-size:15px; font-weight:bold; padding-left:10px;">Others benefits include. . .</p>
<br/>

<%--<img src="images/group.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Provider to a group of Seekers</strong><br/>
        All meetings rooms are available from ten minutes prior to the scheduled meeting time. </div><br/>--%>
<%--<img src="images/webinar.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Webinars</strong><br/>
        These may be examples of past work or <i>Products</i> in their own right.</div></p><br/>--%>
        <img src="images/Payment-History.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
<div style="padding-top:0px;"><strong>Payment system</strong><br/>
   Making and receiving payment, VAT compliant invoicing, and transaction history.</div><br/>
<img src="images/File_upload.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Up-loading of e-<i>Products</i></strong><br/>
        Each <i>Product</i> can be sold to any <i>Seeker</i> or to a specific individual. </div><br/>
<img src="images/Free-Download.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/>
        <div style="padding-top:0px;"><strong>Down-loading of demo / sample work</strong><br/>
        E-<i>Products</i> that are free can be loaded to demonstrate the standard of your work.</div></p><br/>


</More>
</iac:MoreLess2>

<!--Hide company benifits for not implemented features-->

<%--<iac:MoreLess2 ID="MoreLess2" runat="server">
<Less>
<div style="height:220px">
<p style="background: #6F6F6F; color:White;padding: 3px 0 4px 15px;font: bold 1.2em  Arial, Sans-Serif;margin: 0 0 10px 0;">The Benefits for a Company</p><br/>
<img src="images/Benefits_Comp.png" alt="" class="leftImage" width="195px" height="165px" style="padding-left:10px; padding-right:10px" />
<p style="font-size:15px; font-weight:bold; padding-left:230px;">In addition to the foregoing benefits</p><br/>
<p>
 <ul style="padding-left:250px">
  <li>Almost 50% discount over the individual commission rate</li>
  <li>Cross border VAT compliant invoicing</li>
  <li>Single point of payment for all staff</li>
  <li>Cumulative <i>Feedback</i> – giving higher search ranking....</li>
  </div>
  <p style="float:right; padding-bottom:0px; padding-right:2px;">More......</p>
</Less>
<More>
<p style="background: #6F6F6F; color:White;padding: 3px 0 4px 15px;font: bold 1.2em  Arial, Sans-Serif;margin: 0 0 10px 0;">The Benefits for a Company</p><br/>
<img src="images/Benefits_Comp.png" alt="" class="leftImage" width="195px" height="165px" style="padding-left:10px; padding-right:10px" />
<p style="font-size:15px; font-weight:bold; padding-left:230px">In addition to the foregoing benefits</p><br/>
<p>
 <ul style="padding-left:250px">
  <li>Almost 50% discount over the individual commission rate</li>
  <li>Cross border VAT compliant invoicing</li>
  <li>Single point of payment for all staff</li>
  <li>Cumulative <i>Feedback</i> – giving higher search ranking</li>
  <li>Branding opportunity</li>
  <li>Company video profile upload</li>
  <li>Listing of company wide services</li>
  <li>Listing for multiple staff</li>
  <li>Listing of all staff <i>Products</i> regardless of who loaded them</li>
  <li>Centralised logs of <i>Services</i></li>
 </ul>
</p>
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
