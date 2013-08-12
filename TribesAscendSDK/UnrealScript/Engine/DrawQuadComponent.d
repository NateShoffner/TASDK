module UnrealScript.Engine.DrawQuadComponent;

import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.Texture;

extern(C++) interface DrawQuadComponent : PrimitiveComponent
{
public extern(D):
	@property final auto ref
	{
		float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
		float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
		// WARNING: Property 'Texture' has the same name as a defined type!
	}
}