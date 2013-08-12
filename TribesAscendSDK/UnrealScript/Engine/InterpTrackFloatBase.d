module UnrealScript.Engine.InterpTrackFloatBase;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackFloatBase : InterpTrack
{
public extern(D):
	@property final auto ref
	{
		float CurveTension() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
		UObject.InterpCurveFloat FloatTrack() { return *cast(UObject.InterpCurveFloat*)(cast(size_t)cast(void*)this + 128); }
	}
}