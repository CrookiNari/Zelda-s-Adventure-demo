local enemy = ...
local game = enemy:get_game()

-- Rope: a snake that follows the hero.
-- Sets the hero's life to 1 when hurting him.

local behavior = require("enemies/lib/towards_hero")

local properties = {
  sprite = "enemies/" .. enemy:get_breed(),
  life = 1,
  damage = 1,
  normal_speed = 64,
  faster_speed = 64,
}

behavior:create(enemy, properties)

