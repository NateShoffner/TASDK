module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTilt : AnimNodeBlendBase
{
public extern(D):
	@property final auto ref
	{
		ScriptName UpperBodyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
		float TiltYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
		float TiltDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
		float TiltScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		Vector UpVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
	}
}