module UnrealScript.UDKBase.UDKUIResourceDataProvider;

import ScriptClasses;
import UnrealScript.Engine.UIResourceDataProvider;

extern(C++) interface UDKUIResourceDataProvider : UIResourceDataProvider
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString IniName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
			ScriptString FriendlyName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 124); }
		}
		bool bRemoveOnPS3() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x8) != 0; }
		bool bRemoveOnPS3(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x8; } return val; }
		bool bRemoveOnPC() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x4) != 0; }
		bool bRemoveOnPC(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x4; } return val; }
		bool bRemoveOn360() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x2) != 0; }
		bool bRemoveOn360(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x2; } return val; }
		bool bSearchAllInis() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool bSearchAllInis(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	}
final:
	bool IsFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35553], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35555], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}