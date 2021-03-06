-- Lua script of map ag20.
-- This script is executed every time the hero enters this map.

-- Feel free to modify the code below.
-- You can add more events and remove the ones you don't need.

-- See the Solarus Lua API documentation:
-- http://www.solarus-games.org/doc/latest

local map = ...
local game = map:get_game()

-- Event called at initialization time, as soon as this map becomes is loaded.
function map:on_started()
local movement = sol.movement.create("path")
  movement:set_path{4,4,4,4,4,4,4,4,4,4,0,0,0,0,0,0,0,0,0,0}
  movement:set_speed(20)
  movement:set_loop(true)
  movement:start(traveller2)

end

  -- You can initialize the movement and sprites of various
  -- map entities here.

function traveller2:on_interaction()
game:start_dialog ("npc.plains_traveller")

end

-- Event called after the opening transition effect of the map,
-- that is, when the player takes control of the hero.
function map:on_opening_transition_finished()

end
