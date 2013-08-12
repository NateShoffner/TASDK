module UnrealScript.TribesGame.TrChatInput;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Interaction;

extern(C++) interface TrChatInput : Interaction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString ChannelStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 136); }
			int TypedStrPos() { return *cast(int*)(cast(size_t)cast(void*)this + 132); }
			ScriptString TypedStr() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
			Texture2D DefaultTexture_White() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 116); }
			Texture2D DefaultTexture_Black() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 112); }
			LocalPlayer ConsoleTargetPlayer() { return *cast(LocalPlayer*)(cast(size_t)cast(void*)this + 108); }
		}
		bool bEnableUI() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x4) != 0; }
		bool bEnableUI(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x4; } return val; }
		bool bCtrl() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x2) != 0; }
		bool bCtrl(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x2; } return val; }
		bool bCaptureKeyInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 148) & 0x1) != 0; }
		bool bCaptureKeyInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 148) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 148) &= ~0x1; } return val; }
	}
final:
	void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74419], cast(void*)0, cast(void*)0);
	}
	void SetInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74420], params.ptr, cast(void*)0);
	}
	void SetCursorPos(int Position)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Position;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74422], params.ptr, cast(void*)0);
	}
	void ConsoleCommand(ScriptString Command)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74424], params.ptr, cast(void*)0);
	}
	void StartTyping(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74426], params.ptr, cast(void*)0);
	}
	void PostRender_Console(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74428], params.ptr, cast(void*)0);
	}
	bool InputKey(int ControllerId, ScriptName Key, UObject.EInputEvent Event, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = Event;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74430], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	bool InputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74437], params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	void FlushPlayerInput()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74441], cast(void*)0, cast(void*)0);
	}
	bool ProcessControlKey(ScriptName Key, UObject.EInputEvent Event)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptName*)params.ptr = Key;
		*cast(UObject.EInputEvent*)&params[8] = Event;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74443], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void AppendInputText(ScriptString Text)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Text;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74447], params.ptr, cast(void*)0);
	}
}