BEGIN KZCBDLG

CHAIN IF~Global("kzchangbin","GLOBAL",7)
	!Global("kzdeshan","GLOBAL",7)~THEN KZCBDLG CB0
	@0
	=@1
	END
	IF ~~ THEN REPLY @2 GOTO CB1
	IF ~~ THEN REPLY @3 GOTO CB1	
	IF ~~ THEN REPLY @4 GOTO CB1

CHAIN KZCBDLG CB1
	@5
	END
	IF ~~ THEN REPLY @6 GOTO CB2	
	
CHAIN KZCBDLG CB2	
	@7
	END
	IF ~~ THEN REPLY @8 GOTO CB3	
	
CHAIN KZCBDLG CB3		
	@9
	END
	IF ~~ THEN REPLY @10 GOTO CB4	
	
CHAIN KZCBDLG CB4	
	@11
	=@12
	END
	IF ~~ THEN REPLY @13 GOTO CB5		
	
CHAIN KZCBDLG CB5	
	@14
	END
	IF ~~ THEN REPLY @15 GOTO CB6		
	
CHAIN KZCBDLG CB6
	@16
	END
	IF ~~ THEN REPLY @17 GOTO CB7	
	
CHAIN KZCBDLG CB7	
	@18
	=@19
	=@20
	END
	IF ~~ THEN REPLY @21 GOTO CB8		
	
CHAIN KZCBDLG CB8
	@22
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzdiaocha","GLOBAL",10)
	SetGlobal("kzdeshan","GLOBAL",7)
	SetGlobal("kzaoko","GLOBAL",8)		
	AddJournalEntry(@10023,QUEST)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTXJ")~
EXIT		
	
CHAIN IF~Global("kzchangbin","GLOBAL",10)~THEN KZCBDLG CB9
	@23
	== KZPSDLG @24
	== KZJJDLG @25
	== KZSWDLG @26
	== KZLZDLG @27
	== KZCBDLG @28
	== KZCBDLG @29
	END
	IF ~~ THEN REPLY @30 EXTERN KZSWDLG CB10
	IF ~~ THEN REPLY @31 EXTERN KZSWDLG CB10	
	
CHAIN KZSWDLG CB10
	@32
	== KZPSDLG @33
	END
	IF ~~ THEN REPLY @34 EXTERN KZPSDLG CB11	
	IF ~~ THEN REPLY @35 EXTERN KZPSDLG CB11		
	
CHAIN KZPSDLG CB11	
	@36
	== KZCBDLG @37
	== KZJJDLG @38
	== KZCBDLG @39
	== KZPSDLG @40
	== KZCBDLG @41
	== KZCBDLG @42	
	END
	IF ~~ THEN REPLY @50 EXTERN KZLZDLG CB12	
	
CHAIN KZLZDLG CB12	
	@43
	== KZSWDLG @44
	== KZLZDLG @45
	== KZSWDLG @46	
	== KZLZDLG @47			
	== KZCBDLG @48
	== KZPSDLG @49
	END
	IF ~~ THEN 	
	DO ~SetGlobal("kzbeibu","GLOBAL",15)
	ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTC1")~
EXIT
	
CHAIN IF~Global("kzchangbin","GLOBAL",12)~THEN KZCBDLG CB13	
	@51
	END
	IF ~~ THEN REPLY @52 GOTO CB13.1	
	
CHAIN KZCBDLG CB13.1
	@53
	== KZLZDLG @54
	END
	IF ~~ THEN REPLY @55 GOTO CB13.2	
	
CHAIN KZCBDLG CB13.2
	@56
	END
	IF ~~ THEN REPLY @57 GOTO CB13.3		
	
CHAIN KZCBDLG CB13.3
	@58
	END
	IF ~~ THEN 
EXIT

