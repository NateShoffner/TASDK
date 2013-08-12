module UnrealScript.Engine.UISoundTheme;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerController;

extern(C++) interface UISoundTheme : UObject
{
public extern(D):
	struct SoundEventMapping
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final auto ref
		{
			SoundCue SoundToPlay() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
			ScriptName SoundEventName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(UISoundTheme.SoundEventMapping) SoundEventBindings() { return *cast(ScriptArray!(UISoundTheme.SoundEventMapping)*)(cast(size_t)cast(void*)this + 60); }
	final void ProcessSoundEvent(ScriptName SoundEventName, PlayerController SoundOwner)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = SoundEventName;
		*cast(PlayerController*)&params[8] = SoundOwner;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29228], params.ptr, cast(void*)0);
	}
}