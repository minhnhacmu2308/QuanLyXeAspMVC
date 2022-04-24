﻿using QuanLyThueXe.Daos;
using QuanLyThueXe.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyThueXe.Controllers.Public
{
    public class PublicRentalController : Controller
    {
        RentalDao rentalDao = new RentalDao();
        QuanLyXeDbContext myDb = new QuanLyXeDbContext();
        // GET: PublicBooking
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetRentals(int id, string mess)
        {
            var list = rentalDao.getRetalUserId(id);
            ViewBag.active = "listBooking";
            ViewBag.listBooking = list;
            ViewBag.mess = mess;
            return View();
        }

        public ActionResult CancelRental(int id)
        {
            user user = (user)Session["USER"];
            rental booking = myDb.rentals.FirstOrDefault(x => x.rental_id == id);
            booking.status = 2;
            myDb.SaveChanges();
            return RedirectToAction("GetRentals", new { id = user.user_id, mess = "1" });
        }
    }
}