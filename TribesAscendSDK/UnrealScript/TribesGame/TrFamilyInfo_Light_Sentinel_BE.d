module UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel_BE;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrFamilyInfo_Light_Sentinel;

extern(C++) interface TrFamilyInfo_Light_Sentinel_BE : TrFamilyInfo_Light_Sentinel
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrFamilyInfo_Light_Sentinel_BE")); }
	private static __gshared TrFamilyInfo_Light_Sentinel_BE mDefaultProperties;
	@property final static TrFamilyInfo_Light_Sentinel_BE DefaultProperties() { mixin(MGDPC("TrFamilyInfo_Light_Sentinel_BE", "TrFamilyInfo_Light_Sentinel_BE TribesGame.Default__TrFamilyInfo_Light_Sentinel_BE")); }
}
