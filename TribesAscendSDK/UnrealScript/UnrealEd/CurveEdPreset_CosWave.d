module UnrealScript.UnrealEd.CurveEdPreset_CosWave;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.CurveEdPresetBase;

extern(C++) interface CurveEdPreset_CosWave : CurveEdPresetBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CurveEdPreset_CosWave")); }
	private static __gshared CurveEdPreset_CosWave mDefaultProperties;
	@property final static CurveEdPreset_CosWave DefaultProperties() { mixin(MGDPC("CurveEdPreset_CosWave", "CurveEdPreset_CosWave UnrealEd.Default__CurveEdPreset_CosWave")); }
}
