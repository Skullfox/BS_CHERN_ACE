["Mission","Mission Abgeschlossen","Alle Missionen erledigt.",true,[]] call SHK_Taskmaster_add;
[-1, {
playMusic "Track16_Valentine";
sleep 10;
[str ("Alle Mission beendet")] spawn BIS_fnc_infoText;
sleep 30;
}] call CBA_fnc_globalExecute;