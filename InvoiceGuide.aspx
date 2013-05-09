<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="InvoiceGuide.aspx.cs" Inherits="IntelArcade.WebApp.InvoiceGuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<iac:MoreLess2 ID="MoreLess1" runat="server">
<Less>
<div style="height:154px">
<p class="headingsNew">Making Payments and d<span class="highlight">b</span>-<i>Credit</i></p><br/>
<img src="images/pay 1.png" alt="" class="leftImage" width="197px" height="94px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px;padding-top:10px">The money you load onto the site remains yours. You are free to return it to your bank account at any time. Only money that is "in escrow" or spent, cannot be accessed......</p>
<%--<p style="padding-left:10px;padding-right:10px">To benefit from <b>Diala</b><span class="highlight2">Brain</span> and interact with <i>Providers</i>, you, as a <i>Seeker</i>, will need <b>d</b><span class="highlight2">b</span>-<i>credit</i>. <b>d</b><span class="highlight2">b</span>-<i>credit</i> can be used to purchase any item on the site, whether it be a <i>Provider's</i> time, products or <b>d</b><span class="highlight2">b</span>-<i>time</i>. You can purchase <b>d</b><span class="highlight2">b</span>-<i>credit</i> directly from the site by using PayPal. </p><br/>
<p style="padding-left:10px;padding-right:10px">When you book an appointment, the site will confirm that you have sufficient <b>d</b><span class="highlight2">b</span>-<i>credit</i> to cover the web conferencing charges (<b>d</b><span class="highlight2">b</span>-<i>time</i>) and the fees of the <i>Provider</i>. Those funds are then ring fenced in an on-site escrow account until the meeting is held. --%>
</div>
</Less>
<More>
<p class="headingsNew">Making Payments and d<span class="highlight">b</span>-<i>Credit</i></p><br/>
<div style="height:98px;"><img src="images/pay 1.png" alt="" class="leftImage" width="197px" height="94px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px;padding-top:10px">The money you load onto the site remains yours. You are free to return it to your bank account at any time. Only money that is "in escrow" or spent, cannot be accessed.</p></div>
<div style="height:96px;"><img src="images/pay 2.png" alt="" class="leftImage" width="201px" height="93px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px;padding-top:2px">There are two fees, <i>Provider</i>-time and <b>d<span class="highlight2">b</span></b>-<i>Time</i>. First sessions are often free, also <i>Providers</i> may offer Toll-Free <b>d<span class="highlight2">b</span></b>-<i>Time</i> on all sessions. Check the icons on their profile. </p></div>
<div style="height:96px;"><img src="images/pay 3.png" alt="" class="leftImage" width="201px" height="93px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px;padding-top:10px">Before any meeting the fees for that one session are put in an "escrow account". The fee is based on the number of minutes that you book. </p></div>
<div style="height:96px;"><img src="images/pay 4.png" alt="" class="leftImage" width="201px" height="93px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px;padding-top:10px">If you don't show up or if you cancel the meeting upon short notice (less than 12 hrs), your <i>Provider's</i> fee is subject to a 5% penalty. </p></div>
<div style="height:96px;"><img src="images/pay 5.png" alt="" class="leftImage" width="199px" height="75px" style="padding-left:10px; padding-bottom:20px; padding-right:10px" /><p style="padding-left:10px; padding-right:10px;padding-top:2px">You pay only for the time (in minutes) that you are connected with the <i>Provider</i>. Any remaining <b>d<span class="highlight2">b</span></b>-<i>Credit</i> "in escrow" is returned to you. If you and your <i>Provider</i> use different currencies, <b>DIALa<span class="highlight2">BRAIN</span></b> deals with that for you. A VAT invoice marked <span style="color:Red; font-weight:bold;">PAID</span> will be issued. </p></div>

<br/><br/>


<p style="padding-left:10px;padding-right:10px">To benefit from <b>DIALa<span class="highlight2">BRAIN</span></b> and interact with <i>Providers</i>, you, as a <i>Seeker</i>, will need <b>d<span class="highlight2">b</span></b>-<i>Credit</i>. <b>d<span class="highlight2">b</span></b>-<i>Credit</i> can be used to purchase any item on the site, whether it be a <i>Provider's</i> time, products or <b>d<span class="highlight2">b</span></b>-<i>Time</i>. You can load <b>d<span class="highlight2">b</span></b>-<i>Credit</i> directly to the site by using PayPal or any credit card that PayPal accepts. </p><br/>
<p style="padding-left:10px;padding-right:10px; padding-bottom:20px">When you book an appointment, the site will confirm that you have sufficient <b>d<span class="highlight2">b</span></b>-<i>Credit</i> to cover the fees of the <i>Provider</i> and the web conferencing charges (<b>d<span class="highlight2">b</span></b>-<i>Time</i>). Those funds are then ring-fenced in an on-site escrow account until the meeting is held. Once the session has finished, the corresponding charges will be deducted from your temporary escrow account and payment made to the relevant <i>Provider</i>. If you terminate the session early or cancel the appointment, only the funds corresponding to the actual time used or any penalty for &quot;late cancellation&quot; or &quot;not attending the meeting&quot; will be deducted. All balance fees remaining in escrow will be returned to your account.</p>
</More>
</iac:MoreLess2>
<br/>
<iac:MoreLess2 ID="MoreLess2" runat="server">
<Less>
<div style="height:175px">
<p class="headingsNew">Receiving Payments and Downloading d<span class="highlight">b</span>-<i>Credit</i></p><br/>
<!-- PayPal Logo --><table border="0" cellpadding="10" cellspacing="0" align="center" style="padding-left:10px;"><tr><td align="center"></td></tr><tr><td align="center"><a href="#" onclick="javascript:window.open('https://www.paypal.com/lu/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=350');"><img  src="https://www.paypal.com/en_US/i/logo/PayPal_mark_180x113.gif" border="0" alt="Acceptance Mark"></a></td><td><p style="padding-left:10px;padding-right:10px">As a user of the site you can have up to two PayPal accounts associated with your details. Thus if you want to buy services as a <i>Seeker</i> in GBP, but want to earn in USD that is not a problem.... </p></td></tr></table><!-- PayPal Logo -->
<%--<p style="padding-left:10px;padding-right:10px">As a <i>Provider</i>, once a session in which you provided services has finished, we will credit your <b>d</b><span class="highlight2">b</span>-<i>credit</i> account within 48</p>--%>


</div>
</Less>
<More>
<p class="headingsNew">Receiving Payments and Downloading d<span class="highlight">b</span>-<i>Credit</i></p><br/>
<!-- PayPal Logo --><table border="0" cellpadding="10" cellspacing="0" align="center" style="padding-left:10px;"><tr><td align="center"></td></tr><tr><td align="center"><a href="#" onclick="javascript:window.open('https://www.paypal.com/lu/cgi-bin/webscr?cmd=xpt/Marketing/popup/OLCWhatIsPayPal-outside','olcwhatispaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=400, height=350');"><img  src="https://www.paypal.com/en_US/i/logo/PayPal_mark_180x113.gif" border="0" alt="Acceptance Mark"></a></td><td><p style="padding-left:10px;padding-right:10px">As a user of the site you can have up to two PayPal accounts associated with your details. Thus if you want to buy services as a <i>Seeker</i> in GBP, but want to earn in USD that is not a problem.</p></td></tr></table>
<p style="padding-left:10px;padding-right:10px">Under the "Account menu" there is a item call "Bank Account". Simply select the account that you want to download from, state the amount that you want to withdraw and we will do the rest. Payments are processes every day with the execption of weekends and Bank Holidays. </p><!-- PayPal Logo --><br/>
<p style="padding-left:10px;padding-right:10px">As a <i>Provider</i>, once a session in which you provided services has finished, we will credit your <b>d<span class="highlight2">b</span></b>-<i>Credit</i> account within 48 hours (but often much more quickly than that). You can transfer funds from your <b>d<span class="highlight2">b</span></b>-<i>Credit</i> account to your PayPal account whenever you wish.</p><br/>
<p style="padding-left:10px;padding-right:10px">PayPal is the only financial service <i>provider</i> that we currently deal with. When you request that we transfer money to yourself, the charges for that transfer (as billed by PayPal) are payable by you. To minimimse charges we recommend that it is better to transfer larger sums than many small amounts. </p>
<br />
</More>
</iac:MoreLess2>
<br />
<p class="headingsNew"><a name="Guidance" style="color:#414141; text-decoration:none;">Guidance</a></p>
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
