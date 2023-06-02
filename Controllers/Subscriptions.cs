using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace TransBuc.Controllers
{
    public class Subscriptions : Controller
    {
        // GET: Subscriptions
        public ActionResult Index()
        {
            return View();
        }

        // GET: Subscriptions/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Subscriptions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Subscriptions/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: Subscriptions/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Subscriptions/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: Subscriptions/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Subscriptions/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
