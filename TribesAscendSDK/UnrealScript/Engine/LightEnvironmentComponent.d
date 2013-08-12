module UnrealScript.Engine.LightEnvironmentComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;

extern(C++) interface LightEnvironmentComponent : ActorComponent
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) AffectedComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 100); }
			float DominantShadowFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bTranslucencyShadowed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x10) != 0; }
		bool bTranslucencyShadowed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x10; } return val; }
		bool bAllowPreShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x8) != 0; }
		bool bAllowPreShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x8; } return val; }
		bool bAllowDynamicShadowsOnTranslucency() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x4) != 0; }
		bool bAllowDynamicShadowsOnTranslucency(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x4; } return val; }
		bool bForceNonCompositeDynamicLights() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x2) != 0; }
		bool bForceNonCompositeDynamicLights(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
final:
	void SetEnabled(bool bNewEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11640], params.ptr, cast(void*)0);
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11642], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}