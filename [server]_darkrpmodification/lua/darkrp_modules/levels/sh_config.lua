--[[
Server Name: ▌ Icefuse.net ▌ DarkRP 100k Start ▌ Bitminers-Slots-Unbox ▌
Server IP:   208.103.169.42:27015
File Path:   addons/[server]_darkrpmodification/lua/darkrp_modules/levels/sh_config.lua
		 __        __              __             ____     _                ____                __             __         
   _____/ /_____  / /__  ____     / /_  __  __   / __/____(_)__  ____  ____/ / /_  __     _____/ /____  ____ _/ /__  _____
  / ___/ __/ __ \/ / _ \/ __ \   / __ \/ / / /  / /_/ ___/ / _ \/ __ \/ __  / / / / /    / ___/ __/ _ \/ __ `/ / _ \/ ___/
 (__  ) /_/ /_/ / /  __/ / / /  / /_/ / /_/ /  / __/ /  / /  __/ / / / /_/ / / /_/ /    (__  ) /_/  __/ /_/ / /  __/ /    
/____/\__/\____/_/\___/_/ /_/  /_.___/\__, /  /_/ /_/  /_/\___/_/ /_/\__,_/_/\__, /____/____/\__/\___/\__,_/_/\___/_/     
                                     /____/                                 /____/_____/                                  
--]]

/////////////////////////
// Configuration file  //
/////////////////////////

LevelSystemConfiguration = {} // Ignore
Printers = {} // Ignore


LevelSystemConfiguration.EnableHUD = false // Is the HUD enabled?
LevelSystemConfiguration.LevelColor = Color(255,255,255,255) // The color of the "Level: 1" HUD element. White looks best. (This setting is nullified if you have the prestige system)
LevelSystemConfiguration.XPTextColor = Color(255,255,255,255) // The color of the XP percentage HUD element.
LevelSystemConfiguration.LevelBarColor = {6,116,255} // The color of the XP bar. (Sorry this one is different. It is still {R,G,B})
LevelSystemConfiguration.LevelTextPos = {450.0, 68.0} // The position of the LevelText. Y starts from bottom. Fiddle with it

LevelSystemConfiguration.GreenJobBars = false // Are the green bars at the bottom of jobs enabled? KEEP THIS TRUE!
LevelSystemConfiguration.GreenAllBars = false // Are the green bars at the bottom of everything but jobs enabled? Recommended(true)

LevelSystemConfiguration.KillModule = false // Give XP + Money for kills! // Next 2 settings control this.
LevelSystemConfiguration.Friendly = true // Only take away money / give XP if the killer is a lower level/same level than the victim. (Recommended:true)
LevelSystemConfiguration.TakeAwayMoneyAmount = 0 // How much money to take away from players when they are killed and add to the killer. You can change this to 0 if none. The XP amount is dynamic.

LevelSystemConfiguration.NPCXP = true // Give XP when an NPC is killed?
LevelSystemConfiguration.NPCXPAmount = 300 // Amount of XP to give when an NPC is killed

LevelSystemConfiguration.TimerModule = true // Give XP to everybody every howeverlong
LevelSystemConfiguration.Timertime = 300 // How much time (in seconds) until everybody gets given XP
LevelSystemConfiguration.TimerXPAmount = 500 // How much XP to give each time it goes off
LevelSystemConfiguration.YourServerName = "on the server" // The notifcation text ish. "You got 100XP for playing on the server."

LevelSystemConfiguration.XPMult = 0.9 // How hard it is to level up. 2 would require twice as much XP, ect.
LevelSystemConfiguration.MaxLevel = 255 // The max level
LevelSystemConfiguration.ContinueXP = false // If remaining XP continues over to next levels. I recommend this to be false. Seriously. What if a level 1 gets 99999999 XP somehow? He is level 99 so quickly.

//Printer settings
LevelSystemConfiguration.PrinterSound = false // Give the printers sounds?
LevelSystemConfiguration.PrinterMaxP = 4 // How many times a printer can print before stopping. Change this to 0 if you want infine.
LevelSystemConfiguration.PrinterMax = 4 // How many printers of a certain type a player can own at any one time
LevelSystemConfiguration.PrinterOverheat = false // Can printers overheat?
LevelSystemConfiguration.PrinterTime = 120 // How long it takes printers to print
LevelSystemConfiguration.KeepThisToTrue = true // Can players collect from printers that are 5 levels above their level? (Recommended: false)
LevelSystemConfiguration.Epilepsy = false // If printers flash different colors when they have money in them.




/*Template Code/*
local Printer= {} // Leave this line
Printer.Name = 'Your Printer Name'
Printer.Type = 'yourprintername' // A UNIQUE identifier STRING, can be anything. NO SPACES! The player does not see this.
Printer.XPPerPrint = 10 // How much XP to give a player every time they print.
Printer.MoneyPerPrint = 50 // How much money to give a player every time they print.
Printer.Color = Color(255,255,255,255) // The color of the printer. Setting it to (255,255,255,255) will make it the normal prop color.
Printer.Model = 'models/props_lab/reciever01b.mdl' // The model of the printer. To find the path of a model, right click it in the spawn menu and click "Copy to Clipboard"
Printer.Prestige = 0 // The prestige you have to be to buy the printer. Only works with the prestige DLC.
table.insert(Printers,Printer) // Leave this line
*/

// Default printers:

// Ignore everything under this line.


DarkRP.registerDarkRPVar("xp", net.WriteDouble, net.ReadDouble)
DarkRP.registerDarkRPVar("level", net.WriteDouble, net.ReadDouble)
DarkRP.registerDarkRPVar("prestige", net.WriteDouble, net.ReadDouble)




