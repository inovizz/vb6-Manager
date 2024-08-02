VERSION 5.00
Begin VB.Form collect 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Collection"
   ClientHeight    =   5355
   ClientLeft      =   45
   ClientTop       =   210
   ClientWidth     =   4935
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
   ScaleHeight     =   5355
   ScaleWidth      =   4935
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Pay 
      Caption         =   "&Save"
      Default         =   -1  'True
      Height          =   435
      Left            =   2400
      TabIndex        =   21
      Top             =   4680
      Width           =   2130
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Cancel"
      Height          =   435
      Left            =   360
      TabIndex        =   20
      Top             =   4680
      Width           =   2010
   End
   Begin VB.PictureBox Picture3 
      BackColor       =   &H00AAAD7E&
      Height          =   615
      Left            =   0
      ScaleHeight     =   555
      ScaleWidth      =   4875
      TabIndex        =   18
      Top             =   0
      Width           =   4935
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter Payments"
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
         TabIndex        =   19
         Top             =   120
         Width           =   5175
      End
   End
   Begin VB.TextBox Remark 
      Height          =   330
      Left            =   2310
      TabIndex        =   16
      Top             =   4155
      Width           =   2220
   End
   Begin VB.TextBox amt 
      Height          =   330
      Left            =   2310
      TabIndex        =   2
      Top             =   3735
      Width           =   2220
   End
   Begin VB.TextBox cno 
      Height          =   330
      Left            =   2310
      TabIndex        =   1
      Top             =   795
      Width           =   2115
   End
   Begin VB.Label Label4 
      Caption         =   "Remark"
      Height          =   225
      Left            =   420
      TabIndex        =   17
      Top             =   4260
      Width           =   1590
   End
   Begin VB.Label Label9 
      Caption         =   "Card Number"
      Height          =   225
      Left            =   420
      TabIndex        =   15
      Top             =   1320
      Width           =   1590
   End
   Begin VB.Label cardno 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   14
      Top             =   1215
      Width           =   2220
   End
   Begin VB.Label Label8 
      Caption         =   "Last Payment Date"
      Height          =   225
      Left            =   420
      TabIndex        =   13
      Top             =   3420
      Width           =   1590
   End
   Begin VB.Label lastdate 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   12
      Top             =   3315
      Width           =   2220
   End
   Begin VB.Label Label7 
      Caption         =   "Last Amount Paid"
      Height          =   225
      Left            =   420
      TabIndex        =   11
      Top             =   3000
      Width           =   1590
   End
   Begin VB.Label lastamt 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   10
      Top             =   2895
      Width           =   2220
   End
   Begin VB.Label Label6 
      Caption         =   "Due From"
      Height          =   225
      Left            =   420
      TabIndex        =   9
      Top             =   2580
      Width           =   1590
   End
   Begin VB.Label from 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   8
      Top             =   2475
      Width           =   2220
   End
   Begin VB.Label Label5 
      Caption         =   "Due Amount"
      Height          =   225
      Left            =   420
      TabIndex        =   7
      Top             =   2160
      Width           =   1590
   End
   Begin VB.Label due 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   6
      Top             =   2055
      Width           =   2220
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00FF0000&
      FillStyle       =   0  'Solid
      Height          =   330
      Left            =   4410
      Top             =   795
      Width           =   120
   End
   Begin VB.Label Label3 
      Caption         =   "Customer Name"
      Height          =   225
      Left            =   420
      TabIndex        =   5
      Top             =   1740
      Width           =   1590
   End
   Begin VB.Label cname 
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   2310
      TabIndex        =   4
      Top             =   1635
      Width           =   2220
   End
   Begin VB.Label Label2 
      Caption         =   "Amount"
      Height          =   225
      Left            =   420
      TabIndex        =   3
      Top             =   3840
      Width           =   1590
   End
   Begin VB.Label Label1 
      Caption         =   "Customer No"
      Height          =   225
      Left            =   420
      TabIndex        =   0
      Top             =   900
      Width           =   1590
   End
End
Attribute VB_Name = "collect"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cno_Change()
On Error Resume Next
Dim rsdis As ADODB.Recordset
Set rsdis = New ADODB.Recordset
rsdis.Open "select * from final2 where cno =" & cno.Text, db
If Not rsdis.EOF Then
    cname = rsdis!cname
    cardno = rsdis!cardno
    due = rsdis!payable
    from = Format(rsdis!enddate, "dd-mmm-yyyy")
    lastdate = rsdis!ldate
    lastamt = rsdis!lpayment
    amt = due
    amt.SelStart = 0
    amt.SelLength = Len(amt)
    amt.SetFocus
End If
rsdis.Close
End Sub

Private Sub cno_DblClick()
    Browse.Show vbModal
If CANCEL = False Then
    cno = selectcno
    cname = selectcname
End If
End Sub

Private Sub cno_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyF9 Then
    Browse.Show vbModal
If CANCEL = False Then
    cno = selectcno
    cname = selectcname
End If
End If
End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Pay_Click()
If Val(amt.Text) < 1 Then
MsgBox "Please check Amount", vbInformation
Exit Sub
Exit Sub
End If
db.Execute "insert into details (cno,receipt,payment,remark,createdon,modifiedon,createdby,modifiedby) Values (" & cno & ",0," & amt & ",'" & Remark & "',now(),now(),'" & uname & "','" & uname & "')"
db.Execute "UPDATE details INNER JOIN cmst ON details.cno = cmst.CNo SET details.types=cmst.types;"
MsgBox "Completed ...", vbInformation, "CB"
Unload Me
End Sub
