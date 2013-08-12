module UnrealScript.Engine.RB_BodyInstance;

import ScriptClasses;
import UnrealScript.Engine.RB_BodySetup;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PhysicalMaterial;
import UnrealScript.Engine.PhysicsAssetInstance;

extern(C++) interface RB_BodyInstance : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			float InstanceDampingScale() { return *cast(float*)(cast(size_t)cast(void*)this + 152); }
			float InstanceMassScale() { return *cast(float*)(cast(size_t)cast(void*)this + 148); }
			float ContactReportForceThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 144); }
			PhysicalMaterial PhysMaterialOverride() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 140); }
			float LastEffectPlayedTime() { return *cast(float*)(cast(size_t)cast(void*)this + 136); }
			float CustomGravityFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float OverextensionThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float BoneAngularDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float BoneAngularSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float BoneLinearDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float BoneLinearSpring() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			UObject.Pointer BoneSpringKinActor() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 104); }
			UObject.Pointer BoneSpring() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 100); }
			UObject.Pointer BodyData() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 96); }
			int SceneIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 92); }
			Vector PreviousVelocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
			Vector Velocity() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
			int BodyIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bInstanceAlwaysFullAnimWeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x800) != 0; }
		bool bInstanceAlwaysFullAnimWeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x800; } return val; }
		bool bForceUnfixed() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x400) != 0; }
		bool bForceUnfixed(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x400; } return val; }
		bool bPushBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x200) != 0; }
		bool bPushBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x200; } return val; }
		bool bEnableCollisionResponse() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x100) != 0; }
		bool bEnableCollisionResponse(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x100; } return val; }
		bool bOnlyCollideWithPawns() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x80) != 0; }
		bool bOnlyCollideWithPawns(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x80; } return val; }
		bool bMakeSpringToBaseCollisionComponent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x40) != 0; }
		bool bMakeSpringToBaseCollisionComponent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x40; } return val; }
		bool bUseKinActorForBoneSpring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x20) != 0; }
		bool bUseKinActorForBoneSpring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x20; } return val; }
		bool bTeleportOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x10) != 0; }
		bool bTeleportOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x10; } return val; }
		bool bNotifyOwnerOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x8) != 0; }
		bool bNotifyOwnerOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x8; } return val; }
		bool bDisableOnOverextension() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x4) != 0; }
		bool bDisableOnOverextension(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x4; } return val; }
		bool bEnableBoneSpringAngular() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x2) != 0; }
		bool bEnableBoneSpringAngular(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x2; } return val; }
		bool bEnableBoneSpringLinear() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bEnableBoneSpringLinear(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
final:
	bool IsFixed()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7324], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void SetFixed(bool bNewFixed)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewFixed;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7326], params.ptr, cast(void*)0);
	}
	float GetBodyMass()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19049], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	bool IsValidBodyInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24992], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	PhysicsAssetInstance GetPhysicsAssetInstance()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24994], params.ptr, cast(void*)0);
		return *cast(PhysicsAssetInstance*)params.ptr;
	}
	UObject.Matrix GetUnrealWorldTM()
	{
		ubyte params[64];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24996], params.ptr, cast(void*)0);
		return *cast(UObject.Matrix*)params.ptr;
	}
	Vector GetUnrealWorldVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24998], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetUnrealWorldAngularVelocity()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25000], params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	Vector GetUnrealWorldVelocityAtPoint(Vector Point)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = Point;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25002], params.ptr, cast(void*)0);
		return *cast(Vector*)&params[12];
	}
	void EnableBoneSpring(bool bInEnableLinear, bool bInEnableAngular, UObject.Matrix* InBoneTarget)
	{
		ubyte params[80];
		params[] = 0;
		*cast(bool*)params.ptr = bInEnableLinear;
		*cast(bool*)&params[4] = bInEnableAngular;
		*cast(UObject.Matrix*)&params[16] = *InBoneTarget;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25005], params.ptr, cast(void*)0);
		*InBoneTarget = *cast(UObject.Matrix*)&params[16];
	}
	void SetBoneSpringParams(float InLinearSpring, float InLinearDamping, float InAngularSpring, float InAngularDamping)
	{
		ubyte params[16];
		params[] = 0;
		*cast(float*)params.ptr = InLinearSpring;
		*cast(float*)&params[4] = InLinearDamping;
		*cast(float*)&params[8] = InAngularSpring;
		*cast(float*)&params[12] = InAngularDamping;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25009], params.ptr, cast(void*)0);
	}
	void SetBoneSpringTarget(UObject.Matrix* InBoneTarget, bool bTeleport)
	{
		ubyte params[68];
		params[] = 0;
		*cast(UObject.Matrix*)params.ptr = *InBoneTarget;
		*cast(bool*)&params[64] = bTeleport;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25014], params.ptr, cast(void*)0);
		*InBoneTarget = *cast(UObject.Matrix*)params.ptr;
	}
	void SetBlockRigidBody(bool bNewBlockRigidBody)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bNewBlockRigidBody;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25017], params.ptr, cast(void*)0);
	}
	void SetPhysMaterialOverride(PhysicalMaterial NewPhysMaterial)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PhysicalMaterial*)params.ptr = NewPhysMaterial;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25019], params.ptr, cast(void*)0);
	}
	void EnableCollisionResponse(bool bEnableResponse)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnableResponse;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25021], params.ptr, cast(void*)0);
	}
	void SetContactReportForceThreshold(float Threshold)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = Threshold;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25023], params.ptr, cast(void*)0);
	}
	void UpdateMassProperties(RB_BodySetup Setup)
	{
		ubyte params[4];
		params[] = 0;
		*cast(RB_BodySetup*)params.ptr = Setup;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25025], params.ptr, cast(void*)0);
	}
	void UpdateDampingProperties()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25027], cast(void*)0, cast(void*)0);
	}
}