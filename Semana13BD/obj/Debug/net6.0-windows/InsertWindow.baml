   M S B A M L   `   `   `  ����E  ASemana13BD, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Semana13BD
Semana13BD  5   	       Semana13BD.InsertWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:Semana13BD     5   	     � Title$  InsertWindow��5   	   $	��450��6   $	��800��6+   .��5	      � .+�5
   
   �� -   5         ��Name$ 
txtNombres��5
      $��Center=�6&   $��0,99,0,0q�6C    �� TextWrapping$
 Wrap=�6U   $�� ��6i   $	��Top=�6q   $	��120��6�   �� 5   
   -   5         ��Name$ 	textBlock��5      $
��Left=�6'   $��265,101,0,0q�6B   $
��Wrap=�6W   $��Nombres:��6k   $	��Top=�6{    J� RenderTransformOrigin$ 0.243,-0.67&�6�   �� 5   
   -   5        $ txtApellidos��5      $��Center=�6(   $��	0,139,0,0q�6E   $
 Wrap=�6X   $�� ��6l   $	��Top=�6t   $	��120��6�   �� 5   
   -   5        $ textBlock_Copy��5      $
��Left=�6,   $��265,141,0,0q�6G   $
��Wrap=�6\   $��
Apellidos:��6p   $	��Top=�6�   $ 0.243,-0.67&�6�   �� 5   
   -   5        $ 	txtCarnet��5      $��Center=�6%   $��	0,186,0,0q�6B   $
 Wrap=�6U   $�� ��6i   $	��Top=�6q   $	��120��6�   �� 5   
   -   5        $ textBlock_Copy1��5      $
��Left=�6-   $��265,188,0,0q�6H   $
��Wrap=�6]   $��Carnet��6q   $	��Top=�6   $ 0.243,-0.67&�6�   �� 5   
   -   5        $ txtTelefono��5      $��Center=�6'   $��	0,235,0,0q�6D   $
 Wrap=�6W   $�� ��6k   $	��Top=�6s   $	��120��6�   �� 5   
   -   5        $ textBlock_Copy2��5      $
��Left=�6-   $��265,237,0,0q�6H   $
��Wrap=�6]   $��Telefono��6q   $	��Top=�6�   $ 0.243,-0.67&�6�   �� 5   
   -	   5         ��Name$ btnCrear��5      $��Guardar��6#   $
��Left=�65   $��360,315,0,0q�6P   $	��Top=�6e   6}   �� 5   
   -
   5        $ txtId��5      $��Center=�6!   $��0,66,0,0q�6>   $
 Wrap=�6P   $�� ��6d   $	��Top=�6l   $	��120��6�   �� 5   
   -   5        $ textBlock_Copy3��5      $
��Left=�6-   $��
265,68,0,0q�6H   $
��Wrap=�6\   $��Id��6p   $	��Top=�6z   $ 0.243,-0.67&�6�   �� 5   
   -   5        $ textBlock_Copy4��5      $
��Left=�6-   $��265,284,0,0q�6H   $
��Wrap=�6]   $��Carrera��6q   $	��Top=�6�   $ 0.243,-0.67&�6�   �� 5   
   -   5         ��Name$ 
cbCarreras��5       �� DisplayMemberPath$ Nombre��5       �� SelectedValuePath$ Id��5      $��Center=�5      $��	0,278,0,0q�60   $	��Top=�6C   $	��120��6[   	 �� SelectedValue	 5   '   �� *	Carerra+
 �� Mode$
 OneWay=�5   [   5      5      