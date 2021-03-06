module UnrealScript.TribesGame.TrStormControlPointGate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PlayerController;
import UnrealScript.TribesGame.TrGameObjective;
import UnrealScript.TribesGame.TrStormControlPoint;

extern(C++) interface TrStormControlPointGate : TrGameObjective
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrStormControlPointGate")); }
	private static __gshared TrStormControlPointGate mDefaultProperties;
	@property final static TrStormControlPointGate DefaultProperties() { mixin(MGDPC("TrStormControlPointGate", "TrStormControlPointGate TribesGame.Default__TrStormControlPointGate")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mPostRenderFor;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function TribesGame.TrStormControlPointGate.Touch")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function TribesGame.TrStormControlPointGate.PostRenderFor")); }
		}
	}
	@property final auto ref TrStormControlPoint m_ControlPoint() { mixin(MGPC("TrStormControlPoint", 1360)); }
final:
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
}
