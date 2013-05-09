<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="ViewNetPresence.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.ViewNetPresence" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParent() {
            //create the argument that will be returned to the parent page
            var oArg = new Object();
            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();
            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentDialogHeader" runat="server">
    <iac:HeaderText runat="server" ID="UserName" Text="Web Presence" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
<div style="overflow:auto; height:250px;">
    <asp:Repeater runat="server" ID="NetPresenceRepeater">
        <ItemTemplate>
            <div >
                <table>
                    <tr>
                        <td style="padding-right: 10px; padding-left: 10px;">
                            <img id="Img1" src="<%# GetImageUrl(Container.DataItem) %>" alt="Image" title="Image"
                                style="width: 50px; height: 50px;" runat="server" />
                        </td>
                        <td>
                            <a href="<%# Eval("Url")%>" target="_blank">
                                <h1 style="font-size: large">
                                    <%# GetLinkTypeName(Container.DataItem)%></h1>
                            </a>
                        </td>
                    </tr>
                </table>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div id="ButtonPanel" style="text-align: right; width: 100%;">
        <a href="javascript:returnToParent();">Close</a></div>
</asp:Content>
