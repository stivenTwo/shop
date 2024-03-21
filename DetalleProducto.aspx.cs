using System;
using System.Linq;
using shop.modelo;

namespace shop
{
    public partial class DetalleProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["productoId"] != null)
                {
                    int productoId = Convert.ToInt32(Request.QueryString["productoId"]);
                    using (ShopEntities db = new ShopEntities())
                    {
                        producto producto = db.producto.FirstOrDefault(p => p.id == productoId);


                        if (producto != null)
                        {
                            lblNombre.InnerText = producto.nombre;
                            lblDescripcion.InnerText = producto.descripcion;
                            lblPrecio.InnerText = "$" + producto.precio;
                            imgProducto.Src = producto.imagen;
                        }
                        else
                        {
                            lblNombre.InnerText = "Producto no encontrado";
                            lblDescripcion.InnerText = "";
                            lblPrecio.InnerText = "";
                            imgProducto.Src = "";
                        }
                    }
                }
            }
        }
    }
}
