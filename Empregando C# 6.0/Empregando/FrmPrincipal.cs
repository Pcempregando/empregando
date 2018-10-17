using Empregando.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Empregando
{
    public partial class FrmPrincipal : Form
    {
        bool x = false;
        public FrmPrincipal()
        {
            InitializeComponent();
        }
        
        private void FrmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void btnCadastrar_Click_1(object sender, EventArgs e)
        {
            if (x == false)
            {
                btnPF.Visible = true;
                btnPJ.Visible = true;
                x = true;
            }
            else
            {
                if (x == true)
                {
                    btnPF.Visible = false;
                    btnPJ.Visible = false;
                    x = false;
                }
            }
        }

        private void txtEmail_Click(object sender, EventArgs e)
        {
            btnPF.Visible = false;
            btnPJ.Visible = false;
        }

        private void txtSenha_Click(object sender, EventArgs e)
        {
            btnPF.Visible = false;
            btnPJ.Visible = false;
        }

        private void btnEntrar_Click(object sender, EventArgs e)
        {
            
        }

        private void btnPF_Click(object sender, EventArgs e)
        {
            if (Application.OpenForms.OfType<FrmPessoaFisica>().Count() > 0)
            {
                Form frmpf = Application.OpenForms["FrmPessoaFisica"];
                frmpf.Show();
                btnPF.Visible = false;
                btnPJ.Visible = false;
                txtEmail.Text = "";
                txtSenha.Text = "";
                this.Hide();
            }
            else
            {
                FrmPessoaFisica frmpf = new FrmPessoaFisica();
                frmpf.Show();
                btnPF.Visible = false;
                btnPJ.Visible = false;
                txtEmail.Text = "";
                txtSenha.Text = "";
                this.Hide();
            }

            //FrmPessoaFisica Form = new FrmPessoaFisica();
            //Form.Show();
            //this.Hide();
        }

        private void btnPJ_Click(object sender, EventArgs e)
        {
            if (Application.OpenForms.OfType<FrmPessoalJuridica>().Count() > 0)
            {
                Form frmpj = Application.OpenForms["FrmPessoalJuridica"];
                frmpj.Show();
                this.Hide();
            }
            else
            {
                FrmPessoalJuridica frmpj = new FrmPessoalJuridica();
                frmpj.Show();
                this.Hide();
            }

            //FrmPessoalJuridica Form = new FrmPessoalJuridica();
            //Form.Show();
            //this.Hide();
        }
    }
}
