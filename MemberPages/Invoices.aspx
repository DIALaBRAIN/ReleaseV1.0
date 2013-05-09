<%@ Page Title="" Language="C#" MasterPageFile="~/StandardMaster.master" AutoEventWireup="true"
    CodeBehind="Invoices.aspx.cs" Inherits="IntelArcade.WebApp.MemberPages.Invoices" %>

<%@ Register Src="../UserControls/InvoiceStubList.ascx" TagName="InvoiceList" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <asp:UpdatePanel runat="server" UpdateMode="Conditional" ChildrenAsTriggers="true">
        <ContentTemplate>
            <tel:RadTabStrip runat="server" ID="TabStrip" AutoPostBack="true" Width="100%" Align="Left"
                ShowBaseLine="true" EnableEmbeddedSkins="false" Skin="DB">
                <Tabs>
                    <tel:RadTab Value="C" Text="<%$Resources:Labels,InvoicesCompany %>" />
                    <tel:RadTab Value="S" Text="<%$Resources:Labels,InvoicesSent%>" />
                    <tel:RadTab Value="R" Text="<%$Resources:Labels,InvoicesReceived%>" />
                </Tabs>
            </tel:RadTabStrip>
            <div style="height: 1px; -moz-box-shadow: 0px 2px 2px #336699; -webkit-box-shadow: 0px 2px 2px #336699;
                box-shadow: 0px 2px 2px #336699; margin-bottom: 0px; border-bottom: 1px solid #336699;
                border-top: 1px solid #FFFFFF; background-color: #336699">
            </div>
            <uc1:InvoiceList runat="server" ID="InvoiceList" />
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
</asp:Content>
