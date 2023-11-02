# [1st] 6 mod 8
scoreboard players remove _ _ 8

# [2nd] 5 mod 8
# [3rd] 4 mod 8 if score _ _ matches 0
execute if score _ _ matches 0 \
run say .

# [3rd] 4 mod 8 unless score _ _ matches 0 | [4th] 3 mod 8 if score _ _ matches 0
# [4th] 3 mod 8
execute unless score _ _ matches 0 \
if score _ _ = _ _

# [5th] 2 mod 8
# [6th] 1 mod 8
# [7th] 0 mod 8
# [8th] -1 == 7 mod 8
execute anchored feet \
anchored feet \
anchored feet \
run function recurse
