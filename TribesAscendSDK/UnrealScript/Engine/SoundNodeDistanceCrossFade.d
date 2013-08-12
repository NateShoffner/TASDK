module UnrealScript.Engine.SoundNodeDistanceCrossFade;

import ScriptClasses;
import UnrealScript.Engine.SoundNode;
import UnrealScript.Core.DistributionFloat;

extern(C++) interface SoundNodeDistanceCrossFade : SoundNode
{
public extern(D):
	struct DistanceDatum
	{
		private ubyte __buffer__[76];
	public extern(D):
		@property final auto ref
		{
			DistributionFloat.RawDistributionFloat FadeOutDistance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 48); }
			DistributionFloat.RawDistributionFloat FadeInDistance() { return *cast(DistributionFloat.RawDistributionFloat*)(cast(size_t)&this + 20); }
			// WARNING: Property 'Volume' has the same name as a defined type!
			float FadeOutDistanceEnd() { return *cast(float*)(cast(size_t)&this + 12); }
			float FadeOutDistanceStart() { return *cast(float*)(cast(size_t)&this + 8); }
			float FadeInDistanceEnd() { return *cast(float*)(cast(size_t)&this + 4); }
			float FadeInDistanceStart() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum) CrossFadeInput() { return *cast(ScriptArray!(SoundNodeDistanceCrossFade.DistanceDatum)*)(cast(size_t)cast(void*)this + 76); }
}