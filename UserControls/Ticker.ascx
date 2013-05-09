<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ticker.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.Ticker" %>
<script type="text/javascript">
    function openWin(arg) {
        //        var oWnd = radopen("/DialogWindows/TickertapeEmail.aspx", "RadWindow1");
        //        var oWnd = radopen(url, "RadWindow1");

        url = "/DialogWindows/TickertapeEmail.aspx?";
        url += "arg=";
        if (arg != null)
            url += arg;

        var oWnd = radopen(url, "RadWindow1");



    }

    function _iac_TicOnClientClose(oWnd, args) {
        //get the transferred arguments
        var arg = args.get_argument();
        if (arg) {
            var cityName = arg.cityName;
            var seldate = arg.selDate;
            $get("order").innerHTML = "You chose to fly to <strong>" + cityName + "</strong> on <strong>" + seldate + "</strong>";
        }
    }


</script>

<asp:XmlDataSource ID="TickerDataSource" runat="server" DataFile="/App_Data/TickerData.xml"
    EnableViewState="false" ViewStateMode="Disabled" />
<tel:RadRotator runat="server" ID="TickerRotator" DataSourceID="TickerDataSource"
    FrameDuration="15000" ScrollDuration="500" ScrollDirection="Up" Height="100%"
    Width="100%">
    <ItemTemplate>
        <div class="tickerControl">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%;">
                <tr>
                    <td style="padding-right: 10px;">
                        <img alt="" width="105" height="60" src='/images/TickerTape/<%# XPath("Image")%>' />
                    </td>
                    <td style="width: 100%;">
                        <asp:HiddenField ID="hfTicker" runat="Server" Value='<%#XPath("Ticker") %>' />
                        <asp:LinkButton ID="lbTicker" runat="server">
                            <tel:RadTicker ID="Ticker1" runat="server">
                                <Items>
                                    <tel:RadTickerItem ID="RadTickerItem1" Text='<%#XPath("Ticker") + " Click to Inform a Friend!"%> ' />
                                </Items>
                            </tel:RadTicker>
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </ItemTemplate>
</tel:RadRotator>
<telerik:RadWindowManager ID="RadWindowManager1" ShowContentDuringLoad="false" VisibleStatusbar="false"
    ReloadOnShow="true" runat="server" EnableShadow="true" Skin="Sitefinity" >
    <Windows>
        <telerik:RadWindow ID="RadWindow1" runat="server" Behaviors="Close,Move" IconUrl="~/images/db.png" OnClientClose="_iac_TicOnClientClose"
            Width="600" Height="600">
        </telerik:RadWindow>
    </Windows>
</telerik:RadWindowManager>

<tel:RadAjaxLoadingPanel runat="server"></tel:RadAjaxLoadingPanel>
