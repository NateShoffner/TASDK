module UnrealScript.Engine.FogVolumeSphericalDensityComponent;

import ScriptClasses;
import UnrealScript.Engine.FogVolumeDensityComponent;

extern(C++) interface FogVolumeSphericalDensityComponent : FogVolumeDensityComponent
{
public extern(D):
	@property final auto ref
	{
		float SphereRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 164); }
		Vector SphereCenter() { return *cast(Vector*)(cast(size_t)cast(void*)this + 152); }
		float MaxDensity() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
	}
}