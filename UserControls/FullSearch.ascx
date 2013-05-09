<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FullSearch.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.FullSearch" %>
<%@ Register src="SearchOptions.ascx" tagname="SearchOptions" tagprefix="uc1" %>
<script language="javascript" type="text/javascript">
    function __iac_toggleSearchForm(parentID) {
        var stateCtrl = document.getElementById(parentID + "_SearchPanelState");
        stateCtrl.value = !(stateCtrl.value == true || stateCtrl.value == "true");

        __iac_setSearchFormState(parentID);
    }

    function __iac_setSearchFormState(parentID) 
    {
        var stateCtrl = document.getElementById(parentID + "_SearchPanelState");
        var show = stateCtrl.value == true || stateCtrl.value == "true";

        document.getElementById(parentID + "_ToggleLink").innerHTML = show ? __iac_hideText : __iac_showText;
        document.getElementById(parentID + "_SearchPanel").style["display"] = show ? "block" : "none";
        // show = show && document.getElementById(parentID + "_ShowAdvanced").checked;
        // document.getElementById(parentID + "_OptionsPanel").style["display"] = show ? "block" : "none";
    }
</script>

<asp:HiddenField runat="server" ID="SearchPanelState" Value="true" />
<div style="float:right; display:none;"><a runat="server" id="ToggleLink">Toggle</a></div><br/>
<div runat="server" id="SearchPanel" style="clear:both;width:100%;">
    <iac:FieldSet runat="server" class="formData" style="width:100%;" Title="Search">
	<p><label>Search</label>&nbsp;
        <iac:SearchTypeList runat="server" ID="SearchTypeList" />
        <asp:TextBox runat="server" ID="SearchText" CssClass="search" Width="450px" />&nbsp;<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/button_search.png" ImageAlign="AbsMiddle" />&nbsp;
        <iac:IACheckBox runat="server" ID="ShowAdvanced" Text="Show Advanced Search Options" Checked="true" Style="display:none;" />
    </p>
	</iac:FieldSet>
</div>
<div runat="server" id="OptionsPanel" style="display:none;">
    <asp:UpdatePanel runat="server" ID="UpdatePanel" ChildrenAsTriggers="False" RenderMode="Inline" UpdateMode="Conditional">
        <ContentTemplate>
                <uc1:SearchOptions ID="SearchOptionsControl" runat="server" /><br />
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="SubmitButton" />
        </Triggers>
    </asp:UpdatePanel>
</div>

