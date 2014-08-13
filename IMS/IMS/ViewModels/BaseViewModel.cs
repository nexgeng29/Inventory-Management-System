using IMS.Helpers;
using Microsoft.TeamFoundation.MVVM;
using Model;
using System;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Data.Entity;
using System.Windows;
using System.Windows.Input;
using System.Windows.Controls;

namespace IMS.ViewModels
{
    public class BaseViewModel<T> : INotifyPropertyChanged where T : new()
    {
        //private UserInfo m_userInfo = null;


        private UserControl m_control = null;
        private T m_datacontext;



        #region Command Properties

        public ICommand AddCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public ICommand EditCommand { get; set; }
        public ICommand RefreshCommand { get; set; }
        public ICommand CloseCommand { get; set; }
        
        #endregion


        #region Public Events

        //public delegate MessageBoxResult MessageEventHandler(MessageEventAgrs e);
       // public event MessageEventHandler ShowMessage;

        #endregion

        #region Public Properties

        public UserControl AttachedUserControl { get { return m_control; } }

        //public UserInfo UserObject
        //{
        //    get { return m_userInfo; }
        //}
        //public UserSession UserSession
        //{
        //    get;
        //    set;
        //}
        public virtual void Initialize()
        {
            CloseCommand = new RelayCommand(() => Application.Current.Shutdown());
        }
     
        public virtual T DataContext
        {
            get
            {
                if (m_datacontext == null)
                {
                    m_datacontext = new T();
                }


                return m_datacontext;
            }
            set { m_datacontext = value; NotifyPropertyChanged("DataContext"); }
        }

        #endregion



        public BaseViewModel(UserControl control)
        {
            m_control = control;
            //m_userInfo = userInfo;
           // m_mode = param.Mode;
            Initialize();
            RegisterContoller();
        }
       
      

        #region Public Methods

        public virtual bool HasChanges
        {
            get
            {
                return (DataContext as DbContext).
                   ChangeTracker.Entries().Any(e => e.State == EntityState.Added
                             || e.State == EntityState.Deleted
                             || e.State == EntityState.Modified);
            }
        }
        
        public void RegisterContoller()
        {
            if (AttachedUserControl != null)
            {
                AttachedUserControl.Dispatcher.Invoke((Action)(() => { AttachedUserControl.DataContext = null; }));
                AttachedUserControl.Dispatcher.Invoke((Action)(() => { AttachedUserControl.DataContext = this; }));
            }
        }
      
        #endregion

        #region INotifyPropertyChanged

        public event PropertyChangedEventHandler PropertyChanged;

        protected void NotifyPropertyChanged(String info)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(info));
            }
        }
        #endregion

        #region Virtual Methods
        public virtual void Unload()
        {
            
            this.AddCommand = null;
            this.EditCommand = null;
            this.DeleteCommand = null;
            this.RefreshCommand = null;
            this.CloseCommand = null;
        }

        #region Command Methods
        public virtual void OnAddItem()
        {

        }
        public virtual bool CanAddItem()
        {
            return true;
        }
        public virtual void OnDeleteItem()
        {

        }
        public virtual bool CanDeleteItem()
        {
            return true;
        }
        public virtual void OnEditItem()
        {

        }
        public virtual bool CanEditItem()
        {
            return true;
        }
        public virtual void OnRefreshItem()
        {

        }
        public virtual bool CanRefreshItem()
        {
            return true;
        }
        #endregion

        #endregion
    }
}