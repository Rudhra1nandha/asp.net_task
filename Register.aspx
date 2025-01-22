<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="webform_task_aspnet.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en" dir="ltr">
<head runat="server">
     <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title> Registration </title> 
 <link rel="stylesheet" href="register.css">
</head>

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
/*  height: 52px;*/
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
  <h2>Register Page</h2> <br/>
  
    <div class="input-box">
      <asp:TextBox ID="Txt_name" runat="server" type="text" placeholder="Enter your name" required></asp:TextBox>
    </div><br/>

          

    <div class="input-box">
    <asp:TextBox ID="Txt_email" runat="server" type="email" name="email"  pattern="[^ @]*@[^ @]*" placeholder="Enter your email" required></asp:TextBox>
    </div><br/>
    <div class="input-box">
      Role:   <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Employee</asp:ListItem>
        </asp:DropDownList>
    </div><br/>
    <div class="input-box">
      <asp:TextBox ID="Txt_native" runat="server" type="text" placeholder="Native" required></asp:TextBox>
    </div> <br/>
    <div class="input-box">
      <asp:TextBox ID="Txt_pincode" runat="server" type="text" placeholder="Pin-Code" required></asp:TextBox>
    </div> <br/>
    <div class="input-box">
      <asp:TextBox ID="Txt_pass" runat="server" type="password" placeholder="Create password" required></asp:TextBox>
    </div><br/>
    <div class="input-box">
      <asp:TextBox ID="Txt_cpass" runat="server" type="password" placeholder="Confirm password" required></asp:TextBox>
    </div> <br />
    <div class="policy">
        <asp:CheckBox ID="CheckBox1" runat="server" />
     
      <h3>I accept all terms & condition</h3>
    </div> <br/>
    <div class="input-box button">
      <asp:Button ID="Button1" runat="server" Text="Register Now" OnClick="Button1_Click" />
    </div><br />
    <div class="text">
      <h3>Already have an account? <a href="Login.aspx">Login now</a></h3>
    </div>
 
</div>
    </form>
</body>
</html>
