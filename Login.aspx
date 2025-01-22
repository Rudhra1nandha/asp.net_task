<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webform_task_aspnet.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title>Log In</title>
</head>
    <style>
         <style>
    @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
body{
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #4070f4;
}
.wrapper{
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  font-weight: 600;
  color: #333;
}
.wrapper h2::before{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
}
.wrapper form .input-box{
 
  margin: 18px 0;
}
form .input-box input{
  
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}
   </style>

<body>
    <form id="form1" runat="server">
        <div class="wrapper">
    <h2>LogIn </h2>
    <br />
    <form action="#">
                <div class="input-box">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Employee</asp:ListItem>
            </asp:DropDownList>
                   
</div><br /><br />
      <div class="input-box">
                <asp:TextBox ID="Txt_username" runat="server" style="padding:7px" type ="text" placeholder="Enter your email" required></asp:TextBox>

      </div><br /><br />
      <div class="input-box">
                <asp:TextBox ID="txt_pass" runat="server"  style="padding:7px" type="password" placeholder="Create password" required></asp:TextBox>

      </div><br /><br />
      
      
     
      <div class="input-box button">
          <asp:Button ID="Button2" runat="server" Text="LogIn" style="padding:7px; background-color:cornflowerblue;color:white"  OnClick="Button2_Click" />
      </div><br /><br />
        
      <div class="text">
        <h3>Dont Have an account? <a href="Register.aspx" >Register now</a></h3>
      </div>
    </form>
  </div>
    </form>
</body>
 
</html>
