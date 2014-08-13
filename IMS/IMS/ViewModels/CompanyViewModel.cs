using Microsoft.TeamFoundation.MVVM;
using Model;
using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;
using System.Collections.ObjectModel;
using System.Windows.Controls;

namespace IMS.ViewModels
{
    public class CompanyViewModel : BaseViewModel<ObservableCollection<Company>>
    {
        NSEntities context = new NSEntities();
        private ICommand m_ButtonCommand;
        private ICommand m_ButtonCommand1;
        public ICommand ButtonCommand1
        {
            get
            {
                return m_ButtonCommand1;
            }
            set
            {
                m_ButtonCommand1 = value;
            }
        }
        public ICommand ButtonCommand
        {
            get
            {
                return m_ButtonCommand;
            }
            set
            {
                m_ButtonCommand = value;
            }
        }

        public CompanyViewModel(UserControl control)
            : base(control)
        {
            ButtonCommand = new RelayCommand(new Action<object>(ShowMessage));
            ButtonCommand1 = new RelayCommand(new Action<object>(ShowMessage1));
            this.DataContext = new ObservableCollection<Company>();
        }

        private void ShowMessage1(object obj)
        {
          //  NSEntities context = new NSEntities();
          //  context.Companies.Add(this.DataContext);
            context.SaveChanges();
            string msg = (this.DataContext as ObservableCollection<Company>)[0].Company_Name;
        }
        private void ShowMessage(object obj)
        {
           // NSEntities context = new NSEntities();
            this.DataContext = new ObservableCollection<Company>(context.Companies.ToList());
        }
    }
}
