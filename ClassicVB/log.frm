VERSION 5.00
Begin VB.Form log 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Login"
   ClientHeight    =   2955
   ClientLeft      =   45
   ClientTop       =   210
   ClientWidth     =   4185
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2955
   ScaleWidth      =   4185
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00AAAD7E&
      Height          =   615
      Left            =   0
      ScaleHeight     =   555
      ScaleWidth      =   11355
      TabIndex        =   6
      Top             =   0
      Width           =   11415
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "Login"
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
         TabIndex        =   7
         Top             =   120
         Width           =   5175
      End
   End
   Begin VB.CommandButton cmd_cancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   720
      TabIndex        =   5
      Top             =   2160
      Width           =   1095
   End
   Begin VB.CommandButton cmd_ok 
      Caption         =   "Ok"
      Default         =   -1  'True
      Height          =   375
      Left            =   2280
      TabIndex        =   4
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox txt_pwd 
      Height          =   315
      IMEMode         =   3  'DISABLE
      Left            =   1800
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1560
      Width           =   1695
   End
   Begin VB.TextBox txt_usr 
      Height          =   315
      Left            =   1800
      TabIndex        =   2
      Top             =   960
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Password"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   1620
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "User Name"
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   990
      Width           =   1095
   End
End
Attribute VB_Name = "log"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cnt As Integer
Private Sub cmd_cancel_Click()
    Unload Me
End Sub

Private Sub cmd_ok_Click()
'MsgBox txt_usr
'MsgBox txt_pwd
Dim rspwd As ADODB.Recordset
Set rspwd = New ADODB.Recordset
sql = "select * from logon where usr = '" & txt_usr & "' and pwd = '" & txt_pwd & "'"
rspwd.Open sql, db
If Not rspwd.EOF Then
    admin = rspwd!admin
    user = rspwd!user
    uname = rspwd!usr
    Unload Me
    board.Show
Else
    MsgBox "Please check UserId and Password", vbCritical, "CB"
    cnt = cnt + 1
    If cnt > 3 Then
        MsgBox "system failed", vbCritical, "CB"
        rspwd.Close
        db.Close
        End
    End If
End If
rspwd.Close
End Sub

Private Sub Form_Load()
cnt = 0
End Sub
