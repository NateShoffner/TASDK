module UnrealScript.UnrealEd.GenericBrowserType_SpeechRecognition;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.GenericBrowserType;

extern(C++) interface GenericBrowserType_SpeechRecognition : GenericBrowserType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.GenericBrowserType_SpeechRecognition")); }
	private static __gshared GenericBrowserType_SpeechRecognition mDefaultProperties;
	@property final static GenericBrowserType_SpeechRecognition DefaultProperties() { mixin(MGDPC("GenericBrowserType_SpeechRecognition", "GenericBrowserType_SpeechRecognition UnrealEd.Default__GenericBrowserType_SpeechRecognition")); }
}
