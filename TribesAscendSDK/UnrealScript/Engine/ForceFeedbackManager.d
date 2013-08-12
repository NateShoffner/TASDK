module UnrealScript.Engine.ForceFeedbackManager;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ForceFeedbackWaveform;

extern(C++) interface ForceFeedbackManager : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			float ScaleAllWaveformsBy() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			Actor WaveformInstigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 80); }
			float ElapsedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			int CurrentSample() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			ForceFeedbackWaveform FFWaveform() { return *cast(ForceFeedbackWaveform*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bAllowsForceFeedback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bAllowsForceFeedback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
		bool bIsPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bIsPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	}
final:
	void PlayForceFeedbackWaveform(ForceFeedbackWaveform WaveForm, Actor WaveInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = WaveForm;
		*cast(Actor*)&params[4] = WaveInstigator;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15899], params.ptr, cast(void*)0);
	}
	void StopForceFeedbackWaveform(ForceFeedbackWaveform WaveForm)
	{
		ubyte params[4];
		params[] = 0;
		*cast(ForceFeedbackWaveform*)params.ptr = WaveForm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15903], params.ptr, cast(void*)0);
	}
	void PauseWaveform(bool bPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bPause;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15905], params.ptr, cast(void*)0);
	}
}