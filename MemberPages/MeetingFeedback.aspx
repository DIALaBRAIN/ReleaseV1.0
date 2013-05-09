<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MeetingFeedback.aspx.cs"
    Inherits="IntelArcade.WebApp.MemberPages.MeetingFeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">

        function OnClientClose(sender, args) {
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
            }
            else {
                $('.emtyMessege').show();
                window.open('', '_self', '');
                top.window.close();
                element = document.getElementById("Feedback");
                element.parentNode.removeChild(element);
            }
        }

        function Redirect(url) {
            self.location = url;
        } 
    </script>
</head>
<body style="background-color: #336699;">
<iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
    <form id="form1" runat="server">
    <div>
        <iac:IAScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true"
            EnableScriptGlobalization="true" EnableScriptLocalization="true">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </iac:IAScriptManager>
        <div style="display: none;">
            <iac:DialogCommand runat="server" Type="MeetingOver" ID="btnMneetingOver" OnClientClose="OnClientClose">
            </iac:DialogCommand>
        </div>
        <asp:HiddenField ID="hfMeetingID" runat="server" />
        <div style="padding-top: 20%;">
            <table style="width: 100%">
                <tr>
                    <td style="width: 30%">
                    </td>
                    <td>
                        <div id="emtyMessege" class="emtyMessege" style="text-align: center; border: none; display:none;
                            padding: 10px 10px 10px 5px; font-size: x-large; color: White; -moz-box-shadow: 3px 3px 8px #000000;
                            -webkit-box-shadow: 3px 3px 8px #000000; box-shadow: 3px 3px 8px #000000; -moz-border-radius-topleft: 14px;
                            -moz-border-radius-topright: 14px; -moz-border-radius-bottomleft: 14px; -moz-border-radius-bottomright: 14px;
                            -webkit-border-top-left-radius: 14px; -webkit-border-top-right-radius: 14px;
                            -webkit-border-bottom-left-radius: 14px; -webkit-border-bottom-right-radius: 14px;
                            border-top-left-radius: 14px; border-top-right-radius: 14px; border-bottom-left-radius: 14px;
                            border-bottom-right-radius: 14px;">
                            <asp:Label runat="server" ID="lblMsg" Text="Thank you. Please close the page."></asp:Label>
                        </div>
                    </td>
                    <td style="width: 30%">
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </form>
</body>
</html>
