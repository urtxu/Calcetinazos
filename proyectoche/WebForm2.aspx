<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="proyectoche.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Registro</title>

</head>
<body>
    <form runat="server">
        <div class="form-row">
    <div class="form-group col-md-6">
      <label for="txt_Nombre">Nombre</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txt_Nombre" placeholder="Nombre"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="txt_Apellido">Apellido</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="txt_Apellido" placeholder="Apellido"></asp:TextBox>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="txt_email">Email</label>
       <asp:TextBox runat="server" CssClass="form-control" ID="txt_Email" placeholder="Email"></asp:TextBox>
    </div>
    <div class="form-group col-md-6">
      <label for="txt_Contrasena">Contraseña</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_Contrasena" placeholder="Contrasena" TextMode="Password"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <label for="txt_Direccion">Direccion</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_Direccion" ></asp:TextBox>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="txt_Población">Población</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_poblacion" ></asp:TextBox>
    </div>
  <div class="form-row">
     <div class="form-group col-md-6">
      <label for="txt_Municipio">Municipio</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_municipio" ></asp:TextBox>
    </div>
    <div class="form-group col-md-2">
      <label for="txt_CP">Codigo Postal</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_CP" ></asp:TextBox>
    </div>
    <div class="form-group col-md-2">
      <label for="txt_telefono">Telefono</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="txt_telefono" placeholder="Telefono"></asp:TextBox>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      </label>
    </div>
  </div>
      <asp:Button ID="bt_registrar" runat="server" CssClass="btn btn-primary" Text="Registrar" OnClick="bt_registrar_Click" />
</form>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
