module UnrealScript.Engine.ParticleModuleOrientationAxisLock;

import UnrealScript.Engine.ParticleModuleOrientationBase;

extern(C++) interface ParticleModuleOrientationAxisLock : ParticleModuleOrientationBase
{
public extern(D):
	enum EParticleAxisLock : ubyte
	{
		EPAL_NONE = 0,
		EPAL_X = 1,
		EPAL_Y = 2,
		EPAL_Z = 3,
		EPAL_NEGATIVE_X = 4,
		EPAL_NEGATIVE_Y = 5,
		EPAL_NEGATIVE_Z = 6,
		EPAL_ROTATE_X = 7,
		EPAL_ROTATE_Y = 8,
		EPAL_ROTATE_Z = 9,
		EPAL_MAX = 10,
	}
	@property final auto ref ParticleModuleOrientationAxisLock.EParticleAxisLock LockAxisFlags() { return *cast(ParticleModuleOrientationAxisLock.EParticleAxisLock*)(cast(size_t)cast(void*)this + 72); }
}