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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NSUserControls
{
    /// <summary>
    /// Interaction logic for UserControl1.xaml
    /// </summary>
    public partial class NSGridView : UserControl
    {
        public event RoutedEventHandler AddRecord = null;

        public event RoutedEventHandler RemoveRecord = null;

        public event RoutedEventHandler ResetGrid = null;

        public Telerik.Windows.Controls.GridViewColumnCollection Columns
        {
            //set { dgGrid.Columns = value; }
            get { return dgGrid.Columns; }
        }

        private bool m_ShowAddButton = true;
        private bool m_ShowRemoveButton = true;
        private bool m_ShowRefreshButton = true;
        private bool m_ShowToolBar = true;
        private bool m_ShowHeaderAddButton = true;
        private bool m_ShowRemoveButtonColumn = true;

        public bool ShowRemoveButtonColumn
        {
            get { return m_ShowRemoveButtonColumn; }
            set { m_ShowRemoveButtonColumn = value; }
        }

        public bool ShowHeaderAddButton
        {
            get { return m_ShowHeaderAddButton; }
            set { m_ShowHeaderAddButton = value; }
        }

        public bool ShowToolBar
        {
            get { return m_ShowToolBar; }
            set { m_ShowToolBar = value; }
        }



        public bool ShowAddButton
        {
            get { return m_ShowAddButton; }
            set { m_ShowAddButton = value; }
        }


        public bool ShowRemoveButton
        {
            get { return m_ShowRemoveButton; }
            set { m_ShowRemoveButton = value; }
        }


        public bool ShowRefreshButton
        {
            get { return m_ShowRefreshButton; }
            set { ButtonVisibilty(this.BtnRefresh, value); }
        }

        public NSGridView()
        {
            InitializeComponent();
            this.Loaded += ucNSGridview_Loaded;
            this.DataContextChanged += NSGridView_DataContextChanged;
        }

        void NSGridView_DataContextChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            dgGrid.ItemsSource = this.DataContext;
        }

        void ucNSGridview_Loaded(object sender, RoutedEventArgs e)
        {
            dgGrid.ItemsSource = this.DataContext;
            if (!ShowToolBar)
                CollapseToolbar(true);
            if (
               this.BtnAdd.Visibility == Visibility.Collapsed &&
               this.BtnRemove.Visibility == Visibility.Collapsed &&
               this.BtnRefresh.Visibility == Visibility.Collapsed
             )
            {
                CollapseToolbar(true);
            }

        }

        public void CollapseToolbar(bool Collapsed)
        {
            if (Collapsed)
            {
                ContainerGrid.RowDefinitions[0].Height = new GridLength(0, GridUnitType.Pixel);
            }
        }


        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            if (AddRecord != null)
            {
                AddRecord(sender, e);
            }

        }

        private void BtnRemove_Click(object sender, RoutedEventArgs e)
        {

            if (RemoveRecord != null)
            {
                RemoveRecord(sender, e);
            }

        }

        private void BtnRefresh_Click(object sender, RoutedEventArgs e)
        {
            if (ResetGrid != null)
            {
                ResetGrid(sender, e);
            }
        }

        private void ButtonVisibilty(Button button, bool visible)
        {
            if (visible)
            {
                button.Visibility = Visibility.Visible;
            }
            else
            {
                button.Visibility = Visibility.Collapsed;
            }
        }

        protected override void OnRender(DrawingContext drawingContext)
        {
            if (this.ShowRemoveButtonColumn && this.Columns["btnDelete"] ==null)
            {
                ButtonColumn deleteButtonColumn = new ButtonColumn();
                deleteButtonColumn.IsReadOnly = true;
                deleteButtonColumn.UniqueName = "btnDelete";
                deleteButtonColumn.ImageSource = "Images/Remove.ico";
                deleteButtonColumn.ToolTip = "Delete";
                deleteButtonColumn.Width = 30;
                deleteButtonColumn.MinWidth = 35;
                deleteButtonColumn.MaxWidth = 35;
                deleteButtonColumn.Click += BtnRemove_Click;
                if (this.ShowHeaderAddButton == true)
                {
                    Image image = new Image() { Height = 15, Width = 15 };
                    image.Source = new BitmapImage(new Uri("Images/Add.ico", UriKind.RelativeOrAbsolute));
                    Button btnHeaderAdd = new Button();
                    btnHeaderAdd.Width = 25;
                    btnHeaderAdd.Height = 25;
                    btnHeaderAdd.Click += new RoutedEventHandler(BtnAdd_Click);
                    btnHeaderAdd.Content = image;
                    deleteButtonColumn.Header = btnHeaderAdd;
                    btnHeaderAdd.ToolTip = "Add";
                }

                this.dgGrid.Columns.Insert(0, deleteButtonColumn);

            }

            base.OnRender(drawingContext);
        }
    }
}
