using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.GridView;


namespace NSUserControls
{
    class ButtonColumn : GridViewColumn
    {
        public string ImageSource = null; 
        public event RoutedEventHandler Click = null;
        public override FrameworkElement CreateCellElement(GridViewCell cell, object dataItem)
        {  
            
            RadButton button = cell.Content as RadButton;
            if (button == null)
            {
                button = new RadButton();
                System.Windows.Controls.Image btnimage = new System.Windows.Controls.Image();
                btnimage.ToolTip = this.ToolTip;
                btnimage.Height = 16;
                btnimage.Width = 16;
                btnimage.Source = new System.Windows.Media.Imaging.BitmapImage(new Uri(ImageSource, UriKind.Relative));
                button.Width = 25;
                button.Content = btnimage;
                button.Click += button_Click;
            }

            return button;
        }

        void button_Click(object sender, RoutedEventArgs e)
        {
            if (this.Click != null)
            {
                this.Click(sender, e);
            }
        }

      
    }
}
