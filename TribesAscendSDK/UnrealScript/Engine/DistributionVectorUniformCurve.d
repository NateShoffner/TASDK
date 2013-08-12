module UnrealScript.Engine.DistributionVectorUniformCurve;

import UnrealScript.Core.UObject;
import UnrealScript.Core.DistributionVector;

extern(C++) interface DistributionVectorUniformCurve : DistributionVector
{
public extern(D):
	@property final
	{
		auto ref
		{
			DistributionVector.EDistributionVectorMirrorFlags MirrorFlags() { return *cast(DistributionVector.EDistributionVectorMirrorFlags*)(cast(size_t)cast(void*)this + 102); }
			DistributionVector.EDistributionVectorLockFlags LockedAxes() { return *cast(DistributionVector.EDistributionVectorLockFlags*)(cast(size_t)cast(void*)this + 100); }
			UObject.InterpCurveTwoVectors ConstantCurve() { return *cast(UObject.InterpCurveTwoVectors*)(cast(size_t)cast(void*)this + 80); }
		}
		bool bUseExtremes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x4) != 0; }
		bool bUseExtremes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x4; } return val; }
		bool bLockAxes2() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x2) != 0; }
		bool bLockAxes2(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x2; } return val; }
		bool bLockAxes1() { return (*cast(uint*)(cast(size_t)cast(void*)this + 96) & 0x1) != 0; }
		bool bLockAxes1(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 96) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 96) &= ~0x1; } return val; }
	}
}