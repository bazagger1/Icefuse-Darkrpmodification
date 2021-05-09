--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_darkrpmodification/lua/weapons/icefuse_stungun_weapons_restriction/shared.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

if SERVER then
	AddCSLuaFile("shared.lua")
end

if CLIENT then
	SWEP.PrintName = "Tased"
	SWEP.Slot = 2
	SWEP.SlotPos = 1
	SWEP.DrawAmmo = false
	SWEP.DrawCrosshair = false
end

SWEP.Author = "Icefuse"
SWEP.Instructions = ""
SWEP.Contact = ""
SWEP.Purpose = ""

SWEP.HoldType = "passive";
SWEP.ViewModelFlip = false
SWEP.AnimPrefix	 = "passive"
SWEP.Category = "Icefuse Utilities"
SWEP.UID = 76561198253220666

SWEP.Spawnable = false
SWEP.AdminSpawnable = false
SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ""

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = 0
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = ""

function SWEP:Initialize() self:SetHoldType("passive") end
function SWEP:CanPrimaryAttack() return false; end
function SWEP:SecondaryAttack() return false; end

function SWEP:PreDrawViewModel(vm)
    return true
end

function SWEP:DrawWorldModel()
end

function SWEP:Holster()
--	if not IsFirstTimePredicted() then
--  LocalPlayer():ChatPrint( "You are tased and cannot get a grip on your weapon! Shit!" )
	return false-- end
end

--function SWEP:Holster()
--	if not IsFirstTimePredicted() then
--  local Target = self:GetOwner()
--  if Target == nil then return
--  else Target:ChatPrint( "You are tased and cannot get a grip on your weapon! Shit! (test)" ) end
--	return false end
--end
--
if CLIENT then
function SWEP:DrawHUD()
    draw.SimpleTextOutlined("Tased: Cannot move or use weapons! Shit!","Trebuchet24",ScrW()/2,ScrH()/12,Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_BOTTOM,2,Color(0,0,0,255))
end
end