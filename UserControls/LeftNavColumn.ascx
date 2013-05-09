<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LeftNavColumn.ascx.cs" Inherits="IntelArcade.WebApp.LeftNavColumn" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<telerik:RadPanelBar runat="server" ID="RadPanelBar1" Skin="Vista" Height="100%">
    <Items>
        <telerik:RadPanelItem Expanded="True" Text="Subjects">
            <ItemTemplate>
                <telerik:RadTreeView ID="RadTreeView1" runat="server" Skin="Windows7">
                    <WebServiceSettings Path="AjaxCtrlSvc.asmx" Method="GetTreeViewSubjects" />
                </telerik:RadTreeView> 
            </ItemTemplate>
        </telerik:RadPanelItem>
    </Items>
</telerik:RadPanelBar>
