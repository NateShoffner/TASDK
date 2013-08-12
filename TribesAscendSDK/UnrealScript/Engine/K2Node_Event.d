module UnrealScript.Engine.K2Node_Event;

import ScriptClasses;
import UnrealScript.Engine.K2Node_Code;
import UnrealScript.Core.Function;

extern(C++) interface K2Node_Event : K2Node_Code
{
public extern(D):
	@property final auto ref
	{
		// WARNING: Property 'Function' has the same name as a defined type!
		ScriptString EventName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
	}
}