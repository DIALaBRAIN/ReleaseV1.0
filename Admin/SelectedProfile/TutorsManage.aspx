<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="TutorsManage.aspx.cs" Inherits="IntelArcade.WebApp.Admin.SelectedProfile.TutorsManage" %>

<%@ Register Src="../../UserControls/SelectedProfileList.ascx" TagName="SelectedProfileList"
    TagPrefix="uc1" %>
<%@ Register Src="../../UserControls/ProfileSelector.ascx" TagName="ProfileSelector"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <h2>
            <%=PageTitle %>
        </h2>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; vertical-align: top">
                            <uc2:ProfileSelector ID="ProfileSelector1" ProfileType="Tutor" runat="server" />
                        </td>
                        <td style="width: 50%; vertical-align: top">
                            <uc1:SelectedProfileList ID="SelectedProfileList1" ProfileType="Tutor" runat="server" />
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
