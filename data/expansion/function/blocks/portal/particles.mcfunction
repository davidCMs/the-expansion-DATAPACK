$execute unless entity @s[y_rotation=0] unless entity @s[y_rotation=180] run particle trail{duration:1,color:[0d,0.82d,0.878d],target:[$(x)d,$(dy)d,$(z)d]} ^ ^1 ^0.5 0 1 1 1 20
$execute unless entity @s[y_rotation=90] unless entity @s[y_rotation=270] run particle trail{duration:1,color:[0d,0.82d,0.878d],target:[$(x)d,$(dy)d,$(z)d]} ^ ^1 ^0.5 1 1 0 1 20

$execute at @p[distance=..4] run particle trail{duration:40,color:[0d,0.82d,0.878d],target:[$(x)d,$(dy)d,$(z)d]} ~ ~1 ~ .5 .5 0 1 1