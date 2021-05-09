--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_darkrpmodification/lua/weapons/icefuse_stungun/cl_init.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]


include('shared.lua')

local lastPos = Vector(0,0,0)

local lastAng = Angle(0,0,0) 

local active = false

function SWEP:PrimaryAttack()
end

function SWEP:SecondaryAttack()
end

function tazePlayer()

	local _p = LocalPlayer()
	local victim = net.ReadEntity()

	if timer.Exists( "TazerClientSide" .. _p:SteamID64() ) then return end

	active = true

	timer.Create( "TazerClientSide" .. _p:SteamID64(), TazerConfig.TazerTime, 1, function()

		active = false
	end)
end

function tazeAnim()

	local _p = net.ReadEntity() --This is the player firing the weapon (_p).

	if timer.Exists( "TazerAnimClientSide" ) then return end

  --_p:ScreenFade( SCREENFADE.IN, Color( 255, 0, 0, 128 ), 4, 0 ) --test of red screen effect. Works.
  -- shooting when tazed cancels tazer effect
  --annoying af sound
  
	_p:AnimRestartGesture( GESTURE_SLOT_ATTACK_AND_RELOAD, ACT_GMOD_GESTURE_RANGE_FRENZY )

	timer.Create( "TazerAnimClientSide", TazerConfig.TazerTime, 1, function()

		_p:AnimResetGestureSlot(GESTURE_SLOT_ATTACK_AND_RELOAD)
	end)
end

net.Receive("Taze", tazePlayer )
net.Receive("TazeAnim", tazeAnim )

hook.Add("CalcView", "TazerCalcView", function( _p, pos, angles, fov)

	if active != true then
		lastPos = pos
		lastAng = angles
		return
	end

	if IsValid( _p ) && _p:IsPlayer() then
		
		local view = {}
	 
		view.origin = pos - ( angles:Forward() * 70 ) + ( angles:Right() * 20 ) + ( angles:Up() * 5 )
		view.angles = _p:EyeAngles() + Angle( 1, 1, 0 )
		view.fov = fov

		return view
	end
end)

hook.Add( "ShouldDrawLocalPlayer", "ThirdPersonDrawPlayer", function()

	if active == true then

		return true
	end

end )

-------------------------------------------------------------
--HIDES THE WEAPON BAR WHILE TASED (PSYCHE)
local function HideWeaponsBar( name )
	if active == true then
		if(name == "CHudWeaponSelection") then
			return false
		end --end of the HUD check.
	end --end of the HUD restriction process if tased.
	--We don't return anything here otherwise it will overwrite all other HUDShouldDraw hooks.
end --end of the whole function.

hook.Add( "HUDShouldDraw", "HideWeaponsBar", HideWeaponsBar )
-------------------------------------------------------------