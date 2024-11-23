$execute if block ~ ~ ~ $(filter) run setblock ~ ~ ~ $(block) destroy

$execute if predicate noita:random/20 if block ~1 ~ ~ $(filter) run setblock ~1 ~ ~ $(block) destroy
$execute if predicate noita:random/20 if block ~-1 ~ ~ $(filter) run setblock ~-1 ~ ~ $(block) destroy
$execute if predicate noita:random/20 if block ~ ~1 ~ $(filter) run setblock ~ ~1 ~ $(block) destroy
$execute if predicate noita:random/20 if block ~ ~-1 ~ $(filter) run setblock ~ ~-1 ~ $(block) destroy
$execute if predicate noita:random/20 if block ~ ~ ~1 $(filter) run setblock ~ ~ ~1 $(block) destroy
$execute if predicate noita:random/20 if block ~ ~ ~-1 $(filter) run setblock ~ ~ ~-1 $(block) destroy