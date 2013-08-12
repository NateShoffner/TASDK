module UnrealScript.Engine.AnimNodeAdditiveBlending;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeAdditiveBlending : AnimNodeBlend
{
public extern(D):
	@property final
	{
		bool bPassThroughWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bPassThroughWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
	final void SetBlendTarget(float BlendTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BlendTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10759], params.ptr, cast(void*)0);
	}
}