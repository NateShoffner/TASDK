module UnrealScript.TribesGame.TrDevice_GrenadeXL;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_GrenadeXL : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_GrenadeXL")); }
	private static __gshared TrDevice_GrenadeXL mDefaultProperties;
	@property final static TrDevice_GrenadeXL DefaultProperties() { mixin(MGDPC("TrDevice_GrenadeXL", "TrDevice_GrenadeXL TribesGame.Default__TrDevice_GrenadeXL")); }
}
