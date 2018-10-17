using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Empregando.Model
{
    class Empregador
    {
        private int codigo;
        private string nome;
        private string desc;
        private int cnpj;
        private string ramo;
        private int telcom;

        public int Codigo
        {
            get
            {
                return codigo;
            }

            set
            {
                codigo = value;
            }
        }

        public string Nome
        {
            get
            {
                return nome;
            }

            set
            {
                nome = value;
            }
        }

        public string Desc
        {
            get
            {
                return desc;
            }

            set
            {
                desc = value;
            }
        }

        public int Cnpj
        {
            get
            {
                return cnpj;
            }

            set
            {
                cnpj = value;
            }
        }

        public string Ramo
        {
            get
            {
                return ramo;
            }

            set
            {
                ramo = value;
            }
        }

        public int Telcom
        {
            get
            {
                return telcom;
            }

            set
            {
                telcom = value;
            }
        }
    }
}
