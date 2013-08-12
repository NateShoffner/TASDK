module UnrealScript.GameFramework.GameStateObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.GameplayEventsHandler;

extern(C++) interface GameStateObject : GameplayEventsHandler
{
public extern(D):
	enum GameSessionType : ubyte
	{
		GT_SessionInvalid = 0,
		GT_SinglePlayer = 1,
		GT_Coop = 2,
		GT_Multiplayer = 3,
		GT_MAX = 4,
	}
	struct TeamState
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(int) PlayerIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)&this + 4); }
			int TeamIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	struct PlayerState
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float TimeAliveSinceLastDeath() { return *cast(float*)(cast(size_t)&this + 12); }
			float TimeSpawned() { return *cast(float*)(cast(size_t)&this + 8); }
			int CurrentTeamIndex() { return *cast(int*)(cast(size_t)&this + 4); }
			int PlayerIndex() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			int MaxRoundNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
			int RoundNumber() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
			GameStateObject.GameSessionType SessionType() { return *cast(GameStateObject.GameSessionType*)(cast(size_t)cast(void*)this + 112); }
			UObject.Array_Mirror PlayerStates() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 100); }
			UObject.Array_Mirror TeamStates() { return *cast(UObject.Array_Mirror*)(cast(size_t)cast(void*)this + 88); }
		}
		bool bIsRoundStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x2) != 0; }
		bool bIsRoundStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x2; } return val; }
		bool bIsMatchStarted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 116) & 0x1) != 0; }
		bool bIsMatchStarted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 116) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 116) &= ~0x1; } return val; }
	}
final:
	void PreProcessStream()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31955], cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[31956], cast(void*)0, cast(void*)0);
	}
}