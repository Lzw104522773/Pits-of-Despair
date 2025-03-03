// creator  : weidu (version 24900)
// argument : OHBMARDU.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBMARDU~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_KITCHEN_TALK","GLOBAL",1)
OR(2)
Global("tier","GLOBAL",1)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",2)
~ THEN BEGIN 0
  SAY #90671 /* ~Shhh. We can't talk here.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1
  SAY #93832 /* ~We're sorry! I don't know what we were thinking!~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 36
END

IF WEIGHT #2 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",0)
~ THEN BEGIN 2
  SAY #93887 /* ~Psst! <CHARNAME>! Can we talk?~ */
  IF ~~ THEN REPLY #91948 /* ~Go ahead.~ */ DO ~SetGlobal("ohb_hide_cook","locals",1)
~ EXIT
  IF ~~ THEN REPLY #92282 /* ~Who are you two?~ */ DO ~SetGlobal("ohb_hide_cook","locals",2)
~ EXIT
  IF ~~ THEN REPLY #92097 /* ~I don't have time for this.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",3)
~ THEN BEGIN 3
  SAY #93852 /* ~We have to make this quick, before the cook starts thinking we've been gone too long.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_mardu_moveback","locals",0)
~ GOTO 19
END

IF WEIGHT #4 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",3)
Global("ohb_hide_cook","locals",4)
~ THEN BEGIN 4
  SAY #93880 /* ~Oh, right, introductions! We're the cook's assistants. I'm Marduuk, and this is Short-Order.~ */
  IF ~~ THEN DO ~SetGlobal("ohb_mardu_moveback","locals",0)
~ EXTERN ~OHBSHORT~ 11
END

IF WEIGHT #5 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_COOK_POISON","GLOBAL",5)
~ THEN BEGIN 5
  SAY #93888 /* ~Why did you tell him?~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_COOK_DEAD","GLOBAL",1)
Global("ohb_marduuk_now_cook","locals",0)
~ THEN BEGIN 6
  SAY #93893 /* ~<CHARNAME>, so pleased to see you. What can I do for you?~ */
  IF ~~ THEN REPLY #93894 /* ~What you did to Short-Order was reprehensible.~ */ DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 7
  IF ~~ THEN REPLY #93895 /* ~I didn't expect you'd shortchange Short-Order like you did.~ */ DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 8
  IF ~~ THEN REPLY #93896 /* ~That was well played, how you took over the cook's position.~ */ DO ~SetGlobal("ohb_marduuk_now_cook","locals",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 7
  SAY #93897 /* ~In the kitchen as in the arena, one does what one must to survive.~ */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 /* ~I am looking for a "special" ingredient for a drink I'd like to make.~ */ GOTO 11
  IF ~~ THEN REPLY #99395 /* ~Disgusting. I'm done with you.~ */ EXIT
END

IF ~~ THEN BEGIN 8
  SAY #93898 /* ~Nor did I. This place changes you.~ */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 /* ~I am looking for a "special" ingredient for a drink I'd like to make.~ */ GOTO 11
  IF ~~ THEN REPLY #99394 /* ~And not for the better.~ */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY #93899 /* ~One does what one must to survive in this place. The kitchen's no different from the arena in that regard.~ */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 /* ~I am looking for a "special" ingredient for a drink I'd like to make.~ */ GOTO 11
  IF ~~ THEN REPLY #92200 /* ~I have nothing else to say.~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_COOK_DEAD","GLOBAL",1)
Global("ohb_marduuk_now_cook","locals",1)
~ THEN BEGIN 10
  SAY #93900 /* ~<CHARNAME>. What can I do for you?~ */
  IF ~  Global("OHB_POISON_JOKER","GLOBAL",2)
~ THEN REPLY #91954 /* ~I am looking for a "special" ingredient for a drink I'd like to make.~ */ GOTO 11
  IF ~~ THEN REPLY #90617 /* ~Never mind.~ */ EXIT
END

IF ~~ THEN BEGIN 11
  SAY #93901 /* ~A drink, eh? What sort of drink?~ */
  IF ~~ THEN REPLY #93902 /* ~I'd rather not say.~ */ GOTO 12
  IF ~~ THEN REPLY #92069 /* ~What do you make of this place?~ */ GOTO 12
  IF ~~ THEN REPLY #92290 /* ~It's a surprise for one of the Planar Hunters.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY #93903 /* ~Probably best I don't know the details. What do you need?~ */
  IF ~~ THEN REPLY #93904 /* ~Poison. Can you get me some?~ */ GOTO 13
  IF ~~ THEN REPLY #92170 /* ~Never mind. Forget I brought it up.~ */ EXIT
END

IF ~~ THEN BEGIN 13
  SAY #93905 /* ~Mmmmaybe. Will rat poison do? There's some in the cupboard over there. Help yourself.~ */
  IF ~~ THEN DO ~AddJournalEntry(101266,QUEST)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY #100671 /* ~The performers are rebelling! Grab a cleaver. We're joining them!~ */
  IF ~~ THEN DO ~SetGlobal("OHB_COOK_DEAD","GLOBAL",2)
ChangeEnemyAlly("ohbshort",GOODCUTOFF)
ChangeEnemyAlly(Myself,GOODCUTOFF)
~ EXIT
END

IF WEIGHT #8 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
Global("ohb_cook_line_gift","global",0)
~ THEN BEGIN 15
  SAY #92969 /* ~Thanks for all you've done, <CHARNAME>. Take this. My father gave it to me when I became a chef. Maybe it'll prove useful against Dennaton. ~ */
  IF ~~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
~ GOTO 16
END

IF WEIGHT #9 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",6)
Global("OHB_COOK_DEAD","GLOBAL",2)
Global("ohb_cook_line_gift","global",1)
~ THEN BEGIN 16
  SAY #92970 /* ~Thanks again, <CHARNAME>. I'd fight with you in the arena, but I'd only slow you down.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17
  SAY #92969 /* ~Thanks for all you've done, <CHARNAME>. Take this. My father gave it to me when I became a chef. Maybe it'll prove useful against Dennaton. ~ */
  IF ~~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
StartCutSceneMode()
StartCutScene("ohbcut23")
~ EXIT
  IF ~  Global("OHB_DULF_BANNORSWITCH","GLOBAL",4)
Detect("ohbdulf")
~ THEN DO ~SetGlobal("ohb_cook_line_gift","global",1)
GiveItemCreate("OHBBLUN1",Player1,1,0,0)
~ EXTERN ~OHBDULF~ 65
END

IF WEIGHT #10 /* Triggers after states #: 32 even though they appear after this state */
~  Global("ohb_finale","global",0)
Global("OHB_SOUSCHEF_PLOT","GLOBAL",1)
~ THEN BEGIN 18
  SAY #93850 /* ~Please, <PRO_SIRMAAM>, a moment of your time.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 6
END

IF ~~ THEN BEGIN 19
  SAY #93855 /* ~You've seen the kind of person the cook is, right? He's... hard. He hates everyone, Dennaton, the Winged, and us most of all.~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY #93861 /* ~He once stabbed Short-Order in the hand with a salad fork because he reached for some leftover icing!~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY #93862 /* ~This has gone on for years. He treats his sides of beef better than us.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 7
END

IF ~~ THEN BEGIN 22
  SAY #93864 /* ~We've seen you in the arena. We think you can help us.~ */
  IF ~~ THEN REPLY #93865 /* ~The cook IS a tyrant. I'd like to help.~ */ GOTO 23
  IF ~~ THEN REPLY #93866 /* ~I'm not sure about this... But go on.~ */ GOTO 23
  IF ~~ THEN REPLY #93867 /* ~All this is YOUR problem. But I'm curious—what do you have in mind?~ */ GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY #93868 /* ~The cook is terribly allergic to funguswood. It comes from the Underdark and is sometimes ground into a powder to give dishes a special mushroom accent.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 8
END

IF ~~ THEN BEGIN 24
  SAY #93871 /* ~If you were able to get your hands on a bit of funguswood and slip it into his food, he'd get very ill. We'll never escape this place, but this way we might have some peace... for a while.~ */
  IF ~~ THEN REPLY #93872 /* ~Very well. I'll help you.~ */ DO ~AddJournalEntry(94553,QUEST)
SetGlobal("OHB_COOK_POISON","GLOBAL",1)
SetGlobal("OHB_SOUSCHEF_PLOT","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #93873 /* ~Count me out.~ */ GOTO 27
END

IF ~~ THEN BEGIN 25
  SAY #93874 /* ~I knew we could count on you. Bellowgulp the merchant might have some funguswood powder. Just drop it into a pot on the stove when the cook isn't looking.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY #93876 /* ~You'll have our undying gratitude if you pull this off. We'll get a nice reward for you, I promise.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 9
END

IF ~~ THEN BEGIN 27
  SAY #93878 /* ~Please. If you don't help us, who will? What'll we do?~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 10
END

IF ~~ THEN BEGIN 28
  SAY #93880 /* ~Oh, right, introductions! We're the cook's assistants. I'm Marduuk, and this is Short-Order.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 11
END

IF ~~ THEN BEGIN 29
  SAY #93882 /* ~We're slaves, like you. And the cook, though he doesn't like to admit it.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY #93884 /* ~But we're not fighters. We're chefs, too! At least we were when we were captured. Now all we do is cleaning and preparation work.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 12
END

IF ~~ THEN BEGIN 31
  SAY #93886 /* ~Now about what we wanted to discuss...~ */
  IF ~~ THEN REPLY #91948 /* ~Go ahead.~ */ GOTO 19
  IF ~~ THEN REPLY #92097 /* ~I don't have time for this.~ */ GOTO 27
END

IF WEIGHT #0 ~  Global("OHB_COOK_POISON","GLOBAL",3)
~ THEN BEGIN 32
  SAY #90656 /* ~The cook and his guard were both allergic to funguswood? Who'd have thought?~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 13
END

IF ~~ THEN BEGIN 33
  SAY #90658 /* ~You should be happy, Short-Order. You don't have to worry about the cook anymore.You only have to deal with me now.~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY #90659 /* ~Fetch Tartle so I can tell him of these unfortunate events. Then get rid of the bodies. In the meantime, I'll get another pot of stew going.~ */
  IF ~~ THEN EXTERN ~OHBSHORT~ 14
END

IF ~~ THEN BEGIN 35
  SAY #90661 /* ~Thank you for your service, <CHARNAME>. Here is your payment.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY #90662 /* ~You and your friends can also count on more generous servings from now on. Maybe even an extra treat once in a while.~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY #90663 /* ~Short-Order, why are you still here? Go fetch Tartle already!~ */
  IF ~~ THEN DO ~AddJournalEntry(94557,QUEST_DONE)
EraseJournalEntry(94553)
EraseJournalEntry(94554)
EraseJournalEntry(90956)
SetGlobal("OHB_COOK_POISON","GLOBAL",4)
GiveGoldForce(500)
~ EXIT
END

IF WEIGHT #11 ~  Global("OHB_KITCHEN_TALK","GLOBAL",0)
Global("tier","GLOBAL",1)
~ THEN BEGIN 38
  SAY #90666 /* ~Uuh… Wha—~ */
  IF ~~ THEN DO ~SetGlobal("OHB_KITCHEN_TALK","GLOBAL",1)
~ EXTERN ~OHBSHORT~ 15
END

IF ~~ THEN BEGIN 39
  SAY #90669 /* ~Later, <PRO_SIRMAAM>… We'll—~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 51
END

IF ~~ THEN BEGIN 40
  SAY #90673 /* ~Shhh. Not now! He's—~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 52
END

IF ~~ THEN BEGIN 41
  SAY #90669 /* ~Later, <PRO_SIRMAAM>… We'll—~ */
  IF ~~ THEN EXTERN ~OHBCOOK~ 53
END
