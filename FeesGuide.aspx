<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true" CodeBehind="FeesGuide.aspx.cs" Inherits="IntelArcade.WebApp.FeesGuid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<iac:MoreLess2 ID="MoreLess1" runat="server">
<Less>
<div style="height:170px">
<p class="headingsNew">Commission structure</p><br/>
<p style="padding-left:10px; padding-right:10px" >
 
  <img src="images/Individual com.png" alt="" class="leftImage" width="170px" height="120px"/><p style="padding-top:60px;"><ul style="padding-left:210px;"><li style="font-size:14px; "><span style="color:#336699; font-weight:bold; font-size:medium; padding-right:10px;">19%</span>For individual <i>Providers</i> there is no monthly fee.</li></ul></p>
  <%--<li>For company <i>Providers</i> there is a small monthly fee <b>see <a href="#">bellow</a></b>.</li>
  <li>For existing clients and clients you introduce, see <a href="ReferredGuid.aspx">Referrals</a></li> 
 </ul>--%>
</p>
</div></Less>
<More>
<p class="headingsNew">Commission structure</p><br/>
<p style="padding-left:10px; padding-right:10px" >
  <p style="padding-left:10px; padding-right:10px" ><img src="images/Individual com.png" alt="" class="leftImage" width="170px" height="120px"/><p style="padding-top:60px;"><ul style="padding-left:210px;"><li style="font-size:14px; "><span style="color:#336699; font-weight:bold; font-size:medium; padding-right:10px;">19%</span>For individual <i>Providers</i> there is no monthly fee.</li></ul></p><br/><br/><br/>
  <p style="padding-left:10px; padding-right:10px" ><img src="images/Company com.png" alt="" class="leftImage" width="170px" height="120px"/><p style="padding-top:60px;"><ul style="padding-left:210px;"><li style="font-size:14px"><span style="color:#336699; font-weight:bold; font-size:medium; padding-right:10px;">10%</span> For company <i>Providers</i> there is a small monthly fee <b>see <a href="#">bellow</a></b>.</li></ul></p><br/><br/><br/>
  <p style="padding-left:10px; padding-right:10px" ><img src="images/Existing Client Com.png" alt="" class="leftImage" width="170px" height="120px"/><p style="padding-top:60px;"><ul style="padding-left:210px;"><li style="font-size:14px; "><span style="color:#336699; font-weight:bold; font-size:medium; padding-right:10px;">5%</span>For existing clients and clients you introduce, see <a href="ReferredGuide.aspx">Referrals</a></li></ul></p><br/><br/>
</p><br/>
<p style="padding-left:10px; padding-right:10px" >At <b>DIALa<span class="highlight2">BRAIN</span></b> you, as a <i>Provider</i>, can keep the vast majority of your fees ranging from 81% up to 95%. </p><br/>
<p style="padding-left:10px; padding-right:10px" >At <b>DIALa<span class="highlight2">BRAIN</span></b> we offer a very simple structure to reward loyalty and the <i>Provider</i>'s own marketing efforts. Our rate of commission applies to gross revenue.</p><br/>
<p style="padding-left:10px; padding-right:10px" >Firstly, we have separated out the base fee for <b>d<span class="highlight2">b</span></b>-<i>Time</i> (the fee for time using the web-conferening tools) and this is charged directly to the <i>Seeker</i>. By doing this, you (as a <i>Provider</i>) are not obliged to increase your price to cover this cost. If you think of the <b>d<span class="highlight2">b</span></b>-<i>Time</i> charge as being the alternative to the cost of a phone call, it is clear the <i>Seeker</i> of a service would normally cover this cost. Also it is worth remembering that the <i>Seeker</i> is saved the normal travel cost (petrol, time, etc.) for such a face-to-face meeting.</p><br/>
<p style="padding-left:10px; padding-right:10px" >If you wish to offer a completely free introductory half-hour, or just believe an all-inclusive price is simply a good marketing strategy; then we cater for that, too. We have introduced <i>Prepay 20</i> and <i>Prepay 100</i> so that you can buy <b>d<span class="highlight2">b</span></b>-<i>Time</i> at a much-reduced price and thus absorb the cost while only having to lift your prices marginally, if at all. The <i>Seekers</i> can also buy the <b>d<span class="highlight2">b</span></b>-<i>Time</i> in these blocks, thus regular users are rewarded for that loyalty.</p><br/>
</More>
</iac:MoreLess2>
<br />
<iac:MoreLess2 ID="MoreLess2" runat="server">
<Less>
<div style="height:186px">
<p class="headingsNew">What are the fees for having a company account?</p><br/>
<img src="images/Company_fees.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px" >The staff numbers of your business determine the fees for a company account. As the numbers increase, the fees increase, but actually decrease in terms of the relative cost per person.  For example, while  a company with a staff of 15 is in effect paying in the region of 0.06 GBP, 0.07 EURO, or 0.1 USD per person per day..</p>
<%--<p>Company fee </p>
<p>1-15 staff pa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      £24.95&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   €24.95&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   $34.95</p>--%>
</div></Less>
<More>
<p class="headingsNew">What are the fees for having a company account?</p><br/>
<img src="images/Company_fees.png" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
<p style="padding-left:10px; padding-right:10px" >The staff numbers of your business determine the fees for a company account. As the numbers increase, the fees increase, but actually decrease in terms of the relative cost per person.  For example, while  a company with a staff of 15 is in effect paying in the region of 0.06 GBP, 0.07 EURO, or 0.1 USD per person per day, this figure drops to a fraction of that for the largest companies.</p><br/><br/><br/>
<p style="text-align:center; font-weight:bold; font-size:16px;" >Company Fees / Month </p>
<div style="padding-left:30px;padding-right:10px;  ">
<table border="0" cellpadding="1" style="margin:auto;">
<tr><td align="center" style="font-weight:bold; width:150px; height:50px; background-color:#336699; color:White;border-radius: 7px 0 0 0; -moz-border-radius:5px; -webkit-border-radius: 5px;">1-15 staff pa </td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">£24.95</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">   €24.95</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;border-radius: 0 7px 0 0; -moz-border-radius:5px; -webkit-border-radius: 5px;">   $34.95</td></tr>
<tr><td align="center" style="font-weight:bold; width:150px; height:50px; background-color:#336699; color:White;">1-50 staff pa </td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">£69.00</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">   €79.00</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">   $99.00</td></tr>
<tr><td align="center" style="font-weight:bold; width:150px; height:50px; background-color:#336699; color:White;border-radius: 0 0 0 7px; -moz-border-radius:5px; -webkit-border-radius: 5px;">1-100 staff pa</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">£124.95</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;">  €145.00</td><td align="center" style="font-weight:bold; width:130px; height:50px; background-color:#2db0d5;border-radius: 0 0 7px 0; -moz-border-radius:5px; -webkit-border-radius: 5px;">  $195.00</td></tr>
</table>
</div>
<br/>
<p style="padding-left:10px; padding-right:10px" >To see a full list of benefits of having a Company account, please see the <a href="P_BenenfitsGuide.aspx"><i>Provider</i> Benefits Guide.</a></p>
<br />
</More>
</iac:MoreLess2>
<br />
<p class="headingsNew"><a name="Guidance" style="color:White; text-decoration:none;">Guidance</a></p>
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
