using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharmacy_Management_AF
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://en.wikipedia.org/wiki/Dentistry");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.heart.org/en/healthy-living/healthy-lifestyle/prevent-heart-disease-and-stroke");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.wellcurve.in/blog/healthy-eating-habits/");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.healthline.com/health/allergies/best-natural-cough-remedies#_noHeaderPrefixedContent");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.emedihealth.com/wellness/fitness/tips-stay-fit-healthy");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.inventiva.co.in/trends/personal-care-companies-in-india-2023/");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.medplusmart.com/storelocator");
        }
    }
}