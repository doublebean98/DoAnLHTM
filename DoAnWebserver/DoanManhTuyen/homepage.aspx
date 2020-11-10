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
    <div id="NavBar">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">
                  <img src="logo.png" width="45" height="45" class="d-inline-block align-top" alt="">&emsp;<span style="color:black">Classroom Management</span></a>
             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span> </button>

             <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="mr-auto"></div>
    
             <ul class="navbar-nav my-2 my-lg-0">
                 <li><div class="btn-group" role="group" aria-label="">
                    <asp:Button ID="btn_conn" runat="server" CssClass="btn btn-link" Text="CONNECT" OnClick="btn_conn_Click" Width="112px" ForeColor="black"/>&nbsp;
                    <asp:Button ID="btn_disconn" runat="server" CssClass="btn btn-link" Text="DISCONNECT" OnClick="btn_disconn_Click" ForeColor="black"/></div></li>
            <li class="nav-item dropdown">
             <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-display="static" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"style="color:black"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
             <div class="dropdown-menu dropdown-menu-lg-right" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Change password</a>
            <a> <asp:LinkButton ID="btn_logout" runat="server" OnClick="btnlogout_Click" class="dropdown-item">Log out</asp:LinkButton> </a>          
             </div>
            </li>
             </ul>
            </div>     
            </nav>
    </div><!--#NavBar-->
    <div id="banner">
        <div id="left">BẢNG ĐIỀU KHIỂN</div>
        <div id="center">THIẾT BỊ PHÒNG HỌC</div>
        <div id="right">GIỚI THIỆU<div>
        </div>
    </div><!--banner-->
    <div id="main">
        <div id="left">
            <ul>
                <li><span style="text-align:left"><b>FAN</b></span>&emsp;&emsp;&emsp;&emsp;<div class="btn-group" role="group" aria-label="">
                    <asp:Button ID="btn_fanon" runat="server" CssClass="btn btn-secondary" Text="ON" OnClick="btn_fanon_Click" Width="70px" />&nbsp;
                    <asp:Button ID="btn_fanoff" runat="server" CssClass="btn btn-secondary" Text="OFF" OnClick="btn_fanoff_Click" Width="70px" /></div></li>
                <li><span style="text-align:left"><b>DOOR</b></span>&emsp;&emsp;&emsp;<div class="btn-group" role="group" aria-label="">
                    <asp:Button ID="btn_open" runat="server" CssClass="btn btn-secondary" Text="OPEN" OnClick="btn_open_Click" Width="70px" />&nbsp;
                    <asp:Button ID="btn_close" runat="server" CssClass="btn btn-secondary" Text="CLOSE" OnClick="btn_close_Click" Width="70px" /></div></li>
                <li><span style="text-align:left"><b>LIGHT</b></span>&emsp;&emsp;&emsp;<div class="btn-group" role="group" aria-label="">
                    <asp:Button ID="btn_lampon" runat="server" CssClass="btn btn-secondary" Text="ON" OnClick="btn_lampon_Click" Width="70px" />&nbsp;
                    <asp:Button ID="btn_lampoff" runat="server" CssClass="btn btn-secondary" Text="OFF" OnClick="btn_lampoff_Click" Width="70px" /></div></li>
                <li><span style="text-align:left"><b>ALARM</b></span>&emsp;&emsp;&nbsp;&nbsp;&nbsp;<div class="btn-group" role="group" aria-label="">
                    <asp:Button ID="btn_alarmin" runat="server" CssClass="btn btn-secondary" Text="IN" OnClick="btn_alarmin_Click" Width="60px" />&nbsp;
                    <asp:Button ID="btn_alarmout" runat="server" CssClass="btn btn-secondary" Text="OUT" OnClick="btn_alarmout_Click" Width="60px" /></div></li>
                <li>
                    <asp:Label ID="Label2" runat="server" Text="Chưa kết nối"></asp:Label></li>
            </ul>
        </div><!--#left-->
        <div id="center"></div>
        <div id="right">
            <b>Đề tài “Giám sát và điều khiển các thiết bị trong phòng học dựa trên nền WebServer” – được thực hiện bởi Đoàn Mạnh Tuyền.</b>
            <p>Hiện nay, cùng với sự phát triển của công nghệ 4.0, các hệ thông IoT đang được triển khai ngày càng rộng dãi. Chính vì vậy, em đưa ra ý tưởng về ứng dụng công nghệ IoT để kết nối và điều khiển các thiết bị phòng học bằng PLC thông qua WebServer để tạo nên một phòng học thông minh. 
                Đây là một đề tài mang tính ứng dụng cao, hoàn toàn thiết thực và có thể áp dụng thực tế trong nhà trường.</p></div>
            
        </div><!--#right-->

    </div><!--#main-->
    <div id="footer" style="color:black">Copyright&#169;Đoàn Mạnh Tuyền</div><!--#footer-->







  

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!-------------------------->
 
    
    
</form>
</body>
</html>
