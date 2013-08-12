module UnrealScript.GameFramework.SeqAct_GameCrowdSpawner;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.GameFramework.GameCrowd_ListOfAgents;
import UnrealScript.GameFramework.GameCrowdReplicationActor;
import UnrealScript.GameFramework.GameCrowdGroup;
import UnrealScript.Engine.LightComponent;

extern(C++) interface SeqAct_GameCrowdSpawner : SeqAct_Latent
{
public extern(D):
	struct AgentArchetypeInfo
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final auto ref
		{
			ScriptArray!(UObject) GroupMembers() { return *cast(ScriptArray!(UObject)*)(cast(size_t)&this + 16); }
			int CurrSpawned() { return *cast(int*)(cast(size_t)&this + 12); }
			int MaxAllowed() { return *cast(int*)(cast(size_t)&this + 8); }
			float FrequencyModifier() { return *cast(float*)(cast(size_t)&this + 4); }
			UObject AgentArchetype() { return *cast(UObject*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) SpawnLocs() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 256); }
			ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo) AgentArchetypes() { return *cast(ScriptArray!(SeqAct_GameCrowdSpawner.AgentArchetypeInfo)*)(cast(size_t)cast(void*)this + 300); }
			ScriptArray!(GameCrowdAgent) SpawnedList() { return *cast(ScriptArray!(GameCrowdAgent)*)(cast(size_t)cast(void*)this + 312); }
			float AgentWarmupTime() { return *cast(float*)(cast(size_t)cast(void*)this + 332); }
			GameCrowdReplicationActor RepActor() { return *cast(GameCrowdReplicationActor*)(cast(size_t)cast(void*)this + 328); }
			LightComponent.LightingChannelContainer AgentLightingChannel() { return *cast(LightComponent.LightingChannelContainer*)(cast(size_t)cast(void*)this + 324); }
			GameCrowd_ListOfAgents CrowdAgentList() { return *cast(GameCrowd_ListOfAgents*)(cast(size_t)cast(void*)this + 296); }
			float AgentFrequencySum() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float Remainder() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float SplitScreenNumReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			float SpawnRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 280); }
			int SpawnNum() { return *cast(int*)(cast(size_t)cast(void*)this + 276); }
			float SpawnRate() { return *cast(float*)(cast(size_t)cast(void*)this + 272); }
			int LastSpawnLocIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 268); }
			int NextDestinationIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 252); }
		}
		bool bCastShadows() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x200) != 0; }
		bool bCastShadows(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x200; } return val; }
		bool bWarmupPosition() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x100) != 0; }
		bool bWarmupPosition(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x100; } return val; }
		bool bOnlySpawnHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x80) != 0; }
		bool bOnlySpawnHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x80; } return val; }
		bool bForceNavMeshPathing() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x40) != 0; }
		bool bForceNavMeshPathing(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x40; } return val; }
		bool bForceObstacleChecking() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x20) != 0; }
		bool bForceObstacleChecking(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x20; } return val; }
		bool bEnableCrowdLightEnvironment() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x10) != 0; }
		bool bEnableCrowdLightEnvironment(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x10; } return val; }
		bool bHasReducedNumberDueToSplitScreen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x8) != 0; }
		bool bHasReducedNumberDueToSplitScreen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x8; } return val; }
		bool bRespawnDeadAgents() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
		bool bRespawnDeadAgents(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
		bool bCycleSpawnLocs() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bCycleSpawnLocs(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bSpawningActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bSpawningActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
final:
	void SpawnedAgent(GameCrowdAgent NewAgent)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = NewAgent;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32913], params.ptr, cast(void*)0);
	}
	void CacheSpawnerVars()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32915], cast(void*)0, cast(void*)0);
	}
	void KillAgents()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32916], cast(void*)0, cast(void*)0);
	}
	void UpdateSpawning(float DeltaSeconds)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaSeconds;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32917], params.ptr, cast(void*)0);
	}
	GameCrowdAgent SpawnAgent(Actor SpawnLoc)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = SpawnLoc;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32919], params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[4];
	}
	GameCrowdAgent CreateNewAgent(Actor SpawnLoc, GameCrowdAgent AgentTemplate, GameCrowdGroup NewGroup)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = SpawnLoc;
		*cast(GameCrowdAgent*)&params[4] = AgentTemplate;
		*cast(GameCrowdGroup*)&params[8] = NewGroup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32929], params.ptr, cast(void*)0);
		return *cast(GameCrowdAgent*)&params[12];
	}
	int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32937], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}