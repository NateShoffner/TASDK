module UnrealScript.UDKBase.UDKSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_SpinControl : SkelControlSingleBone
{
public extern(D):
	@property final auto ref
	{
		Vector Axis() { return *cast(Vector*)(cast(size_t)cast(void*)this + 240); }
		float DegreesPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	}
}