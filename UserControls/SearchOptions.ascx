<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchOptions.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.SearchOptions" %>
 <div runat="server" id="RootContainer">
    <iac:FieldSet runat="server" class="formData" style="width:100%;" Title="Advanced Search Options">

    <div style="display:none">
        <div class="searchOptionsSection" style="padding-right: 10px; padding-left: 10px;">
            <h4>Service Filters</h4>
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%;">
                <tr><td class="labelCell"><label><%=global::Resources.Labels.SubjectCategory%>:</label></td><td><iac:SubjectPicker runat="server" ID="SubjectCombo" AutoPostBack="true" CausesValidation="false" PathMode="Dynamic" Width="250px" /><br /><br /></td></tr>
                <tr>
                    <td class="labelCell"><label><%=global::Resources.Labels.SearchOptions_MinFee%>:</label></td><td><iac:CurrencyBox runat="server" ID="MinFee" Width="50px" />
                    <label style="padding-left:10px;padding-right:10px;"><%=global::Resources.Labels.SearchOptions_MaxFee%>:</label><iac:CurrencyBox runat="server" ID="MaxFee" Width="50px" /></td>
                </tr>
            </table>
        </div>
        <div class="searchOptionsSection" style="padding-right: 10px; padding-left: 10px;">
        <h4><%= global::Resources.Labels.ProviderFilters%></h4>
            <iac:IACheckBoxList ID="ProviderList" runat="server" >
                <asp:ListItem Text="<%$ Resources:Labels,ProviderFilters_Online%>" Value="O" />
                <asp:ListItem Text="<%$ Resources:Labels,ProviderFilters_Verified%>" Value="V" />
                <asp:ListItem Text="<%$ Resources:Labels,ProviderFilters_FreeDownloads%>" Value="F" />
                <asp:ListItem Text="<%$ Resources:Labels,ProviderFilters_New%>" Value="N" />
            </iac:IACheckBoxList>
        </div>
        <div class="searchOptionsSection" style="padding-right: 16px;">
            <h4><%= global::Resources.Labels.SortOrder%></h4>
            <iac:IARadioButtonList ID="SortList" runat="server">
                <asp:ListItem Text="<%$ Resources:Labels,SortOrder_Relevance%>" Value="R" />
                <asp:ListItem Text="<%$ Resources:Labels,SortOrder_Feedback%>" Value="F" />
            </iac:IARadioButtonList>
        </div>
        <div class="searchOptionsSection" style="border: 0;">
            <h4>Result Format</h4>
            <iac:IARadioButtonList ID="FormatList" runat="server">
                <asp:ListItem Value="S" Text="<%$ Resources:Labels,ResultFormat_Short%>" />
                <asp:ListItem Value="M" Text="<%$ Resources:Labels,ResultFormat_Medium%>" />
                <asp:ListItem Value="L" Text="<%$ Resources:Labels,ResultFormat_Long%>" />
            </iac:IARadioButtonList>
        </div>
    </div>

        <table>
        <tr style="display:none;">
            <td><label>Language</label></td>
            <td><telerik:RadComboBox ID="cbLanguages" runat="server" EnableLoadOnDemand="true" OnItemsRequested="cbLanguages_ItemsRequested" EmptyMessage="Language"></telerik:RadComboBox></td>
        </tr>
    </table>
    </iac:FieldSet>
</div>
<br/>