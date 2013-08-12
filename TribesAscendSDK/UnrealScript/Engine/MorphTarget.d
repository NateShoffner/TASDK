module UnrealScript.Engine.MorphTarget;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;

extern(C++) interface MorphTarget : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(int) MorphLODModels() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 60); }
		// WARNING: Property 'MaterialInstanceConstant' has the same name as a defined type!
		ScriptName ScalarParameterName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 76); }
		int MaterialSlotId() { return *cast(int*)(cast(size_t)cast(void*)this + 72); }
	}
}