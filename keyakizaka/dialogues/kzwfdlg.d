BEGIN KZWFDLG

CHAIN IF~Global("kzdiaocha","GLOBAL",4)~THEN KZWFDLG WF0
	@0
	== KZWFDLG @1
	== KZSWDLG @2
	== KZJJDLG @3
	== KZLZDLG @4
	== KZPSDLG @5
	== KZLJDLG @6
	== KZWFDLG @7
	END
	IF ~Gender(Player1,MALE)~ THEN REPLY @8	GOTO WF1.1
	IF ~Gender(Player1,FEMALE)~ THEN REPLY @8 GOTO WF1.2

CHAIN KZWFDLG WF1.1
	@9
	=@10
	END
	IF ~~ THEN REPLY @11 GOTO WF2

CHAIN KZWFDLG WF1.2
	@12
	=@13
	END
	IF ~~ THEN REPLY @11 GOTO WF2

CHAIN KZWFDLG WF2
	@14
	== KZWFDLG @15
	== KZJJDLG @16
	== KZLJDLG @17
	== KZSWDLG @18
	== KZLZDLG @19
	== KZPSDLG @20
	== KZWFDLG @21
	END
	IF ~~ THEN REPLY @22 GOTO WF3	
	IF ~~ THEN REPLY @23 GOTO WF3	
	IF ~~ THEN REPLY @24 GOTO WF3

CHAIN KZWFDLG WF3
	@25
	END
	IF ~~ THEN REPLY @26 GOTO WF4	
	IF ~~ THEN REPLY @27 GOTO WF4

CHAIN KZWFDLG WF4
	@28
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzdiaocha","GLOBAL",5)
	SetGlobal("kzpingshou","GLOBAL",6)
	SetGlobal("kzlijia","GLOBAL",6)
	SetGlobal("kzjianjing","GLOBAL",6)
	SetGlobal("kzlizuo","GLOBAL",6)
	SetGlobal("kzshouwu","GLOBAL",6)
	GiveItemCreate("kzdanga",Player1,1,0,0)~	
EXIT

CHAIN IF~Global("kzdiaocha","GLOBAL",5)~THEN KZWFDLG WF5
	@29
	END
	IF ~~ THEN REPLY @59 EXIT
	IF ~Global("kzdiaocha","GLOBAL",5)
	Global("kzshuangshou","GLOBAL",2)
	Global("kzgebo","GLOBAL",2)
	Global("kzshenqu","GLOBAL",2)
	Global("kzbeibu","GLOBAL",2)
	Global("kztoubu","GLOBAL",2)~ THEN REPLY @30 GOTO WF6	
		
CHAIN KZWFDLG WF6
	@31
	== KZSWDLG @32
	== KZJJDLG @33
	== KZPSDLG @34
	== KZWFDLG @35
	== KZPSDLG @36
	END
	IF ~~ THEN REPLY @37 EXTERN KZWFDLG WF7
	
CHAIN KZWFDLG WF7
	@38
	== KZWFDLG @39
	== KZLZDLG @40
	== KZJJDLG @41
	== KZLJDLG @42
	END
	IF ~~ THEN REPLY @43 EXTERN KZWFDLG WF8	
	
CHAIN KZWFDLG WF8
	@44
	== KZWFDLG @45
	== KZWFDLG @46	
	== KZWFDLG @47		
	== KZSWDLG @48
	== KZLZDLG @49
	== KZJJDLG @50
	== KZLJDLG @51
	== KZPSDLG @52
	== KZWFDLG @53
	END
	IF ~~ THEN REPLY @54 EXTERN KZWFDLG WF9
	
CHAIN KZWFDLG WF9	
	@55
	=@56
	=@57
	END
	IF ~~ THEN 
	DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTW1")~
EXIT
	
CHAIN IF~Global("kzdiaocha","GLOBAL",6)~THEN KZWFDLG WF10
	@74
	END
	IF ~~ THEN REPLY @75 DO ~PlaySound("dsost4")~ EXTERN KZWFDLG WF10.1

CHAIN KZWFDLG WF10.1
	@58
	== KZWFDLG @60
	== KZPSDLG @61
	== KZWFDLG @62
	== KZJJDLG @63
	== KZSWDLG @68	
	== KZWFDLG @64	
	END
	IF ~~ THEN REPLY @65 EXTERN KZWFDLG WF11	
	
CHAIN KZWFDLG WF11
	@66
	=@67
	=@69
	=@70
	=@71
	END	
	IF ~~ THEN REPLY @72 EXTERN KZWFDLG WF12	
	
CHAIN KZWFDLG WF12	
	@73
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzdiaocha","GLOBAL",8)
	SetGlobal("kzjianjing","GLOBAL",7)
	SetGlobal("kzpingshou","GLOBAL",7)
	SetGlobal("kzlizuo","GLOBAL",7)
	SetGlobal("kzlijia","GLOBAL",7)
	SetGlobal("kzshouwu","GLOBAL",7)
	SetGlobal("kzaoko","GLOBAL",7)
	AddJournalEntry(@10021,QUEST)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTW2")~
EXIT	
	
	