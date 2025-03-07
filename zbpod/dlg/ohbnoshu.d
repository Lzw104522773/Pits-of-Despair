// creator  : weidu (version 24900)
// argument : OHBNOSHU.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBNOSHU~

IF ~  True()
~ THEN BEGIN 0
  SAY @2445 /* Hey there, friend. How're you doing? */
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY @2703 /* I'd like to buy some of these servants' uniforms. */ GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2704 /* I need some liquor. */ GOTO 4
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2705 /* I'm looking for some poison. */ GOTO 5
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2706 /* I need to get a message to Joker. */ GOTO 6
  IF ~~ THEN REPLY @2707 /* Well enough, thanks. Farewell. */ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @2708 /* That can be arranged for 500 gold pieces each. */
  IF ~  NumInParty(1)
PartyGoldGT(499)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(500)
~ GOTO 3
  IF ~  NumInParty(2)
PartyGoldGT(999)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(1000)
~ GOTO 3
  IF ~  NumInParty(3)
PartyGoldGT(1499)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(1500)
~ GOTO 3
  IF ~  NumInParty(4)
PartyGoldGT(1999)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(2000)
~ GOTO 3
  IF ~  NumInParty(5)
PartyGoldGT(2499)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(1500)
~ GOTO 3
  IF ~  NumInParty(6)
PartyGoldGT(2999)
~ THEN REPLY @2709 /* Here's the gold. */ DO ~TakePartyGold(3000)
~ GOTO 3
  IF ~~ THEN REPLY @1280 /* I don't have that kind of money. */ DO ~AddJournalEntry(101239,QUEST)
~ GOTO 2
  IF ~~ THEN REPLY @2710 /* I could buy the finest silks and leathers for that kind of money. Forget it. */ DO ~AddJournalEntry(101239,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @2444 /* Then you don't have this kind of clothing. Get back to me when your fortunes change. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2711 /* Nice doing business with you. */
  IF ~  NumInParty(1)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(2)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(3)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(4)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(5)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
  IF ~  NumInParty(6)
~ THEN DO ~GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
GiveItemCreate("ohbnoshu",LastTalkedToBy,1,0,0)
AddJournalEntry(101240,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2712 /* Don't we all? I think one of the clerics keeps a stash. They're probably not the only ones. This place will drive you to drink. */
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY @2713 /* Could I buy some of these servants' uniforms? */ GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2714 /* I don't doubt it. I'm looking for some poison. Can you help me with that? */ GOTO 5
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2715 /* I'd like to ask Joker about that. Could you get a message to her for me? */ GOTO 6
  IF ~~ THEN REPLY @2716 /* Thanks. Farewell. */ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @2717 /* Why would you—never mind, I don't want to know. I'm sure the kitchen must have something to deal with the rats. Have you tried the merchants yet? Or some of your fellow performers, perhaps? */
  IF ~  !PartyHasItem("ohbnoshu")
Global("ohb_need_noser_uniform","global",1)
~ THEN REPLY @2718 /* Good ideas, all. I'll try them out. On a different subject, may I have some of these servants' uniforms? */ GOTO 1
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2719 /* That's one poison taken care of. Do you know where I might find some of the more enjoyable kind? I need a drink. */ GOTO 4
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",3)
GlobalLT("ohb_last_battle","global",404)
~ THEN REPLY @2720 /* I need to get a message to Joker. Can you do that for me? */ GOTO 6
  IF ~~ THEN REPLY @2721 /* That'll be all. Thank you. */ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @2722 /* Sure. We take messages up and down all the time. */
  IF ~~ THEN REPLY @2723 /* Tell Joker I challenge her to a drinking contest. */ GOTO 7
  IF ~~ THEN REPLY @2724 /* Mention to her I have a drink so strong it'll knock her on her rear. */ GOTO 8
  IF ~~ THEN REPLY @2725 /* I'll bear that in mind. Thanks. */ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @2726 /* Seriously? Well, if you want to die, there are worse ways to go, I suppose. I'll give her the message. */
  IF ~~ THEN DO ~AddJournalEntry(101268,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",4)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @2727 /* I'll tell her next time I see her. I'm sure she'll come running to find you. */
  IF ~~ THEN DO ~AddJournalEntry(101269,QUEST)
SetGlobal("OHB_POISON_JOKER","GLOBAL",5)
CreateCreature("ohbcutsc",[1.1],S)
StartCutSceneMode()
StartCutScene("ohbcut13")
~ EXIT
END
