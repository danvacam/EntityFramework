using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EF_5_ModelFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var db = new GalleryContainer())
            {
                // create sets
                var galleryHeader = db.GalleryHeaderSet.Create();
                var galleryDetail = db.GalleryDetailSet.Create();
                // add property value to header
                galleryHeader.Title = "First Gallery";
                // add property values to detail
                galleryDetail.ImageSrc = "http://placehold.it/80x80&text=image1";
                galleryDetail.ImageTitle = "image 1";
                // attach detail to header
                galleryHeader.GalleryDetail.Add(galleryDetail);
                // add to context
                db.GalleryHeaderSet.Add(galleryHeader);
                // persist
                db.SaveChanges();
            }
        }
    }
}
