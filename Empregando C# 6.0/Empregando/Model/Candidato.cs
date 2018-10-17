using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Empregando.Model
{
    class Candidato
    {
        private int codigo;
        private string nome;
        private bool sexo;
        private int telres;
        private int telcel;

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

        public bool Sexo
        {
            get
            {
                return sexo;
            }

            set
            {
                sexo = value;
            }
        }

        public int Telres
        {
            get
            {
                return telres;
            }

            set
            {
                telres = value;
            }
        }

        public int Telcel
        {
            get
            {
                return telcel;
            }

            set
            {
                telcel = value;
            }
        }
    }
}
