module UnrealScript.TribesGame.GFxDeviceAmmoCount;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxDeviceAmmoCount : GFxMoviePlayer
{
public extern(D):
	@property final auto ref GFxObject AmmoCountTF() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 380); }
	final void Init(LocalPlayer pPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = pPlayer;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[51023], params.ptr, cast(void*)0);
	}
}