module UnrealScript.Engine.ParticleModuleLocationEmitter;

import ScriptClasses;
import UnrealScript.Engine.ParticleModuleLocationBase;

extern(C++) interface ParticleModuleLocationEmitter : ParticleModuleLocationBase
{
public extern(D):
	enum ELocationEmitterSelectionMethod : ubyte
	{
		ELESM_Random = 0,
		ELESM_Sequential = 1,
		ELESM_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			float InheritSourceRotationScale() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float InheritSourceVelocityScale() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			ParticleModuleLocationEmitter.ELocationEmitterSelectionMethod SelectionMethod() { return *cast(ParticleModuleLocationEmitter.ELocationEmitterSelectionMethod*)(cast(size_t)cast(void*)this + 80); }
			ScriptName EmitterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
		}
		bool bInheritSourceRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x2) != 0; }
		bool bInheritSourceRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x2; } return val; }
		bool InheritSourceVelocity() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool InheritSourceVelocity(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}