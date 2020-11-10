<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="DoanManhTuyen.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <title>Classroom Management</title>
<!---------------->
	
</head>

<body>
<form runat="server">
<div id="container">
    <div id="NavBar">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">
                  <img src="logo.png" width="45" height="45" class="d-inline-block align-top" alt="">&emsp;<span style="color:white">Classroom Management</span></a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span> </button>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="mr-auto"></div>
    
             <ul class="navbar-nav my-2 my-lg-0">
            <li class="nav-item dropdown">
             <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"style="color:white"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
             <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Change password</a>
            <a> <asp:LinkButton ID="btn_logout" runat="server" OnClick="btnlogout_Click" class="dropdown-item">Log out</asp:LinkButton> </a>          
             </div>
            </li>
             </ul>
            </div>     
            </nav>
    </div><!--#NavBar-->
    <div class="row" id="control">
        <div id="box1" class="col">
            <div class="btn-group" role="group" aria-label="">
                <asp:Button ID="btn_conn" runat="server" CssClass="btn btn-outline-dark" Text="CONNECT" OnClick="btn_conn_Click" />
                <asp:Button ID="btn_disconn" runat="server" CssClass="btn btn-outline-dark" Text="DISCONNECT" OnClick="btn_disconn_Click"/></div>
         
            <p><div class="btn-group" role="group" aria-label="">
                <asp:Button ID="btn_fanon" runat="server" CssClass="btn btn-outline-dark" Text="ON" OnClick="btn_fanon_Click" />
                <asp:Button ID="btn_fanoff" runat="server" CssClass="btn btn-outline-dark" Text="OFF" OnClick="btn_fanoff_Click" /></div></p>
            <p><div class="btn-group" role="group" aria-label="">
                <asp:Button ID="btn_open" runat="server" CssClass="btn btn-outline-dark" Text="OPEN" OnClick="btn_open_Click" />
                <asp:Button ID="btn_close" runat="server" CssClass="btn btn-outline-dark" Text="CLOSE" OnClick="btn_close_Click" /></div></p>
            <p><div class="btn-group" role="group" aria-label="">
                <asp:Button ID="btn_alarmin" runat="server" CssClass="btn btn-outline-dark" Text="IN" OnClick="btn_alarmin_Click" />
                <asp:Button ID="btn_alarmout" runat="server" CssClass="btn btn-outline-dark" Text="OUT" OnClick="btn_alarmout_Click" /></div></p>
            <p><div class="btn-group" role="group" aria-label="">
                <asp:Button ID="btn_lampon" runat="server" CssClass="btn btn-outline-dark" Text="ON" OnClick="btn_lampon_Click" />
                <asp:Button ID="btn_lampoff" runat="server" CssClass="btn btn-outline-dark" Text="OFF" OnClick="btn_lampoff_Click" /></div></p>
        </div>
        <div id="box2" class="col">
               
        </div>
    </div><!--#row-->
</div><!--#container-->
  

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!-------------------------->
 
    
    
</form>
</body>
</html>
