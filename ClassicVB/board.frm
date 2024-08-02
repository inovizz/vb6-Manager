VERSION 5.00
Begin VB.Form board 
   BackColor       =   &H8000000A&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dash Board"
   ClientHeight    =   7110
   ClientLeft      =   -150
   ClientTop       =   420
   ClientWidth     =   8565
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   Icon            =   "board.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7110
   ScaleWidth      =   8565
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   2955
      Left            =   10020
      ScaleHeight     =   2925
      ScaleWidth      =   3225
      TabIndex        =   11
      Top             =   1830
      Width           =   3255
      Begin VB.Frame Frame1 
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         Height          =   2955
         Left            =   0
         TabIndex        =   20
         Top             =   3120
         Width           =   3165
         Begin VB.Frame Frame2 
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   0  'None
            Height          =   2505
            Left            =   60
            TabIndex        =   21
            Top             =   360
            Width           =   3045
            Begin VB.Image Image14 
               Height          =   330
               Left            =   120
               Picture         =   "board.frx":0442
               Top             =   1080
               Width           =   345
            End
            Begin VB.Label Label2 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   26
               Top             =   330
               Width           =   2235
            End
            Begin VB.Label Label1 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   25
               Top             =   1560
               Width           =   2235
            End
            Begin VB.Image Image6 
               Height          =   330
               Left            =   120
               Picture         =   "board.frx":0AB4
               Top             =   270
               Width           =   345
            End
            Begin VB.Image Image7 
               Height          =   330
               Left            =   120
               Picture         =   "board.frx":1126
               Top             =   1470
               Width           =   345
            End
            Begin VB.Image Image12 
               Height          =   330
               Left            =   120
               Picture         =   "board.frx":1798
               Top             =   1860
               Width           =   345
            End
            Begin VB.Label dates 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   24
               Top             =   1950
               Width           =   2235
            End
            Begin VB.Label Label15 
               BackStyle       =   0  'Transparent
               Caption         =   "Admin Mode"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   23
               Top             =   1170
               Width           =   2235
            End
            Begin VB.Image Image15 
               Height          =   330
               Left            =   120
               Picture         =   "board.frx":1E0A
               Top             =   690
               Width           =   345
            End
            Begin VB.Label sdate 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   22
               Top             =   780
               Width           =   2235
            End
         End
         Begin VB.Label Label8 
            BackStyle       =   0  'Transparent
            Caption         =   "Operational Details !"
            ForeColor       =   &H00FFFFFF&
            Height          =   255
            Left            =   120
            TabIndex        =   27
            Top             =   90
            Width           =   2235
         End
      End
      Begin VB.Frame Frame3 
         BackColor       =   &H00800000&
         BorderStyle     =   0  'None
         Height          =   2865
         Left            =   30
         TabIndex        =   12
         Top             =   30
         Width           =   3165
         Begin VB.Frame Frame4 
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   0  'None
            Height          =   2385
            Left            =   60
            TabIndex        =   13
            Top             =   390
            Width           =   3045
            Begin VB.Label due 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   18
               Top             =   1920
               Width           =   2235
            End
            Begin VB.Image Image19 
               Height          =   330
               Left            =   180
               Picture         =   "board.frx":247C
               Top             =   1830
               Width           =   360
            End
            Begin VB.Label years 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   17
               Top             =   1140
               Width           =   2235
            End
            Begin VB.Label items 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   16
               Top             =   1530
               Width           =   2235
            End
            Begin VB.Image Image17 
               Height          =   330
               Left            =   180
               Picture         =   "board.frx":2AEE
               Top             =   1050
               Width           =   360
            End
            Begin VB.Image Image16 
               Height          =   330
               Left            =   180
               Picture         =   "board.frx":3160
               Top             =   1440
               Width           =   360
            End
            Begin VB.Image Image8 
               Height          =   330
               Left            =   180
               Picture         =   "board.frx":37D2
               Top             =   660
               Width           =   360
            End
            Begin VB.Image Image9 
               Height          =   330
               Left            =   180
               Picture         =   "board.frx":3E44
               Top             =   270
               Width           =   360
            End
            Begin VB.Label months 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   15
               Top             =   750
               Width           =   2235
            End
            Begin VB.Label today 
               BackStyle       =   0  'Transparent
               Caption         =   "Label1"
               ForeColor       =   &H00000000&
               Height          =   255
               Left            =   600
               TabIndex        =   14
               Top             =   360
               Width           =   2235
            End
         End
         Begin VB.Label Label14 
            BackStyle       =   0  'Transparent
            Caption         =   "Collection Summary !"
            ForeColor       =   &H00FFFFFF&
            Height          =   255
            Left            =   150
            TabIndex        =   19
            Top             =   90
            Width           =   2235
         End
      End
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      Height          =   6945
      Left            =   90
      ScaleHeight     =   6945
      ScaleWidth      =   8385
      TabIndex        =   0
      Top             =   60
      Width           =   8385
      Begin VB.Image Image18 
         Height          =   4395
         Left            =   3510
         Picture         =   "board.frx":44B6
         Top             =   810
         Width           =   4515
      End
      Begin VB.Label Label17 
         BackStyle       =   0  'Transparent
         Caption         =   "System"
         Height          =   315
         Left            =   330
         TabIndex        =   10
         Top             =   3690
         Width           =   1725
      End
      Begin VB.Image Image23 
         Height          =   645
         Left            =   330
         Picture         =   "board.frx":44FA0
         Top             =   4050
         Width           =   750
      End
      Begin VB.Image Image22 
         Height          =   150
         Left            =   330
         Picture         =   "board.frx":4696A
         Top             =   3930
         Width           =   4380
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter Complaint"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1260
         MouseIcon       =   "board.frx":48BE4
         MousePointer    =   99  'Custom
         TabIndex        =   9
         Top             =   6120
         Width           =   1635
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Application Settings"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1170
         MouseIcon       =   "board.frx":48D36
         MousePointer    =   99  'Custom
         TabIndex        =   8
         Top             =   4410
         Width           =   2235
      End
      Begin VB.Image Image20 
         Height          =   240
         Left            =   780
         Picture         =   "board.frx":48E88
         Top             =   6120
         Width           =   240
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "Complaint Bulk Import to Sugar CRM"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   375
         Left            =   4050
         MouseIcon       =   "board.frx":48FEB
         MousePointer    =   99  'Custom
         TabIndex        =   7
         Top             =   6120
         Width           =   3315
      End
      Begin VB.Image Image5 
         Height          =   240
         Left            =   3690
         Picture         =   "board.frx":4913D
         Top             =   6120
         Width           =   240
      End
      Begin VB.Image Image1 
         Height          =   585
         Left            =   450
         Picture         =   "board.frx":4938A
         Top             =   5280
         Width           =   2925
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00B6EEF1&
         FillColor       =   &H00B6EEF1&
         FillStyle       =   0  'Solid
         Height          =   1095
         Left            =   300
         Top             =   5640
         Width           =   7815
      End
      Begin VB.Image Image2 
         Height          =   150
         Left            =   330
         Picture         =   "board.frx":4ED60
         Top             =   2970
         Width           =   4380
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "Customer Details"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1170
         MouseIcon       =   "board.frx":50FDA
         MousePointer    =   99  'Custom
         TabIndex        =   6
         Top             =   3450
         Width           =   2235
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "Collection Reports"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1170
         MouseIcon       =   "board.frx":5112C
         MousePointer    =   99  'Custom
         TabIndex        =   5
         Top             =   2370
         Width           =   2235
      End
      Begin VB.Label Label10 
         BackStyle       =   0  'Transparent
         Caption         =   "Enter Payments"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   1170
         MouseIcon       =   "board.frx":5127E
         MousePointer    =   99  'Custom
         TabIndex        =   4
         Top             =   1290
         Width           =   2235
      End
      Begin VB.Image Image13 
         Height          =   645
         Left            =   300
         Picture         =   "board.frx":513D0
         Top             =   930
         Width           =   750
      End
      Begin VB.Image Image11 
         Height          =   645
         Left            =   300
         Picture         =   "board.frx":52D9A
         Top             =   2040
         Width           =   750
      End
      Begin VB.Image Image10 
         Height          =   645
         Left            =   330
         Picture         =   "board.frx":54764
         Top             =   3090
         Width           =   750
      End
      Begin VB.Image Image4 
         Height          =   150
         Left            =   330
         Picture         =   "board.frx":5612E
         Top             =   1890
         Width           =   4380
      End
      Begin VB.Image Image3 
         Height          =   150
         Left            =   330
         Picture         =   "board.frx":583A8
         Top             =   810
         Width           =   4380
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Customers"
         Height          =   315
         Left            =   330
         TabIndex        =   3
         Top             =   2730
         Width           =   1725
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Business Analysis"
         Height          =   315
         Left            =   330
         TabIndex        =   2
         Top             =   1650
         Width           =   1815
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Data Collection"
         Height          =   315
         Left            =   330
         TabIndex        =   1
         Top             =   570
         Width           =   1635
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   3600
      Top             =   3960
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
   End
   Begin VB.Menu mnucmaster 
      Caption         =   "CustomerMaster"
   End
   Begin VB.Menu mnucollect 
      Caption         =   "Payment"
      Begin VB.Menu mnureport 
         Caption         =   "Report"
         Begin VB.Menu dailyreport 
            Caption         =   "Daily Report"
         End
         Begin VB.Menu monthlyreport 
            Caption         =   "Monthly Report"
         End
         Begin VB.Menu yearlyreport 
            Caption         =   "Yearly Report"
         End
         Begin VB.Menu usryearly 
            Caption         =   "User Yearly"
         End
         Begin VB.Menu usrmonthly 
            Caption         =   "User Monthly"
         End
         Begin VB.Menu usrtoday 
            Caption         =   "User Today"
         End
         Begin VB.Menu duelist 
            Caption         =   "User Due List"
         End
      End
   End
End
Attribute VB_Name = "board"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub dailyreport_Click()
todays.Show
End Sub

Private Sub duelist_Click()
dues.Show
End Sub

Private Sub Form_Load()
Ctoday = "Todays          (Rs.) :    "
Cmonth = "Months         (Rs.) :    "
Cyear = "Years            (Rs.) :    "
Ccust = "Customers  (No.) :    "
Cdue = "Due Amt       (Rs.) :    "
sdate = "Logged at " & CStr(Time)
Label2 = uname & " is Logged ..."
Dim rs As ADODB.Recordset
Set rs = New ADODB.Recordset
rs.Open "select sum(payment) as val from today", db, adOpenDynamic, adLockOptimistic
If Not rs.EOF Then
    today = Ctoday & CStr(IIf(IsNull(rs!Val), 0, rs!Val))
Else
    today = Ctoday & "No Records Found"
End If
rs.Close
rs.Open "select sum(payment) as val from monthly", db, adOpenDynamic, adLockOptimistic
If Not rs.EOF Then
    months = Cmonth & CStr(IIf(IsNull(rs!Val), 0, rs!Val))
Else
    months = Cmonth & "0"
End If
rs.Close
rs.Open "select sum(payment) as val from yearly", db, adOpenDynamic, adLockOptimistic
If Not rs.EOF Then
    If Not IsNull(rs!Val) Then
    years = Cyear & CStr(rs!Val)
    Else
    years = Cyear & "0"
    End If
Else
    years = Cyear & "0"
End If
rs.Close
rs.Open "select count(*) as val from cmst", db, adOpenDynamic, adLockOptimistic
If Not rs.EOF Then
    items = Ccust & CStr(rs!Val)
Else
    items = Ccust & "0"
End If
rs.Close
rs.Open "select sum(due) as val from duelist", db, adOpenDynamic, adLockOptimistic
If Not rs.EOF Then
    due = Cdue & CStr(rs!Val)
Else
    due = Cdue & "0"
End If
rs.Close

'setting variables for .net
Dim rsSettings As ADODB.Recordset
Set rsSettings = New ADODB.Recordset
rsSettings.Open "select * from appsetting", db, adOpenDynamic, adLockOptimistic
While Not rsSettings.EOF
    g_InteropToolbox.Globals.Add CStr(rsSettings!Name), CStr(rsSettings!Value)
    rsSettings.MoveNext
Wend
rsSettings.Close
End Sub

Private Sub INWARDS_Click()
INS.Show
End Sub

Private Sub Form_Unload(CANCEL As Integer)
    ' Signal Application Shutdown
    g_InteropToolbox.EventMessenger.RaiseApplicationShutdownEvent

End Sub

Private Sub Label10_Click()
collect.Show
End Sub

Private Sub Label11_Click()
PopupMenu mnureport
End Sub

Private Sub Label12_Click()
customer.Show vbModal
End Sub

Private Sub Label13_Click()
Settings.Show
End Sub

Private Sub Label7_Click()
    Dim objCreateCase As New CreateCase
    objCreateCase.Show vbModeless
End Sub

Private Sub Label9_Click()
BulkImport.Show
End Sub

Private Sub mnucmaster_Click()
customer.Show
End Sub

Private Sub mnucollect_Click()
collect.Show
End Sub

Private Sub monthlyreport_Click()

monthly.Show
End Sub

Private Sub OUTWARDS_Click()
OUT.Show
End Sub

Private Sub Timer1_Timer()
Label1 = "Current Time : " & CStr(Time)
dates = "System Date : " & Format(Date, "dd-mmm-yyyy")
End Sub

Private Sub usrmonthly_Click()

usrmonthys.Show
End Sub

Private Sub usrtoday_Click()

usrtodays.Show
End Sub

Private Sub usryearly_Click()

usryearlys.Show
End Sub

Private Sub yearlyreport_Click()

yearly.Show
End Sub



