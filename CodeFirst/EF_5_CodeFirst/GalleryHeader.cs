using System.Collections.Generic;

namespace EF_5_CodeFirst
{
    public class GalleryHeader
    {
        public GalleryHeader()
        {
            Details = new List<GalleryDetail>();
        }

        public int GalleryHeaderId { get; set; }
        public string Title { get; set; }

        public virtual List<GalleryDetail> Details { get; set; }
    }
}
