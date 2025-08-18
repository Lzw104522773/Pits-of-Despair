BEGIN ZBNEPHJ

/// Before Match 1
IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2) GlobalGT("zb_train_spawn","GLOBAL",0)~ THEN BEGIN 0
  SAY @34 /* *waves* Hello 'Hero', I saw your battles with the beasts. 'Quite ferocious', but then again they were just beasts. Good job. */
  IF ~~ THEN GOTO 1
END

IF ~Global("OHB_LAST_BATTLE","GLOBAL",0) Global("ZB_NEPH_INTERJECT_1","GLOBAL",2)~ THEN BEGIN 1
  SAY @35 /* Even though everyone laughs at the orc warband, it has cut down many unwary new gladiators. That's why Dennaton keeps tormenting the orcs. He will raise them from the dead and mock them for every failed attempt to kill even a single gladiator. */
  IF ~~ DO ~SetGlobal("ZB_NEPH_INTERJECT_1","GLOBAL",3)~ EXIT
END
///

/// After Match 1
IF ~Global("ZB_NEPH_POST_INTERJECT_1","GLOBAL",3)~ THEN BEGIN 1.1
  SAY @128 /* Survival is not pretty but it is all that matters. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_1","GLOBAL",4)~ EXIT
END
///

/// After Match 2 - After Dennaton kills part of a gladiatorial party
IF ~Global("ZB_NEPH_POST_INTERJECT_2","GLOBAL",3)~ THEN BEGIN 2.1
  SAY @41 /* As you see, anyone can be replaced here. Even the most loyal are enslaved in some way. Whether it is money, magic, or by force. It's detestable but that is the way it works here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_2","GLOBAL",4)~ EXIT
END
///

/// Before Match 3 - Lizards
IF ~Global("ZB_NEPH_INTERJECT_3","GLOBAL",2)~ THEN BEGIN 3
  SAY @67 /* I am going to tell you a little secret, <CHARNAME>. I despise lizards. In Chult, the lizardmen are fierce warriors and their skin is very thick. Their shamans also pack a punch and are annoying because they use bugs to fight. Yuck. Please, rid Faerun of them. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_3","GLOBAL",3)~ EXIT
END
///

/// After Match 3
IF ~Global("ZB_NEPH_POST_INTERJECT_3","GLOBAL",3)~ THEN BEGIN 3.1
  SAY @129 /* Are they all dead? ...Good. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_3","GLOBAL",4)~ EXIT
END
///

/// Before Match 4 - Elder Umber Hulks
IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",2)~ THEN BEGIN 4
  SAY @45 /* Elder Umber Hulks are extremely dangerous and fast to boot. They can easily overpower those that gaze into their eyes. There are potions that protect from these types of effects and I happen to have one right here. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ GOTO 5
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 5
  SAY @124 /* Yours, for a price of course. */
  IF ~~ THEN REPLY @46 /* I'll take it! */ DO ~TakePartyGold(700) GiveItemCreate("POTN21",Player1,1,0,0)~ EXIT
  IF ~~ THEN REPLY @47 /* Keep your potion, my eyes are on the prize. */ GOTO 6
END

IF ~Global("ZB_NEPH_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 6
  SAY @48 /* As long as you don't meet the gaze of those Umber Hulks, eh? */
  IF ~~ THEN EXIT
END
///

/// After Match 4
IF ~Global("ZB_NEPH_POST_INTERJECT_4","GLOBAL",3)~ THEN BEGIN 4.1
  SAY @130 /* Heh, *I* can see you. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_POST_INTERJECT_4","GLOBAL",4)~ EXIT
END
///

/// Before Match 5
IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",2)~ THEN BEGIN 7
  SAY @60 /* I spied a war party of drow who were recently captured by the Planar Hunters. Whether it is poison, magic, or their spider pets, they will use every advantage to destroy you. You would be the first to face them, so be careful. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ GOTO 8
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN 8
  SAY @123 /* In fact, I think you could use a hand. While most of these amateurs will charge you for their assistance, I will fight for you free and clear this time only. What say you? A favor to my new favorite gladiator. */
  IF ~~ THEN REPLY @64 /* We'd love a hand, Nephetel. */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.2
  IF ~Global("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",0)~ THEN REPLY @65 /* How can you assist me? */ DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.5
  IF ~~ THEN REPLY @55 /* We don't need any dead weight. */ GOTO zbneph5.3
  IF ~~ THEN REPLY @66 /* I appreciate the offer, but we'll be fine on our own. */  DO ~IncrementGlobal("ZB_NEPHY_FRIEND","GLOBAL",1)~ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.2
  SAY @49 /* You won't regret it. I'll meet you in the arena with my dagger drawn. */
  IF ~~ THEN REPLY @50 /* Very well, we will take on these drow on together. */ DO ~SetGlobal("ZB_SPAWN_NEPHY_FIGHT5","GLOBAL",1)~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.3
  SAY @51 /* Speaking of dead weight, I hope you don't die … horribly 'Hero'. */
  IF ~~ THEN REPLY @52 /* Oof, first blood is yours. We'll do without your help. */ GOTO zbneph5.4
  IF ~~ THEN REPLY @125 /* We'll be fine, I have no fear of drow. */ GOTO zbneph5.4
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.4
  SAY @53 /* Suit yourself, 'Hero' */
  IF ~~ EXIT
END

IF ~Global("ZB_NEPH_INTERJECT_5","GLOBAL",3)~ THEN BEGIN zbneph5.5
  SAY @54 /* I am a dancer in the shadows, my tricks and the shadows are the tools of my trade. */
  IF ~~ THEN DO ~SetGlobal("ZB_NEPH_INTERJECT_5_ONCE","GLOBAL",1)~ GOTO 8
END
///
