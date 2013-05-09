<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProfileRotatorTabs.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProfileRotatorTabs" %>
<%@ Register Src="ProfileRotator.ascx" TagName="ProfileRotator" TagPrefix="uc1" %>
<%@ Register Src="SubjectCategorySearch.ascx" TagName="SubjectCategorySearch" TagPrefix="uc2" %>
<%@ Register Src="ServiceWantedRotator.ascx" TagName="ServiceWantedRotator" TagPrefix="swr" %>
<%@ Register Src="ProviderProfile.ascx" TagName="ProviderProfile" TagPrefix="uc3" %>
<%@ Register Src="CompanyProfile.ascx" TagName="CompanyProfile" TagPrefix="iac" %>
<%@ Register Src="ServiceProfileDisplay.ascx" TagName="ServiceProfileDisplay" TagPrefix="uc5" %>
<%@ Register Src="~/UserControls/ResponseServiceRotator.ascx" TagName="ResponseServiceRotator"
    TagPrefix="res" %>
<%@ Register Src="~/UserControls/Responses.ascx" TagName="Responses" TagPrefix="re" %>
<script language="javascript" type="text/javascript">

    function _iac_SbjSchOnClientClose(oWnd, args) {
        var arg = args.get_argument();
        if (arg.DoPostback) {
            $("#<%=btnRefresh.ClientID %>").click();
        }
    }
    function _iac_OnProfileFlagCommmandComplete(args) {

        $("#<%=btnRefresh.ClientID %>").click();
    }

</script>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1"
    DisplayAfter="0">
    <ProgressTemplate>
        <div align="center" id="div_progress" style="position: absolute">
            <div id="circularG">
                <div id="circularG_1" class="circularG">
                </div>
                <div id="circularG_2" class="circularG">
                </div>
                <div id="circularG_3" class="circularG">
                </div>
                <div id="circularG_4" class="circularG">
                </div>
                <div id="circularG_5" class="circularG">
                </div>
                <div id="circularG_6" class="circularG">
                </div>
                <div id="circularG_7" class="circularG">
                </div>
                <div id="circularG_8" class="circularG">
                </div>
            </div>
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
    <ContentTemplate>
        <tel:RadTabStrip ID="RadTabStrip1" runat="server" OnTabClick="TabStrip_TabClick"
            MultiPageID="RadMultiPage1" AutoPostBack="true" Skin="DB" EnableEmbeddedSkins="False">
            <Tabs>
                <tel:RadTab Value="C" Text="Consultants" Selected="true">
                </tel:RadTab>
                <tel:RadTab Value="T" Text="Tutors">
                </tel:RadTab>
                <tel:RadTab Value="E" Text="Experts">
                </tel:RadTab>
                <tel:RadTab Value="W" Text="Wanted" Visible="false">
                </tel:RadTab>
                <tel:RadTab Value="MP" Text="My Providers" Visible="false">
                </tel:RadTab>
                <tel:RadTab Value="P" Text="My Pins" Visible="false">
                </tel:RadTab>
                <tel:RadTab Value="R" Text="Response" Visible="false">
                </tel:RadTab>
            </Tabs>
        </tel:RadTabStrip>
        <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
            box-shadow: 0px 2px 2px #336699; margin-bottom: 10px; border-bottom: 1px solid #336699;
            border-top: 1px solid #FFFFFF; background-color: #336699">
        </div>
        <tel:RadMultiPage ID="RadMultiPage1" runat="server" SelectedIndex="0">
            <tel:RadPageView ID="RadPageView1" runat="server">
                <uc1:ProfileRotator ID="prConsultants" runat="server" OnOnProfileSelected="OnProfileSelected" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView2" runat="server">
                <uc1:ProfileRotator ID="prTutors" runat="server" OnOnProfileSelected="OnProfileSelected" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView3" runat="server">
                <uc1:ProfileRotator ID="prExperts" runat="server" OnOnProfileSelected="OnProfileSelected" />
            </tel:RadPageView>
            <tel:RadPageView runat="server">
                <swr:ServiceWantedRotator ID="ServiceWanted" runat="server" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView4" runat="server">
                <uc1:ProfileRotator ID="prMyProviders" runat="server" OnOnProfileSelected="OnProfileSelected" />
            </tel:RadPageView>
            <tel:RadPageView ID="RadPageView5" runat="server">
                <uc1:ProfileRotator ID="prPinnedServices" runat="server" OnOnProfileSelected="OnProfileSelected" />
            </tel:RadPageView>
            <tel:RadPageView runat="server">
                <res:ResponseServiceRotator runat="server" />
            </tel:RadPageView>
        </tel:RadMultiPage>
        <div runat="server" visible="false" id="ProviderProfiles">
            <tel:RadTabStrip runat="server" ID="TabStrip" AutoPostBack="true" Width="100%" SelectedIndex="0"
                ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB" OnTabClick="ProfilesTabStrip_TabClick">
                <Tabs>
                    <tel:RadTab Value="C" Text="<%$Resources:Labels,CompanyProfile%>" />
                    <tel:RadTab Value="P" Text="<%$Resources:Labels,ProviderProfile %>" Selected="True" />
                    <tel:RadTab Value="S" Text="<%$Resources:Labels,ServiceProfile%>" />
                    <tel:RadTab Value="R" runat="server" Text="<%$Resources:Labels,Recommendations%>"
                        Enabled="false" Visible="false" />
                </Tabs>
            </tel:RadTabStrip>
            <div style="position: relative; z-index: 10; float: right; top: -24px">
                <iac:ProfileFlagRenderer runat="server" ID="UserFlagRenderer" Mode="Icons" ServiceProfileFlags="None"
                    SuppressServiceProfileFlags="true" />
            </div>
            <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
                border-top: 1px solid #FFFFFF; background-color: #336699">
            </div>
            <uc3:ProviderProfile ID="ProviderProfile1" Visible="false" CssClass="tabPage" runat="server" />
            <uc5:ServiceProfileDisplay ID="ServiceProfileDisplay" Visible="false" CssClass="tabPage"
                runat="server" />
            <iac:CompanyProfile ID="CompanyProfile1" Visible="false" CssClass="tabPage" runat="server" />
        </div>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger EventName="click" ControlID="btnRefresh" />
    </Triggers>
</asp:UpdatePanel>
<script type="text/javascript">
    var p = $('#' + '<%= UpdatePanel1.ClientID %>'); var move = false; var set_b = false;
    var offset = p.offset(); $("#div_progress").offset({ top: offset.top + 170, left: offset.left + 330 });

</script>
<asp:Button ID="btnRefresh" OnClick="PageRefresh_Click" runat="server" Style="display: none;" />