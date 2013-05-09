<%@ Page Title="" Language="C#" MasterPageFile="~/DialogMaster.Master" AutoEventWireup="true" CodeBehind="CreateRecommendation.aspx.cs" Inherits="IntelArcade.WebApp.DialogWindows.CreateRecommendation" %>
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="rptItem">
        <div class="itemHeader"><div class="inner">&nbsp;</div></div>
        <div class="itemBody">
            <div class="inner">
                <table border="0" cellpadding="0" cellspacing="0" style="width:100%;" >
                    <tr>
                        <td rowspan="2" style="background-color:#f5f5f5;"><img style="width:50px;height:50px;" src="/images/recommendation128x.gif" alt="" class="leftImage" /></td>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;width:100%;"><label>Provider:</label>&nbsp;<%=UserName%></td>
                    </tr>
                    <tr>
                        <td style="text-align:left;white-space:nowrap;background-color:#f5f5f5;">&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="itemFooter"><div class="inner">&nbsp;</div></div>
    </div>
    <hr style="clear:both;" />
    <div style="padding:10px;">
        <asp:TextBox runat="server" ID="MessageText" TextMode="MultiLine" Rows="8" Width="100%" />
    </div>
    <div style="padding:10px;">Click <b>Submit</b> to submit the recommendation, or <b>Cancel</b> to exit without taking any action.</div>
    <div style="padding:10px;"><div style="text-align:right;width:100%;"><span style="padding-right:5px;"><input type="button" value="Submit" onclick="returnToParent();" /></span><input type="button" value="Cancel" onclick="returnToParent();" /></div></div>
</asp:Content>
