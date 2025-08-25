// NPCs Interjections

/// Introduction Interjection
INTERJECT_COPY_TRANS ZBNEPH zbneph2 ZB_NEPH_INTRO_INTERJECT_1
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @304 /* A beautiful flicker amidst the darkness. Valuable advice for nothing? How delightfully rare. */
END

INTERJECT_COPY_TRANS ZBNEPH zbneph3 ZB_NEPH_INTRO_INTERJECT_2
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @304 /* A beautiful flicker amidst the darkness. Valuable advice for nothing? How delightfully rare. */
END

INTERJECT_COPY_TRANS ZBNEPH zbnepharena4.3 ZB_NEPH_INTRO_INTERJECT_3
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @305 /* An apt description of many of my… former associates… */
END

/// Before match 1, If PC has completed at least 1 training match
INTERJECT_COPY_TRANS ZBNEPHJ 0 ZB_NEPH_INTERJECT_1.1
  == JAHEIRAJ IF ~GlobalGT("zb_train_spawn","GLOBAL",0) InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @43 /* You think it's a good job to destroy nature's children? We do as the balance dictates. */ /* Better them to rejoin nature instead of being left to rot in this hole. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 1 ZB_NEPH_INTERJECT_1.2
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @44 /* It’s awful to make them fight like this... No one deserves it. */
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @131 /* This Dennaton’s days are numbered, by Helm I swear it to be so. In the meantime, however, let us rid Faerûn of this band of scum. */ /*  This Dennaton’s days are numbered, by Helm I swear it to be so. In the meantime, however, let us rid Faerûn of this band of scum. */
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @139 /* No self respecting warband would allow themselves to be taken alive. Grummsh would flay their skin from their weakling bones. */
  == RASAADJ IF ~InParty("RASAAD") InMyArea("RASAAD") !StateCheck("RASAAD",CD_STATE_NOTVALID)~ THEN @133 /* I see only prisoners here, forced to feed this cruel spectacle. May the Moonmaiden grant them peace. */
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @132 /* A bloody slaughter it will be. An' bloody satisfying! */
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @134 /* Bah! I will not be toyed with on the level of some brute. Let us be quick with this. */
END
///

/// After Match 1 - Orcs
INTERJECT_COPY_TRANS ZBNEPHJ 1.1 ZBPOSTMATCH1
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @143 /* T'was a performance most dizzying! I must confess I feel the beating heart of the arena where the audience's lust for spectacle burns bright. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @144 /* Planesman, it should cause you regret to be in the machinations of the foul wizards, not delight. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @145 /* Come now. Do you not feel the pulsing thread of life in this moment? We must capture it's singularity and savor the marrow before it decays before our eyes. */
  == MAZZYJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @146 /* A true hero can see this evil for what it is. The virtuous are dishonored in seeking pleasure for killing. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @147 /* I shall leave virtue and honor to you, Tiny Hawk, for who is more deserving? */
END

/// After Match 2 - After Dennaton kills part of a gladiatorial party
INTERJECT_COPY_TRANS ZBNEPHJ 2.1 ZBPOSTMATCH2
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @306 /* Such cruelty… there must be a way to put a stop to it. */
  == MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @307 /* Boo disagrees with the treating of people like they are so many spare parts, and so does Minsc! Were my boot not contained so, it would most assuredly find itself in the nethers of this cruel evil. */
  == EDWINJ IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @308 /* Interesting of you to call it slavery while you stand here without chains of your own. Whose coin buys your freedom? (Or is it that tail of hers?) */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @309 /* Loyalty, obedience… sometimes there’s no real choice at all. Best to remember that. */
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @310 /* Replacing the weak with the strong is the law of survival. If only our own band followed it so well. */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @311 /* Such cruel calculus is the mark of true evil. It thrives where life is traded like mere coin. */
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @312 /* The worst of it all is how easily it is accepted. Shackles are not lighter when they’re gilded, no matter what you tell yourself. */
  == JANJ IF ~InParty("JAN") InMyArea("JAN") !StateCheck("JAN",CD_STATE_NOTVALID) InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @167 /* You know, that match reminded me of the Great Bovine-Turnip War of 1343. Terrible business. The bulls ran wild and trampled the fields, turnips detonating beneath their hooves. So awful was the sound that Uncle Scratchy never wears boots outdoors anymore—something about the sound of the squishing. Personally, I’m not convinced that the bulls were trying to annex gnome territory. */
END

/// Before Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3 ZBNEPHPREMATCH3
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @313 /* Ugh. Bugs. Why is it always bugs? */
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @314 /* Scaled beasties blood be thicker an’ more satisfi’in when sprayed across yer armor. */
  == MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @315 /* Be at ease. We will triumph over this lizard tribe with goodness and might. */
  == JANJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN")~ THEN @68 /*  Oh, Nephetel, you’re far too harsh. I once traded my old flame Lissa’s prize turnip for a racing lizard. Let me tell you, she was not happy I did. She chased me three times around the block and back again with a rake before she finally stood down. I named the lizard Binky, and he was the world to me when I was 38. That reminds me—I’m sure I’ve still got him around here somewhere. Don’t mind the bones. */ DO ~GiveItemCreate("ZBBINK0",Player1,1,0,0)~
  == EDWINJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN") !StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN") InMyArea("EDWIN")~ THEN @69 /* You’ve been carrying that thing around with you the entire time? Do you have no shame? */
  == MINSCJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN") !StateCheck("MINSC", CD_STATE_NOTVALID) InParty("MINSC") InMyArea("MINSC")~ THEN @70 /* Oh, that is horrible! Boo shall never face such a grisly fate. When it is our time, he will have the burial of a true Rashemi berserker alongside me! */
END
///

/// After Match 3 - Lizards
INTERJECT_COPY_TRANS ZBNEPHJ 3.1 ZBPOSTMATCH3
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @177 /* It gives me no pleasure to have defeated this tribe. Their nature has been twisted to fit the designs of Red Wizards. */
END
///

/// Before Match 4
INTERJECT_COPY_TRANS ZBNEPHJ 4 ZBPREMATCH4
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @316 /* Aye, tha’ be a fair deal, <CHARNAME>. Best we take it fer those weak-minded guppies in our company… not namin’ names. Har! */
  == YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @317 /* Clever, charging for safety when fear is the highest. */
  == ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @318 /* I would warn against taking any kind of potion from unproven hands, <CHARNAME>. */
  == NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @319 /* We ought to take the potion, <CHARNAME>. These beasts aren’t to be taken lightly. */
END
///

/// After Match 4
INTERJECT_COPY_TRANS ZBNEPHJ 4.1 ZBPOSTMATCH4
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @320 /* You know, one time I actually turned INTO an umber hulk. It was amazing—you could see everywhere with all those eyes. Ah oh, the digging! Dig, dig, dig. It felt like eating chocolate. So satisfying. Anyway, what were we doing? */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @186 /* Torm has witnessed us triumph on our righteous path to victory. Thay is a loathsome den where evil festers and such creatures must be rooted out whenever the opportunity arises. */
  == VALYGARJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @187 /* It will do little good—the entirety of Thay should be considered if one wishes to rid evil from our world. */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @188 /* Be that as it may, Valygar, we can only do what our bodies will allow us. Should the chance arise, still would I hesitate. While evil may lurk in every shadow, there is much that is sacred and worth defending—even in this place. */
END
///

/// Before Match 5
INTERJECT_COPY_TRANS ZBNEPHJ 7 ZBPREMATCH5.1
  == VICONIJ IF ~InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @61 /* Hmph. I wonder what fate befell their house? Only the weak would allow themselves to be captured by surfacers. */
  == KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN@321 /*  Ah, finally! A true evil to put to the sword. Torm’s hand will guide us. */
END

INTERJECT_COPY_TRANS ZBNEPHJ 8 ZBPREMATCH5.2
  == KORGANJ IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @322 /* Free, ye say? I be findin’ that hard t’ believe, lassy. */
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @323 /* Be cautious, <CHARNAME>, but don’t dismiss her out of hand. Another blade on our side could mean the difference between victory and death against these drow. */
  == HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @324 /* An alluring offer, my raven! Our stage will be all the richer for such dangerous company. */
  == NEERAJ IF ~InParty("NEERA") InMyArea("NEERA") !StateCheck("NEERA",CD_STATE_NOTVALID)~ THEN @325 /* If it helps keep the spiders off me, I’m MORE than happy to accept help. */
  == JANJ IF ~!StateCheck("JAN", CD_STATE_NOTVALID) InMyArea("JAN")  InParty("JAN")~ THEN @326 /* My Uncle Gerhardt used to say, 'give the first turnip for free and get a customer for life.’ Of course, he stopped saying that after he got stuck with old Berrik—he stuck around for 70 years, stubborn as mold. Old Gerhardt said he was sad when he died, but we all knew he was lying. */
  == CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @327 /* We are all beasts of a pack at the end of the day. We would do well to accept her help. */
END
///

/// After Match 5 ///
// Fight
INTERJECT_COPY_TRANS ZBNEPH zbnephfight ZBPOSTMATCH5.1
  == YOSHJ IF ~ !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("Yoshimo") InMyArea("Yoshimo")~ THEN @328 /* Oh? I am most intrigued. Let’s not tarry too long, no? */
  == NALIAJ IF ~!StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia")~ THEN @329 /* I love sneaking around. Reminds me of simpler times. */
  == EDWINJ IF ~!StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN") InMyArea("EDWIN")~ THEN @330 /* Eh, keep your guard up. I will not be held responsible if the tiefling girl ambushes us with the many spies she undoubtedly keeps in her back pocket (I can *feel* them watching.) */
END

// No fight
INTERJECT_COPY_TRANS ZBNEPH zbnephnofight ZBPOSTMATCH5.2
  == YOSHJ IF ~ !StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("Yoshimo") InMyArea("Yoshimo")~ THEN @328 /* Oh? I am most intrigued. Let’s not tarry too long, no? */
  == NALIAJ IF ~!StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Nalia") InMyArea("Nalia")~ THEN @329 /* I love sneaking around. Reminds me of simpler times. */
  == EDWINJ IF ~!StateCheck("EDWIN", CD_STATE_NOTVALID) InParty("EDWIN") InMyArea("EDWIN")~ THEN @330 /* Eh, keep your guard up. I will not be held responsible if the tiefling girl ambushes us with the many spies she undoubtedly keeps in her back pocket (I can *feel* them watching.) */
END
///

/// Ring Interject ///
INTERJECT_COPY_TRANS ZBNEPH zbnephstudyring ZBPOSTMATCH5.2
  == JAHEIRAJ IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @331 /* I’m wary, but this may be our best opportunity to leave this place. It will be good to see the trees once more. */
  == YOSHJ IF ~!StateCheck("Yoshimo",CD_STATE_NOTVALID) InParty("Yoshimo") InMyArea("Yoshimo")~ THEN @332 /* Hmm, a valuable proposition. We’d do well to seize this opportunity. */
  == AERIEJ IF ~InParty("AERIE") InMyArea("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @333 /* Oh, thank Baervan. We’ll finally be free of this place! */
  == VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @334 /* The thought of stranding some drunken wizard here is a good one, I admit, even if this ring feels wrong. Take it and let’s be done with it. */
  == DORNJ IF ~InParty("DORN") InMyArea("DORN") !StateCheck("DORN",CD_STATE_NOTVALID)~ THEN @335 /* Perhaps we should simply kill her and take the ring for ourselves. */
END
///
