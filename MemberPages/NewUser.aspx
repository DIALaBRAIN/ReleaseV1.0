<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="NewUser.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
<script language="javascript" type="text/javascript">
//    function test() {
//        alert('test');
//    }
//    function pageLoad() {alert('test'); }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <iac:MoreLess2 ID="moreless2" runat="server">
        <Less>
        <div style="height:186px">
        <p class="headingsNew">Welcome you have just registered as a service <i>Seeker</i></p>
        <img src="/images/Welcome.jpg" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
        <p style="padding-left:10px; padding-right:10px" >The site is designed as a professional resource for companies and individuals alike. Just click on <b>DIALa<span class="highlight2">BRAIN</span></b> in the top left to go to the home page, or start searching in the box above.<br/><br/>Before you start, please tell us if you are registered for VAT, GST etc. by ticking the checkbox.<span style="padding-left:10px; padding-top:5px;"><iac:DialogCommand Mode="CheckBox" Text="Are you VAT or registered for Tax as business." runat="server" Type="EditTaxDetails" ID="DialogCommand1"  /></span></p>
        </div></Less>
        <More>
        <p class="headingsNew">Welcome you have just registered as a service <i>Seeker</i></p>
        <img src="/images/Welcome.jpg" alt="" class="leftImage" width="165px" height="125px" style="padding-left:10px; padding-right:10px" />
        <p style="padding-left:10px; padding-right:10px" >The site is designed as a professional resource for companies and individuals alike. Just click on <b>DIALa<span class="highlight2">BRAIN</span></b> in the top left to go to the home page, or start searching in the box above.<br/><br/>Before you start, please tell us if you are registered for VAT, GST etc. by ticking the checkbox.<span style="padding-left:10px; padding-top:5px;"><iac:DialogCommand Mode="CheckBox" Text="Are you VAT or registered for Tax as business." runat="server" Type="EditTaxDetails" ID="btnTest"  /></span> </p>
        <br/><p style="padding-left:10px; padding-right:10px" >At <b>DIALa<span class="highlight2">BRAIN</span></b>, we know that trust is critical to successful relationships. Before you incur costs, we feel that it is important that you know whom you are dealing with. Check the <i>Providers</i> online profile, work experience and qualifications. If they have links to their company, personal blog, LinkedIn accounts, then check these too and see that everything seems consistent. Additionally, body language or "non-verbal" communication provides between 40% and 90% of the meaning we derive from personal interactions. In view of this, we recommend that if a <i>Provider</i> has loaded a video, you should watch it, or if they offer a free first session, take advantage of that to interview them and make up your own mind.</p>
        <br/><p style="padding-left:10px; padding-right:10px" >If you want to learn more please refer to the <a href="../SeekerFAQ.aspx"><i>Seeker</i> FAQ.</a></p><br/>
        </More>
        </iac:MoreLess2>
    </div>
    <br />
    <%--<div>
        <p style="padding-left: 10px; padding-right: 10px; color:Red;"> <iac:DialogCommand Mode="CheckBox" Text="Are you VAT or registered for Tax as business." runat="server" Type="EditTaxDetails" ID="btnTest"  > <span style="padding-left:5px"><asp:Label runat="server">Are you VAT or registered for Tax as business.</asp:Label></span></iac:DialogCommand></p>
    </div>--%>
    
    <div style="">
        <p class="headingsNew">
            Become a <i>Provider</i>, illuminate others!</p>
        <br />
        <img src="/images/tablet.png" alt="" class="leftImage" width="165px" height="125px"
            style="padding-left: 10px; padding-right: 10px" />
        <p style="padding-left: 10px; padding-right: 10px">
            <b>DIALa<span class="highlight2">BRAIN</span></b> is a virtual marketplace to trade
            knowledge. If you or your company are consultants, or are able to provide expert
            advice or tuition, then you can find new clients and connect face-to-face in our
            video meeting rooms.</p>
        <br />
        <p style="padding-left: 10px; padding-right: 10px">
            Our business is building an infrastructure for your business to thrive. Thus unlike
            other expert sites, we are focused on video technology, so that you can build rapport
            and repeat business with your clients. We have set our commission rates as low as
            5% for clients that you introduce (this compares with an industry average of around
            50%). In essence our business will thrive
            only if you are sucessful.
        </p>
        <br />
        <p style="padding-left: 10px; padding-right: 10px">
            Our site is currently in beta testing, so please let us know what you think and
            if there are any obvious improvements that we should consider <a href="mailto:feedback@dialabrain.com">feedback@dialabrain.com</a>.</p>
        <br />
        <p style="padding-left: 10px; padding-right: 10px">
            If you want to learn more please check out the <a href="../ProviderFAQ.aspx"><i>Provider</i>
                FAQ </a>or the <a href="../ProviderGuide.aspx"><i>Provider</i> guide.</a></p><br />
        <p style="padding-left: 10px; padding-right: 10px">
            <span style="float:left; margin-top:5px;">Continue to register as a <i>Provider</i> now.</span> <span class="become_provider" style="float:right; margin-right:160px;"><a href="/ProviderSetup/CompanyDisplay.aspx"></a></span>
        </p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
