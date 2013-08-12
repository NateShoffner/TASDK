module UnrealScript.TribesGame.TrMapInfo;

import ScriptClasses;
import UnrealScript.TribesGame.TrMapMusicInfo;
import UnrealScript.TribesGame.TrInvalidDeployableVolume;
import UnrealScript.UDKBase.UDKMapInfo;

extern(C++) interface TrMapInfo : UDKMapInfo
{
public extern(D):
	@property final auto ref
	{
		ScriptName m_DefaultPhysicalMaterialName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 104); }
		ScriptClass m_WeatherEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 112); }
		ScriptArray!(TrInvalidDeployableVolume) m_BEInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 68); }
		ScriptArray!(TrInvalidDeployableVolume) m_DSInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 80); }
		ScriptArray!(TrInvalidDeployableVolume) m_NeutralInvalidDeployableVolumes() { return *cast(ScriptArray!(TrInvalidDeployableVolume)*)(cast(size_t)cast(void*)this + 92); }
		TrMapMusicInfo m_MapMusicInfo() { return *cast(TrMapMusicInfo*)(cast(size_t)cast(void*)this + 64); }
	}
}