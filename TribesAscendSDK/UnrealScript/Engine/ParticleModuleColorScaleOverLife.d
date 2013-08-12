module UnrealScript.Engine.ParticleModuleColorScaleOverLife;

import UnrealScript.Core.DistributionFloat;
import UnrealScript.Engine.ParticleModuleColorBase;
import UnrealScript.Core.DistributionVector;

extern(C++) interface ParticleModuleColorScaleOverLife : ParticleModuleColorBase
{
public extern(D):
	@property final
	{
		auto ref
		{
			DistributionFloat.RawDistributionFloat AlphaScaleOverLife() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 100); }
			DistributionVector.RawDistributionVector ColorScaleOverLife() { return *cast(DistributionVector.RawDistributionVector*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bEmitterTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bEmitterTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
}