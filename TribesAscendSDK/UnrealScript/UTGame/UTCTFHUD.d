module UnrealScript.UTGame.UTCTFHUD;

import ScriptClasses;
import UnrealScript.UTGame.UTGameReplicationInfo;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTTeamHUD;
import UnrealScript.UTGame.UTCTFBase;

extern(C++) interface UTCTFHUD : UTTeamHUD
{
public extern(D):
	@property final auto ref
	{
		UTGameReplicationInfo.EFlagState FlagStates() { return *cast(UTGameReplicationInfo.EFlagState*)(cast(size_t)cast(void*)this + 2748); }
		UTCTFBase FlagBases() { return *cast(UTCTFBase*)(cast(size_t)cast(void*)this + 2740); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46103], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46105], cast(void*)0, cast(void*)0);
	}
	void DisplayTeamLogos(ubyte TeamIndex, UObject.Vector2D pos, float DestScale)
	{
		ubyte params[16];
		params[] = 0;
		params[0] = TeamIndex;
		*cast(UObject.Vector2D*)&params[4] = pos;
		*cast(float*)&params[12] = DestScale;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46108], params.ptr, cast(void*)0);
	}
	Actor GetDirectionalDest(ubyte TeamIndex)
	{
		ubyte params[8];
		params[] = 0;
		params[0] = TeamIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[46117], params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
}