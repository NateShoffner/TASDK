module UnrealScript.Engine.InGameAdManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface InGameAdManager : UObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClickedBannerDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 64); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*) ClosedAdDelegates() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void*)*)(cast(size_t)cast(void*)this + 76); }
		}
		bool bShouldPauseWhileAdOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bShouldPauseWhileAdOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
final:
	void OnUserClickedBanner()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18230], cast(void*)0, cast(void*)0);
	}
	void OnUserClosedAdvertisement()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18233], cast(void*)0, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18237], cast(void*)0, cast(void*)0);
	}
	void ShowBanner(bool bShowBottomOfScreen)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShowBottomOfScreen;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18238], params.ptr, cast(void*)0);
	}
	void HideBanner()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18240], cast(void*)0, cast(void*)0);
	}
	void ForceCloseAd()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18241], cast(void*)0, cast(void*)0);
	}
	void SetPauseWhileAdOpen(bool bShouldPause)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bShouldPause;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18242], params.ptr, cast(void*)0);
	}
	void AddClickedBannerDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18244], params.ptr, cast(void*)0);
	}
	void ClearClickedBannerDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18246], params.ptr, cast(void*)0);
	}
	void AddClosedAdDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18249], params.ptr, cast(void*)0);
	}
	void ClearClosedAdDelegate(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void* InDelegate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.DelegateProperty'!
void**)params.ptr = InDelegate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[18251], params.ptr, cast(void*)0);
	}
}