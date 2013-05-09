<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminMainMenu.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.AdminMainMenu" %>
<div style="float: right">
    <tel:RadMenu ID="RadMenu1" runat="server" EnableRoundedCorners="false" EnableShadows="false"
        Skin="">
        <Items>
            <tel:RadMenuItem Text="Profile Management" runat="server">
                <Items>
                    <tel:RadMenuItem runat="server" Text="Manage Consultants" NavigateUrl="~/Admin/SelectedProfile/ConsultantManage.aspx">
                    </tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Manage Tutors" NavigateUrl="~/Admin/SelectedProfile/TutorsManage.aspx">
                    </tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Manage Experts" NavigateUrl="~/Admin/SelectedProfile/ExpertsManage.aspx">
                    </tel:RadMenuItem>
                </Items>
            </tel:RadMenuItem>
            <tel:RadMenuItem ID="CurrencyManagement" runat="server" Text="Currency Management"
                Value="">
                <Items>
                    <tel:RadMenuItem runat="server" Text="Price Limit" NavigateUrl="~/Admin/PriceLimitDisplay.aspx" />
                    <tel:RadMenuItem runat="server" Text="Price Limit Edit" NavigateUrl="~/Admin/PriceLimitEdit.aspx" />
                    <tel:RadMenuItem runat="server" Text="Fx Conversion Rates" NavigateUrl="~/Admin/FxConventionRates.aspx" />
                    <tel:RadMenuItem runat="server" Text="Company & IA-Time Fees" NavigateUrl="~/Admin/CompanyAndIA-TimeFees.aspx">
                    </tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Commission Rates" NavigateUrl="~/Admin/CommissionRates.aspx">
                    </tel:RadMenuItem>
                </Items>
            </tel:RadMenuItem>
            <tel:RadMenuItem Text="Videos" runat="server">
                <Items>
                    <tel:RadMenuItem runat="server" Text="Manage Videos" NavigateUrl="~/Admin/Videos/ManageVideos.aspx">
                    </tel:RadMenuItem>
                </Items>
            </tel:RadMenuItem>
            <tel:RadMenuItem Text="PayPal" runat="server">
                <Items>
                    <tel:RadMenuItem runat="server" Text="Download PayPal File" NavigateUrl="~/Admin/PayPal/DownloadPayPalFile.aspx"></tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Re-Download Files" NavigateUrl="~/Admin/PayPal/SearchDownloadedPayPalFile.aspx"></tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Upload Paypal Confirmation File" NavigateUrl="~/Admin/PayPal/UploadPaypalConfirmationFile.aspx"></tel:RadMenuItem>
                    <tel:RadMenuItem runat="server" Text="Search Downloaded PayPal Entries" NavigateUrl="~/Admin/PayPal/SearchDownloadedPayPalEntries.aspx"></tel:RadMenuItem>
                </Items>
            </tel:RadMenuItem>
            <tel:RadMenuItem Text="Approval" runat="server">
                    <Items>
                        <tel:RadMenuItem runat="server" Text="Requested Services" NavigateUrl="~/Admin/Approval/RequestedServices.aspx"></tel:RadMenuItem>
                    </Items>
            </tel:RadMenuItem>
        </Items>
    </tel:RadMenu>
</div>
