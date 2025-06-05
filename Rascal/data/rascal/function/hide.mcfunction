# "Apply" invisibility
summon potion ~ ~ ~ {Item:{id:splash_potion,components:{potion_contents:{custom_effects:[{id:invisibility,duration:400,show_particles:0b,show_icon:0b},{id:speed,duration:400,show_particles:0b,show_icon:0b}]}}}}

# Tag to indicate to not apply invisibility again
tag @n[tag=!rascal_is_hiding,tag=rascal_body_minliv] add rascal_is_hiding