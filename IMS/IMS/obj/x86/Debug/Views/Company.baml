   M S B A M L   `   `   `  ����I  ENSUserControls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG4clr-namespace:NSUserControls;assembly=NSUserControlsNSUserControls  5      G4clr-namespace:NSUserControls;assembly=NSUserControlsNSUserControls  5       IMS   IMS.Views.Company   5      ACommonUI4clr-namespace:NSUserControls;assembly=NSUserControls  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   p lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j fTelerik.Windows.Controls.Data, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n	 jTelerik.Windows.Controls.GridView, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Input, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation    	 
   5   
   UNsUserControls4clr-namespace:NSUserControls;assembly=NSUserControls    	 
   5      $	��300��5   
   $	��300��6   .��5      � .+�5
   
      NSUserControls.NSGridView  -   5        $��RadGridView1��5
   $   $	��386��5      $	��500��6.   $	��700��6>     � DataContext  5
   8   �� *DataContext+   Columns 5      1 	 +Telerik.Windows.Controls.GridViewDataColumn  5      6 	 0Telerik.Windows.Controls.GridViewBoundColumnBase   Header$ Company Name��6-   - 	 'Telerik.Windows.Controls.GridViewColumn   Width? 	 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$ * 6�      DataMemberBinding 6C   �� *Company_Name+ �� UpdateSourceTrigger$ PropertyChanged=�6�   5      �� 5   
   .+�5   
   �� $��Button��6   $
��Left=�6"   $	��Top=�6=   $��75��6U   ��6`   �� *ButtonCommand+�� 5   
   $��Button1��6   $
��Left=�6#   $	��Top=�6>   $��75��6V   ��6a   �� *ButtonCommand1+5      5      5      