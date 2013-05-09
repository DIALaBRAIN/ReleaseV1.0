<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NotifyBoxSubCategoryList.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.NotifyBoxSubCategoryList" %>
<asp:UpdatePanel runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <div>
            <div style="padding-bottom: 10px; padding-right: 5px;">
                <div style="text-align: justify;">
                    Don't miss out on service <span style="font-style:italic">Seekers</span> looking for your expertise! Even if you have not
                    yet created a service profile <span style="color: #414141; font-weight: bold">DIALa<span class="highlight2">BRAIN</span></span> will
                    <span style="font-weight: bold;">NOTIFY YOU</span> if someone requests a service
                    in your area of expertise. Simply list your areas of knowledge, excluding the areas
                    where you have created a service. If you list keywords or phrases, then you will only
                    be notified if they are matched (keywords are optional).</div>
            </div>
            <table width="100%">
                <tr>
                    <td>
                        <iac:InputContainer ID="InputContainer1" runat="server">

            <item Text="<%$ Resources:Labels,SubjectCategory%>">
                <tel:RadComboBox runat="server" ID="cbParentSubjectCategorys" DataTextField="SubjectName"
                DataValueField="SubjectID" AllowCustomText="true" EmptyMessage="Main Subject" AutoPostBack="true" OnSelectedIndexChanged="cbParentSubjectCategorys_SelectedIndexChanged">
                </tel:RadComboBox>
                <tel:RadComboBox runat="server" EmptyMessage="Sub-topic" AllowCustomText="true" ID="cbSubjectCategorys" DataTextField="SubjectName"
                DataValueField="SubjectID" Enabled="false">
                </tel:RadComboBox>
            </item>
            <item  Text="Keywords"> <tel:RadTextBox runat="server" ID="tbKeywords" Width="319px" EmptyMessage="Use commas to separate terms"></tel:RadTextBox></item>

                        </iac:InputContainer>
                    </td>
                    <td valign="top">
                        <div class="addButton" style="padding-left: 0px;float: right;">
                            <asp:LinkButton runat="server" ID="btnAddCategory" ValidationGroup="Save"></asp:LinkButton></div>
                        <div>
                    </td>
                </tr>
            </table>
            <asp:Repeater runat="server" ID="selectedCategoryRepeater">
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td width="270px;" style="vertical-align: top">
                                <%# GetSubject(Container.DataItem) %>
                            </td>
                            <td style="vertical-align: top">
                                <%# ((IntelArcade.Common.NotifyMe)Container.DataItem).Keywords %>
                            </td>
                            <td style="vertical-align: top">
                                <span class="deleteButton" style="float: right;">
                                    <asp:LinkButton runat="server" ID="btnRemoveCategory" CommandName="Remove" CommandArgument="<%# ((IntelArcade.Common.NotifyMe)Container.DataItem).NotifyMeID %>" /></span>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
