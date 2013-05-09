<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="Qualifications.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.Qualifications" %>

<%@ Register Src="~/UserControls/ProviderSetupNavigator.ascx" TagName="ProviderSetupNavigator"
    TagPrefix="uc1" %>
<%@ Register Src="~/UserControls/ProviderSetupHeader.ascx" TagName="ProviderSetupHeader"
    TagPrefix="uc4" %>
<%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc2" %>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentHead" runat="server">
    <script type="text/javascript" language="javascript">
        function confirmCallBackFn(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                $("#<%=btnLinkedInImport.ClientID %>").click();
            }
        }
        function _onDelete_WindowClose(oWnd, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
        }

    </script>
    <style>
        .LinkedInImportButton
        {
            margin-left: 50px;
        }
        .gecko .LinkedInImportButton
        {
            margin-left: 10px;
        }
        .chrome .LinkedInImportButton
        {
            margin-left: 50px;
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
            <table width="100%">
                <tr style="vertical-align: top">
                    <td style="vertical-align: top; width: 15%">
                        <uc1:ProviderSetupNavigator ID="ProviderSetupNavigator1" CurrentStep="Qualifications"
                            runat="server" />
                    </td>
                    <td class="verticalRuler">
                        <div style="padding-right: 0px; width: 100%">
                            <table style="width: 100%">
                                <tr>
                                    <td style="width: 100%">
                                        <span title="Update your qualifications details from Linkedin." class="LinkedInImportButton"
                                            style="margin-left: 200px; position: absolute">
                                            <a onclick="_iac_confirmWindow('Be aware that if you proceed your current data may be over-written with your Linkedin data.',null,confirmCallBackFn,400,220)"></a>
                                        </span>
                                        <uc2:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" />
                                    </td>
                                </tr>
                            </table>
                            <div style="display: none;">
                                <asp:Button runat="server" ID="btnLinkedInImport" />
                            </div>
                        </div>
                        <table style="width: 100%">
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; padding: 5px 0px 10px 0;">
                                    <h3 style="color: #FF9148;">
                                        Professional Qualifications</h3>
                                    <div title="Add Qualification" class="addButton" style="margin-bottom: 5px; margin-right: -2px;
                                        float: right;">
                                        <asp:LinkButton ID="Link_Button1" OnCommand="AddLink_Command" CommandName="Add" CommandArgument="Professional"
                                            Text="" runat="server"></asp:LinkButton>
                                    </div>
                                    <div style="clear: both;">
                                        <asp:Repeater runat="server" ID="ProfessionalRepeater" OnItemDataBound="ProfessionalRepeater_ItemDataBound">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <SeparatorTemplate>
                                            </SeparatorTemplate>
                                            <ItemTemplate>
                                                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; float: right;">
                                                    <div class="inner">
                                                        <table>
                                                            <tr>
                                                                <td title="Edit" class="editButton">
                                                                    <asp:LinkButton ID="Edit_Link" CommandName="Edit" Text="" OnCommand="EditLink_Command"
                                                                        CommandArgument='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'
                                                                        runat="server"></asp:LinkButton>
                                                                </td>
                                                                <td title="Delete" class="deleteButton" style="padding-left: 10px">
                                                                    <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                                                        ReturnValue='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'>
                                                                    </iac:ConfirmationLink>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="rptItem">
                                                    <div class="itemHeader">
                                                        <div class="inner">
                                                        </div>
                                                    </div>
                                                    <div class="itemBody" id="divPBody" runat="server">
                                                        <div class="inner">
                                                            <img id="Img1" src="~/images/Qual-Prof-48.png" alt="Image" title="Image" class="leftImage"
                                                                style="width: 50px; height: 50px;" runat="server" />
                                                            <div style="padding-top: 4px;">
                                                                <h1 style="font-size: large">
                                                                    <%#((IntelArcade.Common.Qualification)Container.DataItem).QualificationAuthority%></h1>
                                                            </div>
                                                            <div style="padding-top: 2px;">
                                                                <span style="padding-left: 2px;">
                                                                    <%# GetCountryName(Container.DataItem)%></span><br />
                                                                <span style="padding-left: 2px;"><b>
                                                                    <%# GetDate(((IntelArcade.Common.Qualification)Container.DataItem).IssuedDate)%></b></span>
                                                            </div>
                                                            <div style="padding-top: 5px;">
                                                                <h2 style="font-size: 14px">
                                                                    <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationName%></h2>
                                                                <p>
                                                                    <b>
                                                                        <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationCourse%></b>&nbsp;<i>(<%#GetCourseType(((IntelArcade.Common.Qualification)Container.DataItem).CourseType) %>)</i></p>
                                                                <div style="padding-top: 5px;">
                                                                    <p style="padding-top: 4px;">
                                                                        <i>
                                                                            <%# ((IntelArcade.Common.Qualification)Container.DataItem).Notes%></i></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td style="border-top: 1px solid #cfcfcf; border-bottom: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                                    <h3 style="color: #FF9148;">
                                        Academic Qualifications</h3>
                                    <div title="Add Qualification" class="addButton" style="margin-bottom: 5px; margin-right: -2px;
                                        float: right;">
                                        <asp:LinkButton runat="server" ID="Add_Link" OnCommand="AddLink_Command" CommandName="Add"
                                            CommandArgument="Academic" Text=""></asp:LinkButton>
                                    </div>
                                    <div style="clear: both; margin-right: -4px;">
                                        <asp:Repeater runat="server" ID="AcademicRepeater" OnItemDataBound="AcademicRepeater_ItemDataBound">
                                            <HeaderTemplate>
                                            </HeaderTemplate>
                                            <SeparatorTemplate>
                                            </SeparatorTemplate>
                                            <ItemTemplate>
                                                <div style="clear: both; padding-top: 5px; margin-bottom: 10px; float: right; marign-right: 10px;">
                                                    <div class="inner">
                                                        <table class="smallButton">
                                                            <tr>
                                                                <td class="editButton" title="Edit">
                                                                    <asp:LinkButton runat="server" ID="Edit_Link" CommandName="Edit" OnCommand="EditLink_Command"
                                                                        CommandArgument='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'
                                                                        Text=""></asp:LinkButton>
                                                                </td>
                                                                <td class="deleteButton" title="Delete" style="padding-left: 10px">
                                                                    <iac:ConfirmationLink ID="ConfirmationLink1" runat="server" OnClientClose="_onDelete_WindowClose"
                                                                        ReturnValue='<%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationID%>'>
                                                                    </iac:ConfirmationLink>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div class="rptItem">
                                                    <div class="itemHeader">
                                                        <div class="inner">
                                                        </div>
                                                    </div>
                                                    <div class="itemBody" id="rptBody" runat="server">
                                                        <div class="inner">
                                                            <img id="Img1" src="~/images/Qual-Edu-48.png" alt="Image" title="Image" class="leftImage"
                                                                style="width: 50px; height: 50px;" runat="server" />
                                                            <div style="padding-top: 4px;">
                                                                <h1 style="font-size: large">
                                                                    <%#((IntelArcade.Common.Qualification)Container.DataItem).QualificationAuthority%></h1>
                                                            </div>
                                                            <div style="padding-top: 2px;">
                                                                <span style="padding-left: 2px;">
                                                                    <%# GetCountryName(Container.DataItem)%></span><br />
                                                                <span style="padding-left: 2px;"><b>
                                                                    <%# GetDate(((IntelArcade.Common.Qualification)Container.DataItem).IssuedDate)%></b></span>
                                                            </div>
                                                            <div style="padding-top: 5px;">
                                                                <h2 style="font-size: 14px">
                                                                    <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationName%></h2>
                                                                <p>
                                                                    <b>
                                                                        <%# ((IntelArcade.Common.Qualification)Container.DataItem).QualificationCourse%></b>&nbsp;<i>(<%#GetCourseType(((IntelArcade.Common.Qualification)Container.DataItem).CourseType) %>)</i></p>
                                                                <p style="padding-top: 4px;">
                                                                    <i>
                                                                        <%# ((IntelArcade.Common.Qualification)Container.DataItem).Notes%></i></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                            </FooterTemplate>
                                        </asp:Repeater>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div style="float: right; padding-top: 10px; margin-right: 2px; width: 100%">
                            <uc2:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" />
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
