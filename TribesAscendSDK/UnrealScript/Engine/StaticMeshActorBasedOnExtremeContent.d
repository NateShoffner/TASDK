module UnrealScript.Engine.StaticMeshActorBasedOnExtremeContent;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface StaticMeshActorBasedOnExtremeContent : Actor
{
public extern(D):
	struct SMMaterialSetterDatum
	{
		private ubyte __buffer__[8];
	public extern(D):
		@property final auto ref
		{
			MaterialInterface TheMaterial() { return *cast(MaterialInterface*)(cast(size_t)&this + 4); }
			int MaterialIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) ExtremeContent() { return *cast(ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 480); }
		ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum) NonExtremeContent() { return *cast(ScriptArray!(StaticMeshActorBasedOnExtremeContent.SMMaterialSetterDatum)*)(cast(size_t)cast(void*)this + 492); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27212], cast(void*)0, cast(void*)0);
	}
	void SetMaterialBasedOnExtremeContent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27213], cast(void*)0, cast(void*)0);
	}
}