   M S B A M L   `   `   `  ����p  lTelerik.Windows.Controls.RibbonView, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7pSclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.RibbonViewTelerik.Windows.Controls  5      B >WPF.MDI, Version=1.1.0.0, Culture=neutral, PublicKeyToken=null2&clr-namespace:WPF.MDI;assembly=WPF.MDIWPF.MDI 5   
    IMS   IMS.Views.RibbionControl   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   j fTelerik.Windows.Controls.Data, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n	 jTelerik.Windows.Controls.GridView, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Input, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7p lTelerik.Windows.Controls.Navigation, Version=2012.1.215.40, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Ktelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
   5      stelerikRibbonSclr-namespace:Telerik.Windows.Controls;assembly=Telerik.Windows.Controls.RibbonView     	 
   5      <mdi&clr-namespace:WPF.MDI;assembly=WPF.MDI     	 
   5   
     � WindowState$  	Maximized=�5   M    � Title$4 .Nexgen Satellite - Inventory Management System��5   	   $	��650��6@   $	��550��6M    � Icon$1 +/IMS;component/Resources/Images/dishFav.ico��6Y   ��5      �� 5	   
    �� ImageSource$< 6/IMS;component/Resources/Images/bigstock-satellite.jpg��6   .��5      � -   5         �Name$ RootGrid��5       � 	Resources 5   
   *  $Telerik.Windows.Controls.MetroColors   MetroColors  AccentBrush   Color  	MainBrush  MenuItemSeparatorMargin  
BasicBrush  MenuTopLevelItemMargin ! MenuPopupIconsSeparatorMargin  MenuSubItemMargin  MarkerBrush 	 StrongBrush 
 MenuItemPadding  PanelBorderBrush �� Color �� 
TargetType*  $Telerik.Windows.Controls.RadMenuItem  SeparatorTemplate	 � ColumnDefinitions
 �� RelativeSource �� Path  SubMenuItemTemplate'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName �� TargetProperty g� Duration R� KeyTime R� Value  System.Windows.Visibility	 W� To ��Name F�Name ��Name   Icon   IconTemplate ��Name  SubMenuHeaderTemplate �� Stretch �Name � HorizontalOffset � VerticalOffset  RadMenuItemStyle �� 
TargetType  �� Property! �� Value&   Telerik.Windows.Controls.RadMenu'  !Telerik.Windows.Controls.MenuBase9	  3Telerik.Windows.Controls.Animation.AnimationManager:
  4Telerik.Windows.Controls.Animation.AnimationSelector" 
  
Animations7  1Telerik.Windows.Controls.Animation.SlideAnimation:  4Telerik.Windows.Controls.Animation.OrientedAnimation#   	Direction$   	SlideMode5  /Telerik.Windows.Controls.Animation.RadAnimation%   AnimationName6  0Telerik.Windows.Controls.Animation.BaseAnimation&   TargetElementName  DottedLineBrush' �� 
StartPoint( �� EndPoint) � MappingMode* � SpreadMethod+ � Color, � Offset  VerticalSplitterBrush  RecentDocumentTemplate.   (Telerik.Windows.Controls.RadRibbonButton- �� ElementName. �� Orientation  AvailableTemplatesTemplate/ � RowDefinitions0 �� TextAlignment  HelpItemTemplate��%y#  &	        &	      &	 3     &	 Q     &	 p     &	 �     &	 �     &	 �     &	 �     &		      &	
      &	 ;    &	 ^    7  7  &	 �    7  7  7  7  &	 s    7  7  7  7 	 7  7  7  7  7  7  &	 �    7 
 7  7  7  7  7  7  7  '  �    7  7  7  7  7  &	     &	     &	     &	 �    &	 S       5      6"   �� 5      $ Accent=�62   �� 5      $
 Main=�60   u�5      2 2 2 2q�6A   �� 5      $ Basic=�61   u�5      2q�6:   u�5      0 0 0 0q�6G   u�5      2q�65   �� 5      $ Marker=�62   �� 5      $ Strong=�62   u�5      6 3q�65   �� 5      $ 	#FFB0B0B0��67   �� 5      "  6   .R�5      � $��Stretch=�6   	 5      �� 5      $
��Auto �6+   �� 5       $��* �6+   .+�5"      � $��0��6   $
��Left=�6+   ��5#      �� 
 �� *TemplatedParent+$ Menu.IconColumnWidth�� 5$      $��1��6   $��2��6+   8��  .+�5%      �� $��1��6$   $	��Top=�6/   8�� 6G   5&      5'      5(      �� 5)      "  6:   .R�5*      � $ RootElement��6    5+        5,      CommonStates��. 5-        Highlighted��. 5.   "   �� .��5/   &   T� $ HighlightVisual��6D   $ 
Visibility�50      $ 0D�63   ..�51   *   i� $ 0��6A    52   .    53   2   Visible=�6F   55   +   56   '   57   #   58        59      Disabled��. 5:   "   �� .��5;   &   W� $ Opacity�66   $ ContentGrid��5<      $	 0.3X�60   $ 0:0:0D�69   5=   #   5>        5?      
Normal��6*   5@        5A      FocusStates��. 5B        	Unfocused��6*     5C      Focused��6*   5D        5E      CheckStates��. 5F        Checked��. 5G   "   �� .��5H   &   T� $
 Tick��6D   $ 
Visibility�5I      $ 0D�63   ..�5J   *   i� $ 0��6A    5K   .    5L   2   Visible=�6F   5N   +   5O   '   T� 5P   &   $
 Icon��6D   $ 
Visibility�5Q      $ 0D�63   ..�5R   *   i� $ 0��6A    5S   .    5T   2   	Collapsed=�6H   5V   +   5W   '   5X   #   5Y        5Z      	Unchecked��6*     5[      HideIcon��. 5\   "   �� .��5]   &   T� $
 Icon��6D   $ 
Visibility�5^      $ 0D�63   ..�5_   *   i� $ 0��6A    5`   .    5a   2   Visible=�6F   5c   +   5d   '   5e   #   5f      5g      .+�5i      �� #��z��6   #��z��6G   #��z��5j      � 5k      8��  .+�5l      �� $ HighlightVisual��6!   $y�	Collapsed=�6:   8�� 6Q   � 5m      $ ContentGrid��6   	 5n      �� 5o   "   $
��Auto �63   �� 5p   "   $��* �63   .+�5r      � ��5s   
   �� 
 �� *TemplatedParent+$ Menu.IconColumnWidth�.+�5t   "   F� $
 Tick��6'   $��0��65   $y�	Collapsed=�6E   $��LeftToRight=�6\   $��Center=�5u      $��Center=�6&   8�� =����    ��M Ѡ� �XO �@�3 `Vl � z � рa�     ѠZ2 �ˤ 	5w      �� 5x   "   $
 Icon��63   $��0��6A   $��2q�6Q   #��z 5y      #��z 5z      5{      �� 5|      $ Content��6-   $��1��6>   $��12(�6N   $��Segoe UI Semibold)�5}   
   #��z��6)   8�� #��z��5   
   #��z��5�   
   #��z��5�   
   #��z��5�   
   5�      5�      5�      5�      �� 5�      "  6<   .R�5�      � $ RootElement��6    5�        5�      CommonStates��. 5�        Highlighted��. 5�   "   �� .��5�   &   T� $ HighlightVisual��6D   $ 
Visibility�5�      $ 0D�63   ..�5�   *   i� $ 0��6A    5�   .    5�   2   Visible=�6F   5�   +   5�   '   5�   #   5�        5�      Disabled��. 5�   "   �� .��5�   &   W� $ Opacity�66   $ ContentGrid��5�      $	 0.3X�60   $ 0:0:0D�69   5�   #   5�        5�      
Normal��6*   5�        5�      FocusStates��. 5�        	Unfocused��6*     5�      Focused��6*   5�        5�      CheckStates��. 5�        Checked��. 5�   "   �� .��5�   &   T� $
 Icon��6D   $ 
Visibility�5�      $ 0D�63   ..�5�   *   i� $ 0��6A    5�   .    5�   2   	Collapsed=�6H   5�   +   5�   '   5�   #   5�        5�      	Unchecked��6*     5�      HideIcon��6*   5�      .+�5�      �� #��z��6   #��z��6G   #��z��5�      � 5�      8��  .+�5�      �� $ HighlightVisual��6!   $y�	Collapsed=�6:   8�� 6Q   � 5�      $ ContentGrid��6   	 5�      �� 5�   "   $
��Auto �63   �� 5�   "   $��* �63   �� 5�   "   $
��Auto �63   .+�5�      � ��5�   
   �� 
 �� *TemplatedParent+$ Menu.IconColumnWidth�.+�5�   "   �� $
 Icon��63   $��2q�6A   #��z 6L   #��z 5�      5�      �� 5�      $ Content��6-   $��1��6>   $��12(�6N   $��Segoe UI Semibold)�5�   
   #��z��6)   8�� #��z��5�   
   #��z��5�   
   #��z��5�   
   #��z��5�   
   F� 5�      $ 
ExpandIcon��6#   $��2��67   "����d%2�b-	Ѵ�g8c	��2��		8�� $
 Fill=�5�   .   $	��4 0q�6=   $��7.067��6J   $��Center=�5�   
   $��3.535��6%   5�      5�      � 5�      $ 
PART_Popup��6   $ 2��60   $ -2��6E   .��5�      � .+�5�      � $ PopupContentElement��6#   .+�5�   "   �� $��1q�6)   8�� 8�� ._�5�   &   � .+�5�   *   � $
��Left=�5�      ��5�      �� 
 �� *TemplatedParent+$ Menu.IconColumnWidth�.+�5�   .   �� 8�� $��0 0 2 0q�6Z   �� 5�   .   $��1��65   $��Right=�6?   $��Stretch=�6[   8�� 8�� 8��	 $��0 0 1 0q�5�   8   5�   +   �� 5�   *   $	��0 1q�69   5�   '   5�   #   5�      5�      5�      5�      5�      �� 5�      "  6-   .�5�      ��   � ��8!   6,   �� 5�        � ��
! ���� 6/   �� 5�        � ��8!  60   �� 5�        � ��$! 0q�64   �� 5�      !  �@ TopLevelHeaderTemplateKey8!  6>   �� 5�        �@ TopLevelItemTemplateKey8!  6<   �� 5�         �@ SubmenuHeaderTemplateKey8!  6=   �� 5�        �@ SubmenuItemTemplateKey8!  6;   �� 5�        �@ SeparatorTemplateKey8!  69   �� 5�        � ��8!  6-   �� 5�        � ��$
! Left=�6?   �� 5�        � ��$! Center=�6=   5�      �� 5�      "  6   .�5�      ��   � ��8!   67   �� 5�        �@ IconColumnWidth$! 28Q�64   �� 5�        � ��$! 0q�64   �� 5�        � ��
! �����6/   �� 5�        � ��8!  60   �� 5�        � ��8!  6/   �� 5�        �@ Orientation$! Vertical=�60   �� 5�        � ��! 5�      �� 5�      .R�5      �� 5     5     �� 5       � ��! 5     �� 5     "  6*   .R�5     � .+�5  "   � $ PopupContentElement��6'   .+�5	  &   �� #��z��6-   #��z��5
     #��z��5     ._�5  *   � .+�5  .   � $
��Left=�5     ��5     �� 
 �� *TemplatedParent+$ IconColumnWidth�.+�5  2   �� #��z��6<   $��0 0 2 0q�6`   �� 5  2   $��1��6<   $��Right=�6F   8�� 8�� 5     5  /   �� 5  .   $	��0 1q�6=   5  +   5  '   5  #   5     5     5     �� 5       �@	 AnimationSelector! 5     
  5     ." 5        $# In=�65   $	$ Top=�6D   $% Expand��6T   $& PopupContentElement��5!  
   5"     5$     5%     �� 5(     $' 0,0.5&�6:   $( 4,0.5&�6M   $) Absolute=�6^   $* Repeat=�5)     .��5*     � $+ 	#40000000��6   $, 0Q�61   � 5+     $+ 	#40000000��6   $	, 0.5Q�61   � 5,     $+ Transparent��6   $, 0.501Q�63   5-     �� 5.     $' 0.5,0&�6@   $( 0.5,1&�6S   .��5/     � $+ 	#10000000��6   $, 0Q�61   � 50     $+ 	#40000000��6   $
, 0.15Q�61   � 51     $+ 	#40000000��6   $
, 0.95Q�61   � 52     $+ 	#10000000��6   $, 1Q�61   53     �� 55     .R�56       $	��285��6j   ��60   �� $- UserControl��$ Command�.��57     �� $. 
Horizontal=�6!   .+�58     �� ��6    �� *ImageSource+�� 59     $��3 0 0 0q�6%   $
��Left=�66   .+�5:     �� $��0 0 0 2q�6@   ��6(   �� *Header+6@   �� 5;     
���iii���6(   �� *Folder+6@   5<     5=     5>     5?     �� 5A     .R�5B       $��Stretch=�60   $��0 5 0 0q�6S   ��5C     �� $- UserControl��$ Command�.��5D     � $��80��6   	 5E     / 5G     �� 5H     $
��Auto �6,   �� 5I     .+�5K     �� $
��None=�6    ��6/   �� *ImageSource+�� 5L     $
��Wrap=�6$   $0 Center=�68   $��2q�6O   $��1��6Z   $��Center=�5M  !   ��6	   �� *Header+6!   5N     5O     5P     �� 5R     .R�5S       $	��470��60   $��0 5 0 0q�6<   $
��Left=�6M   ��5T     �� $- UserControl��$ Command�.��5U     � 	 5V     �� 5W     $
��Auto �6/   �� 5X     .+�5Z     �� $
��None=�6    ��6/   �� *ImageSource+�� 5[     $��5,0,0,0q�6%   $��1��66   $��Center=�6F   .+�5\     �� ��6(   �� *Header+�� 5]     
���iii���6(   �� *Description+6E   5^     5_     5`     5a     5b     ��5c  
   �� 5d     / 5f  
   �� 5g     $
��Auto �6   �� 5h     $��* �6   .+�5j  
   ,   &Telerik.Windows.Controls.RadRibbonView  -   5        1  Name$1 radRibbonBar1��5j  E   2   HelpButtonVisibility$2 Visible=�6&   3   Title$3 Nexgen Satellite��6\   4   TitleBarVisibility$4 	Collapsed=�5k     "5   ApplicationButtonVisibility$5 Visible=�6%   $��0��6K   6   MinimizeButtonVisibility$6 Visible=�5l     7   	Backstage7 5m     1   +Telerik.Windows.Controls.RadRibbonBackstage  5n     .@�5o     5   /Telerik.Windows.Controls.RadRibbonBackstageItem  8   CloseOnClick8 .  $��General��6J   9   IsSelectable9 .  5p       5q     $��Sales��65   9 . 6E     5r     $��
Purchasing��65   9 .  6J     5s     $��	Inventory��65   :   IsGroupSeparator: . 6H     5t     $��Reports��65   ;   	IsDefault; . 6F     5u     $
��Exit��65   9 .  6D   5v     .@�5z     +   %Telerik.Windows.Controls.RadRibbonTab  -   5        $��tabHome��5z  =   $��
Home Group��6)   7   1Telerik.Windows.Controls.RibbonView.KeyTipService<   
AccessText$< C��6L   .@�5{     -   'Telerik.Windows.Controls.RadRibbonGroup  -   5        =  Name$= 
grpGeneral��5{  /   $��
Home Group��6C   (   "Telerik.Windows.Controls.ScreenTip>   Title$> 
Home Group��6W   ?   Variants? 5|     +   %Telerik.Windows.Controls.GroupVariant  5}     @   Variant$@ Medium=�65   A   Priority$A 0��6F   .@�5       -   5        B  Name$B btnHomePage��5  ]   C   Size$C Large=�6.   $��Bottom=�6;   D   	SplitTextD . E   Text$E 	Home Page��6�   $
��Auto��6�   $
��Auto��6�   F   
SmallImage$&F  ../Resources/Images/customer.jpg��6�   G   
LargeImage$&G  ../Resources/Images/customer.jpg��6�     5�     -   5        $B btnDashboard��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E 
Dash Board��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�   5�       5�     -   5        $= grpBusinessPartner��5�  /   $��Business Partner Group��6K   $> Business Partner Group��6k   ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -   5        $B btnCustomer��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Customer��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�     5�     -	   5        $B 	btnVendor��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Vendor��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�   5�     5�       5�     -
   5        $��tabIMS��5�  G   $��Inventory Management��6)   $< C��6U   .@�5�       -   5        $= grpSales��5�  /   $��Sales��6A   $> Sales��6P   H   DialogLauncherVisibility$H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -   5        $B 	btnQuotes��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E New Sales Quotes��6�   $
��Auto��6�   $
��Auto��6�   $#F ../Resources/Images/quote.png��6�   $#G ../Resources/Images/quote.png��6�     5�     -   5        $B btnNewOrder��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E New Sales Order��6�   $
��Auto��6�   $
��Auto��6�   $/F )../Resources/Images/sales-report-icon.png��6�   $/G )../Resources/Images/sales-report-icon.png��6�     5�     -   5        $B btnSaleOrderList��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Sales Order List��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnRecentOrders��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Recent Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnOpenOrders��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Open Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnInvoicedOrders��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Invoiced Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnPaidOrders��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Paid Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�   5�       5�     -   5        $= grpPurchasing��5�  /   $��
Purchasing��6F   $> 
Purchasing��6Z   $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -   5        $B btnPO��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E New Purcase Order��6}   $
��Auto��6�   $
��Auto��6�   $-F '../Resources/Images/purchase-orders.png��6�   $-G '../Resources/Images/purchase-orders.png��6�     5�     -   5        $B btnPOL��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Purchase Order List��6~   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnRPO��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Recent Orders��6~   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnOPO��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Open Orders��6~   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B btnRecievePO��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Received Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�     5�     -   5        $B 	btnPaidPO��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Paid Orders��6�   $
��Auto��6�   $
��Auto��6�   $3F -../Resources/Images/Inventory maintenance.png��6�   $3G -../Resources/Images/Inventory maintenance.png��6�   5�       5�     -   5        $= Customergroup��5�  /   $��	Inventory��6F   $> 	Inventory��6Y   I   Description$I Inventory...��5�     $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -   5        $B btnProductPricing��5�  \   $C Large=�6-   $��Bottom=�6:   D . $E Product Pricing��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�     5�     -   5        $B btnCurrentStock��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Current Stock��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�     5�     -   5        $B btnAdjustStock��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Adjust Stock��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�   5�     5�       5�     -   5        $��TabRecharge��5�  ;   $��Recharge��6)   $< C��6N   .@�5�       -   5        $= rechargeGroup��5�  /   $��	Recharges��6F   $> 	Recharges��6Y   $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -    5        $B 
btnRechrge��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Recharge��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/recharge.png��6�   $&G  ../Resources/Images/recharge.png��6�   5�     5�       5�     -!   5        $��TabExpenses��5�  ;   $��Expenses��6)   $< C��6N   .@�5�       -"   5        $= ExpensesGroup��5�  /   $��Reports��6F   $> Expenses��6W   $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -#   5        $B btnExpenses��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E 
Report - 1��6�   $
��Auto��6�   $
��Auto��6�   $$F ../Resources/Images/Report.ico��6�   $$G ../Resources/Images/Report.ico��6�   5�     5�       5�     -$   5        $��	SetupsTab��5�  9   $��Setups��6)   $< C��6J   .@�5�       -%   5        $= 
setupgroup��5�  /   $��Setups��6C   $> Setups��6S   $I Setups��5�     $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -&   5        $B 
btnCompany��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Company��6�   $
��Auto��6�   $
��Auto��6�   $$F ../Resources/Images/Report.ico��6�   $$G ../Resources/Images/Report.ico��6�   6    5�     -'   5        $B 
btnProduct��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E New Product��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�     5�     -(   5        $B btnProductCategory��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E Product Category��6�   $
��Auto��6�   $
��Auto��6�   $&F  ../Resources/Images/customer.jpg��6�   $&G  ../Resources/Images/customer.jpg��6�   5�     5�       5�     -)   5        $��
reportsTab��5�  :   $��Reports��6)   $< C��6L   .@�5�       -*   5        $= reportsgroup��5�  /   $��Reports��6E   $> Reports��6V   $I Reports��5�     $H 	Collapsed=�5�     ? 5�       5�     $@ Medium=�65   $A 0��6F   .@�5�       -+   5        $B 
btnReport1��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E 
Report - 1��6�   $
��Auto��6�   $
��Auto��6�   $$F ../Resources/Images/Report.ico��6�   $$G ../Resources/Images/Report.ico��6�     5�     -,   5        $B 
btnReport2��5�  ]   $C Large=�6.   $��Bottom=�6;   D . $E 
Report - 2��6�   $
��Auto��6�   $
��Auto��6�   $$F ../Resources/Images/Report.ico��6�   $$G ../Resources/Images/Report.ico��6�   5�     5�     5        WPF.MDI.MdiContainer  5  
   --   5        $��MainMdiContainer��5  8   J   Theme$
J Aero=�6   $��1��6*   5     5     5     