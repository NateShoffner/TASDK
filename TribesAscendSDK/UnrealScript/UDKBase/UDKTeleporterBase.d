module UnrealScript.UDKBase.UDKTeleporterBase;

import ScriptClasses;
import UnrealScript.Engine.Teleporter;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface UDKTeleporterBase : Teleporter
{
public extern(D):
	@property final auto ref
	{
		SoundCue TeleportingSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 768); }
		ScriptName PortalTextureParameter() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 760); }
		MaterialInstanceConstant PortalMaterialInstance() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 756); }
		MaterialInterface PortalMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 752); }
		Actor PortalViewTarget() { return *cast(Actor*)(cast(size_t)cast(void*)this + 748); }
		int TextureResolutionY() { return *cast(int*)(cast(size_t)cast(void*)this + 744); }
		int TextureResolutionX() { return *cast(int*)(cast(size_t)cast(void*)this + 740); }
		TextureRenderTarget2D TextureTarget() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 736); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35537], cast(void*)0, cast(void*)0);
	}
	void InitializePortalEffect(Actor Dest)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Dest;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35539], params.ptr, cast(void*)0);
	}
	bool Accept(Actor Incoming, Actor Source)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Actor*)params.ptr = Incoming;
		*cast(Actor*)&params[4] = Source;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[35542], params.ptr, cast(void*)0);
		return *cast(bool*)&params[8];
	}
}