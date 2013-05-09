<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ResourceEdit.aspx.cs" MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ResourceEdit" %>
<%@ Register src="../UserControls/VATSpecifier.ascx" tagname="VATSpecifier" tagprefix="iac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
    <script language="javascript" type="text/javascript">
        function _iac_SbjSchOnClientClose(oWnd, args) {
            //get the transferred arguments
            var arg = args.get_argument();
            if (arg) {
                var f = document.getElementById("<%= Filename.ClientID %>");
                f.value = arg.Filename;
                f = document.getElementById("<%= FilenameDisplay.ClientID %>");
                f.value = arg.Filename;

                var i = document.getElementById("<%= ResourceInstanceID.ClientID %>");
                i.value = arg.ResourceID;
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <h2><%=PageTitle %></h2>
<asp:UpdatePanel runat="server" ID="UpdatePanel" ChildrenAsTriggers="True" RenderMode="Inline" UpdateMode="Always">
<ContentTemplate>
<asp:HiddenField id="ResourceInstanceID" runat="server"></asp:HiddenField>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Resource Type" class="formData">
        <iac:InputContainer runat="server" ID="InputContainer2" Columns="1">
            <Item Text="<%$ Resources:Labels,ResourceType%>">
                <asp:DropDownList ID="ResourceType" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="" />
                    <asp:ListItem Value="1" Text="Document (*.pdf, *.doc, *.xls)" />
                    <asp:ListItem Value="2" Text="Video (*.flv)" />
                </asp:DropDownList>&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalResourceType" ControlToValidate="ResourceType" RenderAsBlockElement="false" /></Item>
        </iac:InputContainer>
    </iac:FieldSet>
    
    <iac:FieldSet runat="server" ID="FieldSet2" Title="Resource Details" class="formData">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
            <iac:InputContainerItem runat="server" ID="FileSection" Text="<%$ Resources:Labels,Filename%>">
                <LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalFilename" ControlToValidate="Filename" RenderAsBlockElement="true" /></LabelCell>
                <asp:TextBox runat="server" style="border:0;" ReadOnly="true"  ID="FilenameDisplay" Width="350px" /><asp:TextBox runat="server" ID="Filename" style="display:none;" />
                <br />   
                <iac:DialogCommand ID="UploadCommand" Type="UploadVideo" OnClientClose="_iac_SbjSchOnClientClose" Text="Upload Resource" runat="server"/>
            </iac:InputContainerItem>
            <Item Text="<%$ Resources:Labels,Title%>"><asp:TextBox runat="server" ID="ResourceTitle" Width="350px" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalTitle" ControlToValidate="Title" RenderAsBlockElement="false" /></Item>
            <Item Text="<%$ Resources:Labels,Price%>"><iac:CurrencyBox runat="server" ID="Price" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalPrice" ControlToValidate="Price" RenderAsBlockElement="false" /></Item>
            <Item Text="Vat / Tax Rate"><iac:TaxRateDropDown ID="DropDownListVAT" runat="server" />&nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalVAT" ControlToValidate="DropDownListVAT" RenderAsBlockElement="false" /></Item></Item>
            <Item Text="<%$ Resources:Labels,Description%>">
                <LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalDescription" ControlToValidate="Description" RenderAsBlockElement="true" /></LabelCell>
                <asp:TextBox runat="server" ID="Description" Rows="10" TextMode="MultiLine" Width="90%" />
            </Item>             
        </iac:InputContainer>
    </iac:FieldSet>
    <iac:FieldSet runat="server" ID="FieldSet3" Title="Associated Subjects" class="formData">
        <div class="left_box">
            <table border="0" cellpadding="0" cellspacing="0">
                <tr><td><label>Available Subjects</label></td><td><label>Associated Subjects</label></td></tr>
                <tr>
                    <td>
                        <tel:RadListBox runat="server" ID="RadListBoxSource" Height="200px" Width="290px" SelectionMode="Multiple" Sort="Ascending" AllowReorder="false" AllowTransfer="true" TransferToID="RadListBoxDestination" />
                    </td>
                    <td>
                        <tel:RadListBox runat="server" ID="RadListBoxDestination" SelectionMode="Multiple" Sort="Ascending" AllowReorder="false" Height="200px" Width="290px" />
                    </td>
                </tr>
            </table>    
        </div>
    </iac:FieldSet>
</ContentTemplate>    
</asp:UpdatePanel>

    <div class="buttonContainer">
    <asp:Button runat="server" ID="SubmitButton" Text="Submit" />&nbsp;<asp:Button runat="server" ID="CancelButton" CausesValidation="false" Text="<%$ Resources:Buttons,GenericCancel %>" />
    </div>           
</asp:Content>
