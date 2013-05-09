<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ProviderProfileDisplay.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.Profile" %>

<%@ Register TagPrefix="uc1" TagName="VideoSelector" Src="~/UserControls/VideoSelector.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ImageSelector" Src="~/UserControls/ImageSelector.ascx" %>
<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc3" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc4" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc5" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript">
        //<![CDATA[
        function _providerProfileOnClientClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg != null && typeof (arg.DoPostback) != "undefined" && arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }
        //]]>

        function confirmCallBackFn(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                $("#<%=btnLinkedInImport.ClientID %>").click();
            }
        }
    </script>
       <style>
        .LinkedInImportButton {
margin-left:50px;
}
    .gecko .LinkedInImportButton {
margin-left:10px;
}
.chrome .LinkedInImportButton {
		margin-left:50px;
		}
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <div>
        <h2 style="font-size: 1.2em">
            <%=PageTitle %></h2>
                    <iac:ProviderPhotoWarning ID="ProviderPhotoWarning1" runat="server" CssClass="ProviderPhotoWarning"></iac:ProviderPhotoWarning>
        <div class="providerSetup">
            <table>
                <tr>
                    <td style="vertical-align: top; width: 15%">
                        <uc3:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="ProviderProfile"
                            runat="server" />
                    </td>
                    <td class="verticalRuler">
                        <div style="padding-right: 5px; float: right; padding-bottom: 10px; width: 100%">
                            <table style="width: 100%">
                                <tr style="width: 100%">
                                
                                      
                                    <td style="width: 100%">
                                      <span title="Update your qualifications details from Linkedin." class="LinkedInImportButton" style="padding-left:180px; padding-top :3px;position:absolute">
                                            <iac:ConfirmationLink ID="ConfirmationLink2" runat="server" DialogHeight="220" OnClientClose="confirmCallBackFn"
                                                Message="Be aware that if you proceed your current data may be over-written with your Linkedin data.">
                                            </iac:ConfirmationLink></span>
                                                 <span style="float: left;position:absolute;padding-left: 200px; margin-top:0px;">
                                           </span>
                            
                                        <uc5:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" />
                                    </td>
                                </tr>
                            </table>
                            <div style="display: none;">
                                <asp:Button runat="server" ID="btnLinkedInImport" ToolTip="Update your personal profile details from Linkedin">
                                </asp:Button>
                            </div>
                        </div>
                        <table style="width: 100%">
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;  border-bottom: 1px solid #cfcfcf;">
                                    <span title="Edit" class="editButton" style="float: right; padding-right: 3px;">
                                        <asp:LinkButton ID="Edit_Link" runat="server" OnCommand="EditLink_Command" CommandName="Edit"
                                            Text=""></asp:LinkButton></span>
                                    <h3 style="color: #FF9148;">
                                        About Me</h3>
                                    <table>
                                        <tr>
                                            <td style="vertical-align: top;">
                                                <uc2:ImageSelector ID="ImageSelector1" runat="server" OnClientClose="_providerProfileOnClientClose" />
                                            </td>
                                            <td style="vertical-align: top;">
                                                <div style="float: left">
                                                    <h3>
                                                        <asp:Label ID="DisplayName" runat="server" /></h3>
                                                </div>
                                                <div style="clear: both;">
                                                    <p>
                                                        <asp:Label ID="ProviderSummary" runat="server" /></p>
                                                    <br />
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <div style="padding-top: 5px;">
                                        <asp:Label ID="ProviderDetail" runat="server"></asp:Label>
                                    </div>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td style=" border-bottom: 1px solid #cfcfcf; padding: 5px 0px 10px 5px;">
                                    <h3 style="color: #FF9148;">
                                        Profile Video</h3>

                                        <uc1:VideoSelector ID="VideoSelector1" runat="server" OnClientClose="_providerProfileOnClientClose" />
                                 </td> 
                            </tr> 
                        </table>
                        <div style="padding-top: 10px; width: 99.1%;">
                            <uc5:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
