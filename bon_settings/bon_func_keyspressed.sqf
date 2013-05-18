private['_handled','_dlg'];
_handled = false;

switch (_this select 1) do
{
	// Full list of key indices: http://community.bistudio.com/wiki/displaySetEventHandler
	case 35 : //H key
	{
		if(not dialog) then{_dlg = createDialog "SettingsDialog"};
		_handled = true;
	};
};

_handled
