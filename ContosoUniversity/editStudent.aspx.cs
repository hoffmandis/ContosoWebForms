using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ContosoUniversity.Models;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Web.ModelBinding;

namespace ContosoUniversity
{
    public partial class editStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Student> studentsGrid_GetData([QueryString] int? studentID)
        {
            SchoolContext db = new SchoolContext();
            var query = db.Students.Include(s => s.Enrollments.Select(e => e.Course));

            return query;
        }


        public void studentsGrid_UpdateItem(int studentID)
        {
            using (SchoolContext db = new SchoolContext())
            {
                Student item = null;
                item = db.Students.Find(studentID);
                if (item == null)
                {
                    ModelState.AddModelError("", String.Format("Item with id {0} was not found.", studentID));
                    return;
                }
                TryUpdateModel(item);
                if (ModelState.IsValid)
                {
                    db.SaveChanges();
                }
            }
        }

       }
}