module UnrealScript.Engine.AnimationCompressionAlgorithm_RemoveEverySecondKey;

import UnrealScript.Engine.AnimationCompressionAlgorithm;

extern(C++) interface AnimationCompressionAlgorithm_RemoveEverySecondKey : AnimationCompressionAlgorithm
{
public extern(D):
	@property final
	{
		@property final auto ref int MinKeys() { return *cast(int*)(cast(size_t)cast(void*)this + 80); }
		bool bStartAtSecondKey() { return (*cast(uint*)(cast(size_t)cast(void*)this + 84) & 0x1) != 0; }
		bool bStartAtSecondKey(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 84) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 84) &= ~0x1; } return val; }
	}
}