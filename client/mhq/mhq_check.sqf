//Mission start


       [] spawn {
            while {not isnull mhq} do { "mhq_marker" setmarkerpos getpos mhq; sleep 3; };
        };

    if (!isDedicated && isServer && !isMultiplayer) then
{
  player globalChat "MHQ Init Complete";
};

   




