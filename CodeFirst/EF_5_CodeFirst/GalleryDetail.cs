namespace EF_5_CodeFirst
{
    public class GalleryDetail
    {
        public int GalleryDetailId  { get; set; }
        public string ImageSrc { get; set; }
        public string ImageTitle { get; set; }

        public virtual GalleryHeader GalleryHeader { get; set; }
    }
}
