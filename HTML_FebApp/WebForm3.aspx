<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="HTML_FebApp.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js">
</script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#btnValidate").click(function () {
            var EmailText = $("#txtEmail").val();
            if ($.trim(EmailText).length == 0) {
                alert("Please enter email address");
                return false;
            }
            if (validateEmail(EmailText)) {
                alert('Valid Email Address');
                return true;
            }
            else {
                alert('Invalid Email Address');
                return false;
            }
        });
    });
    function validateEmail(sEmail) {
        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (filter.test(sEmail)) {
            return true;
        }
        else {
            return false;
        }
    }
</script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
<asp:TextBox ID="txtEmail" runat="server"/>
<asp:Button ID="btnValidate" runat="server" Text="Validate" />
</div>
    </form>
</body>
</html>
