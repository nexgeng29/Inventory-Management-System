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
using WPF.MDI;

namespace IMS.Views
{
    /// <summary>
    /// Interaction logic for RibbionControl.xaml
    /// </summary>
    public partial class RibbionControl : Window
    {
        public RibbionControl()
        {
            InitializeComponent();
            ImageSource imgSrc = new BitmapImage(new Uri("../../Resources/Images/bigstock-satellite.jpg", UriKind.RelativeOrAbsolute)); 
            ImageBrush imgBrush = new ImageBrush(imgSrc);
            MainMdiContainer.Background = imgBrush; 
        }

        private void btnCompany_Click_1(object sender, RoutedEventArgs e)
        {
            OpenWindow(new Company());
        }

        private void OpenWindow(UserControl view)
        {
            ImageSource imgSrc = new BitmapImage(new Uri("../../Resources/Images/img_icon_gui.png", UriKind.RelativeOrAbsolute)); 
            this.MainMdiContainer.Children.Add(new MdiChild()
            {
                //Title = view.Title,
                ShowIcon = true,
                Icon = imgSrc,
                MaximizeBox =true,
                Content = view
            });
        
        }
    }
}
