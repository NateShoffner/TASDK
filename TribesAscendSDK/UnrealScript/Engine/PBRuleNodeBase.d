module UnrealScript.Engine.PBRuleNodeBase;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeBase : UObject
{
public extern(D):
	struct PBRuleLink
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			int DrawY() { return *cast(int*)(cast(size_t)&this + 12); }
			ScriptName LinkName() { return *cast(ScriptName*)(cast(size_t)&this + 4); }
			PBRuleNodeBase NextRule() { return *cast(PBRuleNodeBase*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(PBRuleNodeBase.PBRuleLink) NextRules() { return *cast(ScriptArray!(PBRuleNodeBase.PBRuleLink)*)(cast(size_t)cast(void*)this + 60); }
		int DrawHeight() { return *cast(int*)(cast(size_t)cast(void*)this + 100); }
		int DrawWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
		int InDrawY() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
		int RulePosY() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
		int RulePosX() { return *cast(int*)(cast(size_t)cast(void*)this + 84); }
		ScriptString Comment() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
	}
}