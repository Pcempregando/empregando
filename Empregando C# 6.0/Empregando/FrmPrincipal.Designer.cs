namespace Empregando
{
    partial class FrmPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPrincipal));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.txtSenha = new System.Windows.Forms.TextBox();
            this.btnEntrar = new System.Windows.Forms.Button();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.btnPF = new System.Windows.Forms.Button();
            this.btnPJ = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("SansSerif", 8.999999F);
            this.label1.Location = new System.Drawing.Point(309, 274);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 14);
            this.label1.TabIndex = 0;
            this.label1.Text = "E-mail: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("SansSerif", 8.999999F);
            this.label2.Location = new System.Drawing.Point(309, 301);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 14);
            this.label2.TabIndex = 1;
            this.label2.Text = "Senha: ";
            // 
            // txtEmail
            // 
            this.txtEmail.Font = new System.Drawing.Font("SansSerif", 8.999999F);
            this.txtEmail.Location = new System.Drawing.Point(364, 271);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(270, 21);
            this.txtEmail.TabIndex = 2;
            this.txtEmail.Click += new System.EventHandler(this.txtEmail_Click);
            // 
            // txtSenha
            // 
            this.txtSenha.Font = new System.Drawing.Font("SansSerif", 8.999999F);
            this.txtSenha.Location = new System.Drawing.Point(364, 298);
            this.txtSenha.Name = "txtSenha";
            this.txtSenha.Size = new System.Drawing.Size(270, 21);
            this.txtSenha.TabIndex = 3;
            this.txtSenha.Click += new System.EventHandler(this.txtSenha_Click);
            // 
            // btnEntrar
            // 
            this.btnEntrar.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnEntrar.Font = new System.Drawing.Font("SansSerif", 9.749999F, System.Drawing.FontStyle.Bold);
            this.btnEntrar.ForeColor = System.Drawing.Color.White;
            this.btnEntrar.Location = new System.Drawing.Point(452, 325);
            this.btnEntrar.Name = "btnEntrar";
            this.btnEntrar.Size = new System.Drawing.Size(88, 35);
            this.btnEntrar.TabIndex = 4;
            this.btnEntrar.Text = "Entrar";
            this.btnEntrar.UseVisualStyleBackColor = false;
            this.btnEntrar.Click += new System.EventHandler(this.btnEntrar_Click);
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.BackColor = System.Drawing.Color.DodgerBlue;
            this.btnCadastrar.Font = new System.Drawing.Font("SansSerif", 9.749999F, System.Drawing.FontStyle.Bold);
            this.btnCadastrar.ForeColor = System.Drawing.Color.White;
            this.btnCadastrar.Location = new System.Drawing.Point(546, 325);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(88, 35);
            this.btnCadastrar.TabIndex = 5;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = false;
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click_1);
            // 
            // btnPF
            // 
            this.btnPF.BackColor = System.Drawing.Color.SteelBlue;
            this.btnPF.Font = new System.Drawing.Font("SansSerif", 9.749999F, System.Drawing.FontStyle.Bold);
            this.btnPF.ForeColor = System.Drawing.Color.White;
            this.btnPF.Location = new System.Drawing.Point(546, 366);
            this.btnPF.Name = "btnPF";
            this.btnPF.Size = new System.Drawing.Size(188, 35);
            this.btnPF.TabIndex = 6;
            this.btnPF.Text = "Cadastrar Pessoa Fìsica";
            this.btnPF.UseVisualStyleBackColor = false;
            this.btnPF.Visible = false;
            this.btnPF.Click += new System.EventHandler(this.btnPF_Click);
            // 
            // btnPJ
            // 
            this.btnPJ.BackColor = System.Drawing.Color.SteelBlue;
            this.btnPJ.Font = new System.Drawing.Font("SansSerif", 9.749999F, System.Drawing.FontStyle.Bold);
            this.btnPJ.ForeColor = System.Drawing.Color.White;
            this.btnPJ.Location = new System.Drawing.Point(546, 407);
            this.btnPJ.Name = "btnPJ";
            this.btnPJ.Size = new System.Drawing.Size(188, 35);
            this.btnPJ.TabIndex = 7;
            this.btnPJ.Text = "Cadastrar Pessoa Jurídica";
            this.btnPJ.UseVisualStyleBackColor = false;
            this.btnPJ.Visible = false;
            this.btnPJ.Click += new System.EventHandler(this.btnPJ_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Showcard Gothic", 20.25F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.DimGray;
            this.label3.Location = new System.Drawing.Point(404, 129);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(196, 33);
            this.label3.TabIndex = 9;
            this.label3.Text = "EMPREGANDO";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(312, 100);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(86, 91);
            this.pictureBox1.TabIndex = 8;
            this.pictureBox1.TabStop = false;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("SansSerif", 8.999999F);
            this.label4.ForeColor = System.Drawing.Color.Red;
            this.label4.Location = new System.Drawing.Point(478, 254);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(156, 14);
            this.label4.TabIndex = 10;
            this.label4.Text = "E-mail ou senha incorretos.";
            this.label4.Visible = false;
            // 
            // FrmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(984, 612);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnPJ);
            this.Controls.Add(this.btnPF);
            this.Controls.Add(this.btnCadastrar);
            this.Controls.Add(this.btnEntrar);
            this.Controls.Add(this.txtSenha);
            this.Controls.Add(this.txtEmail);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "FrmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmPrincipal";
            this.Load += new System.EventHandler(this.FrmPrincipal_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.TextBox txtSenha;
        private System.Windows.Forms.Button btnEntrar;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.Button btnPF;
        private System.Windows.Forms.Button btnPJ;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label4;
    }
}