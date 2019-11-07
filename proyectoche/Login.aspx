<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_Proyecto.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
   <title>Registro</title>

</head>
<body>
     <nav class="my-nav navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Calcetinazos</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="WebForm1.aspx">Inicio <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Calcetines">Calcetines</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Login</a>
            </li>
            <li class="nav-item">
                <a class="nav-link " href="Registro.aspx">Registrate</a>
            </li>
        </ul> 
       </div>
    <div class="container navbar-expand-xl col-sm-3">
       <form class=" form-inline mr-xl-12 my-xl-12">
       <input class="form-control mr-xl-12" type="search" placeholder="Buscar" aria-label="Search" />
       <button class="btn btn-outline-success my-xl-12" type="submit">Buscar</button>
       </form>
   </div>
 </nav>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <div class="container">

        <form runat="server">
  <div class="form-group">
    <label for="exampleInputEmail1">Email</label>
    <asp:TextBox runat="server" type="email" class="form-control" id="txt_Email" aria-describedby="emailHelp" placeholder="Correo" OnTextChanged="txt_Email_TextChanged" AutoPostBack="true"/>
    <small id="emailHelp" class="form-text text-muted"></small>
  </div>
   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txt_Email" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"
            runat="server" ErrorMessage="Error"></asp:RegularExpressionValidator>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <asp:TextBox runat="server" type="password" class="form-control" id="txt_Contrasena" placeholder="Contraseña" OnTextChanged="txt_Contrasena_TextChanged" AutoPostBack="true"/>
  </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" EnableClientScript="false" runat="server" ErrorMessage="Introduce una Contraseña!" 
        ControlToValidate="txt_Contrasena"></asp:RequiredFieldValidator>
            <br /><br />
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Recúerdame</label>
  </div>
  <asp:button runat="server" ID="btnIniciar" class="btn btn-primary" Text="Iniciar Sesión" OnClick="btnIniciar_Click1"></asp:button>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</form>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    
    
        
    
</body>
</html>
