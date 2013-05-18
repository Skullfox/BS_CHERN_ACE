// Teleports a person to the marker. You can place this marker anywhere on the map.
 //
 // To use: Add this script as an action on an item via it's init field. EG:
 //
 //this addAction ["Teleport","TeleportScript.sqf",["here"]];


 // Get the destination.
 _dest = (_this select 3) select 0;

 // Get a random direction
 _dir = random 359;

 // Move the person 15 meters away from the destination (in the direction of _dir)
 player SetPos [(getMarkerPos _dest select 0)-10*sin(_dir),(getMarkerPos _dest select 1)-10*cos(_dir)];