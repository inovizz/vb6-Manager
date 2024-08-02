VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form INS 
   Caption         =   "INWARDS"
   ClientHeight    =   4710
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7050
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   4710
   ScaleWidth      =   7050
   StartUpPosition =   2  'CenterScreen
   Begin MSDataGridLib.DataGrid gd 
      Bindings        =   "INWARDS.frx":0000
      Height          =   2415
      Left            =   2130
      TabIndex        =   13
      Top             =   1530
      Visible         =   0   'False
      Width           =   3855
      _ExtentX        =   6800
      _ExtentY        =   4260
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
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
   Begin VB.TextBox TID 
      Height          =   315
      Left            =   2130
      TabIndex        =   14
      Top             =   750
      Width           =   1725
   End
   Begin VB.TextBox TNAME 
      Height          =   315
      Left            =   2130
      TabIndex        =   0
      Top             =   1200
      Width           =   3795
   End
   Begin VB.TextBox CRAMT 
      Height          =   315
      Left            =   2130
      TabIndex        =   1
      Top             =   1650
      Width           =   1725
   End
   Begin VB.TextBox NAR 
      Height          =   315
      Left            =   2130
      TabIndex        =   2
      Top             =   2100
      Width           =   3795
   End
   Begin VB.TextBox FACTOR 
      Height          =   315
      Left            =   2130
      TabIndex        =   3
      Top             =   2520
      Width           =   1725
   End
   Begin VB.CommandButton OK 
      Caption         =   "OK"
      Height          =   435
      Left            =   3240
      TabIndex        =   6
      Top             =   3690
      Width           =   1365
   End
   Begin VB.CommandButton CANCEL 
      Caption         =   "CANCEL"
      Height          =   435
      Left            =   5010
      TabIndex        =   5
      Top             =   3690
      Width           =   1365
   End
   Begin VB.TextBox REF 
      Height          =   315
      Left            =   2130
      TabIndex        =   4
      Top             =   2940
      Width           =   1725
   End
   Begin MSAdodcLib.Adodc ad 
      Height          =   330
      Left            =   150
      Top             =   60
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
      CommandType     =   1
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
      Connect         =   $"INWARDS.frx":0011
      OLEDBString     =   $"INWARDS.frx":009B
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from amst"
      Caption         =   "ad"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "TID"
      Height          =   225
      Left            =   750
      TabIndex        =   12
      Top             =   780
      Width           =   1365
   End
   Begin VB.Label Label2 
      Caption         =   "TNAME"
      Height          =   225
      Left            =   750
      TabIndex        =   11
      Top             =   1230
      Width           =   1365
   End
   Begin VB.Label Label3 
      Caption         =   "CRAMT"
      Height          =   225
      Left            =   750
      TabIndex        =   10
      Top             =   1680
      Width           =   1365
   End
   Begin VB.Label Label4 
      Caption         =   "NAR"
      Height          =   225
      Left            =   750
      TabIndex        =   9
      Top             =   2130
      Width           =   1365
   End
   Begin VB.Label Label5 
      Caption         =   "FACTOR"
      Height          =   225
      Left            =   750
      TabIndex        =   8
      Top             =   2550
      Width           =   1365
   End
   Begin VB.Label Label6 
      Caption         =   "REF"
      Height          =   225
      Left            =   750
      TabIndex        =   7
      Top             =   2970
      Width           =   1365
   End
End
Attribute VB_Name = "INS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CANCEL_Click()
Unload Me
End Sub

Private Sub CRAMT_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If

End Sub

Private Sub FACTOR_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If

End Sub

Private Sub NAR_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If

End Sub

Private Sub OK_Click()
db.Execute "INSERT INTO AC (TID,TNAME,DRAMT,CRAMT,NAR,CON,MON,FACTOR,REF) VALUES (" & TID & ",'" & TNAME & "',0," & CRAMT & ",'" & NAR & "',NOW(),NOW()," & FACTOR & ",'" & Val(REF) & "')"
MsgBox "OPERATION COMPLETED", vbInformation
Unload Me
End Sub

Private Sub REF_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If

End Sub

Private Sub TID_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If
End Sub

Private Sub TNAME_KeyDown(KeyCode As Integer, Shift As Integer)
    gd.Visible = True
    ad.RecordSource = "select tid,tname from amst where tname like '" & TNAME.Text & "%'"
    ad.Refresh
    BUSY = False
End Sub

Private Sub TNAME_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
   gd.Visible = False
    gd.Col = 0
    TID = gd.Text
    gd.Col = 1
    TNAME = gd.Text
End If
If KeyAscii = 13 Then
SendKeys "{TAB}"
End If
BUSY = True
End Sub
