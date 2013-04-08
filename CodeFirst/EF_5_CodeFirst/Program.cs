namespace EF_5_CodeFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new GalleryContext())
            {
                var galleryHeader = new GalleryHeader {Title = "First gallery"};
                var galleryFirstDetail = new GalleryDetail
                                             {
                                                 ImageTitle = "image 1",
                                                 ImageSrc = "http://placehold.it/80x80&text=image1"
                                             };
                var gallerySecondDetail = new GalleryDetail
                {
                    ImageTitle = "image 2",
                    ImageSrc = "http://placehold.it/80x80&text=image2"
                };

                galleryHeader.Details.Add(galleryFirstDetail);
                galleryHeader.Details.Add(gallerySecondDetail);

                db.GalleryHeaders.Add(galleryHeader);
                db.SaveChanges();
            }
        }
    }
}
