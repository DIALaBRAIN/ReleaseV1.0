<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="IntelArcade.WebApp.Default" EnableEventValidation="false" %>

<%@ Register Src="UserControls/ProfileRotatorTabs.ascx" TagName="ProfileRotatorTabs"
    TagPrefix="uc1" %>
<%@ Register Src="UserControls/VideoPlayer.ascx" TagName="VideoPlayer" TagPrefix="uc1" %>
<%@ Register Src="UserControls/SubjectCategorySelector.ascx" TagName="SubjectCategorySelector"
    TagPrefix="uc2" %>
<%@ Register Src="~/UserControls/Responses.ascx" TagName="Responses" TagPrefix="re"%>
<asp:Content ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        //        function _iac_OnProfileFlagCommmand(args) {
        //            args.Handled = args.Type == "COMMAND";
        //            if (args.Handled) {
        //                alert("This feature does not require additional user-interface development.");
        //                   
        //            }
        //        }


    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <div style="margin-bottom: 10px;">
            <uc1:ProfileRotatorTabs ID="ProfileRotatorTabs1" runat="server" />
        </div>
        <div>
            <p class="headingsNew">
                <a name="Services" style="color: White; text-decoration: none;">Services by Subject</a></p>
            <div>
                <table>
                    <tr>
                        <td>
                            <uc2:SubjectCategorySelector ID="SubjectCategorySelector1" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div>
            <p class="headingsNew">
                <a name="Guidance" style="color: White; text-decoration: none;">Guidance</a></p>
            <div class="contentBody_leftSide" style="padding-left: 10px">
                <b>
                    <img src="/images/arrow.gif" alt=">" />
                    <span class="title" style="text-decoration: none; color: #414141; cursor: default">Frequently
                        Asked Questions</span></b><br />
                <ul style="padding-left: 30px">
                    <li><a href="UsageFAQ.aspx">Using this site</a></li><li><a href="ProviderFAQ.aspx">Service
                        Providers</a></li><li><a href="SeekerFAQ.aspx">Service Seekers</a></li><li><a href="BillingFAQ.aspx">
                            Billing and Payments</a></li><li><a href="DIALaBRAINFAQ.aspx">What is <span style="color: #414141;
                                font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span>?</a></li></ul>
                <br />
                <b>
                    <img src="/images/arrow.gif" alt=">" />
                    <span class="title" style="text-decoration: none; color: #414141; cursor: default">Guides
                        for Seekers and Providers</span></b><br />
                <ul style="padding-left: 30px">
                    <li><a href="PrePayGuide.aspx"><span style="color: #414141; font-weight: bold">d<span
                        class="highlight2">b</span></span>-<i>Time</i> and PrePay</a></li><li><a href="InvoiceGuide.aspx">
                            Making and receiving Payments</a></li><li><a href="FeedbackGuide.aspx">Recommendations
                                and Feedback</a></li><li><a href="RegistrationGuide.aspx">Registering with <span
                                    style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span></a></li></ul>
                <br />
                <b>
                    <img src="/images/arrow.gif" alt=">" />
                    <span class="title" style="text-decoration: none; color: #414141; cursor: default">Service
                        Seeker Guides</span></b><br />
                <ul style="padding-left: 30px">
                    <li><a href="TrustGuide.aspx">Building trust</a></li><li><a href="SelectionGuide.aspx">
                        Selecting a Provider and Having a Meeting</a></li></ul>
            </div>
            <div class="contentBody_rightSide">
                <b>
                    <img src="/images/arrow.gif" alt=">" />
                    <span class="title" style="text-decoration: none; color: #414141; cursor: default">Service
                        Provider and Company Guides</span></b><br />
                <ul style="padding-left: 30px">
                    <li><a href="P_BenenfitsGuide.aspx">The benefits for Providers</a></li><li><a href="ConferencingGuide.aspx">
                        Web conferencing tools</a></li><li><a href="ProviderGuide.aspx">Becoming a service Provider</a></li><li>
                            <a href="ReferredGuide.aspx">How to pay almost no commission</a></li><li><a href="ProfileGuide.aspx">
                                Writing a profile</a></li><li><a href="PhotographGuide.aspx">Photos and creating the
                                    right image</a></li><li><a href="MarketGuide.aspx">How to market yourself</a></li><li>
                                        <a href="FeesGuide.aspx">What are my costs as a Provider</a></li></ul>
                <br />
                <b>
                    <img src="/images/arrow.gif" alt=">" />
                    <span class="title" style="text-decoration: none; color: #414141; cursor: default"><span
                        style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span>
                        &amp; Policies </span></b>
                <br />
                <ul style="padding-left: 30px">
                    <li><a href="OverviewGuide.aspx">An overview of <span style="color: #414141; font-weight: bold">
                        DIALa<span class="highlight2">BRAIN</span></span></a></li><li><a href="PrivacyGuide.aspx">
                            Privacy Policy</a></li><li><a href="SeekerTermsGuide.aspx">Seeker Terms and Conditions</a></li><li>
                                <a href="ProviderTermsGuide.aspx">Provider Terms and Conditions</a></li><li><a href="ContactUsGuide.aspx">
                                    Contact Us</a></li></ul>
            </div>
        </div>
    </div>


    <script language="JavaScript">
        preloader();
        function preloader() {
            imageObj = new Image();
            images = new Array();
            images[0] = "/images/Net-presence24_24.png";images[1] = "/images/Request-Meeting-40 2.png";
            images[2] = "/images/pin-48.png";images[3] = "/images/Note-view-48.png";
            images[4] = "/images/Decline_app.PNG";images[5] = "/images/Join-Meeting.PNG";
            images[6] = "/images/update2.png";images[7] = "/images/confirmBtn.png";

            for (i = 0; i < images.length; i++) {
                imageObj.src = images[i];
            }

        } 
 
 </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
