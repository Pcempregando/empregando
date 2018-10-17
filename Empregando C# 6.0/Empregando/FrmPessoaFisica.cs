using Empregando.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml.Linq;

namespace Empregando
{
    public partial class FrmPessoaFisica : Form
    {
        string sexo = "";
        public FrmPessoaFisica()
        {
            InitializeComponent();
        }

        public void BuscaCEP()
        {
            try
            {
                DataSet data = new DataSet();
                string xmlCEP = "http://cep.republicavirtual.com.br/web_cep.php?cep=@cep&formato=xml".Replace("@cep", txtCEP.Text); //o @cep está referenciando o link xml com o txt
                data.ReadXml(xmlCEP);

                if (txtCEP.Text.Length == 8)
                {
                    txtLogradouro.Text = data.Tables[0].Rows[0]["tipo_logradouro"].ToString() + " " + data.Tables[0].Rows[0]["logradouro"].ToString();
                    txtCidade.Text = data.Tables[0].Rows[0]["cidade"].ToString();
                    txtBairro.Text = data.Tables[0].Rows[0]["bairro"].ToString();
                    txtEstado.Text = data.Tables[0].Rows[0]["uf"].ToString();
                }
            }
            catch (Exception error)
            {
                MessageBox.Show(error.ToString(), "Erro com a rede");
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Form principal = Application.OpenForms["FrmPrincipal"];
            principal.Show();
            this.Dispose();
        }

        private void btnCancelar2_Click(object sender, EventArgs e)
        {
            Form principal = Application.OpenForms["FrmPrincipal"];
            principal.Show();
            this.Dispose();
        }

        private void btnAvancar_Click_1(object sender, EventArgs e)
        {
            if (rdbMasc.Checked)
            {
                sexo = "M";
            }
            else
            {
                if (rdbFem.Checked)
                {
                    sexo = "F";
                }
                else
                {
                    MessageBox.Show("Preencha todos os dados.");
                }
            }
            if (txtNome.Text.Trim().Length > 0 && txtCEP.Text.Trim().Length > 0 && txtLogradouro.Text.Trim().Length > 0 &&
                txtComp.Text.Trim().Length > 0 && txtCidade.Text.Trim().Length > 0 && txtBairro.Text.Trim().Length > 0 && 
                txtTel.Text.Trim().Length > 0 && txtCel.Text.Trim().Length > 0 && txtEmail.Text.Trim().Length > 0 )
            {
                if(txtSenha.Text.Trim().Length > 12 && txtSenha.Text.Trim().Equals(txtSenha2.Text.Trim()))
                {
                    string textoSQL = "";
                    Conexao con;
                    con = new DAL.Conexao();
                    /*
                    con.Database = "dbempregando";
                    con.Server = "10.67.112.196";
                    con.Password = "dev1";
                    con.Port = "3306";
                    con.User = "desenvolvedor";
                    */

                    con.Database = "dbempregando";
                    con.Server = "10.67.112.196";
                    con.Password = "root";
                    con.Port = "3306";
                    con.User = "root";

                    textoSQL = "insert into dados_candidato (cd_candidato, nm_candidato, sg_sexo, cd_telefone_residencial, cd_telefone_celular) values (default, '" + txtNome.Text + "', '" + sexo + "', '" + txtTel.Text + "', '" + txtCel.Text + "');";

                    //textoSQL = "insert into tb_usuario (nm_usuario, ds_email, ds_senha_usuario, ic_ativo, cd_perfil) values ('" + txtUsuario.Text + "', '" + txtEmail.Text + "', '" + txtSenha.Text + "');";
                    con.executar(textoSQL);
                    MessageBox.Show("Usuario: " + txtNome.Text + " cadastrado com sucesso!");
                    txtNome.Text = "";
                    txtCEP.Text = "";
                    txtLogradouro.Text = "";
                    txtComp.Text = "";
                    txtCidade.Text = "";
                    txtBairro.Text = "";
                    txtTel.Text = "";
                    txtCel.Text = "";
                    txtEmail.Text = "";
                    sexo = "";
                }
            }
            else
            {
                MessageBox.Show("Preencha todos os dados.");
            }
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            BuscaCEP();
            txtComp.ReadOnly = false;
        }
    }
}
