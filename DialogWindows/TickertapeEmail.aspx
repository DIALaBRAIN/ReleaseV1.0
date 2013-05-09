<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/DialogMaster.Master"
    CodeBehind="TickertapeEmail.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.TickertapeEmail" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel ID="pEmail" runat="server">
        <div style="padding: 10px 20px 10px 20px;">
            <table width="100%">
                <tr>
                    <td>
                        To :
                    </td>
                    <td style="float: right;">
                        <telerik:RadTextBox ID="tbEmails" runat="server" TextMode="MultiLine" Width="460"
                            Height="25">
                        </telerik:RadTextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <iac:IARequiredFieldValidator runat="server" ControlToValidate="tbEmails" Display="Dynamic"></iac:IARequiredFieldValidator>
                        <asp:CustomValidator ID="cvEmails" Display="Dynamic" ControlToValidate="tbEmails"
                            runat="server" ErrorMessage="Only allow 5 email addresses"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Subject :
                    </td>
                    <td style="float: right;">
                        <telerik:RadTextBox ID="tbSubject" runat="server" TextMode="MultiLine" Text="I saw this notice on DIALaBRAIN"
                            Enabled="false" Width="460" Height="25">
                        </telerik:RadTextBox>
                    </td>
                </tr>
            </table>
            <div style="padding-top: 10px;">
                <telerik:RadEditor ID="tbEmailBody" runat="server" Width="530" Height="360" ContentFilters="None"
                    StripFormattingOptions="NoneSupressCleanMessage" EditModes="Design" Skin="Office2010Silver">
                    <Tools>
                        <telerik:EditorToolGroup Tag="Formatting">
                            <telerik:EditorTool Name="Bold" />
                            <telerik:EditorTool Name="Italic" />
                            <telerik:EditorTool Name="Underline" />
                        </telerik:EditorToolGroup>
                    </Tools>
                </telerik:RadEditor>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: left; margin-left: -20px;">
         <a href="javascript:returnToParent()">Cancel</a>
           
        </div>
        <div style="float: right;">
            <asp:LinkButton ID="btnEmailSend" runat="server" Text="Send" OnClick="btnEmailSend_Click"></asp:LinkButton>
        </div>
    </div>
</asp:Content>
