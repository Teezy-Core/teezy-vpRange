Config = {}
Config.EnabaleMarker = false -- Enable Marker when voice change it's mode
Config.MarkerColor = {r = 255, g = 255, b = 255, a = 100} -- Marker Color

Config.EnableMarkOnPlayerTalking = true -- Enable Marker on player when player is talking NOTE: You can't use Config.EnabaleMarker if you enable this
Config.ControlKey = 344 -- Control Key (Default: F11) (You can change it)

Config.Range = { -- Default Range (You can change it)
    [1] = {name = "Whisper", range = 1.5},
    [2] = {name = "Normal", range = 3.0},
    [3] = {name = "Shout", range = 6.0}
}

---[ TODO LIST ]---
-- [ ] Add more options
-- [ ] Make it more user friendly
-- [ ] Make it more optimized
-- [ ] Make the Marker more accurate (It's not accurate at all)
-- [ ] Onesync Infinity Support (If it's possible)