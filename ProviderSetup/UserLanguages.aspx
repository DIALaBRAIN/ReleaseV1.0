<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="UserLanguages.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.ProviderSetup.UserLanguages" %>

<%@ Import Namespace="IntelArcade.Common" %>
<%@ Register Src="~/UserControls/SimpleListSelector.ascx" TagName="LanguageSelector"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc2" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc4" %>
<%@ Register src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" tagname="ProviderSetupNextPreviousNavigator" tagprefix="uc3" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size:1.2em">
        Become a Professional Service Provider</h2>
   <%--  <table style="height:142px">
        <tr>
            <td>
                <uc4:ProviderSetupHeader ID="ProviderSetupHeader1" runat="server" />
            </td>
        </tr>
    </table> --%>
    <h2 style="font-size:1.2em">
        <%=PageTitle %></h2>
    <div class="providerSetup">
        <table width="100%">
            <tr style="vertical-align: top">
                <td style="vertical-align: top; width: 15%">
                    <uc2:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="Languages"
                        runat="server" />
                </td>
                <td class="verticalRuler">
                    <div style="float: right; padding-right: 8px;">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" NavigatorShowType="PreviousOnly" runat="server" />
                    </div>
                    <table style="width:100%">
                        <tr>
                            <td style="border-top: 1px solid #cfcfcf;border-bottom:1px solid #cfcfcf; padding:0px 0px 10px 0 ;">
                                <div style="margin-top: 30px;">
                                    <uc1:LanguageSelector AllowOtherValue="false" SelectLabel="Language"  SubmitButtonText="Add Language"
                                        ImageUrl="/images/Lanuage.png" runat="server" ID="LanguageSelector" />
                                    <div class="simpleRepeater">
                                        <asp:Repeater runat="server" ID="LanguageRepeater">
                                            <HeaderTemplate>
                                                <div class="rptHeader" style="margin-top: 10px;">
                                                    <div style="width: inherit; padding: 5px;">
                                                        Languages that I speak</div>
                                                </div>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <div class="simpleRptItem">
                                                    <div class="itemBody">
                                                        <div class="inner">
                                                            <table style="border: 0px; padding: 0px; margin: 0px; width: 100%;">
                                                                <tr>
                                                                    <td>
                                                                        <%# GetLanguageName(Container.DataItem) %>
                                                                    </td>
                                                                    <td style="text-align: right;">
                                                                        <table class="smallButton" style="float:right;"><tr><td><iac:ConfirmationLinkButton ID="LinkButton1" OnClick="btnRemove_Clicked" Message="Are you sure you want to remove this language?"
                                                                            Test="Remove" CommandArgument="<%# ((UserLanguage)Container.DataItem).LanguageCode %>"
                                                                            runat="server" Text="Remove"><%--<asp:Image ID="delete_language_image" ImageAlign="Middle" runat="server" ImageUrl="~/images/btn_delete.png"/>--%></iac:ConfirmationLinkButton></td></tr></table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div  style="float:right; padding-top:10px;padding-right: 8px;">
                        
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" NavigatorShowType="PreviousOnly" 
                            runat="server" />
                        
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
