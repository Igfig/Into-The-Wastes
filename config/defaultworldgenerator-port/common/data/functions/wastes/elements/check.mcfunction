scoreboard players set @s element 0
scoreboard players set @s element_timer 0

stats entity @s set SuccessCount @s element

# test for each discovered element
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{ENERGY:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_energy
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{POTENTIAL:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_potential
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{STABILITY:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_stability
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{LIGHT:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_light
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{CHARGE:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_charge
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{RIFT:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_rift
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{EXPANSION:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_expansion
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{FUSION:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_fusion
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{EQUALIBRIUM:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_equilibrium
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{ENCHANTMENT:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_enchantment
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{TIME:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_time
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{elements:{VOID:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:element_void

# test for each path unlock
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{path:{technomancy:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:unlock_technomancy
testfor @s {ForgeData:{PlayerPersisted:{crossroads:{path:{alchemy:1b}}}}}
advancement grant @s[score_element_min=1] only lasers:unlock_alchemy

stats entity @s clear SuccessCount
