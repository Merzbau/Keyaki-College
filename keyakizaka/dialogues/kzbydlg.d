BEGIN KZBYDLG

CHAIN IF~RandomNum(4,1)
	Global("kzbeibu","GLOBAL",30)~THEN KZBYDLG KB0
	@0
	== KZSQDLG @1
	== KZBYDLG @2
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,2)
	Global("kzbeibu","GLOBAL",30)~THEN KZBYDLG KB1
	@3
	== KZSQDLG @4
	== KZBYDLG @5
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,3)
	Global("kzbeibu","GLOBAL",30)~THEN KZBYDLG KB2
	@6
	== KZSQDLG @7
	== KZBYDLG @8
	END
	IF ~~ THEN 
EXIT

CHAIN IF~RandomNum(4,4)
	Global("kzbeibu","GLOBAL",30)~THEN KZBYDLG KB3
	@9
	== KZSQDLG @10
	== KZBYDLG @11
	END
	IF ~~ THEN 
EXIT