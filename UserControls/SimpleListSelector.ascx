<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SimpleListSelector.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.SimpleListSelector" %>
<script language="javascript" type="text/javascript">
    function __iac_ListSelector_Changed(sender, prev) {
        if ((prev == "~" && sender.value != "~") || prev != "~" && sender.value == "~") {
            __iac_ListSelectorPostback();
        }
    }    
</script>
<tel:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
    <AjaxSettings>
        <tel:AjaxSetting AjaxControlID="UpdatePanel">
            <UpdatedControls>
                <tel:AjaxUpdatedControl ControlID="TargetPanel" LoadingPanelID="RadAjaxLoadingPanel1" />
            </UpdatedControls>
        </tel:AjaxSetting>
    </AjaxSettings>
</tel:RadAjaxManager>
<tel:RadAjaxLoadingPanel runat="server" ID="RadAjaxLoadingPanel1" Skin="WebBlue"  MinDisplayTime="500" >
</tel:RadAjaxLoadingPanel>

<asp:UpdatePanel ID="UpdatePanel" UpdateMode="Conditional" ChildrenAsTriggers="false" runat="server">
    <ContentTemplate>            
        <div class="rptItem">
            <div runat="server" id="TargetPanel" class="itemBody">
                <div class="inner">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="padding-left:10px;"><img id="Img2" src="<%=ImageUrl %>" alt="Image" title="Image" class="leftImage" style="height:50px;width:50px" /></td>
                            <td style="vertical-align:top;padding-top:5px;">
                                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">                
                                    <iac:InputContainerItem runat="server" ID="InputItemSelect" Text="">
                                        <asp:DropDownList ID="TheList" runat="server" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalTheList" ControlToValidate="TheList" />
                                    </iac:InputContainerItem>
                                    <iac:InputContainerItem runat="server" ID="InputItemOther" Text="">
                                        <asp:TextBox ID="OtherValue" runat="server" Width="70px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalOtherValue" ControlToValidate="OtherValue" />
                                    </iac:InputContainerItem>
                                </iac:InputContainer>
                            </td>
                        </tr>
                    </table>            
                </div>
            </div>
            <div class="itemFooter" style="padding-top:5px; padding-left:10px;">
                <div class="inner">
                    <%--<asp:ImageButton ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" ImageUrl="~/images/btn_addlanguage.png"></asp:ImageButton>--%><table class="largeButton"><tr><td><asp:LinkButton ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Add Language"></asp:LinkButton></td></tr></table>
                </div>
            </div>
        </div>
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="SubmitButton" />
    </Triggers>
</asp:UpdatePanel>
