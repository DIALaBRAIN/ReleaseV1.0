<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="ConferencingGuide.aspx.cs" Inherits="IntelArcade.WebApp.ConferencingGuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<iac:MoreLess2 ID="MoreLess1" runat="server">
<Less>
<div style="height:186px">
<p class="headingsNew">Video meetings</p><br/>
<img src="/images/Video_meetings.png" class="leftImage" alt="" width="165px" height="125px" style="padding-left:10px;padding-right:10px"/>
<p style="padding-left:10px;padding-right:10px">All sessions between <i>Providers</i> and <i>Seekers</i>, use <b>DIALa<span class="highlight2">BRAIN</span></b>'s "web conferencing suite". A minimum  broadband connection  of  2 mpbs download  and 0.4 mbps upload is required.......</p>
</div>

</Less>
<More>
<p class="headingsNew">Video meetings</p><br/>
<img src="/images/Video_meetings.png" class="leftImage" alt="" width="165px" height="125px" style="padding-left:10px;padding-right:10px"/>
<p style="padding-left:10px;padding-right:10px">All sessions between <i>Providers</i> and <i>Seekers</i>, use <b>DIALa<span class="highlight2">BRAIN</span></b>'s &quot;web conferencing suite&quot;. A minimum  broadband connection  of  2 mpbs download  and 0.4 mbps upload is required.</p>
<p style="padding-left:10px;padding-right:10px; padding-top:5px;">You can test your connection speed by going to <a href="http://speedtest.net">www.speedtest.net</a> and clicking on begin test.</p>
<br/>
<br/>
<br/>
<p>
  <img src="images/webcam.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><ul style="padding-left:80px; padding-top:14px;">
    <li style="list-style:none"><b>Webcam: </b>The webcam will NOT start automatically; you will be asked if you want to use it.</li></ul><br/>
      <img src="images/headset.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><ul style="padding-left:80px; padding-top:17px;">
    <li style="list-style:none"><b>Headset: </b>Ideal as it avoids feedback and leaves your hands free.</li>
    </ul>
      <p style="font-size:48px; padding-top:30px; padding-left:10px;"><strong>or</strong></p>
<br/>
     <img src="images/Mic.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px; padding-top:5px;"/> <span style="font-size:52px; height:50px; top:5px; font-weight:bold; padding-top:18px; float:left">+</span><img src="images/speaker.png" alt="" width="50px" height="50px" style="padding-left:7px;padding-top:5px; float:left"/>
     <ul style="padding-left:180px; padding-top:10px;"><li style="list-style:none"><b>Microphone &amp; Speakers: </b>This is the bare minimum. You should switch your microphone off when not speaking to prevent feedback.</li></ul><br/>
</p>
</More>
</iac:MoreLess2>
<br />
<iac:MoreLess2 ID="MoreLess2" runat="server">
<Less>
<div style="height:186px">
<p class="headingsNew">Video Tools </p><br/>
<img src="images/video_tools.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px;padding-right:10px"/>
<p style="padding-left:10px;padding-right:10px">Our "conferencing suite" is a core component of <b>DIALa<span class="highlight2">BRAIN</span></b>'s solution. However, live loading a recorded video allows the <i>Provider</i> to create a multi-dimensional profile that is highly personalised and targeted to his or her audience. There are three video options are available on the site:</p>
<%--<p>
 <ol style="padding-left:50px">
   <li><b>Recorded video profiles:</b> <i>Providers</i> have the option to record multiple videos to give the <i>Seeker</i> a view of who they are and what services they can provide.--%>
</div></Less>
<More>
<p class="headingsNew">Video Tools </p><br/>
<img src="images/video_tools.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px;padding-right:10px"/>
<p style="padding-left:10px;padding-right:10px">Our "conferencing suite" is a core component of <b>DIALa<span class="highlight2">BRAIN</span></b>'s solution. However, live loading a recorded video allows the <i>Provider</i> to create a multi-dimensional profile that is highly personalised and targeted to his or her audience. There are three video options are available on the site:</p><br/><br/>
<p style="padding-top:20px;">
 <ol style="padding-left:50px; ">
   <li><img src="images/Video_profile.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><b>Recorded video profiles:</b> <i>Providers</i> have the option to record multiple videos to give the <i>Seeker</i> a view of who they are and what services they can provide.
   <ul style="padding-left:90px"><li><b><i>Provider</i> profile</b> video: the <i>Providers</i> explain who they are and what they can offer in a brief overview.</li>
   <li><b>Service profile</b> video: the <i>Providers</i> explain their expertise and experience in a particular service area. These videos may also show brief demonstrations or examples of, or information related to, the services on offer.</li>
   </ul>
   </li><br />
   <li><img src="images/Video_Product.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px;"/><b>Recorded products:</b> These are examples of past work recorded by the <i>Provider</i> across a range of service areas.</li><br />
   <li><img src="images/Video_service.png" alt="" class="leftImage" width="50px" height="50px" style="padding-left:10px"/><b>Live video sessions:</b> These can be 1-to-1 or group sessions between the <i>Seeker/s</i> and <i>Provider</i> of a service. The group sessions may have up to 16 (related or unrelated) participants in a class or meeting, or even be webinars (a live seminar over the Web) with up to 1,000 participants.</li>

 </ol>
</p>
<br/>
</More>
</iac:MoreLess2>
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
