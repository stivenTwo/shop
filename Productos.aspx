<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="shop.Productos" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Productos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="https://marketplace.canva.com/EAFAEOunkG0/1/0/1600w/canva-morado-moderno-tecnolog%C3%ADa-y-videojuegos-logo-2xfRaIEdz2Y.jpg" type="image/x-icon">
    <style>
        .product-container {
            margin-bottom: 20px;
        }
        .card {
            width: 100%;
            border: 1px solid #ddd; 
        }
        .card-img-top {
            height: 200px; 
            object-fit: cover; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#">Categorías</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <asp:Repeater ID="rptCategorias" runat="server" OnItemCommand="rptCategorias_ItemCommand">
                            <ItemTemplate>
                                <li class="nav-item">
                                    <asp:LinkButton ID="lnkCategoria" runat="server" CssClass="nav-link" CommandName="FiltrarPorCategoria" CommandArgument='<%# Eval("ID") %>'><%# Eval("Name") %></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <h1 class="mt-5 mb-4">Listado de Productos</h1>
            <div class="row">
                <asp:Repeater ID="rptProductos" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 product-container">
                            <div class="card d-flex flex-column justify-content-between">
                                <img class="card-img-top" src='<%# Eval("imagen") %>' alt='<%# Eval("Nombre") %>' />
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Nombre") %></h5>
                                    <p class="card-text"><%# Eval("Descripcion") %></p>
                                    <p class="card-text">Precio: $<%# Eval("precio") %></p>
                                    <asp:Button runat="server" Text="Ver Detalle" CssClass="btn btn-primary" OnClick="VerDetalle_Click" CommandArgument='<%# Eval("Id") %>' />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
