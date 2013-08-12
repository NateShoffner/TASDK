module UnrealScript.Engine.ParticleModuleLocationPrimitiveCylinder;

import UnrealScript.Engine.ParticleModuleLocationPrimitiveBase;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface ParticleModuleLocationPrimitiveCylinder : ParticleModuleLocationPrimitiveBase
{
public extern(D):
	enum CylinderHeightAxis : ubyte
	{
		PMLPC_HEIGHTAXIS_X = 0,
		PMLPC_HEIGHTAXIS_Y = 1,
		PMLPC_HEIGHTAXIS_Z = 2,
		PMLPC_HEIGHTAXIS_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis HeightAxis() { return *cast(ParticleModuleLocationPrimitiveCylinder.CylinderHeightAxis*)(cast(size_t)cast(void*)this + 192); }
			DistributionFloat.RawDistributionFloat StartHeight() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 164); }
			DistributionFloat.RawDistributionFloat StartRadius() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)cast(void*)this + 136); }
		}
		bool RadialVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 132) & 0x1) != 0; }
		bool RadialVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 132) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 132) &= ~0x1; } return val; }
	}
}