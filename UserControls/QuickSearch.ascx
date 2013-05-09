<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuickSearch.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.QuickSearch" EnableViewState="true" %>
<script type="text/javascript">

    function OnKeyPress(sender, eventArgs) {
        var c = eventArgs.get_keyCode();
        if (c == 13) {
            $("#<%=SubmitButton.ClientID %>").click();
        }
    }

    function onClicked(sender, eventArgs) {
        var input = $find('<%= tbSearchText.ClientID %>');
        var hf = $find('<%= hfSelectedSearchType.ClientID %>');
        switch (eventArgs.get_item().get_value()) {
            case "S":
                input.set_emptyMessage("Search Services");
                input.set_value("");
                hf.set_value("S");
                break;
            case "P":
                input.set_emptyMessage("Search Provider Profiles");
                input.set_value("");
                hf.set_value("P");
                break;
        }


        input.updateDisplayValue();
        sender.close();
    }

</script>
<style>
.RadMenu_SearchTypeMenu .rmRootGroup .rmLast {
    padding-right: 0;
}
.RadMenu_SearchTypeMenu a.rmSelected {
    background-color: #f8f8f8 !important;
    height: 16px!important;
}
</style>
<div>
    <div style="vertical-align: top;">
        <div style="display: none;">
            <tel:RadTextBox runat="server" ID="hfSelectedSearchType" Width="1px">
            </tel:RadTextBox>
            </div>
            <div>
      <div style="float:left">
                    <tel:RadTextBox runat="server" ID="tbSearchText" Width="250px" BackColor="#f8fbfe" BorderColor="#2BB0D7" EmptyMessage="Search Services"
                        ClientEvents-OnKeyPress="OnKeyPress">    
                    </tel:RadTextBox>
                </div>
                <div style="display:inline;">
               
                    <tel:RadMenu style="margin-top:7px;margin-left:4px;" ID="SearchTypeMenu" runat="server" OnClientItemClicked="onClicked" EnableRoundedCorners="false"
                        Skin="SearchTypeMenu" EnableShadows="false" EnableSelection="true" EnableEmbeddedSkins="false" >
                        <Items>
                            <tel:RadMenuItem runat="server" ImageUrl="~/images/ico/Dropdown.png" HoveredImageUrl="~/images/ico/Dropdown-ro.png">
                                <GroupSettings ExpandDirection="Right" />
                                <Items>
                                    <tel:RadMenuItem runat="server" Text="Services" Value="S">
                                    </tel:RadMenuItem>
                             <tel:RadMenuItem runat="server" Text="Provider Profiles" Value="P">
                                    </tel:RadMenuItem>
                                </Items>
                            </tel:RadMenuItem>
                        </Items>
                    </tel:RadMenu>
        </div>

        </div>
        <div style="display: none;">
            <asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/button_search.png"
                ImageAlign="Right" />
        </div>
    </div>
</div>
