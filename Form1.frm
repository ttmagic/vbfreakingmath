VERSION 5.00
Begin VB.Form game 
   BackColor       =   &H00025DFF&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   9000
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6000
   BeginProperty Font 
      Name            =   ".VnArial"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   9000
   ScaleMode       =   0  'User
   ScaleWidth      =   6578.948
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer hard 
      Interval        =   500
      Left            =   240
      Top             =   5520
   End
   Begin VB.Timer timer 
      Interval        =   1
      Left            =   5280
      Top             =   5520
   End
   Begin VB.PictureBox timebar 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   135
      Left            =   0
      ScaleHeight     =   135
      ScaleWidth      =   5955
      TabIndex        =   0
      Top             =   0
      Width           =   5955
   End
   Begin VB.Label lbldiem 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00025DFF&
      Caption         =   "69"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   615
      Left            =   4560
      TabIndex        =   3
      Top             =   240
      Width           =   1335
   End
   Begin VB.Image sai 
      Height          =   2685
      Left            =   3120
      Picture         =   "Form1.frx":0000
      Top             =   6120
      Width           =   2700
   End
   Begin VB.Image Image2 
      Height          =   2685
      Left            =   3120
      Picture         =   "Form1.frx":2135
      Top             =   6120
      Width           =   2700
   End
   Begin VB.Image dung 
      Height          =   2685
      Left            =   120
      Picture         =   "Form1.frx":4218
      Top             =   6120
      Width           =   2700
   End
   Begin VB.Image Image1 
      Height          =   2685
      Left            =   120
      Picture         =   "Form1.frx":5EDA
      Top             =   6120
      Width           =   2700
   End
   Begin VB.Label lbl2 
      Alignment       =   2  'Center
      BackColor       =   &H00025DFF&
      Caption         =   "=2"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   69
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1695
      Left            =   0
      TabIndex        =   2
      Top             =   3240
      Width           =   5655
   End
   Begin VB.Label lbl1 
      Alignment       =   2  'Center
      BackColor       =   &H00025DFF&
      Caption         =   "1 + 1"
      BeginProperty Font 
         Name            =   ".VnAvant"
         Size            =   69
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   1815
      Left            =   0
      TabIndex        =   1
      Top             =   1560
      Width           =   5775
   End
End
Attribute VB_Name = "game"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, b, kq, kqfake, dokho As Byte
Dim hienthi, diem, best As Integer

Private Sub dung_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
dung.Visible = False
If hienthi = 1 Then
Call changecolor
timebar.Width = 6000
Call Khoitao
diem = diem + 1
lbldiem.Caption = Str(diem)
Else
timer.Enabled = False
game.Enabled = False
If diem > best Then
best = diem
End If
gameover.lbl1.Caption = Str(diem)
gameover.lbl2.Caption = Str(best)
gameover.Show
End If
End Sub

Private Sub dung_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
dung.Visible = True
End Sub
Private Sub sai_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
sai.Visible = False
If hienthi = 0 Then
Call changecolor
timebar.Width = 6000
Call Khoitao
diem = diem + 1
lbldiem.Caption = Str(diem)
Else
timer.Enabled = False
game.Enabled = False
If diem > best Then
best = diem
End If
gameover.lbl1.Caption = Str(diem)
gameover.lbl2.Caption = Str(best)
gameover.Show
End If
End Sub

Private Sub sai_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
sai.Visible = True
End Sub

Private Sub Form_Load()
a = 0
b = 0
kq = 0
diem = 0
dokho = 1
lbldiem.Caption = Str(diem)
Call Khoitao
Call changecolor
End Sub
Public Sub changecolor()
Dim color As Byte
Randomize
color = Int((10 * Rnd) + 1)
Select Case color
Case 1
game.BackColor = &HAE4390
lbl1.BackColor = &HAE4390
lbl2.BackColor = &HAE4390
lbldiem.BackColor = &HAE4390
Case 2
game.BackColor = &HC1FF&
lbl1.BackColor = &HC1FF&
lbl2.BackColor = &HC1FF&
lbldiem.BackColor = &HC1FF&
Case 3
game.BackColor = &H25DFF
lbl1.BackColor = &H25DFF
lbl2.BackColor = &H25DFF
lbldiem.BackColor = &H25DFF
Case 4
game.BackColor = &H1E18EF
lbl1.BackColor = &H1E18EF
lbl2.BackColor = &H1E18EF
lbldiem.BackColor = &H1E18EF
Case 5
game.BackColor = &HCE8100
lbl1.BackColor = &HCE8100
lbl2.BackColor = &HCE8100
lbldiem.BackColor = &HCE8100
Case 6
game.BackColor = &H209000
lbl1.BackColor = &H209000
lbl2.BackColor = &H209000
lbldiem.BackColor = &H209000
Case 7
game.BackColor = &H989898
lbl1.BackColor = &H989898
lbl2.BackColor = &H989898
lbldiem.BackColor = &H989898
Case 8
game.BackColor = &H2F3878
lbl1.BackColor = &H2F3878
lbl2.BackColor = &H2F3878
lbldiem.BackColor = &H2F3878
Case 9
game.BackColor = &H503E2C
lbl1.BackColor = &H503E2C
lbl2.BackColor = &H503E2C
lbldiem.BackColor = &H503E2C
Case 10
game.BackColor = &H456985
lbl1.BackColor = &H456985
lbl2.BackColor = &H456985
lbldiem.BackColor = &H456985
End Select
End Sub
Public Sub Khoitao()
Randomize
a = Int((dokho * Rnd) + 1)
b = Int((dokho * Rnd) + 1)
hienthi = Int(2 * Rnd)
kqfake = a + b + Int((4 * Rnd) + 1)
kq = a + b
lbl1.Caption = Str(a) + " +" + Str(b)
If hienthi = 1 Then
lbl2.Caption = "=" + Str(kq)
Else: lbl2.Caption = "=" + Str(kqfake)
End If
End Sub


Private Sub hard_Timer()
dokho = dokho + 1
hard.Interval = hard.Interval + 200
End Sub

Private Sub timer_Timer()
If timebar.Width >= 80 Then
timebar.Width = timebar.Width - 80
Else
game.Enabled = False
gameover.lbl1.Caption = Str(diem)
gameover.Show
timer.Enabled = False
End If
End Sub

