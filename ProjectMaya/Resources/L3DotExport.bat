@echo off
set engine=D:\_Development\godot\_SOURCE\Godot_v3.4.3-stable_win64.exe
set project=D:\_Development\godot\HeroesInOurHearth
set export=%engine% --no-window --path %project% --export
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + -------------------------------------------------------------L3DotPCKExport
echo + Current Engine = %engine%
echo + Current Project Path = %project%
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + _________________________________________________________Removing Old Files
forfiles /S /M *.lll /C "powershell /c Remove-Item @file"
forfiles /S /M *.zip /C "powershell /c Remove-Item @file"
forfiles /S /M *.pck /C "powershell /c Remove-Item @file"
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
%export%-pack CREATURES_ENEMY
%export%-pack CREATURES_PLAYABLE
%export%-pack ENVIRONTMENT
%export%-pack ENVIRONTMENT_LevelDesign
%export%-pack ENVIRONTMENT_Levels
%export%-pack EXPORT
%export%-pack INTERACTIONS
%export%-pack INTERACTIONS_Pasive
%export%-pack INTERACTIONS_Promp
%export%-pack INTERACTIONS_Tiles
%export%-pack Inventory
%export%-pack ITEMS_Weapon
%export%-pack LLL
%export%-pack LLL_DesireTools
%export%-pack LLL_RDIC
%export%-pack Settings
%export%-pack Settings_PostProcessing
%export%-pack Settings_QuickSettings
%export%-pack SYSTEM
%export%-pack SYSTEM_CLASS
%export%-pack SYSTEM_COLLISION
%export%-pack SYSTEM_DATA
%export%-pack SYSTEM_Interfaces
%export%-pack SYSTEM_OBJECTS
%export%-pack UI
%export%-pack UI_Button
%export%-pack UI_HUD
%export%-pack UI_MainMenu
%export%-pack UI_PopUp
%export%-pack UI_SETTINGS
%export%-pack UI_TouchScreen
%export%-pack CREATURES_ENEMY_BOSS
%export%-pack CREATURES_ENEMY_Spawner
%export%-pack CREATURES_ENEMY_ThousandsEyes
%export%-pack CREATURES_PLAYABLE_Alphy
%export%-pack CREATURES_PLAYABLE_Default
%export%-pack CREATURES_PLAYABLE_PGTween
%export%-pack CREATURES_PLAYABLE_TEMPLATE
%export%-pack ENVIRONTMENT_LevelDesign_Tiles
%export%-pack LLL_DesireTools_Report
%export%-pack LLL_DesireTools_SystemCall
%export%-pack LLL_DesireTools_xScript
%export%-pack SYSTEM_CLASS_ButtonSFX
%export%-pack SYSTEM_CLASS_Window
%export%-pack UI_HUD_CV1
%export%-pack UI_HUD_MiniMaps
%export%-pack UI_SETTINGS_AudioCenter
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo + _____________________________Rename Extension & Get MD5 & Compressing Files
set f=forfiles /S /M
%f% *.pck /C "powershell /c ren @file @fname.lll"
%f% *.lll /C "powershell /c CertUtil -hashfile @file MD5" > MD5
%f% *.lll /C "powershell /c Compress-Archive @file @fname.zip -update"
echo -----------------------------------------------------------------------------
echo -----------------------------------------------------------------------------
echo ---------------------------------------------------------------------COMPLETE
