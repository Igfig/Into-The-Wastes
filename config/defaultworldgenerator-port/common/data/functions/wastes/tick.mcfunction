execute @p[score_stage_min=1] ~ ~ ~ function wastes:fireworks/tick
execute @a[score_element_timer_min=1] ~ ~ ~ scoreboard players add @s element_timer 1
execute @a[score_element_timer_min=5] ~ ~ ~ function wastes:elements/check