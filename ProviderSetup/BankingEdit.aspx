<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/StandardMaster.master"
    CodeBehind="BankingEdit.aspx.cs" Inherits="IntelArcade.WebApp.ProviderSetup.BankingEdit" %>
    <%@ Register Src="../UserControls/ProviderSetupNextPreviousNavigator.ascx" TagName="ProviderSetupNextPreviousNavigator"
    TagPrefix="uc3" %>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentHead">
    <script type="text/javascript">
        var next = false;
        function NextClick() {
          next = true;
           
        }
        function _passwordOnClientClose(oWnd, args) {
            $('#<%=lblErrorEmail.ClientID%>').html(""); 
            if (args == null) return;
            var arg = args.get_argument();
            if (arg.DoPostback) {
                var oldEmailVal = $('#<%= hdfOldEmail.ClientID %>').val();
                var emailaddressVal = $('#<%= txtEmail.ClientID %>').val();
                if (oldEmailVal != emailaddressVal) {
                    if (emailaddressVal != "") {
                        if (checkEmail(emailaddressVal)) {
                            btn = document.getElementById("<%= SubmitButtontyyy.ClientID %>");
                            btn.click();
                        }
                        else {
                            $('#<%=lblErrorEmail.ClientID%>').html("Invalid Email Address"); 

                        }
                    }
                   
                        
                }
                else {
                    btnCancel = document.getElementById("<%= CancelButton.ClientID %>");
                    btnCancel.click();
                }
            }
        }
        
        function UnTip() {
            var rr = $('#<%= txtEmail.ClientID %>').val();
            if (rr=="") {
          
                $('#<%=lblErrorEmail.ClientID%>').html("");
            }
        }
        function validateform() {
        
            $('#<%=lblErrorEmail.ClientID%>').html("");
            var oldEmailVal = $('#<%= hdfOldEmail.ClientID %>').val();
            var emailaddressVal = $('#<%= txtEmail.ClientID %>').val();

            if (checkEmail(emailaddressVal)) {
              
            }
            else {
                if (emailaddressVal != "") {
                    $('#<%=lblErrorEmail.ClientID%>').html("Invalid Email Address");
                    return false;
                }
               

            }
        
            if (oldEmailVal == emailaddressVal || emailaddressVal=="") {
                if (next == true) {
                    btnNxt = document.getElementById("<%= btnNext.ClientID %>");
                    btnNxt.click();
                    return false;
                }else
                   return false;
            }
            else
                return true;
        }

        function _passwordOnClientClose2(oWnd, args) {
            $('#<%=lblErrorEmail.ClientID%>').html(""); 
            if (args == null) return;
            var arg = args.get_argument();             
            if (arg.DoPostback) {
           
                var emailaddressVal = $('#<%= txtEmail.ClientID %>').val();
                                
                if (checkEmail(emailaddressVal)) {
                        btnNxt = document.getElementById("<%= btnNext.ClientID %>");
                        btnNxt.click();
                    }
                    else {
                        $('#<%=lblErrorEmail.ClientID%>').html("Invalid Email Address"); 

                    }
                }
            }        
   
    function checkEmail(inputvalue) {
       
        var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
        if (pattern.test(inputvalue)) {
            return true;
        } else {
            return false;
        }
    }
    function _passwordOnClientOpen(oWnd, args) {
     
                    SetManualValidator();
                    var emailaddressVal = $('#<%= txtEmail.ClientID %>').val();
                    if (SetManualValidator())
                        if (Page_IsValid  && emailaddressVal!="") { alert(Page_Isvalid); }
                }

                function SetManualValidator() {
                    $.each(Page_Validators, function (index, validator) {
                if (validator.validationGroup == "ManualUpdate") {                   
                    ValidatorEnable(validator, true);
                }
            });  return false;
        }
        
        function openWin(arg) {
           url = "/Controls/EditServiceTaxDetails.aspx?";
            url += "arg=";
      
           if (arg != null)
               url += arg;
           
           var oWnd = radopen(url, "RadWindow1");
           oWnd.set_behaviors(Telerik.Web.UI.WindowBehaviors.Move + Telerik.Web.UI.WindowBehaviors.Resize);   

        }

        function validateEmail(sEmail) 
        {
  	    var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
  	    if (filter.test(sEmail)) {
  	        return true;
    	    }
    	    else {
	        return false;
	    }


	
	}
        
    </script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentBody" runat="server"> 
    <div>
        <h2 style="font-size: 1.2em">
            <%=PageTitle %></h2>
       
        
            <table style="width:100%;"><tr>
          <td style="width:190Px; position:absolute;">
                         <iac:FieldSet runat="server" ID="FieldSet10" Title="Paypal Details" class="formData"></iac:FieldSet>                            
                         </td> 
                            <td style="padding-left:190px;">    
                       <%--     <uc3:ProviderSetupNextPreviousNavigator ID="psnTop" runat="server" /> 
 <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="true"  UpdateMode="Conditional" >
        <ContentTemplate>--%>
          <span title="" class="previousButton" style="float:left; margin-left:9px; ">
        <asp:LinkButton  runat="server" ID="btnPrevious"  Text=""></asp:LinkButton></span>
    
        <asp:LinkButton  runat="server" ID="btnNext" ToolTip="Save and Go to Next"  > </asp:LinkButton>
        <span title="" onmousedown="NextClick()" class="nextButton" style="float:right;margin-right:-2px">  
        <iac:DialogCommand ID="DialogCommand2" runat="server" Type="Password" OnClientClose="_passwordOnClientClose2" >
                                    </iac:DialogCommand> 
       </span>
  <%--</ContentTemplate>
     </asp:UpdatePanel>    --%>                  </td></tr></table>

      
             
        <iac:FieldSet runat="server" ID="FieldSet1" Title="" class="formData" style="margin-left: 8px; width:100%;  margin-bottom: -10px;">
            <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0;">
                <br />
                <div style="margin-left:82px;">
                <iac:InputContainer runat="server" ID="InputContainer1" Columns="1">
                <Item Text="Paypal Email"> 
                 <asp:TextBox ID="txtEmail" onchange="javascript:UnTip()"    runat="server" CssClass="aspTextBox"/>&nbsp; <asp:Label ID="Label1" runat="server"  Text="*" ForeColor="Red" /> 
                    &nbsp;<iac:IARequiredFieldValidator runat="server" ID="rfvalEmail" ControlToValidate="txtEmail" ValidationGroup = "ManualUpdate" />
                  <asp:Label ID="lblErrorEmail" runat="server" Text="" ForeColor="Red"></asp:Label>
                   
                    </Item>
              <Item Text="">
              <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label> 
               <asp:TextBox ID="txtSeekerEmail" runat="server" CssClass="aspTextBox" Visible="false" /></Item>
                </iac:InputContainer></div>
                 <asp:HiddenField ID="hdfOldEmail" runat="server" />
          
            </div>
        </iac:FieldSet>
        <div class="buttonContainer" style="float: left; padding-left: 160px; margin-left:40px;margin-top:-40px;">
            <table>
                <tr>
                    <td >
                        <asp:LinkButton ID="SubmitButtontyyy" runat="server" Text=""  ValidationGroup = "ManualUpdate"></asp:LinkButton>
                          <span title="" class="updateButton" style="float: right; margin-right: -4px;">
                                 <iac:DialogCommand  ID="DialogCommand1" runat="server" Type="Password" OnClientClose="_passwordOnClientClose" >
                                    </iac:DialogCommand> 
                                </span>
                    </td>
                    <td title="Cancel" class="cancelButton"  style="padding-left: 10px;">
                        <asp:LinkButton ID="CancelButton" runat="server" CausesValidation="false" Text=""></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        
    </div>
    <br />

    <div style="padding-left:194px; padding-right:2px;">
  <div class="EditPageFooterLine"></div>
   <span title="" class="previousButton" style="float:left; margin-left:9px;">
                <asp:LinkButton  runat="server" ID="btnBottomPrevious"  Text="" ></asp:LinkButton></span>
      <asp:UpdatePanel ID="UpdatePanel3" runat="server" ChildrenAsTriggers="true"    UpdateMode="Conditional" >  
        <ContentTemplate>
              
           <asp:LinkButton  runat="server" ID="btnBottomNext" ToolTip="Save and Go to Next" Text=""></asp:LinkButton>  
           <span title="" onmousedown="NextClick()"  class="nextButton" style="float:right;margin-right:-2px">
        <iac:DialogCommand  ID="DialogCommand3" runat="server" Type="Password"  OnClientClose="_passwordOnClientClose2" >    </iac:DialogCommand>              
                   </span>
</ContentTemplate>
                    </asp:UpdatePanel>
             </div>
   <%--   <div style="padding-left:194px; padding-right:2px;">
     <div style="border-top: 1px solid #cfcfcf; padding: 5px 0px 5px 0; width:99%; margin-left:8px"></div>
                     <uc3:ProviderSetupNextPreviousNavigator ID="psnBottom" runat="server" />
                    </div>--%>  
                 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentRightAbove" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentRightBelow" runat="server">
</asp:Content>
