using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using S7.Net;
using S7.Net.Types;
using System.Windows.Media;

namespace DoanManhTuyen
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public object CheckedBox1 { get; private set; }
        public object CheckedBox2 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Trangthaiketnoi"] = "Ngắt kết nối";

            if (Session["Username"].ToString() == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {

            }
            if (Session["Username"] != null)
            {
                Label1.Text = "Welcome " + Session["Username"].ToString();
            }
        }


        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = "";
            Response.Redirect("Login.aspx");
        }


        protected void btn_conn_Click(object sender, EventArgs e)
        {
            try
            {
                Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
                plc.Open();
                plc.Write("M0.0", 1);
                plc.Write("M0.0", 0);
                plc.Close();
                btn_conn.ForeColor = System.Drawing.Color.Green;
                btn_disconn.ForeColor = System.Drawing.Color.Black;
                Session["Trangthaiketnoi"] = "Đã kết nối";
                    Label2.Text = Session["Trangthaiketnoi"].ToString();
            }
            catch (Exception)
            {
                Session["Trangthaiketnoi"] = "Ngắt kết nối";
                Label2.Text = Session["Trangthaiketnoi"].ToString();
            }
        }

        protected void btn_disconn_Click(object sender, EventArgs e)
        {
            try { 
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M0.1", 1);
            plc.Write("M0.1", 0);
                btn_disconn.ForeColor = System.Drawing.Color.Red;
                btn_conn.ForeColor = System.Drawing.Color.Black;
                Session["Trangthaiketnoi"] = "Ngắt kết nối";
                Label2.Text = Session["Trangthaiketnoi"].ToString();
            plc.Close();
            }
            catch (Exception)
            {
                Session["Trangthaiketnoi"] = "Lỗi kết nối";
                Label2.Text = Session["Trangthaiketnoi"].ToString();
            }
        }

        protected void btn_lampon_Click(object sender, EventArgs e)
        {
            btn_lampon.CssClass = "btn btn-success";
            btn_lampoff.CssClass = "btn btn-secondary";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M0.4", 1);
            plc.Write("M0.4", 0);
            plc.Close();
        }

        protected void btn_lampoff_Click(object sender, EventArgs e)
        {
            btn_lampon.CssClass = "btn btn-secondary";
            btn_lampoff.CssClass = "btn btn-danger";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M0.5", 1);
            plc.Write("M0.5", 0);
            plc.Close();
        }

        protected void btn_fanon_Click(object sender, EventArgs e)
        {
            btn_fanon.CssClass = "btn btn-success";
            btn_fanoff.CssClass = "btn btn-secondary";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M0.6", 1);
            plc.Write("M0.6", 0);
            plc.Close();
        }

        protected void btn_fanoff_Click(object sender, EventArgs e)
        {
            btn_fanon.CssClass = "btn btn-secondary";
            btn_fanoff.CssClass = "btn btn-danger";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M0.7", 1);
            plc.Write("M0.7", 0);
            plc.Close();
        }

        protected void btn_open_Click(object sender, EventArgs e)
        {
            btn_open.CssClass = "btn btn-success";
            btn_close.CssClass = "btn btn-secondary";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M1.1", 1);
            plc.Write("M1.1", 0);
            plc.Close();
        }

        protected void btn_close_Click(object sender, EventArgs e)
        {
            btn_open.CssClass = "btn btn-secondary";
            btn_close.CssClass = "btn btn-danger";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M1.0", 1);
            plc.Write("M1.0", 0);
            plc.Close();
        }

        protected void btn_alarmin_Click(object sender, EventArgs e)
        {
            btn_alarmin.CssClass = "btn btn-success";
            btn_alarmout.CssClass = "btn btn-secondary";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M1.2", 1);
            plc.Write("M1.2", 0);
            plc.Close();
        }

        protected void btn_alarmout_Click(object sender, EventArgs e)
        {
            btn_alarmin.CssClass = "btn btn-secondary";
            btn_alarmout.CssClass = "btn btn-danger";
            Plc plc = new Plc(CpuType.S71200, "192.168.20.104", 0, 1);
            plc.Open();
            plc.Write("M1.3", 1);
            plc.Write("M1.3", 0);
            plc.Close();
        }

       

    }
    
    
}