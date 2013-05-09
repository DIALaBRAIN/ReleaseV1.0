<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="MeetingOver.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.MeetingOver" %>

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
    <asp:Panel runat="server" ID="pFeedbackHeader" Visible="false">
        <span style="float: right;"><span style="font-size: 22px; font-weight: bold;">Feedback
        </span>on <i>
            <asp:Literal runat="server" ID="ProviderName" /></i></span><br />
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:Panel runat="server" ID="pRejoin">
    <div style="padding-top:10px; text-align:center;">
        Rejoin the meeting or confrim you have closed the meeting.</div>
    </asp:Panel>
    <asp:Panel runat="server" Visible="false" ID="pFeedback">
        <div runat="server" id="ContentPanel" style="padding: 10px; height: 260px;">
            <table border="0" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td>
                    </td>
                    <td style="text-align: center; width: 90px;">
                        <label>
                            Terrible</label>
                    </td>
                    <td style="text-align: center; width: 90px;">
                        <label>
                            Poor</label>
                    </td>
                    <td style="text-align: center; width: 90px;">
                        <label>
                            OK</label>
                    </td>
                    <td style="text-align: center; width: 90px;">
                        <label>
                            Good</label>
                    </td>
                    <td style="text-align: center; width: 90px;">
                        <label>
                            Excellent</label>
                    </td>
                </tr>
                <tr style="background-color: #fafafa;">
                    <td style="text-align: right; padding-right: 20px; border-right: 1px solid #cfcfcf;">
                        <label>
                            Professionalism:</label>
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Prof1" Value="1" GroupName="PROF" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Prof2" Value="2" GroupName="PROF" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Prof3" Value="3" GroupName="PROF" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Prof4" Value="4" GroupName="PROF" />
                    </td>
                    <td style="text-align: center;">
                        <asp:RadioButton runat="server" ID="Prof5" Value="5" GroupName="PROF" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; padding-right: 20px; border-right: 1px solid #cfcfcf;">
                        <label>
                            Communication:</label>
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Com1" Value="1" GroupName="COMS" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Com2" Value="2" GroupName="COMS" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Com3" Value="3" GroupName="COMS" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Com4" Value="4" GroupName="COMS" />
                    </td>
                    <td style="text-align: center;">
                        <asp:RadioButton runat="server" ID="Com5" Value="5" GroupName="COMS" />
                    </td>
                </tr>
                <tr style="background-color: #fafafa;">
                    <td style="text-align: right; padding-right: 20px; border-right: 1px solid #cfcfcf;">
                        <label>
                            Knowledge:</label>
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Know1" Value="1" GroupName="KNOW" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Know2" Value="2" GroupName="KNOW" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Know3" Value="3" GroupName="KNOW" />
                    </td>
                    <td style="text-align: center; border-right: 1px solid #cfcfcf;">
                        <asp:RadioButton runat="server" ID="Know4" Value="4" GroupName="KNOW" />
                    </td>
                    <td style="text-align: center;">
                        <asp:RadioButton runat="server" ID="Know5" Value="5" GroupName="KNOW" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right;" colspan="6">
                        <asp:CustomValidator runat="server" ID="FeedbackValidator" Text="You must provide feedback for each category."
                            Display="Static" />
                    </td>
                </tr>
            </table>
            <label>
                Comments</label>
            <asp:TextBox runat="server" ID="Comments" Rows="10" TextMode="MultiLine" Width="100%" />
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentDialogPreFooter" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <asp:Panel runat="server" ID="pMeetingOverButtons">
            <div style="float: left; margin-left: -20px;">
                <%--<a href="javascript:top.location.reload();">Re-join</a>--%>
                <asp:LinkButton runat="server" ID="btnReJoin" Text="Re-Join"></asp:LinkButton>
            </div>
            <div style="float: right">
                <asp:LinkButton runat="server" ID="btnMeetingOver">Close</asp:LinkButton>
            </div>
        </asp:Panel>
        <asp:Panel runat="server" Visible="false" ID="pFeedbackButtons">
            <div style="float: left; margin-left: -20px;">
                <asp:LinkButton ID="SubmitButton" Text="Submit" runat="server" />
            </div>
            <div style="float: right;">
                <a runat="server" id="CloseWindowLink" href="javascript:returnToParent(false);">Cancel</a>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
