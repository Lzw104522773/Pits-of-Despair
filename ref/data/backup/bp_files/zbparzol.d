BEGIN ~OHBARZOL~

IF ~~ THEN BEGIN 0
  SAY #92759
  IF ~~ THEN EXTERN ~OHBTARTL~ 1
END

IF ~~ THEN BEGIN 1
  SAY #92763
  IF ~~ THEN EXTERN ~OHBBERYL~ 1
END

IF ~~ THEN BEGIN 2
  SAY #92768
  IF ~~ THEN EXTERN ~OHBTARTL~ 4
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 3
  SAY #92743
  IF ~~ THEN REPLY #92285 GOTO 5
  IF ~~ THEN REPLY #91955 GOTO 6
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY #92213 DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY #92213 DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN REPLY #92213 EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 4
  SAY #92744
  IF ~~ THEN REPLY #92285 GOTO 5
  IF ~~ THEN REPLY #96029 GOTO 6
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN REPLY #96030 DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN REPLY #96030 DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN REPLY #96030 EXIT
END

IF ~~ THEN BEGIN 5
  SAY #92745
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY #92746
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",0)
~ THEN DO ~SetGlobal("OHB_ARZOL_TALK","GLOBAL",1)
AddJournalEntry(96034,INFO)
~ EXIT
  IF ~  Global("OHB_BERYL_TALK","GLOBAL",1)
Global("OHB_ARZOL_TALK","GLOBAL",1)
~ THEN EXIT
END
