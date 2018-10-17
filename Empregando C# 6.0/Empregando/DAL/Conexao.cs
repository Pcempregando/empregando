using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Empregando.DAL
{
    class Conexao
    {
        private MySqlConnection conexaoBanco;
        private MySqlCommand ponteStatement;
        private MySqlDataReader dataReader;
        private string stringDeConexao;
        private string server;
        private string port;
        private string database;
        private string user;
        private string password;

        public MySqlConnection ConexaoBanco
        {
            get
            {
                return conexaoBanco;
            }

            set
            {
                conexaoBanco = value;
            }
        }

        public MySqlCommand PonteStatement
        {
            get
            {
                return ponteStatement;
            }

            set
            {
                ponteStatement = value;
            }
        }

        public MySqlDataReader DataReader
        {
            get
            {
                return dataReader;
            }

            set
            {
                dataReader = value;
            }
        }

        public string StringDeConexao
        {
            get
            {
                return stringDeConexao;
            }

            set
            {
                stringDeConexao = value;
            }
        }

        public string Server
        {
            get
            {
                return server;
            }

            set
            {
                server = value;
            }
        }

        public string Port
        {
            get
            {
                return port;
            }

            set
            {
                port = value;
            }
        }

        public string Database
        {
            get
            {
                return database;
            }

            set
            {
                database = value;
            }
        }

        public string User
        {
            get
            {
                return user;
            }

            set
            {
                user = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }

        public Conexao()
        {
            //Construtor? 

            this.server = "";
            this.port = "";
            this.database = "";
            this.user = "";
            this.password = "";

        }

        public Conexao(string server, string port, string database, string user, string password)
        {
            this.server = server;
            this.port = port;
            this.database = database;
            this.user = user;
            this.password = password;
        }

        public void conectar()
        {
            stringDeConexao = "";
            stringDeConexao += "server=" + server + ";";
            stringDeConexao += "port=" + port + ";";
            stringDeConexao += "user id=" + user + ";";
            stringDeConexao += "password=" + password + ";";
            stringDeConexao += "database=" + database + ";";

            try
            {

                conexaoBanco = new MySqlConnection(stringDeConexao);
                conexaoBanco.Open();
                Console.WriteLine(conexaoBanco);

            }
            catch (Exception ex)
            {

                throw ex;
            }


        }



        public void desconectar()
        {

            try
            {
                if (dataReader != null)
                {
                    dataReader.Dispose();

                }

                conexaoBanco.Close();
                conexaoBanco.Dispose();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        public void executar(string textoSQL)
        {
            try
            {
                this.conectar();

                ponteStatement = new MySqlCommand();
                ponteStatement.Connection = conexaoBanco;
                ponteStatement.CommandText = textoSQL;
                ponteStatement.ExecuteNonQuery();

                this.desconectar();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
