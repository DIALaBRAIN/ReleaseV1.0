<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.ascx.cs" Inherits="IntelArcade.WebApp.MainMenu" %>
<style type="text/css">
    span.text
    {
        line-height:10px;
        padding-top:10px;
        padding-bottom:10px;
        
        }
  
</style>
<script type="text/javascript">
    var clipboardEmpty = true;
    function copyPasterItemClicked(sender, args) {

       var itemValue = args.get_item().get_value();
       if (itemValue == "Services_tax_invalid") {
           _iac_ShowNotification('Please update your tax rates prior to update services.');return false;
        }

    }  
</script>
<tel:RadMenu ID="RadMenu1" runat="server" EnableRoundedCorners="false" EnableShadows="false" Skin="" OnClientItemClicking="copyPasterItemClicked">
    <Items>
        
        <tel:RadMenuItem runat="server" Value=""  ImageUrl="~/images/ico/keyaccount.png" HoveredImageUrl="~/images/ico/keyaccount-ro.png" SelectedImageUrl="~/images/ico/keyaccount-ro.png"  >
            <Items> 
                <tel:RadMenuItem runat="server" Text="Account" Value="MenuTitle" CssClass="menuTitle"  >
                </tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Value="" IsSeparator="true"></tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Text="Become a Provider - Setup" NavigateUrl="~/ProviderSetup/CompanyDisplay.aspx" />
                <tel:RadMenuItem runat="server" ID="CompanyMenuItem" Text="Business Details" NavigateUrl="~/MemberPages/CompanyDisplay.aspx" />
                <tel:RadMenuItem runat="server" Text="Personal Details" NavigateUrl="~/MemberPages/PersonalDetails.aspx" />
                <tel:RadMenuItem runat="server" ID="BankAccountMenuItem" Text="Bank Account" NavigateUrl="~/MemberPages/BankingDetails.aspx" />
                <tel:RadMenuItem runat="server" ID="SalesTaxMenuItem"  Text="VAT / Sales TAX Details" NavigateUrl="~/MemberPages/TaxDetailsDisplay.aspx" />
                <tel:RadMenuItem runat="server" ID="UserSalesTaxMenuItem"  Text="VAT / Sales TAX Details" NavigateUrl="~/MemberPages/UserTaxDetailsDisplay.aspx" />
                <tel:RadMenuItem runat="server" Text="Preferences" NavigateUrl="~/MemberPages/Preferences.aspx" />              
                <tel:RadMenuItem runat="server" IsSeparator="true" NavigateUrl="" CssClass="text" style="height:20px"  />
                  <tel:RadMenuItem runat="server" Text="Change Password" NavigateUrl="~/MemberPages/ChangePassword.aspx" />
                <tel:RadMenuItem runat="server" Text="Invoices" NavigateUrl="~/MemberPages/Invoices.aspx" />
                <tel:RadMenuItem runat="server" Text="Lists" NavigateUrl="~/MemberPages/FavoritesDisplay.aspx" />
<%--                <tel:RadMenuItem runat="server" Text="Blocked Users" NavigateUrl="~/MemberPages/BlockedUsers.aspx" />--%>
                
            </Items>
        </tel:RadMenuItem>
       
        <tel:RadMenuItem runat="server" ID="ProfileMenuItem" ImageUrl="~/images/ico/Profile.png" HoveredImageUrl ="~/images/ico/Profile-ro.png" SelectedImageUrl="~/images/ico/Profile-ro.png">
            <Items>
                <tel:RadMenuItem runat="server" Text="Profile" Value="MenuTitle" CssClass="menuTitle"  >
                </tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Value="" IsSeparator="true"></tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Text="Personal Profile" NavigateUrl="~/MemberPages/ProviderProfileDisplay.aspx"/>
                <tel:RadMenuItem runat="server" Value="C" Visible="false" Text="Business Profile" NavigateUrl="~/MemberPages/CompanyProfileEdit.aspx"/>    
                <tel:RadMenuItem runat="server" Text="Work History" NavigateUrl="~/MemberPages/WorkHistoryDisplay.aspx" />
                <tel:RadMenuItem runat="server" Text="Qualifications" NavigateUrl="~/MemberPages/Qualifications.aspx" />
                <tel:RadMenuItem runat="server" Text="Web Presence" NavigateUrl="~/MemberPages/NetPresence.aspx" />
                <tel:RadMenuItem runat="server"  Text="Services" NavigateUrl="~/MemberPages/ServiceProfiles.aspx" />
                <tel:RadMenuItem runat="server" Text="Products" NavigateUrl="~/MemberPages/Resources.aspx" Visible="false" />
<%--                <tel:RadMenuItem runat="server" Text="My Languages" NavigateUrl="~/MemberPages/UserLanguages.aspx" />--%>
            </Items>
        </tel:RadMenuItem>
           

        <tel:RadMenuItem runat="server"  ImageUrl="~/images/ico/Appointments.png" HoveredImageUrl="~/images/ico/Appointments-ro.png" SelectedImageUrl="~/images/ico/Appointments-ro.png">
            <Items>
                <tel:RadMenuItem runat="server" Text="Appointments" Value="MenuTitle" CssClass="menuTitle"  >
                </tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Value="" IsSeparator="true"></tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Text="All Appointments" NavigateUrl="~/MemberPages/UserAppointment.aspx" />
                <tel:RadMenuItem runat="server" Text="Requested Appointments" NavigateUrl="~/MemberPages/UserAppointment.aspx?mode=r" />
                <tel:RadMenuItem runat="server" Text="Confirmed Appointments" NavigateUrl="~/MemberPages/UserAppointment.aspx?mode=c" />
                <tel:RadMenuItem runat="server" ID="AvailabilityMenuItem" Text="Manage My Availability" NavigateUrl="~/MemberPages/Availability.aspx" />
                <tel:RadMenuItem runat="server" Text="Browse My Schedule" NavigateUrl="~/MemberPages/Schedule.aspx" />
            </Items>
        </tel:RadMenuItem>

        <tel:RadMenuItem runat="server" Value="creditTopItem" ClientIDMode="AutoID"  ImageUrl="" HoveredImageUrl="" SelectedImageUrl="">
            <Items>
                <tel:RadMenuItem runat="server" Text="Credit" Value="MenuTitle" CssClass="menuTitle"  >
                </tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Value="" IsSeparator="true"></tel:RadMenuItem>
                <tel:RadMenuItem runat="server" Text="Buy More Credit" NavigateUrl="~/MemberPages/BuyCredit.aspx" />
                <tel:RadMenuItem runat="server" IsSeparator="true" NavigateUrl="" />
                <tel:RadMenuItem runat="server" Text="Buy Prepay 5" NavigateUrl="~/MemberPages/BuyTime.aspx?amt=a" />
                <tel:RadMenuItem runat="server" Text="Buy Prepay 20" NavigateUrl="~/MemberPages/BuyTime.aspx?amt=b" />
                <tel:RadMenuItem runat="server" Text="Buy Prepay 100" NavigateUrl="~/MemberPages/BuyTime.aspx?amt=c" />
                <tel:RadMenuItem runat="server" IsSeparator="true" NavigateUrl="" />
                <tel:RadMenuItem runat="server" Text="Transaction History" NavigateUrl="~/MemberPages/TransactionHistory.aspx" /> 
            </Items>
        </tel:RadMenuItem>
    </Items>
</tel:RadMenu>

<asp:Timer runat="server" id="UpdateTimer" interval="10000" OnTick="UpdateTimer_Tick" />
<script type="text/javascript">
    window.onload = function () {
   
        var loadedsrc = false;
        var myVar;
        if (window.location.href.indexOf("VerifyRegistration.aspx") != -1 || window.location.href.indexOf("NewUser.aspx") != -1) {
         
            myVar = setInterval(function () { myTimer() }, 6000);
        }
        else {
            var timer = $find("<%=UpdateTimer.ClientID%>"); 
          
        timer._stopTimer(); }

        function myTimer() {
            $(".rmLeftImage").each(function () {
                var imagesrc = $(this).attr("src");
                if (imagesrc.indexOf("images/ico/credit") != -1 || imagesrc.indexOf("images/ico/Credit") != -1) {
                    loadedsrc = true;
                    var timer = $find("<%=UpdateTimer.ClientID%>");
                    timer._stopTimer(); clearTimeout(myVar);
                } 
            });
        } 
    };

</script>


