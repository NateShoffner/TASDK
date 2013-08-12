module UnrealScript.Engine.CheatManager;

import ScriptClasses;
import UnrealScript.Engine.DebugCameraController;
import UnrealScript.Engine.Weapon;
import UnrealScript.Core.UObject;

extern(C++) interface CheatManager : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString OwnCamera() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
		ScriptString ViewingFrom() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
		ScriptClass DebugCameraControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
		DebugCameraController DebugCameraControllerRef() { return *cast(DebugCameraController*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void FXPlay(ScriptClass aClass, ScriptString FXAnimPath)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		*cast(ScriptString*)&params[4] = FXAnimPath;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12628], params.ptr, cast(void*)0);
	}
	void FXStop(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12638], params.ptr, cast(void*)0);
	}
	void DebugAI(ScriptName Category)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Category;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12644], params.ptr, cast(void*)0);
	}
	void EditAIByTrace()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12646], cast(void*)0, cast(void*)0);
	}
	void DebugPause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12653], cast(void*)0, cast(void*)0);
	}
	void ListDynamicActors()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12654], cast(void*)0, cast(void*)0);
	}
	void FreezeFrame(float Delay)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Delay;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12655], params.ptr, cast(void*)0);
	}
	void WriteToLog(ScriptString Param)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Param;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12658], params.ptr, cast(void*)0);
	}
	void KillViewedActor()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12660], cast(void*)0, cast(void*)0);
	}
	void Teleport()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12661], cast(void*)0, cast(void*)0);
	}
	void ChangeSize(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12667], params.ptr, cast(void*)0);
	}
	void EndPath()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12669], cast(void*)0, cast(void*)0);
	}
	void Amphibious()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12670], cast(void*)0, cast(void*)0);
	}
	void Fly()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12671], cast(void*)0, cast(void*)0);
	}
	void Walk()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12674], cast(void*)0, cast(void*)0);
	}
	void Ghost()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12677], cast(void*)0, cast(void*)0);
	}
	void AllAmmo()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12680], cast(void*)0, cast(void*)0);
	}
	void God()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12681], cast(void*)0, cast(void*)0);
	}
	void Slomo(float T)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = T;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12682], params.ptr, cast(void*)0);
	}
	void SetJumpZ(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12684], params.ptr, cast(void*)0);
	}
	void SetGravity(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12686], params.ptr, cast(void*)0);
	}
	void SetSpeed(float F)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12689], params.ptr, cast(void*)0);
	}
	void KillAll(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12691], params.ptr, cast(void*)0);
	}
	void KillAllPawns(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12694], params.ptr, cast(void*)0);
	}
	void KillPawns()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12699], cast(void*)0, cast(void*)0);
	}
	void Avatar(ScriptName ClassName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12700], params.ptr, cast(void*)0);
	}
	void Summon(ScriptString ClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12707], params.ptr, cast(void*)0);
	}
	Weapon GiveWeapon(ScriptString WeaponClassStr)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = WeaponClassStr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12711], params.ptr, cast(void*)0);
		return *cast(Weapon*)&params[12];
	}
	void PlayersOnly()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12720], cast(void*)0, cast(void*)0);
	}
	void DestroyFractures(float Radius)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Radius;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12722], params.ptr, cast(void*)0);
	}
	void FractureAllMeshes()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12725], cast(void*)0, cast(void*)0);
	}
	void FractureAllMeshesToMaximizeMemoryUsage()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12727], cast(void*)0, cast(void*)0);
	}
	void RememberSpot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12729], cast(void*)0, cast(void*)0);
	}
	void ViewSelf(bool bQuiet)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bQuiet;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12730], params.ptr, cast(void*)0);
	}
	void ViewPlayer(ScriptString S)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = S;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12732], params.ptr, cast(void*)0);
	}
	void ViewActor(ScriptName ActorName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = ActorName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12735], params.ptr, cast(void*)0);
	}
	void ViewBot()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12738], cast(void*)0, cast(void*)0);
	}
	void ViewClass(ScriptClass aClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = aClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12742], params.ptr, cast(void*)0);
	}
	void Loaded()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12747], cast(void*)0, cast(void*)0);
	}
	void AllWeapons()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12748], cast(void*)0, cast(void*)0);
	}
	void SetLevelStreamingStatus(ScriptName PackageName, bool bShouldBeLoaded, bool bShouldBeVisible)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = PackageName;
		*cast(bool*)&params[8] = bShouldBeLoaded;
		*cast(bool*)&params[12] = bShouldBeVisible;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12749], params.ptr, cast(void*)0);
	}
	void EnableDebugCamera()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12755], cast(void*)0, cast(void*)0);
	}
	void InitCheatManager()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12761], cast(void*)0, cast(void*)0);
	}
	void LogPlaySoundCalls(bool bShouldLog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12762], params.ptr, cast(void*)0);
	}
	void LogParticleActivateSystemCalls(bool bShouldLog)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldLog;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12764], params.ptr, cast(void*)0);
	}
	void VerifyNavMeshObjects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12766], cast(void*)0, cast(void*)0);
	}
	void DrawUnsupportingEdges(ScriptString PawnClassName)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = PawnClassName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12767], params.ptr, cast(void*)0);
	}
	void PrintNavMeshObstacles()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12769], cast(void*)0, cast(void*)0);
	}
	void DumpCoverStats()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[12770], cast(void*)0, cast(void*)0);
	}
}