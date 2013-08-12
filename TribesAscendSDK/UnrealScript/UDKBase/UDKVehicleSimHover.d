module UnrealScript.UDKBase.UDKVehicleSimHover;

import UnrealScript.UDKBase.UDKVehicleSimChopper;

extern(C++) interface UDKVehicleSimHover : UDKVehicleSimChopper
{
public extern(D):
	@property final
	{
		bool bUnPoweredDriving() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x8) != 0; }
		bool bUnPoweredDriving(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x8; } return val; }
		bool bCanClimbSlopes() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x4) != 0; }
		bool bCanClimbSlopes(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x4; } return val; }
		bool bRepulsorCollisionEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x2) != 0; }
		bool bRepulsorCollisionEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x2; } return val; }
		bool bDisableWheelsWhenOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x1) != 0; }
		bool bDisableWheelsWhenOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x1; } return val; }
	}
}