module UnrealScript.UDKBase.UDKHUD;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.GameFramework.MobileHUD;
import UnrealScript.Engine.Font;

extern(C++) interface UDKHUD : MobileHUD
{
public extern(D):
	@property final auto ref
	{
		Font BindTextFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 1424); }
		Font ConsoleIconFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 1420); }
		Canvas.FontRenderInfo TextRenderInfo() { return *cast(Canvas.FontRenderInfo*)(cast(size_t)cast(void*)this + 1380); }
		float PulseMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 1376); }
		float PulseSplit() { return *cast(float*)(cast(size_t)cast(void*)this + 1372); }
		float PulseDuration() { return *cast(float*)(cast(size_t)cast(void*)this + 1368); }
		Font GlowFonts() { return *cast(Font*)(cast(size_t)cast(void*)this + 1360); }
	}
final:
	void DrawGlowText(ScriptString Text, float X, float Y, float MaxHeightInPixels, float PulseTime, bool bRightJustified)
	{
		ubyte params[32];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		*cast(float*)&params[12] = X;
		*cast(float*)&params[16] = Y;
		*cast(float*)&params[20] = MaxHeightInPixels;
		*cast(float*)&params[24] = PulseTime;
		*cast(bool*)&params[28] = bRightJustified;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34916], params.ptr, cast(void*)0);
	}
	void TranslateBindToFont(ScriptString InBindStr, Font* DrawFont, ScriptString* OutBindStr)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = InBindStr;
		*cast(Font*)&params[12] = *DrawFont;
		*cast(ScriptString*)&params[16] = *OutBindStr;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34923], params.ptr, cast(void*)0);
		*DrawFont = *cast(Font*)&params[12];
		*OutBindStr = *cast(ScriptString*)&params[16];
	}
}