﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Dapper;

namespace Semana13BD
{    
    public class DataAccess
    {
        public const string  CONNECTION_STRING = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\repositorio\\ProgramacionI-2024\\Semana13BD\\Semana13BD\\Escuela.mdf;Integrated Security=True";

        public const string CADENA_SQL_SERVER = "Server=DESKTOP-HB9L7EH\\SQLEXPRESS;Integrated Security=true;Initial Catalog=Alumno";
        //ADO.NET
        public List<Alumno> GetAllAdoNet()
        {
            List<Alumno> alumnos = new List<Alumno>();
            try
            {
                SqlConnection conn = new SqlConnection(CONNECTION_STRING);
                conn.Open();
                string query = "SELECT id, nombres, apellidos, carnet, telefono FROM Alumno";
                SqlCommand sqlCommand = new SqlCommand(query, conn);
                SqlDataReader reader = sqlCommand.ExecuteReader();

                while (reader.Read())
                {
                    Alumno a = new Alumno { 
                      Id = reader.GetInt32(0),
                      Nombres = reader.GetString(1),
                      Apellidos = reader.GetString(2),
                      Carnet = reader.GetString(3),
                      Telefono = reader.GetString(4)
                    };
                    alumnos.Add(a);
                }
            }
            catch(SqlException  ex)
            {
                Console.WriteLine(ex.Message);
            }
            return alumnos;
        }

        public List<Alumno> GetAllDapper() {
            List<Alumno> alumnos = new List<Alumno>();
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = "SELECT a.id, a.nombres, a.apellidos, a.carnet, a.telefono, a.idCarrera, c.nombre as nombreCarrera FROM Alumno a JOIN Carrera c ON a.idCarrera = c.id";
                alumnos = conn.Query<Alumno>(query).ToList();
                conn.Close();

            }
            catch(SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            return alumnos;
        }

        public int Create(Alumno alumno)
        {
            int result = 0;
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = @"INSERT INTO Alumno (id, nombres, apellidos, carnet, telefono, idCarrera)
                                              VALUES (@id, @nombres, @apellidos, @carnet, @telefono, @idCarrera) 
";
                //Para guardar, actualizar o eliminar se usa execute.
                result = conn.Execute(query, new
                {
                    id = alumno.Id,
                    nombres = alumno.Nombres,
                    apellidos = alumno.Apellidos,
                    carnet = alumno.Carnet,
                    telefono = alumno.Telefono,
                    idCarrera = alumno.IdCarrera
                });
                conn.Close();

            }
            catch(SqlException ex)
            {
                Console.WriteLine(ex.Message);
                MessageBox.Show(ex.Message);
            }

            return result;
        }

        public Alumno GetById(int idAlumno)
        {
            Alumno alumno = new Alumno();
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = "SELECT id, nombres, apellidos, carnet, telefono, idCarrera FROM Alumno WHERE id=@id";
                alumno = conn.QuerySingle<Alumno>(query, new { id=idAlumno });
                conn.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            return alumno;
        }

        public int Update(Alumno alumno)
        {
            int result = 0;
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = @"UPDATE Alumno SET nombres=@nombres, apellidos=@apellidos, carnet=@carnet, telefono=@telefono, idCarrera=@idCarrera
                                WHERE id= @id";
                //Para guardar, actualizar o eliminar se usa execute.
                result = conn.Execute(query, new
                {
                    id = alumno.Id,
                    nombres = alumno.Nombres,
                    apellidos = alumno.Apellidos,
                    carnet = alumno.Carnet,
                    telefono = alumno.Telefono,
                    idCarrera = alumno.IdCarrera
                });
                conn.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                MessageBox.Show(ex.Message);
            }

            return result;
        }

        public int Delete(int id)
        {
            int result = 0;
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = @"DELETE FROM Alumno WHERE id= @id";
                //Para guardar, actualizar o eliminar se usa execute.
                result = conn.Execute(query, new
                {
                    id = id
                });
                conn.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
                MessageBox.Show(ex.Message);
            }

            return result;
        }

        public List<Carrera> GetCarreras()
        {
            List<Carrera> carreras = new List<Carrera>();
            try
            {
                SqlConnection conn = new SqlConnection(CADENA_SQL_SERVER);
                conn.Open();
                string query = "SELECT id, nombre FROM carrera";
                carreras = conn.Query<Carrera>(query).ToList();
                conn.Close();

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);
            }
            return carreras;
        }
    }
}
