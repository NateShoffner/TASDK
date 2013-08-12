module UnrealScript.Engine.SeqAct_ModifyHealth;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyHealth : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			Actor Instigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 252); }
			float Amount() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			// WARNING: Property 'DamageType' has the same name as a defined type!
			float Momentum() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float Radius() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		}
		bool bHeal() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bHeal(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
		bool bFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
		bool bFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
		bool bRadial() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bRadial(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25773], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}