module UnrealScript.UTGame.UTGameViewportClient;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.PlayerController;
import UnrealScript.UDKBase.UDKGameViewportClient;
import UnrealScript.Engine.Font;

extern(C++) interface UTGameViewportClient : UDKGameViewportClient
{
public extern(D):
	@property final auto ref
	{
		ScriptString LevelActionMessages() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
		ScriptString ProgressMessageSceneClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
		Font LoadingScreenHintMessageFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 392); }
		Font LoadingScreenGameTypeNameFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 388); }
		Font LoadingScreenMapNameFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 384); }
		ScriptString UTFrontEndString() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
	}
final:
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47783], params.ptr, cast(void*)0);
	}
	void DrawTransition(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47788], params.ptr, cast(void*)0);
	}
	void RenderHeader(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47798], params.ptr, cast(void*)0);
	}
	void UpdateActiveSplitscreenType()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47800], cast(void*)0, cast(void*)0);
	}
	void SetProgressMessage(PlayerController.EProgressMessageType MessageType, ScriptString Message, ScriptString Title, bool bIgnoreFutureNetworkMessages)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController.EProgressMessageType*)params.ptr = MessageType;
		*cast(ScriptString*)&params[4] = Message;
		*cast(ScriptString*)&params[16] = Title;
		*cast(bool*)&params[28] = bIgnoreFutureNetworkMessages;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47801], params.ptr, cast(void*)0);
	}
	void NotifyConnectionError(ScriptString Message, ScriptString Title)
	{
		ubyte params[24];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Message;
		*cast(ScriptString*)&params[12] = Title;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47806], params.ptr, cast(void*)0);
	}
}