BEGIN ~OHBLEOKA~

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 0
  SAY #92337
  IF ~  Global("OHB_LEOKAS_SECRECY","LOCALS",0)
~ THEN REPLY #92296 DO ~SetGlobal("OHB_LEOKAS_SECRECY","LOCALS",1)
SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #92090 DO ~SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 2
  IF ~~ THEN REPLY #92226 DO ~SetGlobal("OHB_TALKED_LEOKAS","LOCALS",1)
~ GOTO 3
  IF ~~ THEN REPLY #92164 EXIT
END

IF ~~ THEN BEGIN 1
  SAY #92338
  IF ~~ THEN REPLY #92090 GOTO 2
  IF ~~ THEN REPLY #92226 GOTO 3
  IF ~~ THEN REPLY #92164 EXIT
END

IF ~~ THEN BEGIN 2
  SAY #92339
  IF ~  Global("OHB_LEOKAS_SECRECY","LOCALS",0)
~ THEN REPLY #92296 DO ~SetGlobal("OHB_LEOKAS_SECRECY","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY #92226 GOTO 3
  IF ~~ THEN REPLY #92164 EXIT
END

IF ~~ THEN BEGIN 3
  SAY #92340
  IF ~~ THEN REPLY #92341 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #92342 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #92343 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #92343 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #91951 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY #91951 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #91945 DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY #92085 DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #91946 DO ~AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 4
  SAY #92344
  IF ~  Global("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",0)
~ THEN REPLY #92345 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #92346 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #92346 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #94020 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY #94020 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #91945 DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY #92085 DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #91946 DO ~AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 5
  SAY #92347
  IF ~~ THEN REPLY #94021 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 4
  IF ~  CheckStatGT(Player1,14,CHR)
~ THEN REPLY #94022 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 6
  IF ~  !CheckStatGT(Player1,14,CHR)
~ THEN REPLY #94022 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(Player1,14,STR)
~ THEN REPLY #94020 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 8
  IF ~  !CheckStatGT(Player1,14,STR)
~ THEN REPLY #94020 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #91945 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY #92085 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #91946 DO ~SetGlobal("OHB_LEOKAS_ASK_MORE_STAGE_FIRED","LOCALS",1)
AddJournalEntry(94035,QUEST)
~ GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY #92350
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #91950 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 7
  SAY #92351
  IF ~  PartyGoldGT(99)
~ THEN REPLY #91945 DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(99)
~ THEN REPLY #94023 DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #91946 DO ~AddJournalEntry(94035,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",1)
~ GOTO 12
END

IF ~~ THEN BEGIN 8
  SAY #92352
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #91950 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 9
  SAY #92353
  IF ~  PartyGoldGT(199)
~ THEN REPLY #92354 DO ~TakePartyGold(200)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~  !PartyGoldGT(199)
~ THEN REPLY #92355 DO ~AddJournalEntry(94036,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #91946 DO ~AddJournalEntry(94036,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY #92356
  IF ~  CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 13
  IF ~  !CheckStatGT(Player1,17,CHR)
~ THEN REPLY #91953 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 14
  IF ~  CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",4)
~ GOTO 15
  IF ~  !CheckStatGT(Player1,17,STR)
~ THEN REPLY #92221 DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 16
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #91950 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94037,QUEST)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 19
END

IF ~~ THEN BEGIN 11
  SAY #92357
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY #92358
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13
  SAY #92359
  IF ~  PartyGoldGT(14999)
~ THEN REPLY #91949 DO ~TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94038,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY #94027 DO ~AddJournalEntry(94038,QUEST)
~ GOTO 20
END

IF ~~ THEN BEGIN 14
  SAY #92360
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #91950 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94037,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94037,QUEST)
~ GOTO 19
END

IF ~~ THEN BEGIN 15
  SAY #92361
  IF ~  PartyGoldGT(14999)
~ THEN REPLY #91949 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94038,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94038,QUEST)
~ GOTO 20
END

IF ~~ THEN BEGIN 16
  SAY #92362
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #91950 DO ~AddJournalEntry(94039,QUEST)
TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #91956 DO ~AddJournalEntry(94037,QUEST)
~ GOTO 18
  IF ~~ THEN REPLY #91947 DO ~AddJournalEntry(94037,QUEST)
~ GOTO 19
END

IF ~~ THEN BEGIN 17
  SAY #92363
  IF ~~ THEN DO ~EscapeAreaDestroy(3)
~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY #92364
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19
  SAY #92365
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20
  SAY #92366
  IF ~~ THEN DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ EXIT
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 21
  SAY #92367
  IF ~~ THEN REPLY #92368 GOTO 1
  IF ~~ THEN REPLY #92369 GOTO 2
  IF ~~ THEN REPLY #92226 GOTO 3
  IF ~~ THEN REPLY #92370 EXIT
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",1)
Global("ohb_finale","global",0)
~ THEN BEGIN 22
  SAY #92371
  IF ~  PartyGoldGT(99)
~ THEN REPLY #92372 DO ~TakePartyGold(100)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #92292 GOTO 11
  IF ~~ THEN REPLY #92295 GOTO 12
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",2)
Global("ohb_finale","global",0)
~ THEN BEGIN 23
  SAY #92373
  IF ~  PartyGoldGT(199)
~ THEN REPLY #92374 DO ~TakePartyGold(200)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",3)
~ GOTO 10
  IF ~~ THEN REPLY #92292 GOTO 11
  IF ~~ THEN REPLY #92295 GOTO 12
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",3)
Global("ohb_finale","global",0)
~ THEN BEGIN 24
  SAY #92375
  IF ~  PartyGoldGT(19999)
~ THEN REPLY #92376 DO ~TakePartyGold(20000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #92172 GOTO 18
  IF ~~ THEN REPLY #91947 GOTO 19
END

IF ~  Global("OHB_TALKED_LEOKAS","LOCALS",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",4)
Global("ohb_finale","global",0)
~ THEN BEGIN 25
  SAY #92377
  IF ~  PartyGoldGT(14999)
~ THEN REPLY #92378 DO ~TakePartyGold(15000)
SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ GOTO 17
  IF ~~ THEN REPLY #92172 GOTO 18
  IF ~~ THEN REPLY #91947 GOTO 19
END

IF ~  Global("ohb_finale","global",3)
~ THEN BEGIN 26
  SAY #92954
  IF ~~ THEN EXIT
END

IF ~  Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
Global("ohb_finale","global",2)
~ THEN BEGIN 27
  SAY #92955
  IF ~~ THEN REPLY #92956 DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 28
  IF ~~ THEN REPLY #92297 DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 29
  IF ~~ THEN REPLY #92258 DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ GOTO 31
  IF ~~ THEN REPLY #92273 DO ~AddJournalEntry(94040,QUEST_DONE)
EraseJournalEntry(94032)
EraseJournalEntry(94034)
EraseJournalEntry(94035)
EraseJournalEntry(94036)
EraseJournalEntry(94037)
EraseJournalEntry(94038)
EraseJournalEntry(94039)
SetGlobal("ohb_finale","global",3)
~ EXIT
END

IF ~~ THEN BEGIN 28
  SAY #92957
  IF ~~ THEN REPLY #92297 GOTO 29
  IF ~~ THEN REPLY #100666 GOTO 31
  IF ~~ THEN REPLY #92273 EXIT
END

IF ~~ THEN BEGIN 29
  SAY #92958
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY #92959
  IF ~~ THEN REPLY #92960 GOTO 28
  IF ~~ THEN REPLY #100668 GOTO 31
  IF ~~ THEN REPLY #100669 EXIT
END

IF ~~ THEN BEGIN 31
  SAY #92961
  IF ~~ THEN DO ~SetGlobal("OHB_LEOKAS_BRIBE","GLOBAL",99)
Enemy()
Shout(151)
~ EXIT
END

IF ~  Global("ohb_finale","global",1)
Global("OHB_LEOKAS_BRIBE","GLOBAL",5)
~ THEN BEGIN 32
  SAY #92938
  IF ~~ THEN DO ~SetGlobal("ohb_finale","global",2)
~ EXIT
END

IF ~  Global("ohb_finale","global",6)
~ THEN BEGIN 33
  SAY #92980
  IF ~~ THEN EXIT
END
