module UnrealScript.TribesGame.TrCollisionProxy_PromptText;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.TribesGame.TrCollisionProxy;

extern(C++) interface TrCollisionProxy_PromptText : TrCollisionProxy
{
public extern(D):
	@property final auto ref
	{
		float m_fPromptTextRemovalTime() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		int m_nPromptMessageIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
		Pawn m_LocalPawn() { return *cast(Pawn*)(cast(size_t)cast(void*)this + 520); }
		ScriptString m_LastUpgradeMsg() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
		int m_nLastUpgradeLevel() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
	}
final:
	void OnPawnAdded(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74593], params.ptr, cast(void*)0);
	}
	void RequestPromptText()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74596], cast(void*)0, cast(void*)0);
	}
	void CheckForUpgradeLevel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74601], cast(void*)0, cast(void*)0);
	}
	void TryTraceAgainTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74604], cast(void*)0, cast(void*)0);
	}
	void OnPawnRemoved(Pawn aPawn)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = aPawn;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74606], params.ptr, cast(void*)0);
	}
}