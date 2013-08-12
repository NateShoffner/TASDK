module UnrealScript.Engine.DrawFrustumComponent;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawFrustumComponent : PrimitiveComponent
{
public extern(D):
	@property final auto ref
	{
		// WARNING: Property 'Texture' has the same name as a defined type!
		float FrustumEndDist() { return *cast(float*)(cast(size_t)cast(void*)this + 504); }
		float FrustumStartDist() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		float FrustumAspectRatio() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float FrustumAngle() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		UObject.Color FrustumColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 488); }
	}
}