BEGIN KZQBDLG

CHAIN IF~Global("kzqiaobuExist","KZCL03",2)~THEN KZQBDLG QB0
	@0
	=@1
	END
	IF ~~ THEN REPLY @2 GOTO QB1	
	IF ~~ THEN REPLY @3 GOTO QB1	
	IF ~~ THEN REPLY @4 GOTO QB1

CHAIN KZQBDLG QB1
	@5
	END
	IF ~~ THEN REPLY @6 GOTO QB2.1		
	IF ~~ THEN REPLY @7 GOTO QB2.2

CHAIN KZQBDLG QB2.1
	@8
	=@9
	END
	IF ~~ THEN REPLY @10 GOTO QB3	
	IF ~~ THEN REPLY @11 GOTO QB3		
	
CHAIN KZQBDLG QB2.2
	@12
	=@9
	END
	IF ~~ THEN REPLY @10 GOTO QB3	
	IF ~~ THEN REPLY @11 GOTO QB3		
	
CHAIN KZQBDLG QB3
	@13
	=@14
	END
	IF ~~ THEN 
	DO ~SetGlobal("kzqiaobuExist","KZCL03",3)
	MoveToPointNoInterrupt([1052.777])
	DestroySelf()~
EXIT

CHAIN IF~Global("kzshuangshou","GLOBAL",17)~THEN KZQBDLG QB4
	@15
	END 	
	IF ~~ THEN REPLY @16 GOTO QB5
	
CHAIN KZQBDLG QB5
	@17
	END
	IF ~~ THEN REPLY @18 GOTO QB6	
	
CHAIN KZQBDLG QB6	
	@19
	=@32
	=@20
	END
	IF ~~ THEN REPLY @21 GOTO QB7	
	IF ~~ THEN REPLY @33 GOTO QB7.1	
	
CHAIN KZQBDLG QB7
	@22
	=@23
	=@24
	=@25
	END
	IF ~~ THEN REPLY @26 GOTO QB8
	IF ~~ THEN REPLY @27 GOTO QB8	
	IF ~~ THEN REPLY @28 GOTO QB8	
	IF ~~ THEN REPLY @29 GOTO QB8		
	
CHAIN KZQBDLG QB7.1
	@34
	=@23
	=@24
	=@25
	END
	IF ~~ THEN REPLY @26 GOTO QB8
	IF ~~ THEN REPLY @27 GOTO QB8	
	IF ~~ THEN REPLY @28 GOTO QB8	
	IF ~~ THEN REPLY @29 GOTO QB8	
	
CHAIN KZQBDLG QB8
	@30
	=@31
	END
	IF ~~ THEN 	
	DO ~SetGlobal("kzshuangshou","GLOBAL",18)
	ClearAllActions()
        StartCutSceneMode()
        StartCutScene("KZCUTJ6")~
EXIT		
	
	