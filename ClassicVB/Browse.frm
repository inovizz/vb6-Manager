VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form Browse 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "LOV"
   ClientHeight    =   5460
   ClientLeft      =   45
   ClientTop       =   210
   ClientWidth     =   5355
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5460
   ScaleWidth      =   5355
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   1440
      Top             =   3720
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00AAAD7E&
      Height          =   615
      Left            =   0
      ScaleHeight     =   555
      ScaleWidth      =   11355
      TabIndex        =   4
      Top             =   0
      Width           =   11415
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Search Customers"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   240
         TabIndex        =   5
         Top             =   120
         Width           =   5175
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Ok"
      Default         =   -1  'True
      Height          =   435
      Left            =   3000
      TabIndex        =   3
      Top             =   4785
      Width           =   2115
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cancel"
      Height          =   435
      Left            =   240
      TabIndex        =   2
      Top             =   4785
      Width           =   2115
   End
   Begin VB.TextBox txtbrowse 
      Height          =   330
      Left            =   1680
      TabIndex        =   0
      Top             =   690
      Width           =   2325
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Browse.frx":0000
      Height          =   3480
      Left            =   210
      TabIndex        =   6
      Top             =   1215
      Width           =   4950
      _ExtentX        =   8731
      _ExtentY        =   6138
      _Version        =   393216
      AllowUpdate     =   0   'False
      HeadLines       =   1
      RowHeight       =   17
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.Label Label1 
      Caption         =   "Find"
      Height          =   225
      Left            =   945
      TabIndex        =   1
      Top             =   795
      Width           =   645
   End
End
Attribute VB_Name = "Browse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Cancel = True
Unload Me
End Sub

Private Sub Command2_Click()
Cancel = False
DataGrid1.Col = 0
selectcno = DataGrid1.Text
DataGrid1.Col = 1
selectcname = DataGrid1.Text
Unload Me
End Sub

Private Sub Form_Initialize()
Adodc1.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & App.Path & "\data.mdb;Persist Security Info=False;"
Adodc1.RecordSource = "select cno,cname from cmst where cname like '%" & txtbrowse & "%'"
Adodc1.Refresh
End Sub

Private Sub txtbrowse_Change()
Adodc1.RecordSource = "select cno,cname from cmst where cname like '%" & txtbrowse & "%'"
Adodc1.Refresh
End Sub

Private Sub txtbrowse_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
DataGrid1.Col = 0
selectcno = DataGrid1.Text
DataGrid1.Col = 1
selectcname = DataGrid1.Text
Unload Me
End If
End Sub
