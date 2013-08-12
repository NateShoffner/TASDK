module UnrealScript.UTGame.UTSeqAct_ReturnCTFFlag;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ReturnCTFFlag : SequenceAction
{
public extern(D):
	@property final auto ref int TeamIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49120], cast(void*)0, cast(void*)0);
	}
}