$execute if block ~ ~ ~ $(filter) run setblock ~ ~ ~ $(block) replace

$execute if predicate noita:random/20 if block ~1 ~ ~ $(filter) run setblock ~1 ~ ~ $(block) replace
$execute if predicate noita:random/20 if block ~-1 ~ ~ $(filter) run setblock ~-1 ~ ~ $(block) replace
$execute if predicate noita:random/20 if block ~ ~1 ~ $(filter) run setblock ~ ~1 ~ $(block) replace
$execute if predicate noita:random/20 if block ~ ~-1 ~ $(filter) run setblock ~ ~-1 ~ $(block) replace
$execute if predicate noita:random/20 if block ~ ~ ~1 $(filter) run setblock ~ ~ ~1 $(block) replace
$execute if predicate noita:random/20 if block ~ ~ ~-1 $(filter) run setblock ~ ~ ~-1 $(block) replace