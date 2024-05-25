using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Semana13BD
{
    /// <summary>
    /// Interaction logic for InsertWindow.xaml
    /// </summary>
    public partial class InsertWindow : Window
    {
        public InsertWindow()
        {
            InitializeComponent();
            DataAccess dataAccess = new DataAccess();
            cbCarreras.ItemsSource = dataAccess.GetCarreras();
        }

        private void btnCrear_Click(object sender, RoutedEventArgs e)
        {
            DataAccess dataAccess = new DataAccess();
            Alumno alumno = new Alumno
            {
                Nombres = txtNombres.Text,
                Apellidos = txtApellidos.Text,
                Carnet = txtCarnet.Text,
                Telefono = txtTelefono.Text,
                Id =  int.Parse(txtId.Text),
                IdCarrera = int.Parse(cbCarreras.SelectedValue?.ToString() ?? "0" )
            };
            int result = dataAccess.Create(alumno);
            if (result > 0)
            {
                MessageBox.Show("Alumno guardado correctamente");
            }

            this.Close();
        }
    }
}
