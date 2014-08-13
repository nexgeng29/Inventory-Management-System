using IMS.ViewModels;
using NFS.UI;
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
using Microsoft.TeamFoundation;
using Microsoft.TeamFoundation.MVVM;
using NSUserControls;

namespace IMS.Views
{
    /// <summary>
    /// Interaction logic for Company.xaml
    /// </summary>
    public partial class Company : BaseUserControl, IController<CompanyViewModel>
    {
        private CompanyViewModel m_Controller = null;
       
        public CompanyViewModel Controller
        {
            get { return m_Controller; }
        }
        public Company()
        {
            InitializeComponent();
            m_Controller = new CompanyViewModel(this);
         
           
        }

        private void RadGridView1_AddRecord_1(object sender, RoutedEventArgs e)
        {
            Controller.DataContext.Add(new Model.Company());
           
        }

      

        

        
    }
}
