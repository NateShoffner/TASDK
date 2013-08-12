module UnrealScript.UDKBase.UDKPlayerController;

import ScriptClasses;
import UnrealScript.UDKBase.UDKEmitCameraEffect;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.Pawn;
import UnrealScript.GameFramework.GamePlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Engine.SoundNodeWave;

extern(C++) interface UDKPlayerController : GamePlayerController
{
public extern(D):
	struct ObjectiveAnnouncementInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptString AnnouncementText() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			SoundNodeWave AnnouncementSound() { return *cast(SoundNodeWave*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) PotentiallyHiddenActors() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 1940); }
			float PulseTimer() { return *cast(float*)(cast(size_t)cast(void*)this + 1956); }
			float VehicleCheckRadiusScaling() { return *cast(float*)(cast(size_t)cast(void*)this + 1952); }
			PostProcessVolume.PostProcessSettings PostProcessModifier() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 1720); }
			PostProcessVolume.PostProcessSettings CamOverridePostProcess() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)cast(void*)this + 1500); }
			Rotator ShakeRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 1488); }
			Vector ShakeOffset() { return *cast(Vector*)(cast(size_t)cast(void*)this + 1476); }
			UDKEmitCameraEffect CameraEffect() { return *cast(UDKEmitCameraEffect*)(cast(size_t)cast(void*)this + 1468); }
			CameraAnimInst CameraAnimPlayer() { return *cast(CameraAnimInst*)(cast(size_t)cast(void*)this + 1464); }
		}
		bool bUsePhysicsRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x10) != 0; }
		bool bUsePhysicsRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x10; } return val; }
		bool bPulseTeamColor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x8) != 0; }
		bool bPulseTeamColor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x8; } return val; }
		bool bConsolePlayer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x4) != 0; }
		bool bConsolePlayer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x4; } return val; }
		bool bAcuteHearing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x2) != 0; }
		bool bAcuteHearing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x2; } return val; }
		bool bDedicatedServerSpectator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 1472) & 0x1) != 0; }
		bool bDedicatedServerSpectator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 1472) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 1472) &= ~0x1; } return val; }
	}
final:
	void SetGamma(float GammaValue)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = GammaValue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35252], params.ptr, cast(void*)0);
	}
	void SetHardwarePhysicsEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35254], params.ptr, cast(void*)0);
	}
	bool IsKeyboardAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35256], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool IsMouseAvailable()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35258], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void RemoveCameraEffect(UDKEmitCameraEffect CamEmitter)
	{
		ubyte params[4];
		params[] = 0;
		*cast(UDKEmitCameraEffect*)params.ptr = CamEmitter;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35260], params.ptr, cast(void*)0);
	}
	void ClientSpawnCameraEffect(ScriptClass CameraEffectClass)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = CameraEffectClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35262], params.ptr, cast(void*)0);
	}
	void ClearCameraEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35266], cast(void*)0, cast(void*)0);
	}
	Pawn GetTargetAdhesionFrictionTarget(float MaxDistance, Vector* CamLoc, Rotator* CamRot)
	{
		ubyte params[32];
		params[] = 0;
		*cast(float*)params.ptr = MaxDistance;
		*cast(Vector*)&params[4] = *CamLoc;
		*cast(Rotator*)&params[16] = *CamRot;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35267], params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)&params[4];
		*CamRot = *cast(Rotator*)&params[16];
		return *cast(Pawn*)&params[28];
	}
	bool IsControllerTiltActive()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35272], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetControllerTiltDesiredIfAvailable(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35274], params.ptr, cast(void*)0);
	}
	void SetControllerTiltActive(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35276], params.ptr, cast(void*)0);
	}
	void SetOnlyUseControllerTiltInput(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35278], params.ptr, cast(void*)0);
	}
	void SetUseTiltForwardAndBack(bool bActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35280], params.ptr, cast(void*)0);
	}
}