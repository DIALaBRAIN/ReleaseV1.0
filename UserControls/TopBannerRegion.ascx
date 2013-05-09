<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TopBannerRegion.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.TopBannerRegion" %>
<div class="top_info">
	<div class="top_info_left">
		<p><b>1. March, 2011</b> - Tuesday<br />
		<a href="/SignIn.aspx">Sign-in</a> to check your messages.<br /></p>
		Not a member?&nbsp;<a href="/Register.aspx">Register Now</a>
	</div>
	<div class="top_info_right">

        <div style="width:450px;height:55px;">
            <div style="padding: 5px 5px 5px 0px">
                <asp:XmlDataSource ID="TickerDataSource" runat="server" DataFile="/Data/TickerTape/TickerData.xml" EnableViewState="false" ViewStateMode="Disabled" />
                <tel:RadRotator runat="server" id="TickerRotator" DataSourceID="TickerDataSource" FrameDuration="8000" ScrollDuration="500" ScrollDirection="Up" height="45px" width="440px">
                    <ItemTemplate>
                        <div style="float:left;width:60px;text-align:center;"><img alt="" width="40" height="40" src="/images/image.gif" /></div>
                        <div class="tickerItem" style="float:right;width:380px;height:45px;">
                            <tel:RadTicker id="Ticker1" runat="server" AutoStart="true"  >
                                <Items>
                                    <tel:RadTickerItem ID="RadTickerItem1" Text='<%# XPath("Ticker") + " Click to Inform a Friend!"%> ' NavigateUrl="#" />
                                </Items>
                            </tel:RadTicker>
                        </div>
                    </ItemTemplate>
                </tel:RadRotator>
            </div>
        </div>
	</div>		
</div>
