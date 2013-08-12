module UnrealScript.UDKBase.UDKSkelControl_PropellerBlade;

import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UDKSkelControl_PropellerBlade : SkelControlSingleBone
{
public extern(D):
	@property final
	{
		auto ref
		{
			float DesiredRotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
			float RotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float SpinUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float MaxRotationsPerSecond() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bCounterClockwise() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bCounterClockwise(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
}