#Notes:
#Might want to add divine plea to a ultility function and add it to right side CDs with AVENGINGWRATH. Add Inqusition as well. DONE
#Mastery means talents trees 1 2 or 3.
#Ovale only shows windows correctly if margin = 0
#Fix AS code so that it detects Grand Crusader procs. DONE
#Fix SoTR code so if SoTR happens to miss, USE IT AGAIN. DONE
#Add code to show when DP should be used! Add glyph code as well DONE
#Come up with code for threat DONE
#Come up with code for No Target DONE
#Fix GrandCrusader Buff so that it takes priority over others in AOE.
#AOE rotation totall broken
#Add Judgement and Shield of right
#Layonhands change to 10% hp DONE
#Divine prot at 50% ish
#Ancient defense at 20%
#Add inquisition into single
#Take out Consecration out of normal rotation? IGNORED
#FIX: When running in and AS is not on cd, it says oor...
#FIX: At the start if u pull in melee range dont suggest AS 1st instead of CS
#If im running in and i have 2 holypower suggest CS then SoTR
#Change Inquisition CD to buff present time
#When moving atk range and Divine Plea flicker (before combat)
#If im backing away from a mob and it's health is low and avenger or hammer of wrath is up use it. atm it shows oor even if avenger is off cd
#dont suggest conc wit 2 Holy powers
#add logic for if target runs away from me to cast a ranged atk like hammer of wrath or excorsism once or twice.
#add logic to detect disarms on u so atks dont become opacity outs
#Add holy shield logic
#add SoTR crit logic (sacred duty?)


Holy Shield = 20925 30s cd 3% base mana (Requires Shields) for 10s
Sacred Duty = 85433 lasts for 10s


Define(ARDENTDEFENDER 31850)
	#SpellInfo(ARDENTDEFENDER cd=300)
Define(AVENGERSSHIELD 31935)
    #SpellInfo(AVENGERSSHIELD cd=15)
Define(AVENGINGWRATH 31884)
    #SpellInfo(AVENGINGWRATH cd=180)
    #SpellAddBuff(AVENGINGWRATH AVENGINGWRATH=20)
Define(CONSECRATE 26573)
    #SpellInfo(CONSECRATE cd=36)
Define(CRUSADERSTRIKE 35395)
    #SpellInfo(CRUSADERSTRIKE cd=4 holy=1)
Define(DIVINEGUARDIAN 70940)
	#SpellInfo(DIVINEGUARDIAN cd=300)
Define(DIVINEPLEA 54428)
    #SpellInfo(DIVINEPLEA cd=120)
    #SpellAddBuff(DIVINEPLEA DIVINEPLEA=9)
Define(DIVINEPROTECTION 498)
    #SpellInfo(DIVINEPROTECTION cd=60)
    #SpellAddBuff(DIVINEPROTECTION DIVINEPROTECTION=10)
Define(EXORCISM 879)
    #SpellAddBuff(EXORCISM THEARTOFWAR=0)
Define(GUARDIANOFANCIENTKINGS 86150)
    #SpellInfo(GUARDIANOFANCIENTKINGS cd=300)
Define(HAMMEROFWRATH 24275)
    #SpellInfo(HAMMEROFWRATH cd=6)
Define(HAMMEROFTHERIGHTEOUS 53595)
    #SpellInfo(HAMMEROFTHERIGHTEOUS cd=4.5)
Define(HANDOFRECKONING 62124)
Define(HOLYWRATH 2812)
    #SpellInfo(HOLYWRATH cd=15)
Define(INQUISITION 84963)
    #SpellInfo(INQUISITION holy=-3)
    #SpellAddBuff(INQUISITION INQUISITION=12 DIVINEPURPOSE=0)
Define(JUDGEMENT 20271)
    #SpellInfo(JUDGEMENT cd=8)
Define(LAYONHANDS 633)
	#SpellInfo(LAYONHANDS cd=600)
Define(REBUKE 96231)
	#SpellInfo(REBUKE cd=10)
Define(RIGHTEOUSFURY 25780)
Define(SEALRIGHTEOUSNESS 20154)
    #SpellAddBuff(SEALRIGHTEOUSNESS SEALRIGHTEOUSNESS=1800)
Define(SEALOFTRUTH 31801)
    #SpellAddBuff(SEALOFTRUTH SEALOFTRUTH=1800)
Define(SHIELDOFTHERIGHTEOUS 53600)
    #SpellInfo(SHIELDOFTHERIGHTEOUS cd=6 holy=-3)
    #SpellAddBuff(SHIELDOFTHERIGHTEOUS DIVINEPURPOSE=0)
	
#Trinket Procs
#Define(HEEDLESSCARNAGE 92108) #Unheeded Warning Proc

#Glyphs
Define(GLYPHOFCONSECRATION 54928)
Define(GLYPHOFDIVINEPLEA 63223)

#Buffs
Define(GRANDCRUSADER 85043)
Define(JUDGEMENTOFTHEWISE 31878)
#Define(THEARTOFWAR 59578)
#Define(JUDGEMENTSOFTHEPURE 53655)

#Debuffs
Define(FORBEARANCE 25771)

#Options
AddCheckBox(rebuke SpellName(REBUKE) default)
AddCheckBox(taunt SpellName(HANDOFRECKONING) default mastery=2)
AddCheckBox(aoe L(AOE))
AddCheckBox(cooldownsR "Show Offensive CDs (Right)" default mastery=2)
AddCheckBox(cooldownsL "Show Defensive CDs (Left)" default mastery=2)
AddListItem(cd0 t0 "Top Left - No Cooldown" default mastery=2)
AddListItem(cd0 t1 "Top Left - Avenger Shield" mastery=2)
AddListItem(cd0 t2 "Top Left - Avenging Wrath" mastery=2)
AddListItem(cd0 t3 "Top Left - Consecration" mastery=2)
AddListItem(cd0 t4 "Top Left - Crusader Strike" mastery=2)
AddListItem(cd0 t5 "Top Left - Divine Plea" mastery=2)
AddListItem(cd0 t6 "Top Left - Hammer of the Righteous" mastery=2)
AddListItem(cd0 t7 "Top Left - Inquisition" mastery=2)
AddListItem(cd0 t8 "Top Left - Trinket 0" mastery=2)
AddListItem(cd0 t9 "Top Left - Trinket 1" mastery=2)
AddListItem(cd1 t0 "Bottom Left - No Cooldown" default mastery=2)
AddListItem(cd1 t1 "Bottom Left - Avenger Shield" mastery=2)
AddListItem(cd1 t2 "Bottom Left - Avenging Wrath" mastery=2)
AddListItem(cd1 t3 "Bottom Left - Consecration" mastery=2)
AddListItem(cd1 t4 "Bottom Left - Crusader Strike" mastery=2)
AddListItem(cd1 t5 "Bottom Left - Divine Plea" mastery=2)
AddListItem(cd1 t6 "Bottom Left - Hammer of the Righteous" mastery=2)
AddListItem(cd1 t7 "Bottom Left - Inquisition" mastery=2)
AddListItem(cd1 t8 "Bottom Left - Trinket 0" mastery=2)
AddListItem(cd1 t9 "Bottom Left - Trinket 1" mastery=2)
AddListItem(cd2 t0 "Top Right - No Cooldown" default mastery=2)
AddListItem(cd2 t1 "Top Right - Avenger Shield" mastery=2)
AddListItem(cd2 t2 "Top Right - Avenging Wrath" mastery=2)
AddListItem(cd2 t3 "Top Right - Consecration" mastery=2)
AddListItem(cd2 t4 "Top Right - Crusader Strike" mastery=2)
AddListItem(cd2 t5 "Top Right - Divine Plea" mastery=2)
AddListItem(cd2 t6 "Top Right - Hammer of the Righteous" mastery=2)
AddListItem(cd2 t7 "Top Right - Inquisition" mastery=2)
AddListItem(cd2 t8 "Top Right - Trinket 0" mastery=2)
AddListItem(cd2 t9 "Top Right - Trinket 1" mastery=2)
AddListItem(cd3 t0 "Bottom Right - No Cooldown" default mastery=2)
AddListItem(cd3 t1 "Bottom Right - Avenger Shield" mastery=2)
AddListItem(cd3 t2 "Bottom Right - Avenging Wrath" mastery=2)
AddListItem(cd3 t3 "Bottom Right - Consecration" mastery=2)
AddListItem(cd3 t4 "Bottom Right - Crusader Strike" mastery=2)
AddListItem(cd3 t5 "Bottom Right - Divine Plea" mastery=2)
AddListItem(cd3 t6 "Bottom Right - Hammer of the Righteous" mastery=2)
AddListItem(cd3 t7 "Bottom Right - Inquisition" mastery=2)
AddListItem(cd3 t8 "Bottom Right - Trinket 0" mastery=2)
AddListItem(cd3 t9 "Bottom Right - Trinket 1" mastery=2)


ScoreSpells(SHIELDOFTHERIGHTEOUS JUDGEMENT AVENGERSSHIELD HAMMEROFTHERIGHTEOUS CONSECRATE HOLYWRATH
    EXORCISM HAMMEROFWRATH JUDGEMENT CRUSADERSTRIKE REBUKE DIVINEPLEA DIVINEGUARDIAN)

#Right Cooldowns
#TL:DIVINEGUARDIAN TR:DIVINEPROTECTION
#BL:ARDENTDEFENDER BR:GUARDIANOFANCIENTKINGS
AddIcon help=cd size=small mastery=2 { # Divine Guardian Icon
    if CheckBoxOn(cooldownsL) {
		Spell(DIVINEGUARDIAN)
	}
}
AddIcon help=cd size=small mastery=2 { # Ardent Defender Icon
	if CheckBoxOn(cooldownsL) {
		Spell(ARDENTDEFENDER)
	}
}
AddIcon help=cd size=small mastery=2 { # Divine Protection Icon
	if CheckBoxOn(cooldownsL) {
		Spell(DIVINEPROTECTION)
	}
}
AddIcon help=cd size=small mastery=2 { # Guardian of Ancient Kings Icon
    if CheckBoxOn(cooldownsL) {
		Spell(GUARDIANOFANCIENTKINGS)
	}
}
####################################################################
#Main Rotation
#SoTR = Shield of the Righteous
#HoTR = Hammer of the Righteous
#HW = Holy Wrath
#Single = SoTR > AS > CS > Judgement > Holy Wrath > Consecration - AS above CS due to chance to refresh AS!
#Single Opener = DP (for 3 HP) Wings + Exorcism + Avenger Shield + SoTR
#Multi = HoTR - Conc - HW - CS - AS This is Priority but always HoTR 
#Multi Opener = DP (3 HP) - Inquisition - Wings when up use it
AddIcon help=main mastery=2 
{
    if BuffExpires(RIGHTEOUSFURY) Spell(RIGHTEOUSFURY)
    unless InCombat() if BuffExpires(SEALRIGHTEOUSNESS 300) and BuffExpires(SEALOFTRUTH 300) Spell(SEALOFTRUTH)
	
#	if CheckBoxOn(taunt) # Taunt Code
 #   {
#		#if TargetTargetIsPlayer(yes) and Speed(Target=Player more 0) and TargetClassification(worldboss)
#		if Threat(less 100) and InCombat(yes) unless TargetTargetIsPlayer(yes) #or TargetClassification(worldboss)
#		{
#		Spell(HANDOFRECKONING)
#		}
#	}
#	if CheckBoxOn(rebuke) # Interrupt
#    {
#		if TargetIsCasting(yes) and TargetIsInterruptible(yes) {
#			Spell(REBUKE)
#		}
#	}
#My AoE rotation is something like;
#Divine Plea -> Inq -> AS -> Drop Cons(If you want) -> HotR -> Judge(If you want) -> HW -> HotR -> AS/HW -> HotR -> Inq/ShoR/WoG
#Our AoE priority is HotR>Cons>HW>AS>(ShoR / Inq / WoG)>J.  If you find your self having mana problems you can bump Judge up.
    if CheckBoxOn(aoe) # AoE Rotation
    {
		if InCombat(no)
		{
			unless BuffPresent(DIVINEPLEA) 
			{
				Spell(DIVINEPLEA)
			}
			if HolyPower(more 2) and BuffExpires(INQUISITION 0) Spell(INQUISITION)
			Spell(AVENGERSSHIELD)
		}
        if HolyPower(more 2) and BuffExpires(INQUISITION 0) Spell(INQUISITION)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		#if ManaPercent(less 10) and BuffExpires(JUDGEMENTOFTHEWISE 2) Spell(JUDGEMENT)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless TargetInRange(CRUSADERSTRIKE) {
			Texture(ability_druid_catformattack)
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        Spell(HAMMEROFTHERIGHTEOUS) #1
		unless 0.5s before Spell(CRUSADERSTRIKE)
		{
			if TargetLifePercent(less 20) Spell(HAMMEROFWRATH)
		}
		if TimeInCombat(less 5) and InCombat(yes)
		{
			Spell(JUDGEMENT)
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless BuffPresent(DIVINEPLEA) 
		{
			if Glyph(GLYPHOFDIVINEPLEA)
			{
				if ManaPercent(less 20) Spell(DIVINEPLEA) #80
			}
			unless Glyph(GLYPHOFDIVINEPLEA) 
			{
				if ManaPercent(less 30) Spell(DIVINEPLEA) #86
			}
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        unless ManaPercent(less 30) Spell(CONSECRATE) #2
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        unless ManaPercent(less 25) Spell(HOLYWRATH) #3
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		if BuffExpires(JUDGEMENTOFTHEWISE 2) Spell(JUDGEMENT) #4
		Spell(AVENGERSSHIELD) #5
	}
    if CheckBoxOff(aoe) # Single Rotation
    {
		if InCombat(no)
		{
			unless BuffPresent(DIVINEPLEA) Spell(DIVINEPLEA)
			Spell(AVENGERSSHIELD)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS) #0
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(AVENGERSSHIELD) #1
		unless TargetInRange(CRUSADERSTRIKE) {
			Texture(ability_druid_catformattack)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(CRUSADERSTRIKE) #2
		unless 0.5s before Spell(CRUSADERSTRIKE)
		{
			if TargetLifePercent(less 20) Spell(HAMMEROFWRATH)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(JUDGEMENT) #3
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless ManaPercent(less 25) Spell(HOLYWRATH) #4
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless ManaPercent(less 40) Spell(CONSECRATE priority=2) #5
		unless BuffPresent(DIVINEPLEA) 
		{
			if Glyph(GLYPHOFDIVINEPLEA)
			{
				if ManaPercent(less 80) Spell(DIVINEPLEA priority=2) #6
			}
			unless Glyph(GLYPHOFDIVINEPLEA) 
			{
				if ManaPercent(less 86) Spell(DIVINEPLEA priority=2) #6
			}
		}
	}
}
#Secondary Rotation
AddIcon help=main mastery=2 
{
    if BuffExpires(RIGHTEOUSFURY) Spell(RIGHTEOUSFURY)
    unless InCombat() if BuffExpires(SEALRIGHTEOUSNESS 300) and BuffExpires(SEALOFTRUTH 300) Spell(SEALOFTRUTH)
	
	if LifePercent(less 25) Spell(ARDENTDEFENDER)
	unless 0s before Spell(ARDENTDEFENDER) and DebuffPresent(FORBEARANCE)
	{
		if LifePercent(less 20)
		{
			Spell(LAYONHANDS)
		}
	}
	if CheckBoxOn(taunt) # Taunt Code
    {
		#if TargetTargetIsPlayer(yes) and Speed(Target=Player more 0) and TargetClassification(worldboss)
		if Threat(less 100) and InCombat(yes) unless TargetTargetIsPlayer(yes) #or TargetClassification(worldboss)
		{
		Spell(HANDOFRECKONING)
		}
	}
	if CheckBoxOn(rebuke) # Interrupt
    {
		if TargetIsCasting(yes) and TargetIsInterruptible(yes) {
			Spell(REBUKE)
		}
	}
    if CheckBoxOn(aoe) # AoE Rotation
    {
		if InCombat(no)
		{
			unless BuffPresent(DIVINEPLEA) 
			{
				Spell(DIVINEPLEA)
			}
			if HolyPower(more 2) and BuffExpires(INQUISITION 0) Spell(INQUISITION)
			Spell(AVENGERSSHIELD)
		}
        if HolyPower(more 2) and BuffExpires(INQUISITION 0) Spell(INQUISITION)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		if ManaPercent(less 5) Spell(JUDGEMENT)
		unless TargetInRange(CRUSADERSTRIKE) {
			Texture(ability_druid_catformattack)
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        Spell(HAMMEROFTHERIGHTEOUS) #1
		unless 0.5s before Spell(CRUSADERSTRIKE)
		{
			if TargetLifePercent(less 20) Spell(HAMMEROFWRATH)
		}
		if TimeInCombat(less 5) and InCombat(yes)
		{
			Spell(JUDGEMENT)
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless BuffPresent(DIVINEPLEA) 
		{
			if Glyph(GLYPHOFDIVINEPLEA)
			{
				if ManaPercent(less 20) Spell(DIVINEPLEA) #80
			}
			unless Glyph(GLYPHOFDIVINEPLEA) 
			{
				if ManaPercent(less 30) Spell(DIVINEPLEA) #86
			}
		}
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        unless ManaPercent(less 30) Spell(CONSECRATE) #2
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
        unless ManaPercent(less 25) Spell(HOLYWRATH) #3
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		if BuffExpires(JUDGEMENTOFTHEWISE 2) Spell(JUDGEMENT) #4
		Spell(AVENGERSSHIELD) #5
	}
    if CheckBoxOff(aoe) # Single Rotation
    {
		if InCombat(no)
		{
			unless BuffPresent(DIVINEPLEA) Spell(DIVINEPLEA)
			Spell(AVENGERSSHIELD)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS) #0
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(AVENGERSSHIELD) #1
		unless TargetInRange(CRUSADERSTRIKE) {
			Texture(ability_druid_catformattack)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(CRUSADERSTRIKE) #2
		unless 0.5s before Spell(CRUSADERSTRIKE)
		{
			if TargetLifePercent(less 20) Spell(HAMMEROFWRATH)
		}
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		Spell(JUDGEMENT) #3
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless ManaPercent(less 25) Spell(HOLYWRATH) #4
		if HolyPower(more 2) Spell(SHIELDOFTHERIGHTEOUS)
		if BuffPresent(GRANDCRUSADER) Spell(AVENGERSSHIELD)
		unless ManaPercent(less 40) Spell(CONSECRATE priority=2) #5
		unless BuffPresent(DIVINEPLEA) 
		{
			if Glyph(GLYPHOFDIVINEPLEA)
			{
				if ManaPercent(less 80) Spell(DIVINEPLEA priority=2) #6
			}
			unless Glyph(GLYPHOFDIVINEPLEA) 
			{
				if ManaPercent(less 86) Spell(DIVINEPLEA priority=2) #6
			}
		}
	}
}
###################################################################
#Left Icons

#Things selectable:
#No Cooldown
#AVENGERSSHIELD
#CONSECRATE
#CRUSADERSTRIKE
#HAMMEROFTHERIGHTEOUS
#Trinket 0
#Trinket 1
#AddListItem(cd3 t0 "Bottom far right - No Cooldown" default mastery=2)
#AddListItem(cd3 t1 "Bottom far right - Avenger Shield" mastery=2)
#AddListItem(cd3 t2 "Bottom far right - Avenging Wrath" mastery=2)
#AddListItem(cd3 t3 "Bottom far right - Consecration" mastery=2)
#AddListItem(cd3 t4 "Bottom far right - Crusader Strike" mastery=2)
#AddListItem(cd3 t5 "Bottom far right - Divine Plea" mastery=2)
#AddListItem(cd3 t6 "Bottom far right - Hammer of the Righteous" mastery=2)
#AddListItem(cd3 t7 "Bottom far right - Inquisition" mastery=2)
#AddListItem(cd3 t8 "Bottom far right - Trinket 0" mastery=2)
#AddListItem(cd3 t9 "Bottom far right - Trinket 1" mastery=2)
#Code For Inquisition
#if List(cd0 t4) if BuffExpires(SAVAGEROAR 0) Spell(SAVAGEROAR)

#Add DIVINEPLEA AVENGINGWRATH INQUISITION
AddIcon help=cd size=small mastery=2 {
    if CheckBoxOn(cooldownsR) {
        if List(cd0 t1) Spell(AVENGERSSHIELD)
		if List(cd0 t2) Spell(AVENGINGWRATH)
		if List(cd0 t3) Spell(CONSECRATE)
		if List(cd0 t4) Spell(CRUSADERSTRIKE)
		if List(cd0 t5) Spell(DIVINEPLEA)
		if List(cd0 t6) Spell(HAMMEROFTHERIGHTEOUS)
		if List(cd0 t7) Spell(INQUISITION)
		if List(cd0 t8) Item(Trinket0Slot usable=1)
		if List(cd0 t9) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=2 {
    if CheckBoxOn(cooldownsR) {
        if List(cd1 t1) Spell(AVENGERSSHIELD)
		if List(cd1 t2) Spell(AVENGINGWRATH)
		if List(cd1 t3) Spell(CONSECRATE)
		if List(cd1 t4) Spell(CRUSADERSTRIKE)
		if List(cd1 t5) Spell(DIVINEPLEA)
		if List(cd1 t6) Spell(HAMMEROFTHERIGHTEOUS)
		if List(cd1 t7) Spell(INQUISITION)
		if List(cd1 t8) Item(Trinket0Slot usable=1)
		if List(cd1 t9) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=2 {
    if CheckBoxOn(cooldownsR) {
        if List(cd2 t1) Spell(AVENGERSSHIELD)
		if List(cd2 t2) Spell(AVENGINGWRATH)
		if List(cd2 t3) Spell(CONSECRATE)
		if List(cd2 t4) Spell(CRUSADERSTRIKE)
		if List(cd2 t5) Spell(DIVINEPLEA)
		if List(cd2 t6) Spell(HAMMEROFTHERIGHTEOUS)
		if List(cd2 t7) Spell(INQUISITION)
		if List(cd2 t8) Item(Trinket0Slot usable=1)
		if List(cd2 t9) Item(Trinket1Slot usable=1)
    }
}
AddIcon help=cd size=small mastery=2 {
    if CheckBoxOn(cooldownsR) {
        if List(cd3 t1) Spell(AVENGERSSHIELD)
		if List(cd3 t2) Spell(AVENGINGWRATH)
		if List(cd3 t3) Spell(CONSECRATE)
		if List(cd3 t4) Spell(CRUSADERSTRIKE)
		if List(cd3 t5) Spell(DIVINEPLEA)
		if List(cd3 t6) Spell(HAMMEROFTHERIGHTEOUS)
		if List(cd3 t7) Spell(INQUISITION)
		if List(cd3 t8) Item(Trinket0Slot usable=1)
		if List(cd3 t9) Item(Trinket1Slot usable=1)
    }
}