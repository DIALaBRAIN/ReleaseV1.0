<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="TermsAndConditions.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.TermsAndConditions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function returnToParent(doPostback, response, argument) {
            
            var oArg = new Object();
            oArg.DoPostback = doPostback = doPostback != null ? doPostback : false;
            oArg.ServiceResponse = response != null ? response : "Undefined";
            oArg.Argument = argument != null ? argument : "";

            var oWnd = GetRadWindow();
            oWnd.close(oArg);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentDialogHeader" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <tel:RadEditor ID="tbTermsAndCondition" runat="server" Width="565" Height="450" ContentFilters="None"
        StripFormattingOptions="NoneSupressCleanMessage" EnableTextareaMode="true">
        <Tools>
            <tel:EditorToolGroup>
            </tel:EditorToolGroup>
        </Tools>
    </tel:RadEditor>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <a href="javascript:returnToParent()">Ok</a>
    </div>
</asp:Content>
