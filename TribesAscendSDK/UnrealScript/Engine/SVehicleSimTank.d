module UnrealScript.Engine.SVehicleSimTank;

import UnrealScript.Engine.SVehicleSimCar;

extern(C++) interface SVehicleSimTank : SVehicleSimCar
{
public extern(D):
	@property final
	{
		auto ref
		{
			float TurnGripScaleRate() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
			float TurnMaxGripReduction() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
			float TurnInPlaceThrottle() { return *cast(float*)(cast(size_t)cast(void*)this + 228); }
			float SteeringLatStiffnessFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 224); }
			float InsideTrackTorqueFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 220); }
			float EngineDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 216); }
			float MaxEngineTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 212); }
			float RightTrackTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 208); }
			float LeftTrackTorque() { return *cast(float*)(cast(size_t)cast(void*)this + 204); }
			float RightTrackVel() { return *cast(float*)(cast(size_t)cast(void*)this + 200); }
			float LeftTrackVel() { return *cast(float*)(cast(size_t)cast(void*)this + 196); }
		}
		bool bTurnInPlaceOnSteer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
		bool bTurnInPlaceOnSteer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	}
}