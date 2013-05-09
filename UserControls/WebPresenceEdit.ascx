<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebPresenceEdit.ascx.cs"
    Inherits="IntelArcade.WebApp.UserControls.WebPresenceEdit" %>
<script type="text/javascript">
    function addOnClick() {
        $('.addLink').fadeIn("slow");
        $('.addButton').hide();
        document.getElementById("<%= hdfUrl.ClientID %>").value = "";
        document.getElementById("<%= hdfnetProvider.ClientID %>").value = "";
    }

    function cancelOnClick() {
        $('.addLink').fadeOut("slow");
        $('.addButton').fadeIn("slow")
    }

    function editOnClick(id, type, url) {
        $('.editLink').fadeIn("slow")
        $('.addButton').hide();
        $('.addLink').hide();
        $('.linkList').fadeOut("slow");
        $("[id$='hfIlID']").val(id);
       
       
        var linkName;
        switch (type) {
            case 'BLG':
                linkName = "Blog";
                break;
            case 'COM':
                linkName = "Company";
                break;
            case 'FBK':
                linkName = "Facebook";
                break;
            case 'LIN':
                linkName = "Linked In";
                break;
            case 'TWT':
                linkName = "Twitter";
                break;
            default:
                linkName = "Other";
                break;

        }

        var comboBox = $find('<%= drpnetProvidersUpdate.ClientID %>');
        comboBox.set_text(linkName);
        comboBox.set_value(type);

        $("[id$='txtUrlUpdate']").val(url)

        document.getElementById("<%= hdfUrl.ClientID %>").value = url;
        document.getElementById("<%= hdfnetProvider.ClientID %>").value = linkName;

    }

    function cancelUpdateOnClick() {
        $('.editLink').fadeOut("slow");
        $('.addButton').fadeIn("slow")
        $('.linkList').fadeIn("slow")
    }

    function _onDelete_WindowClose(oWnd, args) {
        if (args == null) return;
        var arg = args.get_argument();
        if (arg.DoPostback) {
            handleResponse_DialogResponseHandler(arg.ServiceResponse, arg.Argument);
        }
    }
</script>
<iac:ClientResponseHandler runat="server" ID="DialogResponseHandler" />
<div>
    <iac:FieldSet runat="server" ID="FieldSet1" class="formData">
       <h3 style="color: #FF9148; margin-top:-10px;">Internet Link</h3>
        <div class="addButton" title="Add Internet Link" style="margin-bottom: 5px; float: right;margin-right:2px;">
            <a href="javascript:addOnClick();"></a>
        </div>
        <div class="addLink" style="display: none;">
            <div style="padding-top: 10px; padding-left: 15px;">
                <img id="Img1" src="~/images/netPresence-50x.png" alt="Image" title="Image" class="leftImage"
                    style="width: 50px; height: 50px;" runat="server" />
                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Site">
                    <iac:InternetLinkTypeDropDown ID="drpnetProviders" runat="server" />&nbsp; <span id="Span4" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalNetProviders" ValidationGroup="save" ControlToValidate="drpnetProviders" RenderAsBlockElement="false" />
                </Item>
				<Item Text="URL">
                <asp:TextBox runat="server" ID="txtUrl" Width="87%" Height="20px"/>&nbsp; <span id="Span3" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ID="rfvalURL" ValidationGroup="save" ControlToValidate="txtUrl" RenderAsBlockElement="false" /></Item>
                </iac:InputContainer></div>
            <div style="padding-left: 116px; padding-top: 10px;">
                <span class="updateButton" style="float: left;">
                    <asp:LinkButton ID="btnSave" runat="server" ValidationGroup="save"></asp:LinkButton></span>
                <span class="cancelButton" style="float: left; margin-left: 10px;margin-top:3px;"><a href="javascript:cancelOnClick();">
                </a></span>
            </div>
        </div>
        <div class="editLink" style="display: none;">
            <div style="padding-top: 10px; padding-left: 15px;">
                <img id="Img2" src="~/images/netPresence-50x.png" alt="Image" title="Image" class="leftImage"
                    style="width: 50px; height: 50px;" runat="server" />
                <asp:HiddenField runat="server" ID="hfIlID" Value="test" />
                <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
                <Item Text="Site">
                    <iac:InternetLinkTypeDropDown ID="drpnetProvidersUpdate" runat="server" />&nbsp; <span id="Span2" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server" ValidationGroup="update" ControlToValidate="drpnetProvidersUpdate" RenderAsBlockElement="false" />
                </Item>
				<Item Text="URL"><asp:TextBox runat="server" ID="txtUrlUpdate" Width="87%" Height="20px" />&nbsp; <span id="Span1" style="color:Red" >*</span> <iac:IARequiredFieldValidator runat="server"  ValidationGroup="update" ControlToValidate="txtUrlUpdate" RenderAsBlockElement="false" /></Item>
                </iac:InputContainer></div>
            <div style="padding-left: 116px; padding-top: 10px; float:left;">
                <span class="updateButton" style="float: left;">
                    <asp:LinkButton ID="btnUpdate" runat="server" ValidationGroup="update"></asp:LinkButton></span>
                <span class="cancelButton" style="float: left; margin-left: 10px;margin-top:3px;"><a href="javascript:cancelUpdateOnClick();">
                </a></span>
            </div>
        </div>
    </iac:FieldSet>
    <asp:HiddenField ID="hdfUrl" runat="server" />
    <asp:HiddenField ID="hdfnetProvider" runat="server" />
</div>
<div style="padding-left: 15px; padding-right: 17px;" class="linkList">
    <asp:Repeater runat="server" ID="NetPresenceRepeater" >
        <HeaderTemplate>
        </HeaderTemplate>
        <SeparatorTemplate>
        </SeparatorTemplate>
        <ItemTemplate>
            <div style="clear: both; padding-top: 5px; float: right; margin-right: -2px;">
                <div class="inner">
                    <table>
                        <tr>
                            <td title="Edit" class="editButton">
                                <a href="javascript:editOnClick('<%# ((IntelArcade.Common.InternetLink)Container.DataItem).InternetLinkID%>','<%# ((IntelArcade.Common.InternetLink)Container.DataItem).LinkType%>','<%# ((IntelArcade.Common.InternetLink)Container.DataItem).Url%>')">
                                </a>
                            </td>
                            <td title="Delete" class="deleteButton" style="padding-left: 10px;">
<%--                                <iac:ConfirmationLinkButton runat="server" Text="" ID="RemoveLink" CommandName="Delete"
                                    OnCommand="EditLink_Command" CommandArgument='<%# ((IntelArcade.Common.InternetLink)Container.DataItem).InternetLinkID%>' />--%>
                                    <iac:ConfirmationLink runat="server" ReturnValue='<%# ((IntelArcade.Common.InternetLink)Container.DataItem).InternetLinkID%>' OnClientClose="_onDelete_WindowClose"></iac:ConfirmationLink>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="rptItem" style="margin: 12px;">
                <div class="itemHeader">
                    <div class="inner">
                    </div>
                </div>
                <div class="itemBody" id="divPBody" runat="server">
                    <div class="inner">
                        <p>
                            <img id="Img1" src="<%# GetImageUrl(Container.DataItem)%>" title="Image" class="leftImage"
                                style="width: 50px; height: 50px;" runat="server" />
                            <div style="padding-top: 4px;">
                                <h1 style="font-size: large">
                                    <%# GetLinkTypeName(Container.DataItem)%></h1>
                            </div>
                            <div style="padding-top: 2px;">
                                <span style="padding-left: 2px;"><a target="_blank" href="<%# Eval("Url") %>">
                                    <%# Eval("Url") %></a></span></div>
                        </p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
        </FooterTemplate>
    </asp:Repeater>
</div>
