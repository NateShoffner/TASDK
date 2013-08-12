module UnrealScript.Engine.AnimNodeSequence;

import ScriptClasses;
import UnrealScript.Engine.CameraAnimInst;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.Engine.AnimNode;
import UnrealScript.Engine.SkelControlBase;

extern(C++) interface AnimNodeSequence : AnimNode
{
public extern(D):
	enum ERootRotationOption : ubyte
	{
		RRO_Default = 0,
		RRO_Discard = 1,
		RRO_Extract = 2,
		RRO_MAX = 3,
	}
	enum ERootBoneAxis : ubyte
	{
		RBA_Default = 0,
		RBA_Discard = 1,
		RBA_Translate = 2,
		RBA_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			AnimSequence AnimSeq() { return *cast(AnimSequence*)(cast(size_t)cast(void*)this + 252); }
			float Rate() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			ScriptName AnimSeqName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 224); }
			float CurrentTime() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
			float PreviousTime() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			float EndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			int AnimLinkupIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 256); }
			float NotifyWeightThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			ScriptName SynchGroupName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 264); }
			float SynchPosOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			// WARNING: Property 'CameraAnim' has the same name as a defined type!
			CameraAnimInst ActiveCameraAnimInstance() { return *cast(CameraAnimInst*)(cast(size_t)cast(void*)this + 280); }
			float CameraAnimScale() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float CameraAnimPlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float CameraAnimBlendInTime() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float CameraAnimBlendOutTime() { return *cast(float*)(cast(size_t)cast(void*)this + 296); }
			AnimNodeSequence.ERootBoneAxis RootBoneOption() { return *cast(AnimNodeSequence.ERootBoneAxis*)(cast(size_t)cast(void*)this + 300); }
			AnimNodeSequence.ERootRotationOption RootRotationOption() { return *cast(AnimNodeSequence.ERootRotationOption*)(cast(size_t)cast(void*)this + 303); }
			ScriptArray!(SkelControlBase) MetaDataSkelControlList() { return *cast(ScriptArray!(SkelControlBase)*)(cast(size_t)cast(void*)this + 308); }
		}
		bool bPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2; } return val; }
		bool bCauseActorAnimEnd() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4) != 0; }
		bool bCauseActorAnimEnd(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4; } return val; }
		bool bCauseActorAnimPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8) != 0; }
		bool bCauseActorAnimPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8; } return val; }
		bool bZeroRootRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10) != 0; }
		bool bZeroRootRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10; } return val; }
		bool bZeroRootTranslation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20) != 0; }
		bool bZeroRootTranslation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20; } return val; }
		bool bDisableWarningWhenAnimNotFound() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x40) != 0; }
		bool bDisableWarningWhenAnimNotFound(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x40; } return val; }
		bool bNoNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x80) != 0; }
		bool bNoNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x80; } return val; }
		bool bForceRefposeWhenNotPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x100) != 0; }
		bool bForceRefposeWhenNotPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x100; } return val; }
		bool bIsIssuingNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x200) != 0; }
		bool bIsIssuingNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x200; } return val; }
		bool m_bSuppressNotifies() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x400) != 0; }
		bool m_bSuppressNotifies(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x400; } return val; }
		bool bForceAlwaysSlave() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x800) != 0; }
		bool bForceAlwaysSlave(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x800; } return val; }
		bool bSynchronize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1000) != 0; }
		bool bSynchronize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1000; } return val; }
		bool bReverseSync() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x2000) != 0; }
		bool bReverseSync(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x2000; } return val; }
		bool bShowTimeLineSlider() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x4000) != 0; }
		bool bShowTimeLineSlider(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x4000; } return val; }
		bool bLoopCameraAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x8000) != 0; }
		bool bLoopCameraAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x8000; } return val; }
		bool bRandomizeCameraAnimLoopStartTime() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x10000) != 0; }
		bool bRandomizeCameraAnimLoopStartTime(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x10000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x10000; } return val; }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x20000) != 0; }
		bool bEditorOnlyAddRefPoseToAdditiveAnimation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x20000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x20000; } return val; }
	}
final:
	void SetAnim(ScriptName pSequence)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = pSequence;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10909], params.ptr, cast(void*)0);
	}
	void PlayAnim(bool bLoop, float InRate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = InRate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10911], params.ptr, cast(void*)0);
	}
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10915], cast(void*)0, cast(void*)0);
	}
	void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10916], cast(void*)0, cast(void*)0);
	}
	void SetPosition(float NewTime, bool bFireNotifies)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewTime;
		*cast(bool*)&params[4] = bFireNotifies;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10917], params.ptr, cast(void*)0);
	}
	float GetNormalizedPosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10920], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float FindGroupRelativePosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10922], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float FindGroupPosition(float GroupRelativePosition)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = GroupRelativePosition;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10925], params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
	float GetGroupRelativePosition()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10928], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetGlobalPlayRate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10930], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetAnimPlaybackLength()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10932], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetTimeLeft()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10934], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void SetRootBoneAxisOption(AnimNodeSequence.ERootBoneAxis AxisX, AnimNodeSequence.ERootBoneAxis AxisY, AnimNodeSequence.ERootBoneAxis AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootBoneAxis*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootBoneAxis*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10936], params.ptr, cast(void*)0);
	}
	void SetRootBoneRotationOption(AnimNodeSequence.ERootRotationOption AxisX, AnimNodeSequence.ERootRotationOption AxisY, AnimNodeSequence.ERootRotationOption AxisZ)
	{
		ubyte params[3];
		params[] = 0;
		*cast(AnimNodeSequence.ERootRotationOption*)params.ptr = AxisX;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[1] = AxisY;
		*cast(AnimNodeSequence.ERootRotationOption*)&params[2] = AxisZ;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10941], params.ptr, cast(void*)0);
	}
}