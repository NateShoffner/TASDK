module UnrealScript.UnrealEd.LevelExporterT3D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Exporter;

extern(C++) interface LevelExporterT3D : Exporter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.LevelExporterT3D")); }
	private static __gshared LevelExporterT3D mDefaultProperties;
	@property final static LevelExporterT3D DefaultProperties() { mixin(MGDPC("LevelExporterT3D", "LevelExporterT3D UnrealEd.Default__LevelExporterT3D")); }
}
