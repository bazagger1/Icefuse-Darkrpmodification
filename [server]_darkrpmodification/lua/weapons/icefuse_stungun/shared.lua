--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_darkrpmodification/lua/weapons/icefuse_stungun/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


SWEP.PrintName = "Taser" --previously called a 'Tazer' which I will have you know, does not fucking exist. Thanks. -Psyche
SWEP.Author = "Icefuse (Psyche)" --previously ^6MyBad'
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = "Left Click: Tase and disable the player you are looking at for 5 seconds (20 second cooldown)."
SWEP.Slot = 2
SWEP.SlotPos = 1

SWEP.UseHands = true

SWEP.Spawnable = true
SWEP.AdminSpawnable = true

SWEP.Category = "Icefuse Utilities"

SWEP.ViewModel = "models/weapons/custom/taser.mdl" 
SWEP.WorldModel = "models/weapons/custom/w_taser.mdl"	

SWEP.HoldType = "pistol"

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false

SWEP.Primary.Sound = Sound("weapons/clipempty_rifle.wav")
SWEP.Primary.Recoil = 0.1
SWEP.Primary.Damage = 0
SWEP.Primary.NumShots = 0
SWEP.Primary.Cone = 0.05
SWEP.Primary.ClipSize = 0
SWEP.Primary.Delay = 0.06
SWEP.Primary.DefaultClip = 55
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"

SWEP.DrawCrosshair = true

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.IronSightsPos = Vector(-6, 2.2, -2)
SWEP.IronSightsAng = Vector(0.9, 0, 0)
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 53

/* CONFIG */

TazerConfig = {}

TazerConfig.TimeToWait = 5

TazerConfig.TaserPsyche = 20 --Icefuse Networks Development: Only one player allowed per target, to avoid stacking. This is the cooldown time between zaps. (Psyche)

TazerConfig.TazerTime = 5 -- time the taser is in effect after a hit.

TazerConfig.MaxDist = 300

TazerConfig.Damage = 1