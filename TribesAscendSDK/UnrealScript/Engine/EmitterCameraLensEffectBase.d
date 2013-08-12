module UnrealScript.Engine.EmitterCameraLensEffectBase;

import ScriptClasses;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Emitter;

extern(C++) interface EmitterCameraLensEffectBase : Emitter
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) EmittersToTreatAsSame() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 508); }
			Camera BaseCamera() { return *cast(Camera*)(cast(size_t)cast(void*)this + 520); }
			float DistFromCamera() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
			float BaseFOV() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
			ParticleSystem PS_CameraEffectNonExtremeContent() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 492); }
			ParticleSystem PS_CameraEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 488); }
		}
		bool bAllowMultipleInstances() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bAllowMultipleInstances(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15201], cast(void*)0, cast(void*)0);
	}
	void RegisterCamera(Camera C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Camera*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15202], params.ptr, cast(void*)0);
	}
	void NotifyRetriggered()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15204], cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15205], cast(void*)0, cast(void*)0);
	}
	void ActivateLensEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15206], cast(void*)0, cast(void*)0);
	}
	void UpdateLocation(Vector* CamLoc, Rotator* CamRot, float CamFOVDeg)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = *CamLoc;
		*cast(Rotator*)&params[12] = *CamRot;
		*cast(float*)&params[24] = CamFOVDeg;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15208], params.ptr, cast(void*)0);
		*CamLoc = *cast(Vector*)params.ptr;
		*CamRot = *cast(Rotator*)&params[12];
	}
}