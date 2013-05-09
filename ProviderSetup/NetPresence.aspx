<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="NetPresence.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.NetPresence" %>

<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc2" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
        <%@ Register src="../UserControls/WebPresenceEdit.ascx" tagname="WebPresence" tagprefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript" language="javascript">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
        <iac:ProviderPhotoWarning ID="ProviderPhotoWarning1" runat="server" CssClass="ProviderPhotoWarning"></iac:ProviderPhotoWarning>
    <div class="providerSetup">
        <table style="width: 100%">
           <tr style="vertical-align: top">
                    <td style="vertical-align: top; width: 15%">
                    <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="NetPresence"
                        runat="server" />
                </td>
                <td class="verticalRuler">
                        <div style="padding-right: 0px; width: 100%">
                            <table style="width: 100%">
                                <tr>

                                <td style="width: 100%">
                                         <span title="Update your web Presence from Linkedin." class="LinkedInImportButton" style="margin-left:200px;position:absolute;">
                                          <iac:ConfirmationLink  runat="server" DialogHeight=220 OnClientClose="confirmCallBackFn" Message="Be aware that if you proceed your current data may be over-written with your Linkedin data."></iac:ConfirmationLink>  
                                          </span>                         
                        
                                    <uc3:ProviderSetupNextPreviousNavigator style="float: left;" ID="psnTop" runat="server" />
                               </td>
                                </tr>
                            </table>
                    </div>
                     <div style="display: none;">
                              <asp:Button runat="server" ID="btnLinkedInImport"></asp:Button>
                            </div>
                            <div style="border-top: 1px solid #cfcfcf;  border-bottom: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                            <div style="margin-right:-14px;">
                     <iac:WebPresence runat="server" ID="WebPresenceEdit" IsInsertMode="true"/>
                     </div>
                    <br />
                     </div>
                    <div style="float: right; padding-top: 5px;width:100%">
                        <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server"  />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
