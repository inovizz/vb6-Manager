VERSION 5.00
Object = "{DA3F9C1B-6C01-4365-B278-772BDA4DE98C}#1.0#0"; "mscoree.dll"
Begin VB.Form BulkImport 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Bulk Import"
   ClientHeight    =   5520
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   5970
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5520
   ScaleWidth      =   5970
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin HybridAppControlsCtl.MultiThreadedImportControl MultiThreadedImportControl1 
      Height          =   5175
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   5655
      Size            =   "377, 345"
      Enabled         =   "True"
      Object.Visible         =   "True"
      BackColor       =   "Control"
      BackgroundColor =   "-2147483633"
      ForegroundColor =   "-2147483630"
      Location        =   "8, 8"
      Object.TabIndex        =   "0"
      ForeColor       =   "ControlText"
      Name            =   "MultiThreadedImportControl"
   End
End
Attribute VB_Name = "BulkImport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
