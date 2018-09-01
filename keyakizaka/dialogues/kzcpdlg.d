EXTEND_BOTTOM SHOP02 0
	IF ~Global("kzbeibu","GLOBAL",4)~ THEN REPLY @51 GOTO s0 
	IF ~Global("kzbeibu","GLOBAL",6)~ THEN REPLY @66 GOTO s6
	END

EXTEND_BOTTOM SHOP02 6
	IF ~Global("kzbeibu","GLOBAL",4)~ THEN REPLY @51 GOTO s0 
	IF ~Global("kzbeibu","GLOBAL",6)~ THEN REPLY @66 GOTO s6
	END

CHAIN SHOP02 s0
	@52
	END
	IF ~~ THEN REPLY @53 GOTO s1

CHAIN SHOP02 s1
	@54
	END
	IF ~~ THEN REPLY @55 GOTO s2	
	
CHAIN SHOP02 s2	
	@56
	END
	IF ~~ THEN REPLY @57 GOTO s3	

CHAIN SHOP02 s3
	@58
	END
	IF ~~ THEN REPLY @59 GOTO s4	

CHAIN SHOP02 s4
	@60
	=@61
	END
	IF ~~ THEN REPLY @62 GOTO s5
	IF ~~ THEN REPLY @63 GOTO s5.1	
	
CHAIN SHOP02 s5.1
	@64
	END
	IF ~~ THEN
EXIT
	
CHAIN SHOP02 s5
	@65
	END
	IF ~~ THEN
	DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTHY")~
EXIT
	
CHAIN SHOP02 s6
	@67
	END
	IF ~~ THEN
	DO ~SetGlobal("kzbeibu","GLOBAL",7)
	AddJournalEntry(@10026,QUEST)
	GiveItemCreate("kzhuosh",Player1,1,0,0)~
EXIT
	
BEGIN KZCPDLG

CHAIN IF~Global("kzdeshan","GLOBAL",3)~THEN KZCPDLG CP0
	@0
	END
	IF ~~ THEN
EXIT

CHAIN IF~Global("kzdeshan","GLOBAL",4)~THEN KZCPDLG CP1
	@1
	END
	IF ~~ THEN REPLY @2 GOTO CP2	
	IF ~~ THEN REPLY @3 GOTO CP3	
	IF ~~ THEN REPLY @4 GOTO CP4	
	IF ~~ THEN REPLY @5 GOTO CP5	
	IF ~~ THEN REPLY @6 GOTO CP6	
	IF ~~ THEN REPLY @7 GOTO CP7	
	IF ~~ THEN REPLY @8 GOTO CP8
	IF ~Global("kztoubu","GLOBAL",1)
	Global("kzshenqu","GLOBAL",1)
	Global("kzbeibu","GLOBAL",1)
	Global("kzgebo","GLOBAL",1)
	Global("kzshuangshou","GLOBAL",1)
	Global("kztuibu","GLOBAL",1)
	Global("kzshuangjiao","GLOBAL",1)~ THEN REPLY @40 GOTO CP9	
	IF ~Global("kztoubu","GLOBAL",1)
	Global("kzshenqu","GLOBAL",1)
	Global("kzbeibu","GLOBAL",1)
	Global("kzgebo","GLOBAL",1)
	Global("kzshuangshou","GLOBAL",1)
	Global("kztuibu","GLOBAL",1)
	Global("kzshuangjiao","GLOBAL",1)~ THEN REPLY @18 GOTO CP10		
	IF ~~ THEN REPLY @11 EXIT

CHAIN KZCPDLG CP2	
	@9
	END
	IF ~~ THEN 
	DO ~SetGlobal("kztoubu","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kztoubu","GLOBAL",1)~
	REPLY @11 EXIT
	
CHAIN KZCPDLG CP3		
	@12
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzshenqu","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kzshenqu","GLOBAL",1)~
	REPLY @11 EXIT	
	
CHAIN KZCPDLG CP4		
	@13
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzbeibu","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kzbeibu","GLOBAL",1)~
	REPLY @11 EXIT		
	
CHAIN KZCPDLG CP5	
	@14
	END	
	IF ~~ THEN 
	DO ~SetGlobal("kzgebo","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kzgebo","GLOBAL",1)~
	REPLY @11 EXIT	
	
CHAIN KZCPDLG CP6	
	@15
	END	
	IF ~~ THEN 
	DO ~SetGlobal("kzshuangshou","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kzshuangshou","GLOBAL",1)~
	REPLY @11 EXIT		
	
CHAIN KZCPDLG CP7		
	@16
	END	
	IF ~~ THEN 
	DO ~SetGlobal("kztuibu","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kztuibu","GLOBAL",1)~
	REPLY @11 EXIT		
	
CHAIN KZCPDLG CP8		
	@17
	END	
	IF ~~ THEN 
	DO ~SetGlobal("kzshuangjiao","GLOBAL",1)~
	REPLY @10 GOTO CP1
	IF ~~ THEN 
	DO ~SetGlobal("kzshuangjiao","GLOBAL",1)~
	REPLY @11 EXIT		
	
CHAIN KZCPDLG CP10	
	@19
	== KZJJDLG @20
	== KZSWDLG @21
	== KZLZDLG @22
	== KZPSDLG @23
	END
	IF ~~ THEN REPLY @24 EXTERN KZPSDLG CP10.1	
	IF ~~ THEN REPLY @25 EXTERN KZPSDLG CP10.1	
	
CHAIN KZPSDLG CP10.1
	@26
	END
	IF ~~ THEN 
EXIT

CHAIN KZCPDLG CP9
	@27
	== KZCPDLG @28
	== KZSWDLG @29
	== KZLZDLG @30
	== KZJJDLG @31
	END
	IF ~~ THEN REPLY @32 GOTO CP9.1
	IF ~~ THEN REPLY @33 GOTO CP9.2	
	
CHAIN KZCPDLG CP9.1	
	@35
	== KZLJDLG @36
	== KZSWDLG @37
	== KZPSDLG @69
	== KZJJDLG @38
	END
	IF ~~ THEN REPLY @33 GOTO CP9.2		
	
CHAIN KZCPDLG CP9.2
	@34
	== KZJJDLG @39
	== KZLJDLG @70
	END
	IF ~~ THEN
	DO ~SetGlobal("kzdiaocha","GLOBAL",1)~
EXIT	
	
CHAIN IF~Global("kzdeshan","GLOBAL",5)~THEN KZCPDLG CP11	
	@41
	END
	IF ~~ THEN
EXIT
	
CHAIN IF~Global("kzdeshan","GLOBAL",6)~THEN KZCPDLG CP12
	@42
	END	
	IF ~~ THEN REPLY @43 EXIT
	IF ~Global("kzaoko","GLOBAL",7)
	PartyHasItem("kzfanfu")~ THEN REPLY @44 GOTO CP13	

CHAIN KZCPDLG CP13
	@45
	=@46
	=@47
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzchangbin","GLOBAL",5)
	EraseJournalEntry(@10019)
	EraseJournalEntry(@10020)
	EraseJournalEntry(@10021)				
	AddJournalEntry(@10022,QUEST_DONE)
	AddExperienceParty(3000)
	TakePartyItem("kzfanfu")~
EXIT

CHAIN IF~Global("kzdeshan","GLOBAL",7)~THEN KZCPDLG CP14
	@48
	END
	IF ~~ THEN REPLY @43 EXIT
	IF ~Global("kzaoko","GLOBAL",8)~ THEN REPLY @49 GOTO CP14.1
	
CHAIN KZCPDLG CP14.1
	@50
	END	
	IF ~~ THEN 
	DO ~GiveItemCreate("kzxinji",Player1,1,0,0) 
	SetGlobal("kzdiaocha","GLOBAL",11)
	SetGlobal("kzaoko","GLOBAL",9)
	AddJournalEntry(@10024,QUEST)~
EXIT	
	
CHAIN IF~Global("kzdeshan","GLOBAL",16)~THEN KZCPDLG CP15	
	@68
	END
	IF ~~ THEN 
EXIT

