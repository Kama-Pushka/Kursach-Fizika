-------------------------------------------------------------------------------------------------------------------------------------------------
-- FRONTLINE AI
-------------------------------------------------------------------------------------------------------------------------------------------------
NDefines.NAI.AGGRESSIVENESS_CHECK_BASE = 40							-- front comparison where ai will consider aggressive stance, unless it is already then the number above is used
NDefines.NAI.AGGRESSIVENESS_CHECK_EASY_TARGET = -0.1					-- if target nation is flagged as easy target we also adjust down the front comparison needed
NDefines.NAI.AGGRESSIVENESS_CHECK_CAREFUL = 30							-- at what front strength balance do we go careful
--------------------------------------------------------------------------------------------------------------
---------------DONT TOUCH UNDER THIS---------------
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.RESEARCH_DAYS_BETWEEN_WEIGHT_UPDATE = 6

NDefines.NAI.RESEARCH_AHEAD_BONUS_FACTOR = 50.0

NDefines.NAI.MAX_AHEAD_RESEARCH_PENALTY = 2
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 40.0 		-- To which extent AI should care about ahead of time penalties to research = 2

NDefines.NAI.RESEARCH_BONUS_FACTOR = 50 				                       		-- To which extent AI should care about bonuses to research
NDefines.NAI.XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP = 3.0		-- AI will at least need this amount of xp compared to cost of a tech to reserch it with XP			
NDefines.NAI.RESEARCH_WITH_XP_AI_WEIGHT_MULT = 1.5 				-- AI will bump score of a research with this mult if it can use XP

NDefines.NAI.RESEARCH_NAVAL_DOCTRINE_NEED_GAIN_FACTOR = 0.075 -- Multiplies value based on relative naval industry size / country size.

NDefines.NAI.RESEARCH_NEW_WEIGHT_FACTOR = 0.2 			-- Impact of previously unexplored tech weights. Higher means more random exploration.
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 1.5 		-- To which extent AI should care about ahead of time penalties to research
NDefines.NAI.RESEARCH_BASE_DAYS = 60					-- AI adds a base number of days when weighting completion time for techs to ensure it doesn't only research quick techs

NDefines.NAI.RESEARCH_YEARS_BEHIND_FACTOR = 0.3 -- (was 0.2) --To which extent AI should care about not falling behind (i.e. increase weight for old tech)
--------------------------------------------------------------------------------------------------------------
-- DESIGNS
--------------------------------------------------------------------------------------------------------------

NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_LAND = 50 --50	-- Army XP needed before attempting to create a variant of a type that uses the tank designer (the tank designer DLC feature must be active).
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_NAVY = 25 --50	-- Same as above but for the ship designer.
NDefines.NAI.DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_AIR = 25 --25	-- Same as above but for the ship designer.

-- Land/air handled by EAI
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_LAND = 400 --10	-- Army XP needed before attempting to create a variant of a type that uses the legacy upgrades system. ai_strategy supports land_xp_spend_priority upgrade_xp_cutoff. If none is set this define is used instead.
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_NAVY = 400 --25	-- Same as above but for navy XP and navy_xp_spend_priority.
NDefines.NAI.DEFAULT_LEGACY_VARIANT_CREATION_XP_CUTOFF_AIR  = 400 --25	-- Same as above but for air XP and air_xp_spend_priority.

NDefines.NAI.VARIANT_CREATION_XP_RESERVE_LAND = 50 --50					-- If the AI lacks army XP to create a variant it will reserve this much XP for variant creation so that it will eventually be able to create a variant.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_NAVY = 50 --50					-- Same as above but for navy XP.
NDefines.NAI.VARIANT_CREATION_XP_RESERVE_AIR = 50 --50					-- Same as above but for air XP.

-- The AI uses the below values when selecting which design to make among the types that use the tank designer
-- (the tank designer DLC feature must be active). For each role, the highest priority AI design that can be
-- created, if any, is assigned a weight. Any design with a weight of zero or a weight that falls below the
-- cutoff is dropped. A random design is then picked from the remaining.
-- Weight is calculated as AlternativeFactor * DemandFactor.
-- An "alternative" is a producible design of the same archetype (each specialized type is its own archetype).

-- EAI: AI delays upgrading the main tank types too much because it wants to create absent types for its templates first
-- makes sense but I'd rather have it get its most used type upgraded first
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_ABSENT = 1 --1000000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_LESSER_TECH = 1 --10000
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_EQUAL_TECH = 1 --100
NDefines.NAI.LAND_DESIGN_ALTERNATIVE_OF_GREATER_TECH = 1

-- If a template may be reinforced with the archetype it's considered to be "demanded". If multiple conditions
-- are met, e.g. it's both in the field and in training, the largest value is used.

NDefines.NAI.LAND_DESIGN_DEMAND_FIELD_DIVISION = 45
NDefines.NAI.LAND_DESIGN_DEMAND_TRAINING_DIVISION = 30
NDefines.NAI.LAND_DESIGN_DEMAND_GARRISON_DIVISION = 15
NDefines.NAI.LAND_DESIGN_DEMAND_UNUSED_TEMPLATE = 0 --1
NDefines.NAI.LAND_DESIGN_DEMAND_ABSENT = 0 --0


-- If a design with a weight when divided by the largest weight falls below this value it's excluded from the
-- selection. Valid values are in the range [0, 1] inclusive.

NDefines.NAI.LAND_DESIGN_CUTOFF_AS_PERCENTAGE_OF_MAX = 0.01 --0.25

-- The AI "desires" to spend XP on doctrines, templates, and equipment.
-- The desire is built up over time and when XP is available it spends it on the action that has the highest accumulated desire. After spending XP the desire is reset, in effect balancing the desires.
-- Below is the daily desire gain for each action.


NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_LAND_DOCTRINE = 10.0  ---0.5    -- How quickly is desire to unlock land doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVAL_DOCTRINE = 0.5  ---1   -- How quickly is desire to unlock naval doctrines accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_DOCTRINE = 0.5  ---1     -- How quickly is desire to unlock air doctrines accumulated?

--EAI: make sure land template desire is always at the top, if the doctrine desire is high but the mod blocks it, AI wont create templates
NDefines.NAI.DESIRE_USE_XP_TO_UPDATE_LAND_TEMPLATE = 100.0    -- How quickly is desire to update/create templates accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_LAND_EQUIPMENT = 50.0  -- How quickly is desire to update/create land equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_NAVAL_EQUIPMENT = 1.0  --100.0 -- How quickly is desire to update/create naval equipment variants accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UPGRADE_AIR_EQUIPMENT = 100.0   -- How quickly is desire to update/create air equipment variants accumulated?

NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_ARMY_SPIRIT = 0.4    -- How quickly is desire to unlock army spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_NAVY_SPIRIT = 0.4   -- How quickly is desire to unlock naval spirits accumulated?
NDefines.NAI.DESIRE_USE_XP_TO_UNLOCK_AIR_SPIRIT = 0.4     -- How quickly is desire to unlock air spirits accumulated?

NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 7       -- Recalculate desired best doctrine to unlock with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 7       -- Recalculate desired best template to upgrade with this many days inbetween.
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 7      -- Recalculate desired best equipment to upgrade with this many days inbetween.

NDefines.NAI.GARRISON_TEMPLATE_SCORE_IC_FACTOR = 1.0 -- ai uses these defines while calculating garrison template score of a template.
NDefines.NAI.GARRISON_TEMPLATE_SCORE_MANPOWER_FACTOR = 0.05 -- formula is (template_ic * ic_factor + template_manpower * manpower_factor ) / template_supression (lower is better)

---------------

NDefines.NAI.REFIT_SHIP_RELUCTANCE = 5000							-- How often to consider refitting to new equipment variants for ships in the field
NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.3				-- How big part of the navy that should be considered for refitting

---NDefines.NCountry.REINFORCEMENT_DIVISION_PRIORITY_COUNT = 8

NDefines.NAI.DIVISION_DESIGN_MANPOWER_WEIGHT = 0 --0.005
NDefines.NAI.DIVISION_DESIGN_STOCKPILE_WEIGHT = 0.02 --0.01
NDefines.NAI.DIVISION_DESIGN_COMBAT_WIDTH_TARGET_WEIGHT = -10000 -- -200	        -- This score is reduced the farther the width is from the target width (if set)

NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 1.0   --0.35 --0.1
NDefines.NAI.UPGRADES_DEFICIT_LIMIT_DAYS = 60 --180                           -- Ai will avoid upgrading units in the field to new templates if it takes longer than this to fullfill their equipment need


NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_WARTIME = 0.2 				-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during war time
NDefines.NAI.DEPLOYED_UNIT_MANPOWER_RATIO_TO_BUFFER_PEACETIME = 0.1     		-- deployment will try to buffer a ratio of deployed manpower (for reinforcements) during peace time

	-- Calculating wanted nr of divisions
NDefines.NAI.WANTED_UNITS_INDUSTRY_FACTOR = 100                        -- How many units a country wants is partially based on how much military industry that is available


NDefines.NAI.MIN_FIELD_STRENGTH_TO_BUILD_UNITS = 0.5 --0.7			            -- Cancel unit production if below this to get resources out to units in the field
NDefines.NAI.MIN_MANPOWER_TO_BUILD_UNITS = 0.1 --0.7					        -- Cancel unit production if below this to get resources out to units in the field

NDefines.NAI.DEPLOY_MIN_TRAINING_SURRENDER_FACTOR = 0.1     -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_SURRENDER_FACTOR = 0.8   -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime while surrender progress is higher than 0
NDefines.NAI.DEPLOY_MIN_TRAINING_PEACE_FACTOR = 0.1        -- Required percentage of training (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_PEACE_FACTOR = 0.1       -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in peacetime
NDefines.NAI.DEPLOY_MIN_TRAINING_WAR_FACTOR = 0.1          -- Required percentage of training (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_WAR_FACTOR = 0.8         -- Required percentage of equipment (1.0 = 100%) for AI to deploy unit in wartime
NDefines.NAI.DEPLOY_MIN_EQUIPMENT_CAP_DEPLOY_FACTOR = 0.1  -- If training is capped by equipment deficit and we have reached that cap, deploy unit anyway if percentage is above this (reinforce in field instead).

NDefines.NAI.UPGRADE_DIVISION_RELUCTANCE = 0.0042 -- aggressively trying to get the AI to upgrade divisions to newer templates, may work, may not, but it doesn't break anything. vanilla is 14, .0042 is just over 1 hour, where I believe the vanilla value at 14 = 14 days. So it should be checking to upgrade ONE division every single hour. 

---------------DONT TOUCH ABOVE THIS---------------


---------------AI FRONTLINE/COMBAT PLANS---------------


---NDefines.NAI.ORG_UNIT_STRONG = 0.90		--0.90										-- Organization % for unit to be considered strong
---NDefines.NAI.STR_UNIT_STRONG = 0.90		--0.90									-- Strength (equipment) % for unit to be considered strong

---NDefines.NAI.ORG_UNIT_NORMAL = 0.80			--0.75 												-- Organization % for unit to be considered normal
---NDefines.NAI.STR_UNIT_NORMAL = 0.80			--0.75 											-- Strength (equipment) % for unit to be considered normal

---NDefines.NAI.ORG_UNIT_WEAK = 0.60 												-- Organization % for unit to be considered weak
---NDefines.NAI.STR_UNIT_WEAK = 0.60 												-- Strength (equipment) % for unit to be considered weak

NDefines.NAI.CANCEL_COMBAT_DISADVANTAGE_RATIO = 10             -- If the enemy's advantage ratio over us during (normal) combat is more than <value>, allow canceling the attack
NDefines.NAI.CANCEL_COMBAT_MIN_DURATION_HOURS = 480              -- Only allow cancelling (normal) combat if at least <value> hours have passed


NDefines.NAI.NAVY_PREFERED_MAX_SIZE = 300										-- AI will generally attempt to merge fleets into this size but as a soft limit.


NDefines.NAI.EQUIPMENT_MARKET_MAX_CIVS_FOR_PURCHASES_RATIO = 0.2            -- Ratio of available civilian factories to max use for equipment purchases (0.2 = 20 %, so 50 available civs would mean max ca 10 civs to spend on purchases at any one time). Gets modified by equipment_market_spend_factories AI strategy.
NDefines.NAI.EQUIPMENT_MARKET_NR_DELIVERIES_SOFT_MAX = 7                   -- AI tries to adjust assigned factories and amount of equipment to keep nr deliveries at max this
	

---NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_LOW = 0.9				            -- Minimum org % for a unit to actively attack an enemy unit when executing a plan
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_LOW = 0.9 --0.4			        -- Minimum strength for a unit to actively attack an enemy unit when executing a plan

---NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_MED = 0.85							-- (LOW,MED,HIGH) corresponds to the plan execution agressiveness level.
NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_MED = 0.8	

---NDefines.NAI.PLAN_ATTACK_MIN_ORG_FACTOR_HIGH = 0.75		
---NDefines.NAI.PLAN_ATTACK_MIN_STRENGTH_FACTOR_HIGH = 0.75	

---NDefines.NAI.MIN_PLAN_VALUE_TO_MICRO_INACTIVE = 0.25			                -- The AI will not consider members of groups which plan is not activated AND evaluates lower than this.

---NDefines.NAI.PLAN_FACTION_STRONG_TO_EXECUTE = 0.1 --0.80	--0.60		        -- % or more of units in an order to consider ececuting the plan

---NDefines.NAI.PLAN_FACTION_NORMAL_TO_EXECUTE = 0.05  --0.50

---NDefines.NAI.PLAN_FACTION_WEAK_TO_ABORT = 0.01  --0.35 		0.65		        -- % or more of units in an order to consider ececuting the plan


---NDefines.NMilitary.PLAN_EXECUTE_CAREFUL_LIMIT = 100                -- When looking for an attack target, this score limit is required in the battle plan to consider province for attack

---NDefines.NAI.PLAN_AVG_PREPARATION_TO_EXECUTE = 0.0				            -- % or more average plan preparation before executing

NDefines.NAI.GARRISON_FRACTION = 0					-- How large part of a front should always be holding the line rather than advancing at the enemy

NDefines.NAI.PLAN_ACTIVATION_MAJOR_WEIGHT_FACTOR = 1
NDefines.NAI.PLAN_ACTIVATION_PLAYER_WEIGHT_FACTOR = 1 	

NDefines.NAI.ASSIGN_TANKS_TO_WAR_FRONT = 20.0	                          -- Scoring factor for assigning tank divisions to active war fronts
--NDefines.NAI.ASSIGN_TANKS_TO_NON_WAR_FRONT = -10.0                        -- Scoring factor for assigning tank divisions to non-war fronts
---NDefines.NAI.MAIN_ENEMY_FRONT_IMPORTANCE = 1.0			-- How much extra focus the AI should put on who it considers to be its current main enemy.
---NDefines.NAI.EASY_TARGET_FRONT_IMPORTANCE = 1.2			-- How much extra focus the AI should put on who it considers to be the easiest target.

---------------AI FRONTLINE/COMBAT PLANS END---------------

---------------AI SURPLUS---------------
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.3
---------------AI SURPLUS END---------------

---------------AMINES ENCIRCLE DEFINES---------------
--------------------------------------------------------------------------------------------------------------
-- AI ENCIRCLEMENT DEFINES 
--------------------------------------------------------------------------------------------------------------

---NDefines.NMilitary.PLAN_MIN_AUTOMATED_EMPTY_POCKET_SIZE = 200        -- (was 2) -- The battle plan system will only automatically attack provinces in pockets that has no resistance and are no bigger than these many provinces

---NDefines.NMilitary.FRONTLINE_EXPANSION_FACTOR = 2.0 -- 0.3 #MOD -- was 0.6,                -- When attacking along a frontline, how much should units spread out as they advance. 0.0 means head (more or less) directly to the drawn frontline, with no distractions
NDefines.NMilitary.FRONT_MIN_PATH_TO_REDEPLOY = 4 --#MOD -- was 8,                    -- If a units path is at least this long to reach its front location, it will strategically redeploy.

--------------------------------------------------------------------------------------------------------------
-- BITMODE AI CONCENTRATION TEST
--------------------------------------------------------------------------------------------------------------

---NDefines.NMilitary.PLAN_SPREAD_ATTACK_WEIGHT = 0.9 --150 1.0 -- (was 12.0)    -- The higher the value, the less it should crowd provinces with multiple attacks.        #WICHTIG
NDefines.NMilitary.PLAN_MAX_PROGRESS_TO_JOIN = 0.99
NDefines.NAI.RESERVE_TO_COMMITTED_BALANCE = 0.0                                 -- How many reserves compared to number of committed divisions in a combat (1.0 = as many as reserves as committed)
---------------AMINES ENCIRCLE DEFINES END---------------

---------------MY ENCIRCLE DEFINES---------------
---NDefines.NAI.FRONT_BULGE_RATIO_UPPER_CUTOFF = 1.1				-- If total bulginess is lower than this, the front is ignored.
---NDefines.NAI.FRONT_BULGE_RATIO_LOWER_CUTOFF = 0.1			-- If local bulginess drops below this, a point of interest is found
---NDefines.NAI.FRONT_CUTOFF_MIN_EDGE_PROXIMITY = 1				-- Minimum number of provinces to the front edge to determine for cutoff oportunity.
	
---------------MY ENCIRCLE DEFINES END---------------


---------------REASSIGN---------------
--NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_FACTOR = 0.1                   -- Factor for reassigning to another front. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
--NDefines.NAI.REASSIGN_TO_ANOTHER_FRONT_IF_IN_COMBAT_FACTOR = 0.0       -- Factor for reassigning to another front if in combat. 0.0 < X < 1.0 means reluctant, X > 1.0 means want to.
---------------REASSIGN END---------------


---------------AIFC PLANS---------------
--NDefines.NAI.AIFC_UNIT_RATIO_BASE = 0.3                              -- After fulfilling minimum front unit needs, this ratio of the "extra"/desired units can be allocated to AI force concentration duty


	-- Unit offensiveness score factors for AIFC. Division stats are factored by this before adding up to total score.
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_BREAKTHROUGH = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SOFT_ATTACK = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARD_ATTACK = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ARMOR = 800.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_PIERCING = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HARDNESS = 40.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_SPEED = 5.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_INITIATIVE = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ORGANISATION = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_HITPOINTS = -10.0
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_DEFENSE = -0.2
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_ENTRENCHMENT = -0.5
NDefines.NAI.AIFC_UNIT_OFFENSIVE_SCORE_FACTOR_EXPERIENCE = 1.0
	-- End of unit offensiveness score factors for AIFC

NDefines.NAI.AIFC_FRESHNESS_BASE_VALUE = 50.0                          -- AIFC fronts have a "freshness value" which decreases if no progress is made. When it reaches zero, it will give up on the current target and try another.
NDefines.NAI.AIFC_FRESHNESS_ADD_ON_PROGRESS = 1.0                -- Increase freshness value with this when we advance a province along the target path.
NDefines.NAI.AIFC_REFRESH_NEED_SUPPLY_FACTOR_PER_DAY = 4              -- Decrease freshness value with this multiplied by average supply ratio every day.
NDefines.NAI.AIFC_CA_DIVISIONS_PER_PROVINCE = 2


NDefines.NAI.AIFC_TARGET_IGNORE_VP_THRESHOLD = 10                       -- VP target needs at leas this many victory points to be considered a target
NDefines.NAI.AIFC_TARGET_SUPPLY_HUB_BASE_SCORE = 70.0                   -- Base score for supply hubs
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_BASE_SCORE = 100.0                   -- Base score for naval bases
NDefines.NAI.AIFC_TARGET_NAVAL_BASE_SCORE_PER_LEVEL = 30.0               -- Score for naval bases increases by this for each level
NDefines.NAI.AIFC_TARGET_VP_SCORE_FACTOR = 20.0                          -- Score for VPs increases by this for every victory point
NDefines.NAI.AIFC_TARGET_CAPITAL_SCORE_EXTRA = 70.0                      -- Extra score for Capitals (in addition to VP score)
NDefines.NAI.AIFC_TARGET_SHORT_PATH_PENALTY_FACTOR = 1                -- Penalty factor for short AIFC paths (path <= 3 (including own start province))
NDefines.NAI.AIFC_TARGET_PERSISTED_FACTOR = 5.0                        -- Bonus factor for persisted targets (used to incentivize AI to select target again after e.g. front lines have reformed or save file is loaded)

NDefines.NAI.AIFC_ACTIVATE_AVG_ORG_RATIO_THRESHOLD = 0.2                -- Only activate the offensive order if average organisation is above this.
NDefines.NAI.AIFC_ACTIVATE_IN_POSITION_RATIO_THRESHOLD = 0.1            -- Only activate the offensive order if divisions in position is more than this ratio.

	-- Offensive path scoring (cost multipliers) for AIFC                                -- Only allow paths with total cost <= this. WARNING: increasing this value may cause stuttering and other performance issues (since AIFC will evaluate larger areas)
NDefines.NAI.AIFC_PATH_COST_ADJ_STRAIT = 10.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER = 10.0
NDefines.NAI.AIFC_PATH_COST_ADJ_RIVER_LARGE = 10.0
NDefines.NAI.AIFC_PATH_COST_TRN_MOUNTAINS = 10.0
NDefines.NAI.AIFC_PATH_COST_TRN_JUNGLE = 6.0
NDefines.NAI.AIFC_PATH_COST_TRN_MARSH = 6.0
NDefines.NAI.AIFC_PATH_COST_PER_FORT_LEVEL = 10.0                       -- This multiplier is calculated as: 1.0 + <define>*fort_level    (only for fort levels > 0)
	-- End of offensive path scoring for AIFC


---------------Diplo Stuff---------------

NDefines.NAI.SEND_VOLUNTEER_AIDESIRE_SAME_IDEOLOGY = 1000					-- Added to AI desire to send volunteers if recipent is same ideology (and AI can't declare war on recipient)
NDefines.NAI.SEND_VOLUNTEER_AIDESIRE_SAME_IDEOLOGY_CIVIL_WAR = 1500		-- Added to AI desire to send volunteers if recipent is same ideology and they are currently in civil war
NDefines.NAI.SEND_VOLUNTEER_EVAL_BASE_DISTANCE = 4200  -- How far away it will evaluate sending volunteers if not a major power
NDefines.NAI.SEND_VOLUNTEER_EVAL_MAJOER_POWER = 1000.0 	-- How willing major powers are to send volunteers.
NDefines.NAI.SEND_VOLUNTEER_EVAL_CONTAINMENT_FACTOR = 0.1 -- How much AI containment factors into its evaluation of sending volunteers.
	
---------------Diplo Stuff End---------------

---------------Training Stuff---------------

NDefines.NAI.START_TRAINING_EQUIPMENT_LEVEL = 0.40               -- ai will not start to train if equipment drops below this level
NDefines.NAI.STOP_TRAINING_EQUIPMENT_LEVEL = 0.30                -- ai will not train if equipment drops below this level
NDefines.NAI.START_TRAINING_SUPPLY_LEVEL = 0.40                 -- ai will not start to train if supply ratio drops below this level
NDefines.NAI.STOP_TRAINING_SUPPLY_LEVEL = 0.30                   -- ai will not train if supply ratio drops below this level
NDefines.NAI.STOP_TRAINING_FULLY_TRAINED_FACTOR = 1.0           -- ai will not train if at least this ratio of divisions in the army are fully trained
	
---------------Training Stuff End---------------

---------------Supply Stuff---------------

NDefines.NAI.MAX_SUPPLY_DIVISOR = 3.5							-- To make sure the AI does not overdeploy divisions. Higher number means more supply per unit.               -- ai will not start to train if equipment drops below this level
	
---------------Supply Stuff End---------------


---------------Naval Invasion---------------
NDefines.NAI.MAX_UNIT_RATIO_FOR_INVASIONS = 0.9                         -- countries won't use armies more than this ratio of total units for invasions
NDefines.NAI.MIN_UNIT_RATIO_FOR_INVASIONS = 0.9                         -- don't allocate more divisions than this for naval invasions

NDefines.NAI.NAVAL_INVADED_AREA_PRIO_DURATION = 90								-- after successful invasion, AI will prio the enemy area for this number of days
NDefines.NAI.NAVAL_INVADED_AREA_PRIO_MULT = 6									-- fronts that belongs to recent invasions gets more prio
NDefines.NAI.MIN_NUM_CONQUERED_PROVINCES_TO_DEPRIO_NAVAL_INVADED_FRONTS = 10	-- if you conquer this amount of provinces after a naval invasion, it will lose its prio status and will act as a regular front

NDefines.NAI.FAILED_INVASION_AVOID_DURATION = 300

NDefines.NAI.INVASION_TARGET_NO_PORT_FACTOR = 0.3                   -- When selecting invasion target, multiply score with this if the target has no port
NDefines.NAI.INVASION_TARGET_TRUNCATION_SELECT_THRESHOLD = 1.0      -- When selecting invasion target, use this threshold for truncation selection. (1.0 means select highest scored target, 0.0 means select randomly from all possible target, 0.5 means select randomly from all targets with more than 50 % of highest score)

---------------Naval Invasion End---------------

---------------Theatre Stuff---------------

NDefines.NAITheatre.AI_THEATRE_DISTRIBUTION_MAX_PERCENT_UNMET_DEMAND_PER_FRONT = 0.1   -- Percentage of how much fronts should request from other lower priority fronts, 0 means once a front gets hold of a unit it stays there forever until its demand is reduced, controlls shuffling of units.
NDefines.NAITheatre.AI_THEATRE_SUPPLY_CRISIS_LIMIT = 0.6                               -- If a unit is standing in an area with this supply ratio it will try to escape



---------------Theatre Stuff End---------------


---------------Garrison Stuff---------------

	-- these are all 3 numbers for min, desired, max unit need weights for area defense
NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_VP_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_VP_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_HOME_VP_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_VP_WEIGHT = { 0.0, 0.0, 0.0 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_COAST_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_COAST_WEIGHT = { 0.2, 0.3, 0.5 }
NDefines.NAI.AREA_DEFENSE_HOME_COAST_WEIGHT = { 0.2, 0.3, 0.5 }
NDefines.NAI.AREA_DEFENSE_OTHER_COAST_WEIGHT = { 0.2, 0.3, 0.5 }

NDefines.NAI.AREA_DEFENSE_CAPITAL_PEACE_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_CAPITAL_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_HOME_BASE_WEIGHT = { 0.0, 0.0, 0.0 }
NDefines.NAI.AREA_DEFENSE_OTHER_BASE_WEIGHT = { 0.0, 0.0, 0.0 }

---------------Garrison Stuff End---------------

---------------Unknown Stuff---------------

NDefines.NAI.MIN_AI_SCORE_TO_ECONOMY_LAW_OVERRIDE_HARD_CODED_SCORE = -100.0

---------------Unknown Stuff End---------------

NDefines.NAI.ASSIGN_FRONT_ARMY_SOFT_ATTACK_FACTOR = 0.1                 -- Importance of unit's ARMY_SOFT_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_HARD_ATTACK_FACTOR = 0.1                -- Importance of unit's ARMY_HARD_ATTACK stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_ARMY_BREAKTHROUGH_FACTOR = 0.1               -- Importance of unit's ARMY_BREAKTHROUGH stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_ARMY_DEFENSE_FACTOR = 3.0                -- Importance of unit's ARMY_DEFENSE stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_ARMY_ENTRENCHMENT_FACTOR = 2.0              -- Importance of unit's ARMY_ENTRENCHMENT stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TEMPLATE_CLASS_SCORE = 3.0                  -- Importance of unit's AI template class (AREA_DEFENSE, CAVALRY) when assigning to an area defense order
NDefines.NAI.ASSIGN_INVASION_AMPHIBIOUS_ATTACK_FACTOR = 50.0            -- Importance of unit's amphibious attack adjuster when assigning to an invasion order
NDefines.NAI.ORDER_ASSIGNMENT_DISTANCE_FACTOR = 100.0                     -- When the AI assigns units to orders, how much should distance be taken into account?
NDefines.NAI.REVISITED_PROV_BOOST_FACTOR = 1                            -- When the AI picks units for a front, it prioritises units already nearby.
NDefines.NAI.UNIT_ASSIGNMENT_STATS_IMPORTANCE = 1.0                     -- Stats score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.ASSIGN_FRONT_TERRAIN_ATTACK_FACTOR = 0.1                   -- Importance of unit's terrain adjusted attack stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_DEFENSE_FACTOR = 0.1                 -- Importance of unit's terrain adjusted defense stat when assigning to a front
NDefines.NAI.ASSIGN_FRONT_TERRAIN_MOVEMENT_FACTOR = 0.1                 -- Importance of unit's terrain adjusted movement stat when assigning to a front
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_ATTACK_FACTOR = 0.5                 -- Importance of unit's terrain adjusted attack stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_DEFENSE_FACTOR = 4.0               -- Importance of unit's terrain adjusted defense stat when assigning to an area defense order
NDefines.NAI.ASSIGN_DEFENSE_TERRAIN_MOVEMENT_FACTOR = 0.5               -- Importance of unit's terrain adjusted movement stat when assigning to an area defense order
NDefines.NAI.ASSIGN_MOUNTAINEERS_TO_MOUNTAINS = 10.0                    -- factor for assigning mountaineer divisions to fronts with mountains (proportional to how much of that terrain type)
NDefines.NAI.ASSIGN_TANKS_TO_MOUNTAINS = 0.0                           -- factor for assigning tank divisions to fronts with mountains (proportional to how much of that terrain type)
NDefines.NAI.ASSIGN_TANKS_TO_JUNGLE = 0.0                              -- factor for assigning tank divisions to fronts with jungle (proportional to how much of that terrain type)
NDefines.NAI.UNIT_ASSIGNMENT_TERRAIN_IMPORTANCE = 1.0                  -- Terrain score for units are multiplied by this when the AI is deciding which front they should be assigned to

NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS = 1.0		-- front unit request factor at max enemy fortification
NDefines.NAI.ENEMY_FORTIFICATION_FACTOR_FOR_FRONT_REQUESTS_MAX = 0.1 	-- max factor that can be added by enemy fortification



---------------Navy Stuff---------------

NDefines.NAI.NAVAL_MISSION_DISTANCE_BASE = 50000					-- Base value when AI is evaluating distance score to places

NDefines.NAI.CARRIER_TASKFORCE_MAX_CARRIER_COUNT = 40 		-- optimum carrier count for carrier taskforces
NDefines.NAI.CAPITAL_TASKFORCE_MAX_CAPITAL_COUNT = 300 		-- optimum capital count for capital taskforces
NDefines.NAI.SCREEN_TASKFORCE_MAX_SHIP_COUNT = 300			-- optimum screen count for screen taskforces
NDefines.NAI.SUB_TASKFORCE_MAX_SHIP_COUNT = 16 				-- optimum sub count for sub taskforces

NDefines.NAI.MIN_CAPITALS_FOR_CARRIER_TASKFORCE = 6			-- carrier fleets will at least have this amount of capitals
NDefines.NAI.CAPITALS_TO_CARRIER_RATIO = 4.0				-- capital to carrier count in carrier taskfoces
NDefines.NAI.SCREENS_TO_CAPITAL_RATIO = 10.0					-- screens to capital/carrier count in carrier & capital taskforces

NDefines.NAI.MIN_MAIN_SHIP_RATIO = 0.3                      -- if main ship ratio is below this steal other ships.
NDefines.NAI.MIN_SUPPORT_SHIP_RATIO = 0.7                   -- if support ship ratio is below this steal other ships.
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_REINFORCE = 0.5         -- the main ships will be tried to reinforce this level.
NDefines.NAI.MIN_SUPPORT_SHIP_RATIO_TO_REINFORCE = 0.9      -- the support ships will be tried to reinforce this level.
NDefines.NAI.MIN_MAIN_SHIP_TO_SPARE = 0.7                   -- can only steal ships from a task force if their main ship ratio is above this.
NDefines.NAI.MIN_SUPPORT_SHIP_TO_SPARE = 1.0                -- can only steal ships from a task force if their support ship ratio is above this.
NDefines.NAI.MIN_MAIN_SHIP_RATIO_TO_MERGE = 0.7             -- try merge task force if main ship ratio is lower than this.
NDefines.NAI.MAX_MAIN_SHIP_RATIO_TO_MERGE = 1.001           -- if resulting main ship ratio would be at most this allow merging into this task force.
NDefines.NAI.MAIN_SHIP_RATIO_TO_SPLIT = 1.8                 -- if main ship ratio in a task force is larger than this split it. (If a carrier TF wants 4 carriers (see defines above) but it has more than [this * 4] carriers then we try to split the TF.)

NDefines.NAI.MISSION_FLEET_ICONS = {
		4, -- HOLD
		29, -- PATROL
		21, -- STRIKE FORCE
		15, -- CONVOY RAIDING
		23, -- CONVOY ESCORT
		24, -- MINES PLANTING
		5, -- MINES SWEEPING
		4, -- TRAIN
		4, -- RESERVE_FLEET
		9, -- NAVAL INVASION SUPPORT
	}

NDefines.NAI.MIN_NAVAL_MISSION_PRIO_TO_ASSIGN = {  -- priorities for regions to get assigned to a mission
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		200, -- PATROL
		50, -- STRIKE FORCE
		200, -- CONVOY RAIDING
		100, -- CONVOY ESCORT
		200, -- MINES PLANTING
		100, -- MINES SWEEPING
		0, -- TRAIN
		0, -- RESERVE_FLEET
		100, -- NAVAL INVASION SUPPORT
	}

NDefines.NAI.HIGH_PRIO_NAVAL_MISSION_SCORES = {  -- priorities for regions to get assigned to a mission
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		-1, -- PATROL
		4000, -- STRIKE FORCE
		3000, -- CONVOY RAIDING
		1000, -- CONVOY ESCORT
		-1, -- MINES PLANTING
		-1, -- MINES SWEEPING
		-1, -- TRAIN
		-1, -- RESERVE_FLEET
		1000, -- NAVAL INVASION SUPPORT
	}

NDefines.NAI.MAX_MISSION_PER_TASKFORCE = {  -- max mission region/taskforce ratio
		0, -- HOLD (consumes fuel HOLD_MISSION_MOVEMENT_COST fuel while moving)
		1.5, -- PATROL
		6, -- STRIKE FORCE
		1.5, -- CONVOY RAIDING
		4, -- CONVOY ESCORT
		2, -- MINES PLANTING
		2, -- MINES SWEEPING
		0, -- TRAIN
		0, -- RESERVE_FLEET
		10, -- NAVAL INVASION SUPPORT
	}

	-- all-screen taskforces will be shared between convoy defense, mine missions and patrols (in this prio)
	-- and these ratios limits the maximum ratio of these taskforces to allocate on type
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN = 0.20 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX = 0.70 -- maximum ratio of all screen-ships forces to be used in convoy defense (increases up to max as AI loses convoys).
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MIN_CONVOY_THREAT = 100 -- AI will increase screen assignment for escort missions as threate increases
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_CONVOY_DEFENSE_MAX_CONVOY_THREAT = 1500-- AI will increase screen assignment for escort missions as threate increases


NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING = 0.01 -- maximum ratio of screens forces to be used in mine sweeping
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO = 0.1 -- if you have mines near your owned states you will start priotize mine missions and will assign this ratio of screens
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MIN_MINES = 900 -- lowest mine for prioing mine missions
NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_SWEEPING_PRIO_MAX_MINES = 1000 -- highest mines for highest prio for mine missions


NDefines.NAI.MAX_SCREEN_TASKFORCES_FOR_MINE_LAYING = 0.01 -- maximum ratio of screens forces to be used in mine laying
NDefines.NAI.MAX_SCREEN_FORCES_FOR_INVASION_SUPPORT = 1.0 -- max ratio of screens forces to be used in naval invasion missions
NDefines.NAI.MAX_CAPITAL_FORCES_FOR_INVASION_SUPPORT = 1.0 -- max ratio of capital forces to be used in naval invasion missions
NDefines.NAI.MAX_PATROL_TO_STRIKE_FORCE_RATIO = 30.0	-- maximum patrol/strike force ratio
	
---------------Navy Stuff End---------------

