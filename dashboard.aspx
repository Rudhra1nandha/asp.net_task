<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="webform_task_aspnet.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="dashboard.css">
</head>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    display: flex;
    min-height: 100vh;
}

.sidebar {
    width: 250px;
    background-color: #333;
    color: white;
    padding-top: 20px;
}

.sidebar .logo {
    text-align: center;
    margin-bottom: 30px;
}

.sidebar .menu {
    list-style: none;
    padding: 0;
}

.sidebar .menu li {
    padding: 15px;
    border-bottom: 1px solid #444;
}

.sidebar .menu li a {
    color: white;
    text-decoration: none;
    display: block;
}

.sidebar .menu li a:hover {
    background-color: #555;
}

.content {
    flex-grow: 1;
    padding: 20px;
}

.header {
    background-color: #f4f4f4;
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.header h1 {
    margin: 0;
}

.main {
    margin-top: 20px;
}

footer {
    text-align: center;
    padding: 10px;
    background-color: #333;
    color: white;
    position: fixed;
    bottom: 0;
    width: 100%;
}
    </style>
<body>
  
      <div class="sidebar">
        <div class="logo">
            <h3>Dashboard</h3>
        </div>

        <!-- Sidebar Menu -->
        <ul class="menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">Profile</a></li>
            
            <% if (User.IsInRole("Admin")) { %>
                <li><a href="manage-users.aspx">Manage Users</a></li>
                <li><a href="settings.aspx">Settings</a></li>
            <% } %>
            
            <% if (User.IsInRole("Employee")) { %>
                <li><a href="tasks.aspx">My Tasks</a></li>
            <% } %>

            <li><a href="logout.aspx">Logout</a></li>
        </ul>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <div class="header">
            <h1>Welcome, <%:Session["Name"] %></h1>
        </div>
        <form id="form1" runat="server">
       <div class="wrapper">
       <br /> 
   </div>
      <div>
   

          <%--<asp:Label ID="Label1" runat="server" Text="No. Employe"></asp:Label><% %>--%>

    <asp:GridView ID="GridView2" runat="server" BackColor="#336699" BorderColor="#CCFFFF" ForeColor="White" Width="851px" Height="165px"></asp:GridView>
     </div>

 </form>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 AI tech pvt ltd.</p>
    </footer>





    </form>
</body>
</html>
