module UnrealScript.Engine.AnimSet;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimSequence;

extern(C++) interface AnimSet : UObject
{
public extern(D):
	struct AnimSetMeshLinkup
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref ScriptArray!(int) BoneToTrackTable() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 0); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) TrackBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(AnimSequence) Sequences() { return *cast(ScriptArray!(AnimSequence)*)(cast(size_t)cast(void*)this + 76); }
			ScriptArray!(AnimSet.AnimSetMeshLinkup) LinkupCache() { return *cast(ScriptArray!(AnimSet.AnimSetMeshLinkup)*)(cast(size_t)cast(void*)this + 148); }
			ScriptArray!(ubyte) BoneUseAnimTranslation() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 220); }
			ScriptArray!(ubyte) ForceUseMeshTranslation() { return *cast(ScriptArray!(ubyte)*)(cast(size_t)cast(void*)this + 232); }
			ScriptArray!(ScriptName) UseTranslationBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 244); }
			ScriptArray!(ScriptName) ForceMeshTranslationBoneNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
			ScriptName BestRatioSkelMeshName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 276); }
			ScriptName PreviewSkelMeshName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
		}
		bool bAnimRotationOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bAnimRotationOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}