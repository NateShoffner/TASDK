module UnrealScript.GameFramework.SeqAct_ModifyProperty;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ModifyProperty : SequenceAction
{
public extern(D):
	struct PropertyInfo
	{
		private ubyte __buffer__[24];
	public extern(D):
		@property final
		{
			auto ref
			{
				ScriptString PropertyValue() { return *cast(ScriptString*)(cast(size_t)&this + 12); }
				ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bModifyProperty() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bModifyProperty(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(SeqAct_ModifyProperty.PropertyInfo) Properties() { return *cast(ScriptArray!(SeqAct_ModifyProperty.PropertyInfo)*)(cast(size_t)cast(void*)this + 232); }
}