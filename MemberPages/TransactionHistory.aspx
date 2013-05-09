<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="TransactionHistory.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.TransactionHistory"
    EnableEventValidation="false" %>

<%@ Register Src="../UserControls/TransactionList.ascx" TagName="TransactionList"
    TagPrefix="uc1" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentBody">
    <div class="headerContainer">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
            <tr>
                <td>
                    <%=PageTitle %>
                </td>
                <td style="text-align: right;">
                    <asp:UpdatePanel runat="server" ID="UpdatePanelFilter" UpdateMode="Conditional" ChildrenAsTriggers="true">
                        <ContentTemplate>
                            <label style="padding-right: 5px;">
                                Year:</label><asp:DropDownList runat="server" ID="StatementYear" />
                            <label style="padding-left: 5px;">
                                Month:</label>
                            <asp:DropDownList ID="StatementMonth" runat="server" />
                            <div style="display: inline; padding-left: 10px;">
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
    </div>
    <asp:UpdatePanel ID="UpdatePanelHistory" runat="server" ChildrenAsTriggers="true"
        UpdateMode="Conditional">
        <ContentTemplate>
            <div style="width: 100%; text-align: right; position: relative; top: 10px;">
                <span style="font-size: smaller;">
                    <%=GetScopeDescription()%></span></div>
            <div style="position: relative; top: -15px;">
                <tel:RadTabStrip runat="server" ID="TabStrip" AutoPostBack="true" Width="100%" Align="Left"
                    ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB" >
                    <Tabs>
                        <tel:RadTab Value="C" Text="db-Credit" />
                        <tel:RadTab Value="T" Text="db-Time" />
                        <tel:RadTab runat="server" ID="ProviderAccountTab" Value="P" Text="My Earnings" />
                    </Tabs>
                </tel:RadTabStrip>
                <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                box-shadow: 0px 2px 2px #336699; margin-bottom: 2px; border-bottom: 1px solid #336699;
                border-top: 1px solid #FFFFFF; background-color: #336699">
            </div>
                <div class="headerContainer" style="font: inherit; padding-left: 10px; padding-top: 4px;
                    margin-top: 6px;">
                    Account Balance as of&nbsp;<asp:Label runat="server" ID="StatementTime" />&nbsp;of&nbsp;<asp:Label
                        runat="server" ID="Currency" />
                    &nbsp;<asp:Label runat="server" ID="StatementBalance" />
                </div>
                <div class="" style="padding-right: 5px; padding-left: 10px; padding-bottom: 10px;">
                    <uc1:TransactionList ID="TransactionList" runat="server" />
                </div>
                <iac:PageableItemProxy runat="server" ID="PageingProxy" />
                <tel:RadDataPager ID="Pager" runat="server" PagedControlID="PageingProxy">
                    <Fields>
                        <tel:RadDataPagerButtonField FieldType="FirstPrev" FirstButtonText="<%$Resources:Buttons,First%>"
                            PrevButtonText="<%$Resources:Buttons,Previous%>" />
                        <tel:RadDataPagerButtonField FieldType="Numeric" PageButtonCount="10" />
                        <tel:RadDataPagerButtonField FieldType="NextLast" NextButtonText="<%$Resources:Buttons,Next%>"
                            LastButtonText="<%$Resources:Buttons,Last%>" />
                    </Fields>
                </tel:RadDataPager>
        </ContentTemplate>
    </asp:UpdatePanel>
    </div>
</asp:Content>
