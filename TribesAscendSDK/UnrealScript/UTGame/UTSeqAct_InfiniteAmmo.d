module UnrealScript.UTGame.UTSeqAct_InfiniteAmmo;

import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_InfiniteAmmo : SequenceAction
{
public extern(D):
	@property final
	{
		bool bInfiniteAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bInfiniteAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}