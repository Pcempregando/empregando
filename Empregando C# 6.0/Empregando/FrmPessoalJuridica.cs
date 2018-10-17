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
    public partial class FrmPessoalJuridica : Form
    {
        public FrmPessoalJuridica()
        {
            InitializeComponent();
        }

        private void btnAvancar_Click(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Form principal = Application.OpenForms["FrmPrincipal"];
            principal.Show();
            this.Dispose();

            /*FrmPrincipal Form = new FrmPrincipal();
            Form.Show();
            this.Close();
            this.Dispose();*/
        }
    }
}
