<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ProviderProfiles.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderProfiles"
    EnableEventValidation="false" %>

<%@ Register Src="UserControls/ProviderProfile.ascx" TagName="ProviderProfile" TagPrefix="uc1" %>
<%@ Register Src="UserControls/CompanyProfile.ascx" TagName="CompanyProfile" TagPrefix="uc2" %>
<%@ Register Src="UserControls/RecommendationList.ascx" TagName="RecommendationList"
    TagPrefix="uc4" %>
<%@ Register Src="UserControls/ServiceProfileDisplay.ascx" TagName="ServiceProfileDisplay"
    TagPrefix="uc5" %>
<%@ Register Src="~/UserControls/ResponseDisplay.ascx" TagName="ResponseDisplay"
    TagPrefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:UpdateProgress ID="UpdateProgress12" runat="server" AssociatedUpdatePanelID="UpdatePanel2"
        DisplayAfter="0">
        <ProgressTemplate>
            <div align="center" id="div_progress1" style="position: absolute">
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
    <h2 runat="server">
        <%=PageTitle %></h2>
    <div runat="server" id="ContentContainer">
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="~/Client/jwplayer.js" />
            </Scripts>
        </asp:ScriptManagerProxy>
        <span style="float: left; margin-left: 20px; margin-top: -5px; padding-bottom: 10px">
            <tel:RadSocialShare ID="SocialShare" runat="server" CssClass="IAWrapper" UrlToShare="test"
                TitleToShare="test">
                <MainButtons>
                    <tel:RadSocialButton SocialNetType="ShareOnFacebook" />
                    <telerik:RadSocialButton SocialNetType="LinkedIn" />
                    <tel:RadSocialButton SocialNetType="ShareOnTwitter" />
                    <tel:RadCompactButton />
                </MainButtons>
                <CompactButtons>
                    <tel:RadSocialButton SocialNetType="Blogger" />
                    <tel:RadSocialButton SocialNetType="Delicious" />
                    <tel:RadSocialButton SocialNetType="GoogleBookmarks" />
                </CompactButtons>
            </tel:RadSocialShare>
        </span>
        <div style="float: right; padding-right: 5px; margin-top: -5px; padding-bottom: 10px">
            <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>
        <div style="float: left; position: relative; width: 740px;">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
                <ContentTemplate>
                    <div style="float: right; right: 0px; top: -5px; position: absolute; z-index: 100">
                        <iac:ProfileFlagRenderer runat="server" ID="UserFlagRenderer" Mode="Icons" ServiceProfileFlags="None"
                            OnClientDialogClosed="_iac_SbjSchOnClientClose" SuppressServiceProfileFlags="true" />
                    </div>
                    <tel:RadTabStrip runat="server" ID="TabStrip" AutoPostBack="true" Width="100%" OnTabClick="TabStrip_TabClick"
                        SelectedIndex="0" ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB">
                        <Tabs>
                            <tel:RadTab Value="C" Text="<%$Resources:Labels,CompanyProfile%>" Visible="false" />
                            <tel:RadTab Value="P" Text="<%$Resources:Labels,ProviderProfile %>" Selected="True" />
                            <tel:RadTab Value="S" Text="<%$Resources:Labels,ServiceProfile%>" />
                            <tel:RadTab Value="R" runat="server" Text="<%$Resources:Labels,Recommendations%>"
                                Enabled="false" Visible="false" />
                            <tel:RadTab Value="RE" runat="server" Text="<%$Resources:Labels,Response %>" Visible="false">
                            </tel:RadTab>
                        </Tabs>
                    </tel:RadTabStrip>
                    <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                        box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
                        border-top: 1px solid #FFFFFF; background-color: #336699">
                    </div>
                    <uc2:CompanyProfile ID="CompanyProfile1" Visible="false" CssClass="tabPage" runat="server" />
                    <uc1:ProviderProfile ID="ProviderProfile1" Visible="false" CssClass="tabPage" runat="server" />
                    <uc5:ServiceProfileDisplay ID="ServiceProfileDisplay" Visible="false" CssClass="tabPage"
                        runat="server" />
                    <iac:ResponseDisplay runat="server" ID="ResponseDisplay" CssClass="tabPage" Visible="false" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger EventName="click" ControlID="btnRefresh" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <uc4:RecommendationList ID="RecommendationList" Visible="false" CssClass="tabPage"
            runat="server" />
        <iac:ResultFooter ID="ResultFooter1" runat="server" Visible="false" />
    </div>
    <asp:Button ID="btnRefresh" OnClick="PageRefresh_Click" runat="server" Style="display: none;" />
    <script type="text/javascript">
        var p = $('#' + '<%= UpdatePanel2.ClientID %>'); var move = false; var set_b = false;
        var offset = p.offset(); $("#div_progress1").offset({ top: offset.top + 160, left: offset.left + 330 });

    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
