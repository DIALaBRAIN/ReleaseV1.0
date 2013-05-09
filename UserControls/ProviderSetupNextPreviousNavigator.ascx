<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProviderSetupNextPreviousNavigator.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.ProviderSetupNextPreviousNavigator" %>
<span title="" class="previousButton" style="float:left; margin-left:9px; ">
<asp:LinkButton  runat="server" ID="btnPrevious" OnCommand="Previous_Command" Text=""></asp:LinkButton></span>
<span title="" class="nextButton" style="float:right;margin-right:-2px">
<asp:LinkButton  runat="server" ID="btnNext" Text="" OnCommand="Next_Command"></asp:LinkButton></span>
