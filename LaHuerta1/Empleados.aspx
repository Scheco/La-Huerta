<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Empleados.aspx.cs" Inherits="Empleados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="App_Themes/Tema1/css/bootstrap.min.css" rel="stylesheet" />
     <script src="App_Themes/Tema1/js/bootstrap.js"></script>
     <script src="App_Themes/Tema1/js/jquery.min.js"></script>
     <script src="App_Themes/Tema1/js/bootstrap.min.js"></script>
     <script src="App_Themes/Tema1/js/pooper.min.js"></script>
     <link href="App_Themes/Tema1/css/bootstrap.css" rel="stylesheet" />
     <title>Empleados</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center alert alert-success">
           <h1 class="">REGISTROS DE EMPLEADOS</h1>
        </div>
        <div class="row">

        <div class="col-sm-4 mx-auto d-block">
            <h3>Agua Purificadora La Huerta</h3>
           <img src="App_Themes/Tema1/img/trabajador1.jpg" class="mx-auto d-block img-fluid" alt="cinque terre" width="200" height="900"/>
            <p class="text-justify">Lo primero que necesitas saber es que este proceso varia dependiendo de las características del agua que selecciones para purificar. Así es, no toda el agua tiene las mismas propiedades, y por ende no cualquiera es apta para ser purificada. El agua que utilices deberá cumplir con el grado de potabilidad establecido en la norma 127 de la Secretaría de Salud, en la cual se especifican los límites máximos permisibles físicos, químicos y microbiológicos que debe tener el agua que será destinada al consumo humano; siendo un poco más precisos nos referimos a la concentración de sales y minerales que existen en ella y que determinan si el agua es pesada o ligera.</p>
            <div  class="container">
          
              
            </div>
     <div class="container">
       <div class="col-sm-5">
                   <asp:Label runat="server">Nombre:</asp:Label>
                   <asp:TextBox runat="server"  class="form-control" ID="Nombre" Font-Names="nick"></asp:TextBox>
                   <asp:Label runat="server">Apellidos: </asp:Label>
                   <asp:TextBox runat="server"  class="form-control" ID="Apellidos"></asp:TextBox>
                   <asp:Label runat="server">Tipo: </asp:Label>
                   <asp:TextBox runat="server" class="form-control" ID="Tipo"></asp:TextBox>
                   <asp:Label runat="server">N° de Licencia: </asp:Label>
                   <asp:TextBox runat="server" class="form-control" ID="Licencia"></asp:TextBox>
                   <asp:Label runat="server">Edad: </asp:Label>
                   <asp:TextBox runat="server" class="form-control" ID="Edad"></asp:TextBox>
                  
                   
                   <br />
                   
                   <asp:Button  Text="Registar mi empresa" href="#" runat="server" class="btn btn-primary" OnClick="Unnamed6_Click1" />
           </div>
      
      </div>
           
            </div>
           
            <div class="col-sm-4 align-content-center">
                <h3 class="text-center">Garrafones la Huerta</h3>
          <img src="App_Themes/Tema1/img/trabajador3.png" class="mx-auto d-block img-fluid" alt="cinque terre" width="200" height="500"/>
                                        <h2 class="text-center">~~EL AGUA LA HUERTA~~</h2>
                              <p class="text-justify ">El agua ayuda a desintoxicar el cuerpo y a hidratarlo evita la deshidratación,
                   la cual puede hacer que nuestro metabolismo se haga más lento. Por lo tanto tomar sufiente 
                  agua también es un paso muy importante para poder bajar de peso.</p>
                <img src="App_Themes/Tema1/img/trabajador4.jpg" class="mx-auto d-block img-fluid " alt="cinque terre" width="200" height="800" />
                    <%--Tabla de consultar Empleados--%>
                <div>
             <h4>Tabla de Empleados</h4>
                      <asp:GridView runat="server" ID="datosEmpleados" class="table" AutoGenerateColumns="false" > 
                <Columns>
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" ReadOnly="true"  />
                    <asp:BoundField DataField="apellidos" HeaderText="Apellidos" ReadOnly="true" />
                    <asp:BoundField DataField="tipo" HeaderText="Telefono"  ReadOnly="true"/>
                    <asp:BoundField DataField="licencia" HeaderText="Licencia"  ReadOnly="true"/>
                    <asp:BoundField DataField="edad" HeaderText="Edad" ReadOnly="true" />

                    <%--Seccion nueva eliminar--%>
                    <asp:ButtonField CommandName="EliminaEmpresa" HeaderText="Accion"  Text="Eliminar"/>
                    <asp:ButtonField CommandName="ModificaEmpresa" HeaderText="Accion"  Text="Modificar"/>
                </Columns>

            </asp:GridView>
         </div>
          </div>
            
    </form>
</body>
</html>
