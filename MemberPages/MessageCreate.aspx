<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="MessageCreate.aspx.cs"
    MasterPageFile="~/StandardMaster.master" Inherits="IntelArcade.WebApp.MessageCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server">
<script type="text/javascript">
    function validationFailed(sender, eventArgs) {
        $(".ErrorHolder").append("<p>file type not supported or file size limit exceeded.</p>").fadeIn("slow");
    }
    function OnFileUploadRemoved(sender, args) {
        $(".ErrorHolder").empty().fadeOut("slow");
    }

</script>
    <h2 style="font-size: 1.2em">
        <%=PageTitle %></h2>
    <div class="messageDetail">
        <h1>
            <asp:Literal ID="MessageSubject" runat="server" /></h1>
        <div style="float: left;">
            <iac:LabelledText ID="MessageDisplayName" runat="server" />
        </div>
        <div style="float: right;">
            <b>
                <asp:Literal ID="MessageDate" runat="server" /></b>&nbsp;<asp:Literal ID="MessageTime"
                    runat="server" /></div>
        <div style="clear: both;">
            <hr />
        </div>
        <div>
            Warning : Files uploaded will be auto deleted in 30 calendar days. We are sorry but currently there is no warning before old files are deleted.
        </div>
        <div style="padding-left:10px">
            <tel:RadAsyncUpload runat="server" ID="DocumentUpload" MaxFileInputsCount="1" OnClientValidationFailed="validationFailed"
            OnClientFileUploadRemoved="OnFileUploadRemoved" >
            <%--<FileFilters>
              <tel:FileFilter Description="Images(jpeg;jpg;gif)" Extensions="jpeg,jpg,gif" />
            </FileFilters>--%>
            <%--<FileFilters>
             <telerik:FileFilter Description="Images(jpeg;jpg;gif)" Extensions="jpeg,jpg,gif" />
            </FileFilters>--%>
            </tel:RadAsyncUpload>
        </div>
        <div class="ErrorHolder" style="border: solid 2px #955e0d; padding:10px; margin:0px 10px 10px 10px;
            display: none;">
        </div>
        <div style="padding-left: 10px; padding-right: 10px; text-align: justify;">
            <asp:TextBox ID="MessageBody" Width="100%" Height="100px" TextMode="MultiLine" runat="server" /></div>
        <hr />
    </div>
    <div style="float: right; padding: 10px;">
        <span class="smallButton"><asp:Button runat="server" ID="SubmitButton" Text="Submit" /></span>&nbsp;<span class="smallButton"><asp:Button runat="server"
            ID="CancelButton" CausesValidation="false" Text="<%$ Resources:Buttons,GenericCancel %>" /></span></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
