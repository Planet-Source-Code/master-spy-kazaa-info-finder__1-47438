VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Kazaa Info Ripper"
   ClientHeight    =   3840
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5070
   LinkTopic       =   "Form1"
   ScaleHeight     =   3840
   ScaleWidth      =   5070
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Restore Names"
      Height          =   495
      Left            =   2880
      TabIndex        =   10
      Top             =   240
      Width           =   1575
   End
   Begin VB.TextBox Text9 
      Height          =   285
      Left            =   360
      TabIndex        =   9
      Text            =   "Kazaa Load Directory and File"
      Top             =   3120
      Width           =   4455
   End
   Begin VB.TextBox Text8 
      Height          =   285
      Left            =   3600
      TabIndex        =   8
      Text            =   "InBandwidth b1"
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text7 
      Height          =   285
      Left            =   1680
      TabIndex        =   7
      Text            =   "InBandwidth b0seconds"
      Top             =   2760
      Width           =   1815
   End
   Begin VB.TextBox Text6 
      Height          =   285
      Left            =   360
      TabIndex        =   6
      Text            =   "InBandwidth b0"
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox Text5 
      Height          =   285
      Left            =   360
      TabIndex        =   5
      Text            =   "Kazaa Instalation Directory"
      Top             =   2400
      Width           =   4455
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   360
      TabIndex        =   4
      Text            =   "Kazaa Download Directory"
      Top             =   1200
      Width           =   4455
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   360
      TabIndex        =   3
      Text            =   "Kazaa lite 2.4.1 K++ network name"
      Top             =   1560
      Width           =   4455
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   360
      TabIndex        =   2
      Text            =   "Kazaa Lite Start Page"
      Top             =   2040
      Width           =   4455
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Text            =   "General Kazaa Folder"
      Top             =   840
      Width           =   4455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Kazaa Info Ripper"
      Height          =   495
      Left            =   840
      TabIndex        =   0
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Sorry about the mess but this was done in a second's time"
      ForeColor       =   &H0000FF00&
      Height          =   255
      Left            =   360
      TabIndex        =   11
      Top             =   3480
      Width           =   4455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'-ABOUT
'By: Pedro Camanho
'Master Spy, ICQ 84851212,   pedrocamanho@hotmail.com
'I just did this because i was looking for this! i needed this for a program
'That i am working on.. BY TH WAY .. can anyone PLEASE HELP ME??
'----------------


'--HELP FOR PEDRO
'I need help with a syn packets program i want to do!
'if anyone knows how to work ith syn and ack flags and packet messages please
'e-mail me as soon as possible.. also if you have any
'DoS, or DDoS, or DRDoS programs that are very good wirtten in VB6, i would gratly
'apreciate!
'----------------


Private Sub Command1_Click()
'-VARIABLES
'no need to declare variables since there is no option explicit
'----------------

'-GETTING THE INFO
'I just used a very simple method of reading registry info
'I Downloaded this guy's (Kenneth Ives') bas registry controler and applied it to me form
'-------------------
a = basRegistry.regQuery_A_Key(HKEY_CURRENT_USER, "Software\Kazaa\LocalContent", "DownloadDir")
b = basRegistry.regQuery_A_Key(HKEY_CURRENT_USER, "Software\K++", "KazaaStartPage")
c = basRegistry.regQuery_A_Key(HKEY_CURRENT_USER, "Software\K++", "NetworkName")
d = basRegistry.regQuery_A_Key(HKEY_CURRENT_USER, "Software\Kazaa\Transfer", "Dldir0")
e = basRegistry.regQuery_A_Key(HKEY_LOCAL_MACHINE, "SOFTWARE\Kazaa", "Installdir")
f = basRegistry.regQuery_A_Key(HKEY_LOCAL_MACHINE, "SOFTWARE\Kazaa\Bandwidth\in", "b0")
g = basRegistry.regQuery_A_Key(HKEY_LOCAL_MACHINE, "SOFTWARE\Kazaa\Bandwidth\in", "b0seconds")
h = basRegistry.regQuery_A_Key(HKEY_LOCAL_MACHINE, "SOFTWARE\Kazaa\Bandwidth\in", "b1")
j = basRegistry.regQuery_A_Key(HKEY_LOCAL_MACHINE, "SOFTWARE\Kazaa\Cloudload", "exedir")

'-PUTING IT ON PAPER
'I just stated the used variables in the correct boxes!
'-------------------
Text1 = a
Text2 = b
Text3 = "@" & c
Text4 = d
Text5 = e
Text6 = f
Text7 = g
Text8 = h
Text9 = j
End Sub

Private Sub Command2_Click()
Text1 = "General Kazaa Folder"
Text4 = "Kazaa Download Directory"
Text3 = "Kazaa lite 2.4.1 K++ network name"
Text2 = "Kazaa Lite Start Page"
Text5 = "Kazaa Instalation Directory"
Text6 = "InBandwidth b0"
Text7 = "InBandwidth b0seconds"
Text8 = "InBandwidth b1"
Text9 = "Kazaa Load Directory and File"
End Sub

