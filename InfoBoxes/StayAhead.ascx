<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StayAhead.ascx.cs" Inherits="IntelArcade.WebApp.InfoBoxes.StayAhead" %>
<%--<p style="height:22px; font-size:0.9em;font-weight:700;">Stay Ahead</p>


<div class="rightArticle" style="height:50px;">
	<a  href="Javascript:_iac_ShowNotification('To benefit from this function, please register or sign-in.'); return false;"><img src="/images/ProviderCredit-50x-pre3.png" onmouseover="this.src='/images/Provider-my-ro.png'" onmouseout="this.src='/images/ProviderCredit-50x-pre3.png'" width="50px" height="50px" alt="Image" title="Image" class="leftImage" /></a><b>Become a Provider.</b><br />
</div>
<div class="rightArticle" style="height:50px">
	<a  href="Javascript:_iac_ShowNotification('To benefit from this function, please register or sign-in.'); return false;" style="border:none;outline:none;color:#ffffff;"><img src="/images/Provider-Mail.png" onmouseover="this.src='/images/Provider-Mail-ro.png'" onmouseout="this.src='/images/Provider-Mail.png'" width="50px" height="50px" alt="Image" title="Image" class="leftImage" /></a><b>Notify 
    Me.</b><br /></div>
<div class="rightArticle" style="height:50px">
	<a style="border:none;outline:none;color:#ffffff;" href="Javascript:_iac_ShowNotification('To benefit from this function, please register or sign-in.'); return false;"><img src="/images/providerOnline-32x.png" onmouseover="this.src='/images/providerOnline-ro.png'" onmouseout="this.src='/images/providerOnline-32x.png'" width="50px" height="50px" alt="Image" title="Image" class="leftImage" /></a><b>Request 
    a Service.</b><br />
</div>
--%>
<div style="margin-top: 15px">
    <p class="bluebar_radious" style="height: 22px; font-size: 0.9em; font-weight: 700;
        background-color: #336699; margin: 0 0 5px 0; padding: 4px 0 4px 10px; color: White;">
        Stay Ahead</p>
    <div class="rightArticle" runat="server" id="divBecomeProvider" style="height: 50px">
        <span class="tooltip1"><a class="tooltip1" href="../ProviderSetup/CompanyDisplay.aspx">
            <img src="/images/ProviderCredit-50x-pre3.png" onmouseover="this.src='/images/Provider-my-ro.png'"
                onmouseout="this.src='/images/ProviderCredit-50x-pre3.png'" width="50px" height="50px"
                alt="Image" title="Image" class="leftImage" /></a><a style="color: #006C9E; font-weight: bold;"
                    href="../ProviderSetup/CompanyDisplay.aspx"><p style="margin-top: 12px; font-size: 12px;
                        width: 230px; font-weight: bold">
                        Become a Provider</p>
                </a>
            <br />
            <span class="custom info">Start visiting clients without leaving your desk.</span>
        </span>
    </div>
    <div class="rightArticle" style="height: 50px">
        <span class="tooltip1"><a href="../MemberPages/NotifyMe.aspx">
            <img src="/images/Provider-Mail.png" onmouseover="this.src='/images/Provider-Mail-ro.png'"
                onmouseout="this.src='/images/Provider-Mail.png'" width="50px" height="50px"
                alt="Image" title="Image" class="leftImage" /></a><a href="../MemberPages/NotifyMe.aspx"
                    style="color: #006C9E; font-weight: bold;"><p style="margin-top: 12px; font-size: 12px;
                        width: 230px; font-weight: bold">
                        Notify Me</p>
                </a>
            <br />
            <span class="custom info">Be informed as soon as a seeker requests your expertise.</span>
        </span>
    </div>
    <div class="rightArticle" style="height: 50px">
        <span class="tooltip1"><a class="tooltip1" href="../MemberPages/RequestService.aspx">
            <img src="/images/providerOnline-32x.png" onmouseover="this.src='/images/providerOnline-ro.png'"
                onmouseout="this.src='/images/providerOnline-32x.png'" width="50px" height="50px"
                alt="Image" class="leftImage" /></a><a href="../MemberPages/RequestService.aspx"
                    style="color: #006C9E; font-weight: bold;"><p style="margin-top: 12px; font-size: 12px;
                        width: 230px; font-weight: bold">
                        Request a Service</p>
                </a>
            <br />
            <span class="custom info">Let us try and find a provider for you.</span> </span>
    </div>
</div>
