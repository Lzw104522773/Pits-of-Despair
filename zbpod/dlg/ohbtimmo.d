// creator  : weidu (version 24900)
// argument : OHBTIMMO.DLG
// game     : ..
// source   : ../DATA/BLACKPITS.BIF
// dialog   : ..\lang\en_us\dialog.tlk
// dialogF  : (none)

BEGIN ~OHBTIMMO~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,1)
~ THEN BEGIN 0
  SAY @3349 /* The path through the kitchen is open. */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  OR(2)
Global("ohb_finale","global",2)
Global("ohb_finale","global",3)
RandomNum(2,2)
~ THEN BEGIN 1
  SAY @3350 /* We should fear neither option. Tempus stands with the brave. */
  IF ~~ THEN EXIT
END

IF WEIGHT #3 /* Triggers after states #: 71 even though they appear after this state */
~  Global("OHB_FOOD_FIGHT","MYAREA",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 2
  SAY @3351 /* I am Sir Timmoth Goodtree, Knight of the Order of the White Sun, Champion of Tempus. I slew the demon Ormias in the battle of Archenbridge. I see you arrived with the rest of us. I don't know about you, but I have no intention of remaining here long. */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 71 even though they appear after this state */
~  Global("ohb_pc_talked_to_me","locals",0)
Global("ohb_finale","global",0)
~ THEN BEGIN 3
  SAY @3351 /* I am Sir Timmoth Goodtree, Knight of the Order of the White Sun, Champion of Tempus. I slew the demon Ormias in the battle of Archenbridge. I see you arrived with the rest of us. I don't know about you, but I have no intention of remaining here long. */
  IF ~~ THEN REPLY @3352 /* We're of one mind on that. Do you have a plan to get out? */ DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 4
  IF ~~ THEN REPLY @3353 /* I don't understand how we got captured. Were those bounty hunters really so strong? */ DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 6
  IF ~~ THEN REPLY @3354 /* Myself, I plan to become champion here. It seems like a good opportunity to improve my skills and build some wealth. */ DO ~SetGlobal("ohb_pc_talked_to_me","locals",1)
AddJournalEntry(94982,INFO)
~ GOTO 7
END

IF ~~ THEN BEGIN 4
  SAY @3355 /* First, I must study our enemies. The guards, Dennaton, the Winged, and her followers—all will have their faults, some of which we might take advantage of. */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @3356 /* I'll come to you if I think you have a part to play in this plan. I would see what you are made of before committing myself to you. */
  IF ~~ THEN REPLY @3357 /* What do you think of this place? */ GOTO 9
  IF ~~ THEN REPLY @3358 /* How were you caught? */ GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @3361 /* There's nothing to gain in lamenting the past. What matters is what we do now. I will study our enemies. The guards, Dennaton, the Winged, and her followers, all will have weakness we can take advantage of. In that, they are no different from any other opponent. */
  IF ~~ THEN REPLY @3357 /* What do you think of this place? */ GOTO 9
  IF ~~ THEN REPLY @3362 /* How did Dennaton capture you? */ GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3363 /* A man like you would make a valuable ally in the arena. Would you consider fighting with me in my next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3363 /* A man like you would make a valuable ally in the arena. Would you consider fighting with me in my next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3363 /* A man like you would make a valuable ally in the arena. Would you consider fighting with me in my next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3363 /* A man like you would make a valuable ally in the arena. Would you consider fighting with me in my next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @3364 /* The arena can be seen as a training ground of sorts. Certainly, we must face the battles therein with the same boldness we would on a true field of honor. */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @3365 /* But I do not believe there is any worth to it beyond that. In all other ways, it is a vile place that must be wiped from the face of Faerûn. I am working now on a plan to escape. */
  IF ~~ THEN REPLY @941 /* What do you make of this place? */ GOTO 9
  IF ~~ THEN REPLY @3358 /* How were you caught? */ GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @3366 /* I must speak first of this shrine area. To be frank, I could not care less about this alcove to mercurial Tymora, or the privy yonder where that festering boil of a god, Garagos, is made to throne. */
  IF ~~ THEN EXTERN ~OHBLARIS~ 0
END

IF ~~ THEN BEGIN 10
  SAY @3367 /* Tempus tolerates your wretched god, Laris. I suppose I can extend the same courtesy to you. */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @3368 /* But this supposed altar to Tempus... What can I say? It befits the cult of a soft goddess like Sune more than the Lord of Battles. There's no vigor here, no dignity. */
  IF ~~ THEN EXTERN ~OHBCUREL~ 0
END

IF ~~ THEN BEGIN 12
  SAY @3369 /* I don't need your permission to come and go. And I will leave this place altogether, not just your sad shrine. */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @3370 /* As for the rest of the arena, it's a blight. But you know that already. */
  IF ~~ THEN REPLY @3371 /* How did you come to be here? */ GOTO 14
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3372 /* Indeed. I've a favor to ask. Would you fight with me in the next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3372 /* Indeed. I've a favor to ask. Would you fight with me in the next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3372 /* Indeed. I've a favor to ask. Would you fight with me in the next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3372 /* Indeed. I've a favor to ask. Would you fight with me in the next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @3373 /* I was defending a village on the Delimbiyr River against a band of raiding orcs. I had little more than a score of warriors at my command, but we were trained fighting men and women all. We formed a shield wall, seven wide and three deep, blocking the only trail into the village. */
  IF ~~ THEN REPLY @3374 /* Fascinating, I love tales of battle. Go on. */ GOTO 15
  IF ~~ THEN REPLY @3375 /* Sorry to interrupt. Will this story take long? */ GOTO 21
  IF ~~ THEN REPLY @3376 /* Skip to the part where you get captured. I don't have all day. */ GOTO 24
END

IF ~~ THEN BEGIN 15
  SAY @3377 /* I stood in the center of the first line, my shield locked with those of my comrades left and right, a short sword in my free hand. In a shield wall, there's no room to swing a long blade. */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @3378 /* A hundred orcs or more charged us, as orcs will—a motley crew in complete disarray. Some wielded nothing more than sticks. Others had dented helmets and rusty swords. */
  IF ~~ THEN EXTERN ~OHBLARIS~ 1
END

IF ~~ THEN BEGIN 17
  SAY @3379 /* We met their charge. The line shook, but our feet were well planted and our wall held. They stood no chance. */
  IF ~~ THEN REPLY @3380 /* Then how were you made a prisoner here? */ GOTO 18
  IF ~~ THEN REPLY @3381 /* Was it so boring that you fell asleep and were captured? */ GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @3382 /* Suddenly, in front of me, I saw the planetar. I do not know where she came from. She raised her sword and spread her wings. The air rippled in a silent explosion. All those around us, human and orc alike, fell as one. */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @3383 /* I understood she was challenging me to single combat. We traded blows for I know not how long. I've never met a fighter as skilled as she. Eventually, she brought me to one knee and put her sword's tip to my neck. I had no choice but to yield. */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @3384 /* Her companions put me in shackles. The next thing I knew, I was here. */
  IF ~~ THEN REPLY @941 /* What do you make of this place? */ GOTO 9
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @3385 /* Each tale of battle is a prayer to Tempus. To interrupt one is sacrilege. */
  IF ~~ THEN REPLY @3386 /* My apologies. Please, continue. */ GOTO 23
  IF ~~ THEN REPLY @3387 /* I've never had much use for gods. */ GOTO 22
  IF ~~ THEN REPLY @3388 /* I care nothing for your god. */ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @3389 /* Then I've no use for you. Do not speak to me again. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23
  SAY @3390 /* As I was about to say, I stood in the center of the first line. My shield was locked with those of my comrades left and right. In my free hand, I held my short sword. In a shield wall, there is no room to swing a long blade. */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 24
  SAY @3391 /* Very well: In summary, the Hunters appeared and the planetar defeated me in single combat. Are you satisfied? I hope so, as we'll not speak again. */
  IF ~~ THEN DO ~SetGlobal("OHB_TIMMOTH_INSULTED","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 25
  SAY @3392 /* I doubt we need each other's aid at this stage. If you're so skilled a combatant, you'll succeed on your own. When things get more difficult, we can revisit the matter. */
  IF ~~ THEN REPLY @3357 /* What do you think of this place? */ GOTO 9
  IF ~~ THEN REPLY @3393 /* How does a man of your strength and martial skill end up in a pit like this? */ GOTO 14
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @3394 /* You have done well enough for yourself thus far. Perhaps we will fight together another time. */
  IF ~~ THEN REPLY @3395 /* I hope so. What do you think of this place? */ GOTO 9
  IF ~~ THEN REPLY @3396 /* If we survive that long. How were you caught? */ GOTO 14
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @3397 /* You fought valiantly against the sahuagin and the githyanki. Yes, I will fight at your side. The price of collaboration has been set at 1,500 gold pieces, correct? */
  IF ~  PartyGoldGT(1499)
~ THEN REPLY @3398 /* Indeed. And here it is. */ GOTO 28
  IF ~~ THEN REPLY @3399 /* Unfortunately, I don't have the gold. I'll return when I do. */ GOTO 30
  IF ~~ THEN REPLY @3400 /* Honor and glory aren't payment enough? */ GOTO 31
END

IF ~~ THEN BEGIN 28
  SAY @3401 /* I will meet you in the arena. */
  IF ~~ THEN DO ~TakePartyGold(1500)
SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_TIMMOTH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 29
  SAY @3402 /* I was about to ask you the same. Let us unite our strengths. We share a bond forged by the violence of this place, a bond stronger than steel or iron. I look forward to joining you in the arena. */
  IF ~~ THEN DO ~SetGlobal("OHB_HIRE","GLOBAL",1)
SetGlobal("OHB_TIMMOTH_HIRED","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 30
  SAY @3403 /* You shoulda taken a look inside your pouches before asking me. I am still willing to join you, however. Return when you have the gold. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31
  SAY @3404 /* Do you know who I am, <CHARNAME>? The next time you come to me with such a request, you would do well to take it seriously. */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 71 even though they appear after this state */
~  Global("OHB_TIMMOTH_INSULTED","LOCALS",1)
Global("ohb_pc_talked_to_me","locals",1)
~ THEN BEGIN 32
  SAY @3405 /* I thought I made it clear we have nothing to talk about, <CHARNAME>. */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 71 even though they appear after this state */
~  !Global("OHB_TIMMOTH_INSULTED","LOCALS",1)
Global("ohb_pc_talked_to_me","locals",1)
~ THEN BEGIN 33
  SAY @3406 /* I hope you're faring well, <CHARNAME>. Is there anything I can do for you? */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY @3408 /* How are you doing in the arena? */ GOTO 46
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY @3409 /* How are your plans for escape coming along? */ GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY @3410 /* I have a plan to escape. Will you fight with me? */ GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3411 /* I would have you fight alongside me in the next match, if you're willing. */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3411 /* I would have you fight alongside me in the next match, if you're willing. */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3411 /* I would have you fight alongside me in the next match, if you're willing. */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3411 /* I would have you fight alongside me in the next match, if you're willing. */ GOTO 29
  IF ~~ THEN REPLY @3412 /* Nothing for now. Thank you. */ EXIT
END

IF ~~ THEN BEGIN 34
  SAY @3413 /* What were you doing in the Winged's quarters? */
  IF ~~ THEN REPLY @3414 /* Looking for any advantage I could find. We must face the Winged sooner or later. */ GOTO 35
  IF ~~ THEN REPLY @3415 /* Nothing in particular. I was just curious and a little bored down here, to tell the truth. */ GOTO 36
  IF ~~ THEN REPLY @3416 /* I was looking for the equipment they took away when they brought us here. No luck so far, unfortunately. */ GOTO 37
  IF ~~ THEN REPLY @3417 /* I presumed she and the other Hunters would keep a few valuables. May as well try to make a profit while I'm here. */ GOTO 38
  IF ~~ THEN REPLY @3418 /* That's no business of yours. */ GOTO 39
END

IF ~~ THEN BEGIN 35
  SAY @3419 /* I see. Researching your opponent, or weakening them prior to battle, is an integral part of warfare. Show me the gauntlet. Let's see if we can learn something from it. */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 36
  SAY @3420 /* Perhaps you'd do better spending more time in the training hall. That said, you may have found something useful. Show me the gauntlet. */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 37
  SAY @3421 /* What I would not do to have my blades Dragon Breath and Hornet Sting returned to me. Perhaps that gauntlet is something you or I could wear? Let me see it. */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 38
  SAY @3422 /* I do not understand your kind. You are a prisoner. Your first and only concern should be regaining your freedom. Show me the gauntlet. Maybe it is something that will prove useful. */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 39
  SAY @3423 /* As you wish; don't tell me more. Do show me that gauntlet, though. We might learn something useful. */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @3424 /* Hmm... I recognize the writing. It is the celestial tongue. It says: "To Faith, Family, Masters, and all Good Beings of Faerûn." */
  IF ~  OR(2)
Class(Player1,PALADIN)
Class(Player1,CLERIC_ALL)
~ THEN GOTO 41
  IF ~  !Class(Player1,PALADIN)
!Class(Player1,CLERIC_ALL)
~ THEN GOTO 42
END

IF ~~ THEN BEGIN 41
  SAY @3425 /* These are the fourfold duties that are part of the Code of Torm! */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 42
  SAY @3426 /* These are the fourfold duties that are part of the Code of Torm—the god who watches over the weak and the defenseless.  */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @3427 /* Why would a slaver have a gauntlet dedicated to such a god? Is it a trophy, taken from one of her victims? */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @3428 /* She is a celestial herself, and many of them do worship Torm. Could it be a reminder of her past? Has she fallen from her faith? */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
  SAY @3429 /* Is there a way to use this to our advantage? I see none, but that may change. Keep the gauntlet safe. Unfortunately, we cannot wear it ourselves. It has power, but only a celestial may wield it. */
  IF ~~ THEN DO ~SetGlobal("ohb_timmoth_subject_glove","locals",1)
~ EXIT
END

IF ~~ THEN BEGIN 46
  SAY @3430 /* I'm finding more satisfaction there than I expected. There is little honor in this type of battle. Still, combat is a powerful draught for the spirit. Men such as I only truly live when we fight. */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @3431 /* There's nothing so pure as the emotions of battle. It cleanses the mind and shows everything else for what it truly is: artifice. */
  IF ~~ THEN REPLY @3432 /* I feel the same. */ GOTO 48
  IF ~~ THEN REPLY @3433 /* I never thought of it that way. */ GOTO 49
  IF ~~ THEN REPLY @3434 /* I'm just glad I'm still alive. */ GOTO 50
  IF ~~ THEN REPLY @3435 /* I enjoy most that moment when I see all life disappear from my enemy's eyes. */ GOTO 51
END

IF ~~ THEN BEGIN 48
  SAY @3436 /* You and I are cut from the same cloth. */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY @3437 /* How's your escape plan coming along? */ GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY @3438 /* I have a plan to escape. Will you join me? */ GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3439 /* Will you fight with me in the next match, as my brother in cloth? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3439 /* Will you fight with me in the next match, as my brother in cloth? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3439 /* Will you fight with me in the next match, as my brother in cloth? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3439 /* Will you fight with me in the next match, as my brother in cloth? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 49
  SAY @3440 /* Next time you enter the arena, give yourself up to the moment. You might feel what I do. */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY @3437 /* How's your escape plan coming along? */ GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY @3441 /* Know this: Dennaton's time of reckoning approaches. Will you fight him with me? */ GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3442 /* Show me how. Fight with me in my next match. */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3442 /* Show me how. Fight with me in my next match. */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3442 /* Show me how. Fight with me in my next match. */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3442 /* Show me how. Fight with me in my next match. */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 50
  SAY @3443 /* Staying alive is a critical part of fighting! */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3407 /* I found this gauntlet in the Winged's chamber. I thought you might know what the inscription meant. */ GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY @3444 /* How go your plans for escape? */ GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY @3445 /* I plan to leave this place soon. Will you fight with me? */ GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3446 /* I've a better chance of surviving if you fight with me in my next match. */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3446 /* I've a better chance of surviving if you fight with me in my next match. */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3446 /* I've a better chance of surviving if you fight with me in my next match. */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3446 /* I've a better chance of surviving if you fight with me in my next match. */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 51
  SAY @3447 /* I know what you speak of. To derive pleasure from it is a mark of particular cruelty. */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3448 /* I am as the gods made me. On another topic, I found this gauntlet in the Winged's chamber. Can you read the inscription? */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3448 /* I am as the gods made me. On another topic, I found this gauntlet in the Winged's chamber. Can you read the inscription? */ GOTO 40
  IF ~  Global("ohb_rebellion","GLOBAL",0)
~ THEN REPLY @3444 /* How go your plans for escape? */ GOTO 52
  IF ~  Global("ohb_rebellion","GLOBAL",1)
~ THEN REPLY @3449 /* I have a plan to escape. There will be an uprising soon. Will you fight with us? */ GOTO 53
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3450 /* I take it you wouldn't want to fight with me in my next match, then. */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3450 /* I take it you wouldn't want to fight with me in my next match, then. */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3450 /* I take it you wouldn't want to fight with me in my next match, then. */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3450 /* I take it you wouldn't want to fight with me in my next match, then. */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 52
  SAY @3451 /* The more I think about it, the more a confrontation with the Winged and her followers seems unavoidable. As a group, they are exceedingly powerful. I must find a way to somehow undermine them ahead of time. */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3452 /* Perhaps this will help. I took this gauntlet from the Winged's chambers. Can you read the inscription? */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3452 /* Perhaps this will help. I took this gauntlet from the Winged's chambers. Can you read the inscription? */ GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY @3408 /* How are you doing in the arena? */ GOTO 46
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3359 /* Would you fight with me in the next match? */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 53
  SAY @3453 /* Will I battle my captors? Yes, of course I would. I will await the signal. */
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",0)
~ THEN REPLY @3454 /* I found this gauntlet in the Winged's chamber. Can you interpret the inscription? */ GOTO 34
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_timmoth_subject_glove","locals",1)
~ THEN REPLY @3454 /* I found this gauntlet in the Winged's chamber. Can you interpret the inscription? */ GOTO 40
  IF ~  OR(2)
Global("tier","GLOBAL",2)
Global("tier","GLOBAL",3)
~ THEN REPLY @3408 /* How are you doing in the arena? */ GOTO 46
  IF ~  Global("tier","GLOBAL",1)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3455 /* I would have you battle more than just our captors. Join me in my next match. */ GOTO 25
  IF ~  Global("tier","GLOBAL",2)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3455 /* I would have you battle more than just our captors. Join me in my next match. */ GOTO 26
  IF ~  Global("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3455 /* I would have you battle more than just our captors. Join me in my next match. */ GOTO 27
  IF ~  GlobalGT("tier","GLOBAL",3)
!Global("OHB_HIRE","GLOBAL",1)
~ THEN REPLY @3455 /* I would have you battle more than just our captors. Join me in my next match. */ GOTO 29
  IF ~~ THEN REPLY @3360 /* I will take my leave now. */ EXIT
END

IF ~~ THEN BEGIN 54
  SAY @3456 /* Fortune—and Tempus—favor the bold. The Lord of Battles will guide our blades! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 58
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 57
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 38
END

IF ~~ THEN BEGIN 55
  SAY @3457 /* This is our best opportunity to be free. We should seize it! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 59
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 58
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 33
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 36
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 38
END

IF ~~ THEN BEGIN 56
  SAY @3458 /* Why would you agree to such a request? Tartle has made us all miserable. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 63
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 34
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 37
  IF ~  InMyArea("ohbgezzt")
!Dead("ohbgezzt")
~ THEN EXTERN ~OHBGEZZT~ 39
END

IF ~~ THEN BEGIN 57
  SAY @3459 /* I too will try to spare him, but I can make no promises. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 69
  IF ~  InMyArea("ohbdulf")
!Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 60
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 35
  IF ~  InMyArea("ohbmercy")
!Dead("ohbmercy")
~ THEN EXTERN ~OHBMERCY~ 38
  IF ~  InMyArea("ohbhort")
!Dead("ohbhort")
~ THEN EXTERN ~OHBHORT~ 41
END

IF ~~ THEN BEGIN 58
  SAY @3460 /* Tempus, may you take pleasure in this day's battle! Help me stand true against my foes! */
  IF ~~ THEN EXTERN ~OHBBRODL~ 74
  IF ~  InMyArea("ohbfeldr")
!Dead("ohbfeldr")
~ THEN EXTERN ~OHBFELDR~ 36
END

IF WEIGHT #7 /* Triggers after states #: 71 even though they appear after this state */
~  Global("ohb_finale","global",1)
~ THEN BEGIN 59
  SAY @3460 /* Tempus, may you take pleasure in this day's battle! Help me stand true against my foes! */
  IF ~~ THEN EXIT
END

IF WEIGHT #8 /* Triggers after states #: 71 even though they appear after this state */
~  Global("ohb_finale","global",6)
~ THEN BEGIN 60
  SAY @3461 /* I would gladly join you and strike a blow against Dennaton's tyranny, <CHARNAME>. But judging by this motley crew, it is best I stay to shore up our defenses. */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 61
  SAY @3462 /* Thank you, <CHARNAME>. Your name will be sung wherever great deeds are held dear. */
  IF ~~ THEN EXTERN ~OHBBRODL~ 89
  IF ~  InMyArea("ohblea")
Dead("ohblea")
~ THEN EXTERN ~OHBLEA~ 17
  IF ~  InMyArea("ohbdulf")
Dead("ohbdulf")
~ THEN EXTERN ~OHBDULF~ 66
END

IF ~~ THEN BEGIN 62
  SAY @3463 /* And that suits you fine, doesn't it, Curell? How Tempus could have called such a coward to his service is beyond me. You should celebrate the arena for what it is: an opportunity to prove oneself in battle. The arena IS a battlefield! Instead, you flee from it. Tempus doesn't like deserters. You do know what he demands we do to deserters, don't you, Curell? */
  IF ~~ THEN EXTERN ~OHBCUREL~ 3
END

IF ~~ THEN BEGIN 63
  SAY @3464 /* You two incessantly wag your tongues at each other and do little else. If your disagreements are so profound, unsheathe your swords. Settle them like true warriors. */
  IF ~~ THEN REPLY @471 /* Can you heal my wounds? */ EXTERN ~OHBLARIS~ 11
  IF ~~ THEN REPLY @472 /* Can I see your temple services? */ EXTERN ~OHBLARIS~ 12
  IF ~~ THEN REPLY @1720 /* I heard someone else besides Dennaton was behind this place? */ EXTERN ~OHBLARIS~ 13
  IF ~  PartyHasItem("ohbglov1")
Global("ohb_laris_ask_gauntlet","global",0)
~ THEN REPLY @1714 /* I found this gauntlet with strange writing on it and was wondering if you could decipher any of it. */ EXTERN ~OHBLARIS~ 14
  IF ~~ THEN REPLY @463 /* I'll be going. */ EXIT
END

IF ~~ THEN BEGIN 64
  SAY @3465 /* That suits you fine, doesn't it, Curell? How Tempus could've called such a coward to his service is beyond me. You should celebrate the arena for what it is: an opportunity to prove oneself in battle. The arena IS a battlefield! Instead, you flee from it. Tempus doesn't like deserters. You do know what he demands we do to deserters, don't you, Curell? */
  IF ~~ THEN EXTERN ~OHBCUREL~ 9
END

IF ~~ THEN BEGIN 65
  SAY @3466 /* What do you know of skill and tactics? You never leave your shrine! A house of Tempus should not be some shady underground alcove. The battlefield, that is where we glorify him! You are a disgrace to our order. */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 54
END

IF ~~ THEN BEGIN 66
  SAY @3467 /* Hah! You talk of skill and tactics as though you know what they are. You never leave your shrine! A house of Tempus should not be some shady underground alcove. The battlefield, that is where we glorify him! You are a disgrace to our order. */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 55
END

IF ~~ THEN BEGIN 67
  SAY @3468 /* What would you know about skill and tactics, Curell? When did you last visit the training hall, or fight one of Stirv's menagerie? You never leave your shrine! This shady underground alcove is no fit place to worship. The field of battle, that is where we glorify him! You are a weakling and a disgrace to our order. */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 56
END

IF ~~ THEN BEGIN 68
  SAY @3469 /* Like you know anything of the battlefield. You never leave your shrine! */
  IF ~~ THEN EXTERN ~OHBMOLZA~ 57
END

IF ~~ THEN BEGIN 69
  SAY @3470 /* Pah! Some of these guards aren't fit to wield a steak knife, much less a sword. */
  IF ~~ THEN EXTERN ~OHBGEZZT~ 60
END

IF ~~ THEN BEGIN 70
  SAY @3471 /* This place is a blight upon Faerûn. Tempus demands I destroy you, it, and all these other heathens. */
  IF ~~ THEN EXTERN ~OHBDENNA~ 264
END

IF WEIGHT #2 ~  Global("ohb_finale","global",0)
!Global("OHB_brodle_uprising_ready","GLOBAL",0)
~ THEN BEGIN 71
  SAY @3456 /* Fortune—and Tempus—favor the bold. The Lord of Battles will guide our blades! */
  IF ~~ THEN EXIT
END
