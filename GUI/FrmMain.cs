using DTO;
using System;
using System.Linq;
using System.Windows.Forms;

namespace GUI
{
    public partial class FrmMain : Form
    {
        private string maGV;
        private bool isLogout = false;

        public FrmMain(GiaoVien giaoVien)
        {
            InitializeComponent();
            maGV = giaoVien.MaGiaoVien;
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            mnHome.PerformClick();
            
        }

        private void mnHome_Click(object sender, EventArgs e)
        {
            FrmTrangChu fTrangChu = new FrmTrangChu();
            OpenChildForm(fTrangChu);
            fTrangChu.btnQLNganHangCauHoi.Click += mnQlNHCauHoi_Click;
            fTrangChu.btnQLPhieu.Click += mnQLPhieuTaoDe_Click;
            fTrangChu.btnQuanLySinhVien.Click += mnThongTinSv_Click;
            fTrangChu.btnThongKe.Click += mnThongKeDiem_Click;
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if(!isLogout) Application.Exit();
        }
        private void OpenChildForm(Form childForm)
        {
            if (MdiChildren.Length > 0)
            {
                foreach (var child in MdiChildren)
                {
                    child.Close();
                }
            }
            this.Text = childForm.Text;
            childForm.MdiParent = this;
            childForm.Dock = DockStyle.Fill;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Show();
        }

        private void mnQlNHCauHoi_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmNganHangCauHoi(maGV));
        }

        private void mnQLPhieuTaoDe_Click(object sender, EventArgs e)
        {

        }
        private void mnTaoPhieuTaoDe_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmTaoPhieu());
        }

        private void mnResetMK_Click(object sender, EventArgs e)
        {
            FrmCapNhatMatKhauSinhVien f = new FrmCapNhatMatKhauSinhVien();
            f.ShowDialog();
        }

        private void mnThongTinSv_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmQLSinhVien());
        }

        private void mnThongKeDiem_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmThongKeDiem_Lop());
        }

        private void mnPhucHoi_Click(object sender, EventArgs e)
        {
            FrmRestore f = new FrmRestore();
            f.ShowDialog();
        }

        private void mnDangXuat_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Bạn có muốn đăng xuất không?","Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                isLogout = true;
                this.Close();
            }
        }
        private void mnQLPhucKhao_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmPhucKhao());
        }

        private void mnThongKeDiemTheoPhong_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FrmThongKeDiem_PhongThi());
        }

        private void quảnLýChungToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void mnTaoDe_Click(object sender, EventArgs e)
        {
            OpenChildForm(new frmTaoDeThi());
        }

        private void mnDS_Click(object sender, EventArgs e)
        {
            frmHienThiDT f = new frmHienThiDT();
            f.ShowDialog();
        }
    }
}
