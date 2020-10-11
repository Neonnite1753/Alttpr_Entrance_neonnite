CaptureBadgeCache = {}

function tracker_on_accessibility_updated()
    for i,section in pairs(CaptureBadgeSections) do
        local target = Tracker:FindObjectForCode(section)
        -- Has the captured item for this section changed since last update
        if target == nil then
            print("Failed to resolve " .. section .. " please check for typos.")
        elseif target.CapturedItem ~= CaptureBadgeCache[target] then
            -- Does the location that owns this section already have a badge, if so remove it
            if CaptureBadgeCache[target.Owner] then
                target.Owner:RemoveBadge(CaptureBadgeCache[target.Owner])
                CaptureBadgeCache[target.Owner] = nil
                CaptureBadgeCache[target] = nil
            end
            -- Check if a captured item exists, add as badge to the sections owner if it does
            if target.CapturedItem then
                CaptureBadgeCache[target.Owner] = target.Owner:AddBadge(target.CapturedItem.PotentialIcon)
                CaptureBadgeCache[target] = target.CapturedItem
            end
        end
    end
end

--If you want to use this code for your tracker, copy-paste all of the code above into it's own lua file (like you see here)


CaptureBadgeSections = {

    --List out all of the locations that can be capturable

    --Format: 
    --"@Title of Location/Name of Section with Capture Item"
    "@Master Sword Pedestal/Pedestal",
    "@Lumberjack House/Shuffled Location",
    "@Lumberjack Cave/Shuffled Location",
    "@Lumberjack Cave/Cave",
    "@Death Mountain Entry Cave/Shuffled Location",
    "@Death Mountain Exit Back/Shuffled Location",
    "@Kakariko Fortune Teller/Shuffled Location",
    "@Elder Left Door/Shuffled Location",
    "@Elder Right Door/Shuffled Location",
    "@Left Angry House/Shuffled Location",
    "@Right Angry House/Shuffled Location",
    "@Blind's House/Shuffled Location",
    "@The Well/Shuffled Location",
    "@Chicken House/Shuffled Location",
    "@Grass House/Shuffled Location",
    "@Front Tavern/Shuffled Location",
    "@Kakariko Shop/Shuffled Location",
    "@Bomb hut/Shuffled Location",
    "@Sick Kid/Shuffled Location",
    "@Smiths House/Shuffled Location",
    "@Magic Bat/Shuffled Location",
    "@Chest Game/Shuffled Location",
    "@Race House Right/Shuffled Location",
    "@Race Game/Take This Trash",
    "@Library/Shuffled Location",
    "@Library/On The Shelf",
    "@Lost Woods/Shuffled Location",
    "@Forest Chest Game/Shuffled Location",
    "@Castle Secret Entrance/Shuffled Location",
    "@Castle Left Entrance/Shuffled Location",
    "@Castle Right Entrance/Shuffled Location",
    "@Link's House/Shuffled Location",
    "@Central Bonk Rocks/Shuffled Location",
    "@Dark Trees Fairy Cave/Shuffled Location",
    "@Dark Witch's Hut/Shuffled Location",
    "@Dark Flute Spot 5/Shuffled Location",
    "@Dark Saha/Shuffled Location",
    "@Fat Fairy/Shuffled Location",
    "@Ganon Hole/Shuffled Location",
    "@Hype Cave/Shuffled Location",
    "@Bombos Tablet/Tablet",
    "@South of Grove/Shuffled Location",
    "@Witch's Hut/Shuffled Location",
    "@Waterfall Fairy/Shuffled Location",
    "@Zora's Area/Ledge",
    "@Sahasrala's Hut/Shuffled Location",
    "@Trees Fairy Cave/Shuffled Location",
    "@Pegs Fairy Cave/Shuffled Location",
    "@Bonk Rocks/Shuffled Location",
    "@East of GY drop/Shuffled Location",
    "@King's Tomb/Shuffled Location",
    "@Graveyard Ledge/Shuffled Location",
    "@Desert Ledge/Ledge",
    "@Desert Left Entrance/Shuffled Location",
    "@Desert Back Entrance/Shuffled Location",
    "@Desert Right Entrance/Shuffled Location",
    "@Thief Cave/Shuffled Location",
    "@Rupee Cave/Shuffled Location",
    "@Aginah's Cave/Shuffled Location",
    "@Hammer House/Shuffled Location",
    "@Dark Village Fortune Teller/Shuffled Location",
    "@Dark Sanctuary/Shuffled Location",
    "@Shield Shop/Shuffled Location",
    "@Dark Lumberjack/Shuffled Location",
    "@C-Shaped House/Shuffled Location",
    "@Treasure Game/Shuffled Location",
    "@Bombable Shack/Shuffled Location",
    "@Hammer Pegs/Shuffled Location",
    "@Bumper Cave Exit/Shuffled Location",
    "@Bumper Cave/Ledge",
    "@Dark Central Bonk Rocks/Shuffled Location",
    "@Dam/Shuffled Location",
    "@Hype Fairy Cave/Shuffled Location",
    "@Fortune Teller/Shuffled Location",
    "@Lake Shop/Shuffled Location",
    "@Luck Fairy/Shuffled Location",
    "@Bomb Shop/Shuffled Location",
    "@Arrow Game/Shuffled Location",
    "@Race House Left/Shuffled Location",
    "@Dark Hylia Fortune Teller/Shuffled Location",
    "@Mini Moldorm Cave/Shuffled Location",
    "@Ice Rod Cave/Shuffled Location",
    "@Ice Bee Cave/Shuffled Location",
    "@Ice Fairy Cave/Shuffled Location",
    "@Dark Ice Rod Cave/Shuffled Location",
    "@Dark Fake Ice Rod Cave/Shuffled Location",
    "@Dark Ice Rod Rock/Shuffled Location",
    "@Lake Hylia Island/Island",
    "@Mire Shack/Shuffled Location",
    "@Mire Right Shack/Shuffled Location",
    "@Mire Cave/Shuffled Location",
    "@Checkerboard Cave/Shuffled Location",
    "@Old Man/Shuffled Location",
    "@Old Man Residence/Shuffled Location",
    "@Old Man Residence Rear/Shuffled Location",
    "@Death Mountain Exit Front/Shuffled Location",
    "@Spectacle Rock/Up On Top",
    "@Spectacle Rock Top/Shuffled Location",
    "@Spectacle Rock Left/Shuffled Location",
    "@Spectacle Rock Right/Shuffled Location",
    "@Dark Mountain Fairy/Shuffled Location",
    "@Ether Tablet/Tablet",
    "@Spike Cave/Shuffled Location",
    "@Spiral Cave Top/Shuffled Location",
    "@Paradox Cave Mid/Shuffled Location",
    "@Paradox Cave Lower/Shuffled Location",
    "@EDM Connector Bottom/Shuffled Location",
    "@EDM Connector Top/Shuffled Location",
    "@Paradox Cave Top/Shuffled Location",
    "@Spiral Cave Bottom/Shuffled Location",
    "@EDM Fairy Cave/Shuffled Location",
    "@Super-Bunny Cave Bottom/Shuffled Location",
    "@Death Mountain Shop/Shuffled Location",
    "@Super-Bunny Cave Top/Shuffled Location",
    "@Hookshot Cave/Shuffled Location",
    "@Hookshot Cave Top/Shuffled Location",
    "@TR Ledge Left/Shuffled Location",
    "@TR Safety Door/Shuffled Location",
    "@Floating Island/Island",
    "@Floating Island/Shuffled Location",
    "@Castle Main Entrance/Shuffled Location",
    "@Sanctuary/Shuffled Location",
    "@Sanctuary Drop/Shuffled Location",
    "@Castle Tower Entrance/Shuffled Location",
    "@Eastern Palace/Shuffled Location",
    "@Desert Front Entrance/Shuffled Location",
    "@Palace of Darkness/Shuffled Location",
    "@Swamp Palace/Shuffled Location",
    "@Skull Woods Back/Shuffled Location",
    "@Thieves Town/Shuffled Location",
    "@Ice Palace/Shuffled Location",
    "@Misery Mire/Shuffled Location",
    "@Tower of Hera/Shuffled Location",
    "@Turtle Rock/Shuffled Location",
    "@Mimic Cave/Shuffled Location",
    "@Ganon's Tower/Shuffled Location"


   
    
    
}