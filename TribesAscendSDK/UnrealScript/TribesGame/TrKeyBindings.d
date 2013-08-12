module UnrealScript.TribesGame.TrKeyBindings;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.TrPlayerInput_Spectator;
import UnrealScript.Engine.PlayerInput;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrKeyBindings : GFxObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString m_EscapeKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			ScriptString m_FriendsHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
			ScriptString m_SettingsHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
			ScriptString m_MainMenuHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
			ScriptString m_ClassSelectKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 172); }
			ScriptString m_TeamSelectKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 160); }
			ScriptString m_TalkReplyKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 220); }
			ScriptString m_ChatHotkey() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 268); }
			ScriptString m_TalkKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
			ScriptString m_TeamTalkKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 208); }
			ScriptString m_ScoreboardKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 184); }
			ScriptString m_EnterKeybind() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 148); }
			PlayerInput m_EngineInput() { return *cast(PlayerInput*)(cast(size_t)cast(void*)this + 132); }
			GFxObject m_KeyBindingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 128); }
			int m_KeyBindingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
		}
		bool m_bGotInputKey() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool m_bGotInputKey(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	}
final:
	ScriptString GetCurrentBind(TrObject.ESettingsList Key)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Key;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59263], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString SaveKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59276], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void FlushSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98370], cast(void*)0, cast(void*)0);
	}
	void ClearSettingById(int SettingId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98371], params.ptr, cast(void*)0);
	}
	void ClearSettingByValue(ScriptString StrValue)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = StrValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98373], params.ptr, cast(void*)0);
	}
	void StoreSetting(int SettingId, ScriptString pKeyBind)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		*cast(ScriptString*)&params[4] = pKeyBind;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98375], params.ptr, cast(void*)0);
	}
	ScriptString ReadSetting(int SettingId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = SettingId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98378], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void CaptureNextKey()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98381], cast(void*)0, cast(void*)0);
	}
	void ResetDefaultKeyBindings(PlayerInput pInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98382], params.ptr, cast(void*)0);
	}
	void ResetDefaultSpectatorBindings(TrPlayerInput_Spectator pInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = pInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98384], params.ptr, cast(void*)0);
	}
	void ReadBindings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98386], cast(void*)0, cast(void*)0);
	}
	void AddBinding(ScriptString Command, ScriptString KeyName)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		*cast(ScriptString*)&params[12] = KeyName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98392], params.ptr, cast(void*)0);
	}
	void ApplyKeyBinding(int Index, ScriptString val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98396], params.ptr, cast(void*)0);
	}
	ScriptString SavePlayerKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98403], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	ScriptString SaveSpectatorKeyBind(int Index, ScriptString KeyName, bool bStore)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(ScriptString*)&params[4] = KeyName;
		*cast(bool*)&params[16] = bStore;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98412], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
	void UnbindPlayerCommand(PlayerInput pInput, ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98421], params.ptr, cast(void*)0);
	}
	void UnbindSpectatorCommand(TrPlayerInput_Spectator pInput, ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98426], params.ptr, cast(void*)0);
	}
	ScriptString GetCurrentBinding(PlayerInput pInput, ScriptString Command)
	{
		ubyte params[28];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = pInput;
		*cast(ScriptString*)&params[4] = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98431], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[16];
	}
	ScriptString GetCommandName(TrObject.ESettingsList Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrObject.ESettingsList*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98436], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	void ApplyDefaultSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98439], cast(void*)0, cast(void*)0);
	}
	PlayerInput GetPlayerInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98443], params.ptr, cast(void*)0);
		return *cast(PlayerInput*)params.ptr;
	}
	TrPlayerInput_Spectator GetSpectatorInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98446], params.ptr, cast(void*)0);
		return *cast(TrPlayerInput_Spectator*)params.ptr;
	}
	void UpdateRuntimePlayer(PlayerInput EngineInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerInput*)params.ptr = EngineInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98449], params.ptr, cast(void*)0);
	}
	void UpdateRuntimeSpectator(TrPlayerInput_Spectator SpecInput)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerInput_Spectator*)params.ptr = SpecInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98452], params.ptr, cast(void*)0);
	}
	void SaveInterceptKeys()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[98455], cast(void*)0, cast(void*)0);
	}
}