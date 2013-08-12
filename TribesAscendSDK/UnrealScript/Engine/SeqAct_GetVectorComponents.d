module UnrealScript.Engine.SeqAct_GetVectorComponents;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_GetVectorComponents : SequenceAction
{
public extern(D):
	@property final auto ref
	{
		float Z() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		float Y() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
		float X() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		Vector InVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 232); }
	}
}