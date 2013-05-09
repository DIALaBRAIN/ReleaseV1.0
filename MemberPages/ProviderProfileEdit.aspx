<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="ProviderProfileEdit.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.ProviderProfileEdit"
    ValidateRequest="false" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
   
   
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <iac:FieldSet runat="server" ID="FieldSet1" Title="Provider Profile Edit" class="formData">
        <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
        <Item Text="<%$ Resources:Labels,Introduction%>">
            <LabelCell><iac:IARequiredFieldValidator runat="server" ID="rfvalProviderSummary" ControlToValidate="ProviderSummary" RenderAsBlockElement="true" /></LabelCell>
                <asp:TextBox CssClass="input_profile_edit" Font-Names="Tahoma, helvetica, Arial, Sans-Serif" ForeColor="#414141" Font-Size="1.2em" runat="server" ID="ProviderSummary" Rows="8" TextMode="MultiLine" Width="100%" />
                <div><asp:CustomValidator runat="server" ID="valProviderSummary" ControlToValidate="ProviderSummary"></asp:CustomValidator></div>
            </Item>
        <Item Text="<%$ Resources:Labels,AdditionalInformation%>"><asp:TextBox CssClass="input_profile_edit" Font-Names="Tahoma, helvetica, Arial, Sans-Serif" ForeColor="#414141" Font-Size="1.2em" runat="server" ID="ProviderDetail" Rows="10" TextMode="MultiLine" Width="100%" />
        <div>
            <asp:CustomValidator ID="valProviderDetail" runat="server" ControlToValidate="ProviderDetail"></asp:CustomValidator>
        </div>
        </Item>
        </iac:InputContainer>
    </iac:FieldSet>
    <div style="float: left; padding-left: 175px;">
        <%--<asp:ImageButton runat="server" ID="SubmitButton" ImageUrl="~/images/btn_create.png" />--%><table>
            <tr>
                <td class="updateButton">
                    <asp:LinkButton ID="SubmitButton" runat="server" Text=""></asp:LinkButton>
                </td>
                <td title="Cancel" class="cancelButton" style="padding-left: 10px;">
                    <%--<asp:ImageButton runat="server" ID="CancelButton" CausesValidation="false" ImageUrl="~/images/btn_cancel.png" />--%><asp:LinkButton
                        ID="CancelButton" CausesValidation="false" runat="server" Text=""></asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>


       <script type="text/javascript">
           $(document).ready(function () {
               var MaxLength = 2000;
               $("#<%=ProviderSummary.ClientID%>").keypress(function (e) {
                   if ($(this).val().length >= MaxLength) {
                       e.preventDefault();
                       var ttt = $(this).val().substring(0, MaxLength - 1);
                       $(this).val(ttt);
                   }
               });

               var MaxLength1 = 6000;
               $("#<%=ProviderDetail.ClientID%>").keypress(function (e) {
                   if ($(this).val().length >= MaxLength1) {
                       e.preventDefault();
                       var ttt = $(this).val().substring(0, MaxLength1 - 1);
                       $(this).val(ttt);
                   }
               });
           });
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
