<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalleProducto.aspx.cs" Inherits="shop.DetalleProducto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Detalle del Producto</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" href="https://marketplace.canva.com/EAFAEOunkG0/1/0/1600w/canva-morado-moderno-tecnolog%C3%ADa-y-videojuegos-logo-2xfRaIEdz2Y.jpg" type="image/x-icon">

    <style>
        /* Estilos personalizados */
        .product-container {
            margin-top: 50px;
        }

        .product-image {
            width: 100%;
            height: auto;
            max-height: 400px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5 product-container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <img id="imgProducto" runat="server" class="card-img-top product-image" alt="Producto" />
                        <div class="card-body">
                            <h5 id="lblNombre" runat="server" class="card-title font-weight-bold"></h5>
                            <p id="lblDescripcion" runat="server" class="card-text"></p>
                            <p id="lblPrecio" runat="server" class="card-text font-weight-bold"></p>
                            <button id="btnAgregarCarrito" runat="server" class="btn btn-primary">Agregar al Carrito.</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
