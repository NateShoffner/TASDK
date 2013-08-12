module UnrealScript.Engine.ParticleModuleVelocity;

import UnrealScript.Engine.ParticleModuleVelocityBase;
import UnrealScript.Core.DistributionFloat;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleVelocity : ParticleModuleVelocityBase
{
public extern(D):
	@property final auto ref
	{
		DistributionFloat.RawDistributionFloat StartVelocityRadial() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 104); }
		DistributionVector.RawDistributionVector StartVelocity() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 76); }
	}
}