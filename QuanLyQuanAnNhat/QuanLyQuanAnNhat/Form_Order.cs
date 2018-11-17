﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;
using BUS;
namespace QuanLyQuanAnNhat
{
    public partial class Form_Order : Form
    {
        public Form_Order()
        {
            InitializeComponent();
        }
        
        HoaDon_BUS hdBus = new HoaDon_BUS();
        Ban_BUS banBus = new Ban_BUS();
        HoaDonChiTiet_BUS hdctBus = new HoaDonChiTiet_BUS();
        DataTable TableHoaDon = new HoaDon_BUS().GetThongTinHoaDon();

        DataTable daTable;
        DataRow daRow;

        int soBan = 0;
        int hoaDon = -1;
        int Tong;

        private void Form_Order_Load(object sender, EventArgs e)
        {
            daTable = new SanPham_BUS().GetThongTinMenu();
            foreach (DataRow row in daTable.Rows)
            {
                ListViewItem item = new ListViewItem(row["Ten"].ToString());
                item.SubItems.Add(row["DonVi"].ToString());
                item.SubItems.Add(row["GiaBan"].ToString());
                item.SubItems.Add(row["MaSP"].ToString());
                lstMenu.Items.Add(item);
            }
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            bool has = false;
            int sl;
            ListView.SelectedListViewItemCollection listItem = lstMenu.SelectedItems;
            if (listItem.Count != 0)
            {
                foreach (ListViewItem i in listItem)
                {
                    foreach (ListViewItem it in lsvBill.Items)
                    {
                        if (i.Text == it.Text)
                        {
                            has = true;
                            sl = int.Parse(it.SubItems[1].Text);
                            sl++;
                            it.SubItems[1].Text = sl.ToString();
                            break;
                        }
                        else
                            has = false;
                    }
                    if (!has)
                    {
                        sl = 1;
                        ListViewItem item_bill = new ListViewItem(i.Text);
                        item_bill.SubItems.Add(sl.ToString());
                        item_bill.SubItems.Add(i.SubItems[2].Text);
                        item_bill.SubItems.Add(i.SubItems[1].Text);
                        item_bill.SubItems.Add(i.SubItems[3].Text);
                        lsvBill.Items.Add(item_bill);
                    }
                    Tong += int.Parse(i.SubItems[2].Text);
                    lbTongTien.Text = Tong.ToString();
                }
            }
        }
        private void Ban_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            soBan = int.Parse(btn.Name.Substring(6));
            int kq = hdBus.GetMaHoaDonLonNhat();
            if (banBus.GetTinhTrangBanByIDBan(soBan) == false)
            {
                btnThem.Enabled = true;
                Tong = 0;
                lbTongTien.Text = Tong.ToString();
                daRow = TableHoaDon.NewRow();
                daRow["MaHD"] = kq + 1;
                hoaDon = kq + 1;
                daRow["MaNV"] = 2;
                daRow["MaBan"] = soBan;
                daRow["TongTien"] = 0;
                daRow["ThoiGian"] = DateTime.Now;
                daRow["TinhTrang"] = false;
                MessageBox.Show(hoaDon.ToString());
            }
            else
            {
                btnThem.Enabled = false;
                hoaDon = hdBus.GetThongTinHoaDonByIDBan(soBan);
            }
            DataTable dataTable = new HoaDonChiTiet_BUS().GetThongTinHoaDonChiTietByMaHD(hoaDon);
            foreach(DataRow dr in dataTable.Rows)
            {
                ListViewItem item = new ListViewItem(dr["MaSP"].ToString());
                item.SubItems.Add(dr["SoLuong"].ToString());
                lsvBill.Items.Add(item);
            }
        }
        private void btnInPhieu_Click(object sender, EventArgs e)
        {
            if (daRow != null)
            {
                TableHoaDon.Rows.Add(daRow);
                hdBus.SaveHoaDon(TableHoaDon);
                daRow = null;
            }
        }
    }
}
