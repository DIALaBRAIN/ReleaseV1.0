<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UploadPhotoCrop.ascx.cs" Inherits="IntelArcade.WebApp.UserControls.UploadPhotoCrop" %>

<link href="../Styles/crop/jquery.Jcrop.css" rel="stylesheet" type="text/css" />
 
    <script type="text/javascript" src="../Client/crop/jquery.Jcrop.js"></script>
    <script type="text/javascript">

        function pageLoad(sender, args) {
            var jcrop_api;
            jQuery('#<%= imgCrop.ClientID %>').Jcrop({

                onSelect: storeCoords,
                setSelect:   [ 0, 0, 125, 125 ]
            }, function () {

                jcrop_api = this;
                jcrop_api.animateTo([0, 0, 125, 125]);


            });

            $('.imms').mouseover(function () { $(this).stop(true, true).animate({ "opacity": 0.7 }); });
            $('.imms').mouseout(function () { $(this).stop(true, true).animate({ "opacity": 1 }); });

           
            jQuery('#<%= X.ClientID %>').val(0);

            jQuery('#<%= Y.ClientID %>').val(0);

            jQuery('#<%= W.ClientID %>').val(125);

            jQuery('#<%= H.ClientID %>').val(125);

        }



        function storeCoords(c) {

            jQuery('#<%= X.ClientID %>').val(c.x);

            jQuery('#<%= Y.ClientID %>').val(c.y);

            jQuery('#<%= W.ClientID %>').val(c.w);

            jQuery('#<%= H.ClientID %>').val(c.h);

        };

        function imageSelect(id) {
            //    var url=document.getElementById(id).
            alert("Image is successfully Deleted");


        }

    

    </script>
  

    <form id="form1">
   <h3 style="font-size:12px;margin-left:0px;color:#1d438a">Make A Thumbnail - <span style="font-size:11px;color:#666666">This version of your public profile picture will appear around the site. </span>        <asp:Label ID="Labelwarn" Visible="false" style="color:Red;font-size:11px;" runat="server" Text=" - To prevent your image being stretched, please load an image of at least 125px square."></asp:Label>
 </h3>
    <table style="margin-left: 14px">
   
        <tr valign="top">
            <td class="style1">
                <div>
                    <asp:Panel ID="pnlCrop" runat="server" Visible="false" Style="margin-right: 0px">
                        <asp:Image style="-webkit-box-shadow: 0 8px 6px -6px black;
	   -moz-box-shadow: 0 8px 6px -6px black;
	        box-shadow: 0 8px 6px -6px black;" ID="imgCrop" runat="server" />
                        <asp:HiddenField ID="X" runat="server" />
                        <br />
                        <asp:HiddenField ID="Y" runat="server" />
                        <asp:HiddenField ID="W" runat="server" />
                        <asp:HiddenField ID="H" runat="server" />
                    </asp:Panel>
                   
                </div>
            </td>
            <td valign="baseline" style="padding-left:20px">
               
<%--                 <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>--%>
         <asp:ImageButton ForeColor="Transparent" AlternateText=""  width ="94px"
 height="32px" CssClass="crop2" ID="btnCrop" runat="server"
                     />
            
             
                       <br />
                        <asp:Panel ID="pnlCropped" runat="server" Visible="false">
                        <asp:Image style="-webkit-box-shadow: 0 8px 6px -6px black;
	   -moz-box-shadow: 0 8px 6px -6px black;
	        box-shadow: 0 8px 6px -6px black;"  ID="imgCropped" runat="server" /><br />
                        <asp:ImageButton  ForeColor="Transparent" AlternateText="" CssClass="cropconfirm" ID="Buttonsace" runat="server" style="position:relative;margin-top:17px;left:0px"
                    Text="set as profile"  />
                    </asp:Panel>
                       </td><td valign="baseline">
               

                
<%--             </ContentTemplate></asp:UpdatePanel>--%>
                       </td>
        </tr>
    </table>  
    </form>


