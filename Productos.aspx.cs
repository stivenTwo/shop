using System;
using System.Linq;
using System.Web.UI.WebControls;
using shop.modelo;
using shop.DTO;

namespace shop
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCategorias();
                CargarProductos();
            }
        }

        protected void rptCategorias_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "FiltrarPorCategoria")
            {
                int categoriaId = Convert.ToInt32(e.CommandArgument);
                if (categoriaId == 0)
                {
                    CargarProductos(); // Si el ID de categoría es 0, cargar todos los productos
                }
                else
                {
                    FiltrarProductosPorCategoria(categoriaId);
                }
            }
        }

        protected void VerDetalle_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int productoId = Convert.ToInt32(btn.CommandArgument);
            Response.Redirect("DetalleProducto.aspx?productoId=" + productoId);
        }

        private void CargarCategorias()
        {
            using (ShopEntities db = new ShopEntities())
            {
                var categorias = (from c in db.categoria
                                  select new DtoCatgoria
                                  {
                                      ID = c.id,
                                      Name = c.nombre,
                                  }).ToList();
                rptCategorias.DataSource = categorias;
                rptCategorias.DataBind();
            }
        }

        private void CargarProductos()
        {
            using (ShopEntities db = new ShopEntities())
            {
                var productos = (from p in db.producto
                                 select new DtoProducto
                                 {
                                     Id = p.id,
                                     Nombre = p.nombre,
                                     Descripcion = p.descripcion,
                                     precio = (decimal)p.precio,
                                     imagen = p.imagen
                                 }).ToList();
                rptProductos.DataSource = productos;
                rptProductos.DataBind();
            }
        }

        private void FiltrarProductosPorCategoria(int categoriaId)
        {
            using (ShopEntities db = new ShopEntities())
            {
                IQueryable<producto> consulta = db.producto;
                if (categoriaId != 0)
                {
                    consulta = consulta.Where(p => p.categoriaId == categoriaId);
                }

                var productos = (from p in consulta
                                 select new DtoProducto
                                 {
                                     Id = p.id,
                                     Nombre = p.nombre,
                                     Descripcion = p.descripcion,
                                     precio = (decimal)p.precio,
                                     imagen = p.imagen
                                 }).ToList();
                rptProductos.DataSource = productos;
                rptProductos.DataBind();
            }
        }
    }
}
