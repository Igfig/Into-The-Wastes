scoreboard players add @a time 1

execute @r[score_time_min=90,score_stage=1] ~ ~ ~ function wastes:fireworks/stage1
execute @r[score_time_min=90,score_stage=2] ~ ~ ~ function wastes:fireworks/stage2
execute @r[score_time_min=90,score_stage=3] ~ ~ ~ function wastes:fireworks/stage3

function wastes:fireworks/stop unless @a[score_stage_min=1]