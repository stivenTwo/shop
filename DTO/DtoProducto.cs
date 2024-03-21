using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shop.DTO
{
    public class DtoProducto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set;}

        public decimal precio { get; set;}

        public string imagen { get; set; }


    }
}