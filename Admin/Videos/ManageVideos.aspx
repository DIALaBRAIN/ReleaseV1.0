<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true"
    CodeBehind="ManageVideos.aspx.cs" Inherits="IntelArcade.WebApp.Admin.Videos.ManageVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div>
        <tel:RadGrid ID="rgVideos" AllowPaging="true" PageSize="10" runat="server">
            <MasterTableView AutoGenerateColumns="false" ShowHeader="false">
                <Columns>
                    <tel:GridBoundColumn DataField="ResourceSettingName" UniqueName="ResourceSettingName" HeaderText="ResourceSettingName">
                    </tel:GridBoundColumn>
                    <tel:GridTemplateColumn>
                        <ItemTemplate>
                            <iac:DialogCommand Type="UploadVideo" runat="server" Argument='<%# GetContextualVideoID((long)Eval("ResourceSettingID"),(IntelArcade.Common.ResourceInstanceIdentifier)Eval("ResourceInstanceID")) %>' Text="Upload"></iac:DialogCommand>
                        </ItemTemplate>
                    </tel:GridTemplateColumn>

                </Columns>
            </MasterTableView>
        </tel:RadGrid>
    </div>
</asp:Content>
