module UnrealScript.TribesGame.TrCallIn;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrCallIn : Actor
{
public extern(D):
	@property final
	{
		auto ref
		{
			TrPlayerController OwningController() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 540); }
			ScriptClass ExtentTemplateClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 536); }
			float VehicleDist() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float GameObjectiveDist() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float FlagStationDist() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 508); }
			MaterialInstanceConstant MICDisplay() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 504); }
			int CreditCost() { return *cast(int*)(cast(size_t)cast(void*)this + 500); }
			float DegreeOfMovement() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			float CooldownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			float CallTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
			float BuildupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
			int DatabaseId() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
			TrObject.ETrPlayerCallIns CallInId() { return *cast(TrObject.ETrPlayerCallIns*)(cast(size_t)cast(void*)this + 476); }
		}
		bool IsInProgress() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x4) != 0; }
		bool IsInProgress(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x4; } return val; }
		bool PendingDelete() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x2) != 0; }
		bool PendingDelete(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x2; } return val; }
		bool CheckExtentsOnSpawn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 532) & 0x1) != 0; }
		bool CheckExtentsOnSpawn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 532) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 532) &= ~0x1; } return val; }
	}
final:
	void Initialize(int NewPrice, int NewBuildup, int NewCooldown)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = NewPrice;
		*cast(int*)&params[4] = NewBuildup;
		*cast(int*)&params[8] = NewCooldown;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73958], params.ptr, cast(void*)0);
	}
	int GetCreditCost()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73962], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	bool VerifyCredits()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73964], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool VerifyPower()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73966], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool FireCompletedCallIn(int CallInOffs, Vector TargetLocation, Vector TargetNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = CallInOffs;
		*cast(Vector*)&params[4] = TargetLocation;
		*cast(Vector*)&params[16] = TargetNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73971], params.ptr, cast(void*)0);
		return *cast(bool*)&params[28];
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[73979], params.ptr, cast(void*)0);
	}
}