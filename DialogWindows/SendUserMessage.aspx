<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true"
    CodeBehind="SendUserMessage.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.SendUserMessage" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function GetRadWindow() {
            var oWindow = null;
            if (window.radWindow) oWindow = window.radWindow;
            else if (window.frameElement.radWindow) oWindow = window.frameElement.radWindow;
            return oWindow;
        }

        function returnToParent() {
            //create the argument that will be returned to the parent page
            var oArg = new Object();

            //        //get the city's name 
            //        oArg.cityName = document.getElementById("cityName").value;

            //        //get the selected date from RadDatePicker
            //        var datePicker = $find("< %= Datepicker1.ClientID % >");
            //        oArg.selDate = datePicker.get_selectedDate().toLocaleDateString();

            //get a reference to the current RadWindow
            var oWnd = GetRadWindow();

            //Close the RadWindow and send the argument to the parent page
            oWnd.close(oArg);
        }
    </script>
    <style type="text/css">
        .statusInfoDialog
        {
            padding:15px 0 15px 5px !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <asp:HiddenField ID="RecipientID" runat="server" />
    <div id="emailcontent" runat="server">
        <div class="rptItem">
            <div class="itemBody">
                <div  style="padding-bottom:20px; padding-top:5px;">

                    <img style=" font:left; padding-left:10px;" src="/images/Got_mail.png" alt="" class="leftImage" />
                    <div style="font:left; padding-left:60px;">
                    <table border="0" style="width: 100%;">
                        <tr>
                            <td style="text-align: right; white-space: nowrap;  width:70px;">
                                <label>
                                    Recipient:</label>
                            </td>
                            <td>&nbsp;<%=UserName%></td>
                        </tr>
                        <tr>
                            <td style="text-align: right; white-space: nowrap;">
                                <label>
                                    Subject:</label>
                            </td>
                            <td>
                            
                            &nbsp;<asp:TextBox runat="server" ID="Subject"
                                        Width="350px" Height="20px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalSubject"
                                            ControlToValidate="Subject" />
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
            </div>
        </div>
        <hr style="clear: both;" />
        <div style="padding: 10px;">
            <asp:TextBox runat="server" ID="MessageText" TextMode="MultiLine" Rows="8" Width="100%" />
        </div>
        <div style="padding: 10px;">
            <%--Click <b>Send</b> to submit the message, or <b>Cancel</b> to exit without taking
        any action.--%></div>
        <%--    <div style="padding:10px;"><div style="text-align:right;width:100%;"><span style="padding-right:5px;"><asp:Button ID="SendButton" OnClick="SendButton_Click" Text="Send" runat="server" /></span><asp:Button ID="CancelButton" type="button" text="Cancel" runat="server" OnClientClick="returnToParent();" /></div></div>--%>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentDialogFooter" runat="server">
    <div style="text-align: right; width: 100%;">
        <div style="float: right; margin-right:-9px;">
            <asp:LinkButton runat="server" ID="SendButton" Text="Send" OnClick="SendButton_Click" />
        </div>
        <div style="float: left; margin-left: -20px;">
            <a href="javascript:returnToParent(false);" id="CloseWindowLink" runat="server">Cancel</a>
        </div>
    </div>
</asp:Content>
