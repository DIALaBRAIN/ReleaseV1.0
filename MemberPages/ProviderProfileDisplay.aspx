<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="ProviderProfileDisplay.aspx.cs" Inherits="IntelArcade.WebApp.Profile" %>

<%@ Register TagPrefix="uc1" TagName="VideoSelector" Src="~/UserControls/VideoSelector.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ImageSelector" Src="~/UserControls/ImageSelector.ascx" %>
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


    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <div>
        <h2 style="font-size: 1.2em">
            <%=PageTitle %></h2>
<%--        <div style="float: right; padding-right: 5px;">
            <iac:ReturnContext ID="ReturnContext1" runat="server" /></div>--%>
        <span title="Edit" class="editButton" style="float:right;padding-top:0px; padding-right:5px; position:absolute; padding-left:710px;">
            <asp:LinkButton runat="server" ID="EditLink" OnCommand="EditLink_Command" Text=""
                            CommandName="Edit"></asp:LinkButton>
        </span>
        <div style=" width:750px;">
        <iac:FieldSet runat="server" ID="FieldSet1" Title="About Me" class="formData">
            <table>
                <tr>
                    <td style="vertical-align: top;">
                        <uc2:ImageSelector  ID="ImageSelector1" runat="server" OnClientClose="_providerProfileOnClientClose" />
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
            <div style="padding-top: 5px;">
                <asp:Label ID="ProviderDetail" runat="server"></asp:Label>
            </div>

        </iac:FieldSet>
        <iac:FieldSet runat="server" ID="FieldSet2" Title="Profile Video" class="formData">
            <div style="padding:15px;">
            <uc1:VideoSelector ID="VideoSelector1" runat="server" OnClientClose="_providerProfileOnClientClose" />
            </div>
        </iac:FieldSet>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
