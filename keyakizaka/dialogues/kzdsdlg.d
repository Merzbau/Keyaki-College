BEGIN KZDSDLG

CHAIN IF~Global("kzdeshan","GLOBAL",0)~THEN KZDSDLG DS0
	@0
	=@105
	END
	IF~~THEN REPLY @2 GOTO DS2  
	IF~~THEN REPLY @3 GOTO DS3 
	IF~~THEN REPLY @4 GOTO DS4 
	IF~~THEN REPLY @1 GOTO DS1 

CHAIN KZDSDLG DS1
	@5 
	END
	IF ~~ THEN REPLY @6 
	DO ~SetGlobal("kzdeshan","GLOBAL",1)~
EXIT

CHAIN KZDSDLG DS2
	@7 
	== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @125
	END
	IF ~~ THEN REPLY @8 GOTO DS2.1
	IF ~~ THEN REPLY @9 GOTO DS2.2
	IF ~~ THEN REPLY @10 GOTO DS2.3

CHAIN KZDSDLG DS2.1
	@11
	END 
	IF ~~ THEN REPLY @12 
	DO ~SetGlobal("kzdeshan","GLOBAL",1)~
EXIT

CHAIN KZDSDLG DS2.2
	@13 
	END
	IF ~~ THEN REPLY @14 GOTO DS2.21
	IF ~~ THEN REPLY @10 GOTO DS2.3
	IF ~~ THEN REPLY @15 GOTO DS2.1

CHAIN KZDSDLG DS2.21
	@16
	== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @117
	END
	IF ~~ THEN REPLY @10 GOTO DS2.3
	IF ~~ THEN REPLY @15 GOTO DS2.1

CHAIN KZDSDLG DS2.3
	@17
	END
	IF ~~ THEN REPLY @18 GOTO DS2.33
	IF ~Gender(Player1,MALE)~ THEN REPLY @20 GOTO DS2.31
	IF ~Gender(Player1,FEMALE)~ THEN REPLY @20 GOTO DS2.32

CHAIN KZDSDLG DS2.33
	@27
	END
	IF ~~ THEN REPLY @28 GOTO DS2.1
	IF ~Gender(Player1,MALE)~ THEN REPLY @19 GOTO DS2.31
	IF ~Gender(Player1,FEMALE)~ THEN REPLY @19 GOTO DS2.32	

CHAIN KZDSDLG DS2.31
	@21
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @114
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @113
	END
	IF ~~ THEN REPLY @23 GOTO DS2.1
	IF ~~ THEN REPLY @24 GOTO DS5

CHAIN KZDSDLG DS2.32
	@22
	== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @114
	== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @113
	END
	IF ~~ THEN REPLY @25 GOTO DS2.1
	IF ~~ THEN REPLY @26 GOTO DS5

CHAIN KZDSDLG DS3
	@27
	END
	IF ~~ THEN REPLY @28 GOTO DS2.1
	IF ~~ THEN REPLY @33 GOTO DS2

CHAIN KZDSDLG DS4
	@29
	END
	IF ~~ THEN REPLY @30 GOTO DS2.1
	IF ~~ THEN REPLY @31 GOTO DS2
	IF ~~ THEN REPLY @32 GOTO DS3

CHAIN KZDSDLG DS5
	@34
	== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis") !StateCheck("Haerdalis",CD_STATE_NOTVALID)~ THEN @112	
	== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @108
	END
	IF ~~ THEN REPLY @35 GOTO DS5.1
	IF ~~ THEN REPLY @36 GOTO DS5.2

CHAIN KZDSDLG DS5.1
	@38
	END
	IF ~~ THEN REPLY @39 GOTO DS5.11
	IF ~~ THEN REPLY @40 GOTO DS2.1

CHAIN KZDSDLG DS5.2
	@41
	END
	IF ~~ THEN REPLY @42 GOTO DS5.11
	IF ~~ THEN REPLY @40 GOTO DS2.1

CHAIN KZDSDLG DS5.11
	@45
	== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @73
	END
	IF ~~ THEN REPLY @46 GOTO DS5.4	
	IF ~~ THEN REPLY @47 GOTO DS5.5	
	IF ~~ THEN REPLY @48 GOTO DS5.6	

CHAIN KZDSDLG DS5.4
	@49 
	END
	IF ~~ THEN 
	DO ~AddJournalEntry(@10000,QUEST)
	SetGlobal("kzdeshan","GLOBAL",2)~
EXIT
	
CHAIN KZDSDLG DS5.5
	@50
	END
	IF ~~ THEN 
	DO ~AddJournalEntry(@10000,QUEST)
	SetGlobal("kzdeshan","GLOBAL",2)~ 
EXIT

CHAIN KZDSDLG DS5.6
	@50
	END
	IF ~~ THEN
	DO ~AddJournalEntry(@10000,QUEST)
	SetGlobal("kzdeshan","GLOBAL",2)~ 
EXIT

CHAIN IF~Global("kzdeshan","GLOBAL",1)~THEN KZDSDLG DS6
	@51
	END
	IF~~THEN REPLY @2 GOTO DS2
	IF~~THEN REPLY @3 GOTO DS3
	IF~~THEN REPLY @4 GOTO DS4
	IF~~THEN REPLY @1 GOTO DS1

CHAIN IF~Global("kzdeshan","GLOBAL",2)~THEN KZDSDLG DS7
	@52
	END
	IF~Global("kzpingshou","GLOBAL",0)~THEN REPLY @53 GOTO DS7.1
	IF~~THEN REPLY @54  GOTO DS7.2
	IF~~THEN REPLY @55  GOTO DS7.3
	IF~~THEN REPLY @56  GOTO DS7.4
	IF~~THEN REPLY @57  GOTO DS7.5
	IF~~THEN REPLY @58  GOTO DS7.6
	IF~~THEN REPLY @104 GOTO DS7.7	

CHAIN KZDSDLG DS7.1
	@59
	END
	IF~~THEN REPLY @60 GOTO DS7.11
	IF~~THEN REPLY @61 GOTO DS7.13

CHAIN KZDSDLG DS7.11
	@62
	END
	IF~~THEN REPLY @63 GOTO DS7.12
	IF~~THEN REPLY @64 GOTO DS7.121

CHAIN KZDSDLG DS7.12
	@65
	END
	IF~~THEN REPLY @64 GOTO DS7.121
	
CHAIN KZDSDLG DS7.121	
	@95
	END
	IF~~THEN 	
	DO ~AddJournalEntry(@10001,QUEST)
	SetGlobal("kzpingshou","GLOBAL",1)~ 	
EXIT

CHAIN KZDSDLG DS7.13
	@74
	== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @44
	END
	IF~~THEN REPLY @60 GOTO DS7.11

CHAIN KZDSDLG DS7.2
	@66
	END
	IF~~THEN REPLY @67 GOTO DS7.21

CHAIN KZDSDLG DS7.21
	@68
	END
	IF~~THEN REPLY @69 GOTO DS7.22
	IF~~THEN REPLY @70 GOTO DS7.22	

CHAIN KZDSDLG DS7.22	
	@71
	== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @126
	END
	IF~~THEN REPLY @72 GOTO DS7.231

CHAIN KZDSDLG DS7.231	
	@109
	== KZDSDLG @110
	== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @43
	== KZDSDLG @111
	END
	IF ~~ THEN REPLY @115 GOTO DS7.233	
	
CHAIN KZDSDLG DS7.233
	@116
	END
	IF ~~ THEN REPLY @118 GOTO DS7.234		
	IF ~~ THEN REPLY @119 GOTO DS7.234		

CHAIN KZDSDLG DS7.234	
	@120
	=@121
	END
	IF ~~ THEN REPLY @122 GOTO DS7.235	
	IF ~~ THEN REPLY @123 GOTO DS7.235	

CHAIN KZDSDLG DS7.235
	@124
	END
	IF ~~ THEN 
EXIT

CHAIN KZDSDLG DS7.3
	@75	
	END
	IF~~THEN REPLY @76  GOTO DS7.31
	IF~~THEN REPLY @77  GOTO DS7.32  
	IF~~THEN REPLY @78  GOTO DS7.33   	

CHAIN KZDSDLG DS7.31
	@79
	END	
	IF~~THEN REPLY @77 GOTO DS7.32 
	IF~~THEN REPLY @78 GOTO DS7.33   
	IF~~THEN REPLY @80 GOTO DS7.34

CHAIN KZDSDLG DS7.32
	@81
	END
	IF~~THEN REPLY @76 GOTO DS7.31 
	IF~~THEN REPLY @78 GOTO DS7.33   
	IF~~THEN REPLY @80 GOTO DS7.34	

CHAIN KZDSDLG DS7.33
	@82	
	== KZDSDLG @106
	== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @128	
	END
	IF~~THEN REPLY @76 GOTO DS7.31 
	IF~~THEN REPLY @77 GOTO DS7.32   
	IF~~THEN REPLY @80 GOTO DS7.34	

CHAIN KZDSDLG DS7.34
	@83
	END
	IF ~~ THEN
EXIT

CHAIN KZDSDLG DS7.4
	@84
	END
	IF ~~ THEN REPLY @85 GOTO DS7.41
	IF ~~ THEN REPLY @86 GOTO DS7.41	
	IF ~~ THEN REPLY @80 GOTO DS7.34	

CHAIN KZDSDLG DS7.41	
	@87
	== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @127
	== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @129
	END
	IF ~~ THEN REPLY @80 GOTO DS7.34		

CHAIN KZDSDLG DS7.5
	@88
	== KZDSDLG @107
	== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @37
	END
	IF ~~ THEN REPLY @89 GOTO DS7.51
	IF ~~ THEN REPLY @90 GOTO DS7.51
	IF ~~ THEN REPLY @91 GOTO DS7.51

CHAIN KZDSDLG DS7.51
	@92
	END
	IF ~~ THEN REPLY @93 GOTO DS7.52
	IF ~~ THEN REPLY @94 GOTO DS7.52

CHAIN KZDSDLG DS7.52
	@95
	END
	IF ~~ THEN
EXIT

CHAIN KZDSDLG DS7.6
	@96
	END
	IF ~~ THEN REPLY @97 GOTO DS7.61	
	IF ~~ THEN REPLY @98 GOTO DS7.61

CHAIN KZDSDLG DS7.61
	@99	
	END
	IF ~~ THEN REPLY @100 GOTO DS7.63	
	IF ~~ THEN REPLY @101 GOTO DS7.62		
	
CHAIN KZDSDLG DS7.62
	@102
	END	
	IF ~~ THEN
EXIT

CHAIN KZDSDLG DS7.63
	@103
	END	
	IF ~~ THEN
EXIT

CHAIN KZDSDLG DS7.7
	@103
	END	
	IF ~~ THEN
EXIT
	