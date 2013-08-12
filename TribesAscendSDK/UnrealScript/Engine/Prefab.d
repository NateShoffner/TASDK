module UnrealScript.Engine.Prefab;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PrefabSequence;

extern(C++) interface Prefab : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(UObject) PrefabArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 64); }
		ScriptArray!(UObject) RemovedArchetypes() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 76); }
		Texture2D PrefabPreview() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 92); }
		// WARNING: Property 'PrefabSequence' has the same name as a defined type!
		int PrefabVersion() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	}
}