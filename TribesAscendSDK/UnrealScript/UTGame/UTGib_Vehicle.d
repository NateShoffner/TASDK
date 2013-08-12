module UnrealScript.UTGame.UTGib_Vehicle;

import ScriptClasses;
import UnrealScript.UTGame.UTGib;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.MaterialInstanceTimeVarying;

extern(C++) interface UTGib_Vehicle : UTGib
{
public extern(D):
	@property final auto ref
	{
		ScriptClass OwningClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 612); }
		ParticleSystem PS_GibExplosionEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 584); }
		ParticleSystem PS_GibTrailEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 588); }
		float TimeBeforeGibExplosionEffect() { return *cast(float*)(cast(size_t)cast(void*)this + 580); }
		MaterialInstanceTimeVarying MITV() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 608); }
		float BurnDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 604); }
		ScriptName BurnName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 596); }
		SoundCue LoopedSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 592); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47946], cast(void*)0, cast(void*)0);
	}
	void ActivateGibExplosionEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47947], cast(void*)0, cast(void*)0);
	}
}