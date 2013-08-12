module UnrealScript.UDKBase.UDKAnimBlendByPhysicsVolume;

import ScriptClasses;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysicsVolume : UDKAnimBlendBase
{
public extern(D):
	struct PhysicsVolumeParams
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final
		{
			auto ref
			{
				float MaxGravity() { return *cast(float*)(cast(size_t)&this + 12); }
				float MinGravity() { return *cast(float*)(cast(size_t)&this + 8); }
				int ChildIndex() { return *cast(int*)(cast(size_t)&this + 0); }
			}
			bool bCheckGravity() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x2) != 0; }
			bool bCheckGravity(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x2; } return val; }
			bool bWaterVolume() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool bWaterVolume(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams) PhysicsParamList() { return *cast(ScriptArray!(UDKAnimBlendByPhysicsVolume.PhysicsVolumeParams)*)(cast(size_t)cast(void*)this + 296); }
		PhysicsVolume LastPhysicsVolume() { return *cast(PhysicsVolume*)(cast(size_t)cast(void*)this + 308); }
	}
	final void PhysicsVolumeChanged(PhysicsVolume NewVolume)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicsVolume*)params.ptr = NewVolume;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34539], params.ptr, cast(void*)0);
	}
}