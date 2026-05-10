--- Filter Title: Very Basic Filter
--- Filter Type: (Basic)
--- Filter Description: Very Basic Filter

return {-- The below settings are all optional, default/false entries will be assumed for anything not included

    reload = "Very Basic Filter", --Allows you to specify a custom message when reloading the filter in-game
    debug = false, --Allows you to toggle Debug Mode on/off, which displays rule matching logic in-game for each item
    language = "enUS", --Allows you to set the filter language to one of the 13 currently supported languages
    filter_titles = {"Early-Game", "Mid-Game", "End-Game"}, --Allows you to specify the text displayed for varying filter 'levels'
    filter_level = 1, --Indicates your currently active filter level, normally controlled via D2RLAN hotkey
    allowOverrides = true, --Allows a mod author (or another filter) to include default/added rules to your loot filter

    --Begin Loot Filter Operations
    rules = {
        {   --display low/norm/sup items with 2+ sockets
            codes = "allitems",  
            sockets = "2+", 
            location = { "onground", "atvendor" }, 
            quality = { 1,2,3 }, 
            suffix = "{gray}[{sockets}]",
            notify = "ÿc5 {name} : {gray}[{sockets}]"
        },
        {
            -- charm drop notify
			codes = {"cm1","cm2","cm3"},
			location = { "onground"},
            notify = "ÿc3Charm Dropped: {name}"
		},
        {
            -- jewel drop notify
			codes = {"jew"},
			location = { "onground"},
            notify = "ÿc3Jewel Dropped: {name}"
		},
        {
            -- unique drop
			codes = "allitems",
			location = { "onground" },
			quality = {7},
            notify = "ÿc7Unique Item Dropped: {name}"
		},
        {
            -- set drop
			codes = "allitems",
			location = { "onground" },
			quality = {5},
            notify = "ÿc2Set Item Dropped: {name}"
		},
        {
            -- rare ring/amulet drop
			codes = {"ami","rin"},
			location = { "onground"},
			quality = {6},
            notify = "ÿc9Rare Ring/Amulet Dropped: {name}"
		},
        {
            -- low rune drops
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11", "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19" },
            notify = "ÿc5Low Rune Dropped: {name}",
            location = { "onground"}
        },
        {
            -- mid rune drops
            codes = { "r20", "r21", "r22", "r23", "r24", "r25" },
            notify = "ÿcAMid Rune Dropped: {name}",
            location = { "onground"}
        },
        {
            -- high rune drops
            codes = { "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "ÿc0High Rune Dropped: {name}",
            location = { "onground"},
            border = { 255, 0, 0, 255, 3 },
            background = { 255, 255, 255, 255 },
        },
        {
            -- boss essences but fancy border
            codes = {"ka3", "ka1", "oos", "1os", "ooc", "1oc", "ooa", "1oa", "ooi", "1oi", "ooe", "1oe"},
            location = { "onground"},
            notify = "ÿcSOrb DroppedÿcS: {name}",
            prefix = "ÿc0|/|",
            suffix = "ÿc0|\\|",
            border = { 255, 255, 255, 255, 3 },
            background = { 74, 74, 74, 255 }
        },
        {
            -- hide junk after a certain level
            codes = {"hp1","hp2","mp1","mp2","isc","tsc","yps","wms"},
            location = { "onground"},
            pstat = { index = 12, op = ">=", value = 30 }, -- player level 30+
            hide = true
        },
    }
}