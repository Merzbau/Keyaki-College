BEGIN KZGLDLG

CHAIN IF~RandomNum(4,1)
	Global("kzshuangshou","GLOBAL",30)~THEN KZGLDLG KG0
	@0
	== KZSQDLG @1
	== KZGLDLG @2
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,2)
	Global("kzshuangshou","GLOBAL",30)~THEN KZGLDLG KG1
	@3
	== KZSQDLG @4
	== KZGLDLG @5
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,3)
	Global("kzshuangshou","GLOBAL",30)~THEN KZGLDLG KG2
	@6
	== KZSQDLG @7
	== KZGLDLG @8
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,4)
	Global("kzshuangshou","GLOBAL",30)~THEN KZGLDLG KG3
	@9
	== KZSQDLG @10
	== KZGLDLG @11
	END
	IF ~~ THEN 
EXIT




