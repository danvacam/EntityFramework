using System.Data.Entity;

namespace EF_5_CodeFirst
{
    public class GalleryContext : DbContext
    {
        public DbSet<GalleryHeader> GalleryHeaders { get; set; }
        public DbSet<GalleryDetail> GalleryDetails { get; set; }
    }
}
