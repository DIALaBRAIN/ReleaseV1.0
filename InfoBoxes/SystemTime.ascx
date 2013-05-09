<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SystemTime.ascx.cs"
    Inherits="IntelArcade.WebApp.InfoBoxes.SystemTime" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <div id="lessdetailscvcv">
            <div id="app2" class="bluebar_radious" style="background-color: #336699; height: 22px;
                color: White; font: bold 0.9em Arial; margin: 0 0 5px 0; padding: 4px 0 4px 10px;
                margin-top: 9px">
                <table align="left">
                    <td>
                        d<span class="highlight">b</span>-<i>Time</i>
                    </td>
                </table>
                <table align="right">
                    <td align="right" style="vertical-align: top;">
                        <span class="rightHeaderInfo3">
                            <asp:Literal runat="server" ID="TotalBalance2" Visible="false" />
                            &nbsp;&nbsp;
                            <asp:Literal runat="server" ID="AvailableBalance2" />
                            hrs</span>
                    </td>
                </table>
                <span class="rightHeaderInfo4" id="appspan2" style="text-align: center; width: 100%;
                    display: none; border-top: 1px solid #4275a7;">
                    <asp:Literal runat="server" ID="DefaultContainerff" Visible="false" />
                    <asp:PlaceHolder runat="server" ID="TotalsContainerff"><span class="rightHeaderInfo3"
                        style="line-height: 36px; float: left">
                        <table>
                            <tr>
                                <td>
                                    <img class="imms" id="Img2" src="~/images/dbtime.png" style="width: 30px; height: 30px;
                                        margin-top: 6px; padding-left: 6px;" alt="Total" title="Total Hours" runat="server" />
                                </td>
                                <td style="vertical-align: top; padding-top: 0px;">
                                    <span style="margin-top: -5px; text-align: left; vertical-align: top; line-height: 36px;
                                        font-size: 11px;">
                                        <asp:Literal runat="server" ID="TotalBalance" />
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </span><span style="color: #fff; line-height: 36px; float: right; margin-right: 0px">
                        <table>
                            <tr>
                                <td>
                                    <img class="imms" id="Img3" src="~/images/Availtime.png" style="width: 30px; height: 30px;
                                        margin-top: 6px; padding-left: 4px;" alt="Available" title="Available Hours"
                                        runat="server" />
                                </td>
                                <td style="vertical-align: top; padding-top: 0px;">
                                    <span style="margin-top: -5px; text-align: left; vertical-align: top; line-height: 36px;
                                        font-size: 11px;">
                                        <asp:Literal runat="server" ID="AvailableBalance" />
                                    </span>
                                </td>
                            </tr>
                        </table>
                    </span></asp:PlaceHolder>
                </span>
            </div>
        </div>
        <table>
            <tr>
                <td>
                    <div class="rightArticle">
                        <span class="tooltip1"><a class="tooltip1" href="../MemberPages/BuyTime.aspx?amt=a">
                            <img id="Img5" style="width: 50px; height: 50px;" src="/images/db-time.png" onmouseover="this.src='/images/db-time-ro.png'"
                                onmouseout="this.src='/images/db-time.png'" alt="Image" title="" class="leftImage"
                                runat="server" /></a><b><asp:HyperLink ID="HyperLink1" NavigateUrl="~/MemberPages/BuyTime.aspx?amt=a"
                                    runat="server"><p style="margin-top:12px;font-size:12px;width:230px;font-weight:bold">Prepay <b>d<label class="highlight2">b</label></b>-<i>Time</i></p></asp:HyperLink>
                                    <span class="custom info">PrePay <b>d<label class="highlight2">b</label></b>-<i>Time</i> Just like a mobile phone, you can pay for call
                                        time in advance and.</span> </span>
                    </div>
                </td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>
