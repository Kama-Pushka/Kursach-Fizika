-- Spot Optimizations
NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 100								-- Days of client lag for decrease of gamespeed
NDefines.NGame.LAG_DAYS_FOR_PAUSE = 60										-- Days of client lag for pause of gamespeed.
NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 36

-- Country
NDefines.NCountry.SPECIAL_FORCES_CAP_MIN = 36								-- You can have a minimum of this many special forces battalions, regardless of the number of non-special forces battalions you have, this can also be modified by a country modifier
NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 10							-- Focuses needed to unlock continuous focuses
NDefines.NMilitary.MIN_DIVISION_DEPLOYMENT_TRAINING = 0.3					-- Min level of division training

-- Diplomatic
NDefines.NDiplomacy.MAX_OPINION_VALUE = 200									-- Max opinion value cap.
NDefines.NDiplomacy.MIN_OPINION_VALUE = -200								-- Min opinion value cap.
NDefines.NDiplomacy.VERY_GOOD_OPINION = 100									-- Threshold for a country that has a very good opinion of you.
NDefines.NDiplomacy.VERY_BAD_OPINION = -100									-- Threshold for a country that has a very bad opinion of you.
NDefines.NDiplomacy.IDEOLOGY_JOIN_FACTION_MIN_LEVEL = 0.4					-- ideology limit required to join faction
NDefines.NDiplomacy.DIPLOMACY_HOURS_BETWEEN_REQUESTS = 0					-- How long a country must wait before sending a new diplomatic request.

-- Technology
NDefines.NTechnology.MAX_SUBTECHS = 4										-- Max number of sub technologies a technology can have.

-- Buildings
NDefines.NBuildings.MAX_SHARED_SLOTS = 36									-- Max slots shared by factories

-- Operatives
NDefines.NOperatives.MAX_RECRUITED_OPERATIVES = 500

-- Flag fix
NDefines.NGraphics.COUNTRY_FLAG_TEX_MAX_SIZE = 2048
NDefines.NGraphics.COUNTRY_FLAG_SMALL_TEX_MAX_SIZE = 512
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_WIDTH = 10
NDefines.NGraphics.COUNTRY_FLAG_STRIPE_TEX_MAX_HEIGHT = 8196
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_WIDTH = 41
NDefines.NGraphics.COUNTRY_FLAG_LARGE_STRIPE_MAX_HEIGHT = 24000

-- Camera changes
NDefines_Graphics.NFrontend.CAMERA_MIN_HEIGHT = 25.0
NDefines_Graphics.NGraphics.CAMERA_ZOOM_SPEED = 50
NDefines_Graphics.NGraphics.CAMERA_ZOOM_KEY_SCALE = 0.02
NDefines_Graphics.NGraphics.CAMERA_ZOOM_SPEED_DISTANCE_MULT = 15.0

-- AI FIX
NDefines.NAI.RESEARCH_BONUS_FACTOR = 2.0									-- To which extent AI should care about bonuses to research #0.9
NDefines.NAI.RESEARCH_AHEAD_OF_TIME_FACTOR = 15.0							-- To which extent AI should care about ahead of time penalties to research	#4.0
NDefines.NAI.VARIANT_UPGRADE_MIN_XP = 100									-- Minimum XP before attempting to create a new variant. #50

-- VICTORY POINTS
NDefines.NGraphics.VICTORY_POINT_MAP_ICON_TEXT_CUTOFF = {270, 400, 600}  	-- Vanilla is 100, 250, 500
NDefines.NGraphics.VICTORY_POINTS_DISTANCE_CUTOFF = {300, 500, 1200} 		-- Vanilla is 300, 500, 1500


-- Graphics
NDefines_Graphics.NGraphics.COMMANDGROUP_PRESET_COLORS_HSV = {
	0.0/360.0, 1.0, 0.75,		--red
	10.0/360.0, 1.0, 0.75,		--orange
	60.0/360.0, 1.0, 0.75,		--yellow
	120.0/360.0, 0.85, 0.75,	--green
	155.0/360.0, 1.0, 0.75,		--greenish
	180.0/360.0, 1.0, 0.75,		--turq
	220.0/360.0, 1.0, 0.75,		--blue
	260.0/360.0, 1.0, 0.85,		--dark purple
	330.0/360.0, 0, 0.75		--white
}
