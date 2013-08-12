module UnrealScript.Engine.UIDataStore_OnlineGameSettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataStore_Settings;
import UnrealScript.Engine.UIDataProvider_Settings;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataStore_OnlineGameSettings : UIDataStore_Settings
{
public extern(D):
	struct GameSettingsCfg
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptName SettingsName() { return *cast(ScriptName*)(cast(size_t)&this + 12); }
			OnlineGameSettings GameSettings() { return *cast(OnlineGameSettings*)(cast(size_t)&this + 8); }
			UIDataProvider_Settings Provider() { return *cast(UIDataProvider_Settings*)(cast(size_t)&this + 4); }
			ScriptClass GameSettingsClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UIDataStore_OnlineGameSettings.GameSettingsCfg) GameSettingsCfgList() { return *cast(ScriptArray!(UIDataStore_OnlineGameSettings.GameSettingsCfg)*)(cast(size_t)cast(void*)this + 120); }
		int SelectedIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
		ScriptClass SettingsProviderClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 132); }
	}
final:
	void OnSettingProviderChanged(UIDataProvider SourceProvider, ScriptName SettingsName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(UIDataProvider*)params.ptr = SourceProvider;
		*cast(ScriptName*)&params[4] = SettingsName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28701], params.ptr, cast(void*)0);
	}
	bool CreateGame(ubyte ControllerIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = ControllerIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28704], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	OnlineGameSettings GetCurrentGameSettings()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28709], params.ptr, cast(void*)0);
		return *cast(OnlineGameSettings*)params.ptr;
	}
	UIDataProvider_Settings GetCurrentProvider()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28711], params.ptr, cast(void*)0);
		return *cast(UIDataProvider_Settings*)params.ptr;
	}
	void SetCurrentByIndex(int NewIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28713], params.ptr, cast(void*)0);
	}
	void SetCurrentByName(ScriptName SettingsName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SettingsName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28715], params.ptr, cast(void*)0);
	}
	void MoveToNext()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28718], cast(void*)0, cast(void*)0);
	}
	void MoveToPrevious()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28720], cast(void*)0, cast(void*)0);
	}
	void Registered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28722], params.ptr, cast(void*)0);
	}
	void Unregistered(LocalPlayer PlayerOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = PlayerOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28726], params.ptr, cast(void*)0);
	}
}