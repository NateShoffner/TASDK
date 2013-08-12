module UnrealScript.TribesGame.TrDroppedPickup;

import ScriptClasses;
import UnrealScript.UTGame.UTDroppedPickup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrDroppedPickup : UTDroppedPickup
{
public extern(D):
	@property final
	{
		auto ref
		{
			TrCollisionProxy m_CollisionProxy() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 552); }
			float m_fMarkerOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 548); }
			float m_fCurrentMarkerTime() { return *cast(float*)(cast(size_t)cast(void*)this + 544); }
			Rotator m_rMarkerRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 532); }
			float m_fMarkerBlinkSpeed() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float m_fMarkerScale() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			float m_fMarkerZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
			float m_PctAmmoToRefill() { return *cast(float*)(cast(size_t)cast(void*)this + 516); }
			SoundCue m_AmmoPickupSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 512); }
		}
		bool m_bHasHitObjective() { return (*cast(uint*)(cast(size_t)cast(void*)this + 556) & 0x1) != 0; }
		bool m_bHasHitObjective(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 556) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 556) &= ~0x1; } return val; }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87023], cast(void*)0, cast(void*)0);
	}
	void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87024], params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87026], cast(void*)0, cast(void*)0);
	}
	void DoBounce(Actor Other, Vector HitNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87028], params.ptr, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87031], params.ptr, cast(void*)0);
	}
	void OnCollisionProxyTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87035], params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87060], params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87062], params.ptr, cast(void*)0);
	}
}