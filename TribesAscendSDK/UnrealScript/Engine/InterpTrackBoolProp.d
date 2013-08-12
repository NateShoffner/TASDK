module UnrealScript.Engine.InterpTrackBoolProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackBoolProp : InterpTrack
{
public extern(D):
	struct BoolTrackKey
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final
		{
			@property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
			bool Value() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
			bool Value(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(InterpTrackBoolProp.BoolTrackKey) BoolTrack() { return *cast(ScriptArray!(InterpTrackBoolProp.BoolTrackKey)*)(cast(size_t)cast(void*)this + 128); }
		ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 140); }
	}
}