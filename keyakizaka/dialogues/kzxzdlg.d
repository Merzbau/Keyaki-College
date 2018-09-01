BEGIN KZXZDLG

CHAIN IF~Global("kzbeibu","GLOBAL",9)~THEN KZXZDLG XZ0
	@0
	== KZXZDLG @1
	== KZSQDLG @2
	== KZXZDLG @3
	== KZSQDLG @4
	== KZXZDLG @5
	== KZSQDLG @6
	== KZXZDLG @7
	== KZSQDLG @8
	== KZXZDLG @9
	== KZXZDLG @10
	== KZSQDLG @11
	END
	IF ~~ THEN
	DO ~SetGlobal("kzpingshou","GLOBAL",10)	
	SetGlobal("kzjianjing","GLOBAL",10)		
	SetGlobal("kzshouwu","GLOBAL",10)	
	SetGlobal("kzlijia","GLOBAL",10)		   
	SetGlobal("kzlizuo","GLOBAL",10)
	SetGlobal("kzchangbin","GLOBAL",10)	
	SetGlobal("kzbeibu","GLOBAL",10)		
	SetGlobal("kztuibu","GLOBAL",9)	
	SetGlobal("kztoubu","GLOBAL",10)			
	ActionOverride("kzsqcre",MoveToPointNoInterrupt([460.890]))
	ActionOverride("kzsqcre",DestroySelf())~
EXIT
	
CHAIN IF~Global("kzbeibu","GLOBAL",10)~THEN KZXZDLG XZ1	
	@12
	END
	IF ~~ THEN REPLY @13 GOTO XZ2
	IF ~~ THEN REPLY @18 GOTO XZ3	
	IF ~~ THEN REPLY @26 GOTO XZ4
	IF ~~ THEN REPLY @31 GOTO XZ5	
	
CHAIN KZXZDLG XZ2
	@14
	=@15
	END
	IF ~~ THEN REPLY @16 GOTO XZ2.1		
	
CHAIN KZXZDLG XZ2.1
	@17
	END
	IF ~~ THEN
EXIT
	
CHAIN KZXZDLG XZ3
	@19
	END
	IF ~~ THEN REPLY @20 GOTO XZ3.1	
	
CHAIN KZXZDLG XZ3.1
	@21
	=@22
	END
	IF ~~ THEN REPLY @23 GOTO XZ3.2		
	
CHAIN KZXZDLG XZ3.2	
	@24
	=@25
	END
	IF ~~ THEN 
EXIT

CHAIN KZXZDLG XZ4
	@27
	END
	IF ~~ THEN REPLY @28 GOTO XZ4.1 	
	
CHAIN KZXZDLG XZ4.1
	@29
	=@30
	END
	IF ~~ THEN 
EXIT
	
CHAIN KZXZDLG XZ5
	@32
	=@33
	END
	IF ~~ THEN 
EXIT	
	
CHAIN IF~Global("kzbeibu","GLOBAL",15)~THEN KZXZDLG XZ6
	@34
	== KZPSDLG @35
	== KZJJDLG @36
	== KZSWDLG @37
	== KZLJDLG @38
	END
	IF ~~ THEN REPLY @39 EXTERN KZXZDLG XZ6.1	
	
CHAIN KZXZDLG XZ6.1
	@40
	== KZXZDLG @41
	== KZPSDLG @42
	== KZJJDLG @43
	== KZXZDLG @44
	== KZCBDLG @45
	== KZXZDLG @46
	== KZCBDLG @47
	== KZXZDLG @48
	END
	IF ~~ THEN 	
	DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("KZCUTC2")~
EXIT	
	
	