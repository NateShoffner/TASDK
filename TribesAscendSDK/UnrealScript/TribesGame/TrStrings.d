module UnrealScript.TribesGame.TrStrings;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrStrings : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptString KilledBy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4284); }
		ScriptString UsingWeapon() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4296); }
		ScriptString UsingPerks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4308); }
		ScriptString Loading() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		ScriptString Quit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 72); }
		ScriptString Game() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1176); }
		ScriptString QuitGameBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 84); }
		ScriptString BACK() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 96); }
		ScriptString Leave() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
		ScriptString Match() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3180); }
		ScriptString LeaveMatchBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 120); }
		ScriptString Cancel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		ScriptString FailedToJoin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 144); }
		ScriptString OK() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 156); }
		ScriptString EULAAgreement() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4128); }
		ScriptString Accept() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1752); }
		ScriptString Decline() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3864); }
		ScriptString Status() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 192); }
		ScriptString Active() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 204); }
		ScriptString TrClass() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 216); }
		ScriptString NoBoost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 228); }
		ScriptString OneDayleft() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 240); }
		ScriptString DaysLeft() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 252); }
		ScriptString TrHour() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1188); }
		ScriptString Left() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 816); }
		ScriptString Unlocked() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 276); }
		ScriptString Acquired() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 288); }
		ScriptString Complete() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 300); }
		ScriptString VIP() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 804); }
		ScriptString TrServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 744); }
		ScriptString Time() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 792); }
		ScriptString Added() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 636); }
		ScriptString ClanTag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3996); }
		ScriptString Removed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4044); }
		ScriptString FWOTD() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 780); }
		ScriptString Redeemed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 768); }
		ScriptString TrServers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 756); }
		ScriptString Full() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 948); }
		ScriptString PleaseWait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 936); }
		ScriptString Estimated() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1020); }
		ScriptString Wait() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1032); }
		ScriptString OverAnHour() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1128); }
		ScriptString TrMinutes() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1224); }
		ScriptString TrSeconds() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1272); }
		ScriptString BecomeAVIP() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1308); }
		ScriptString BecomeVIP() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 312); }
		ScriptString Visit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1080); }
		ScriptString Store() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1092); }
		ScriptString LostConn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 168); }
		ScriptString LostConnBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 180); }
		ScriptString YouWereKicked() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 732); }
		ScriptString YouWereKickedBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 324); }
		ScriptString Login() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 720); }
		ScriptString Failed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 612); }
		ScriptString Purchasing() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 684); }
		ScriptString Item() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 696); }
		ScriptString Password() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 648); }
		ScriptString Required() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 660); }
		ScriptString ServerPasswordBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 672); }
		ScriptString Friend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 624); }
		ScriptString YouAdded() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 924); }
		ScriptString AsAFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1008); }
		ScriptString Already() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1104); }
		ScriptString Friends() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1116); }
		ScriptString AlreadyFriendsBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 336); }
		ScriptString Transaction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 600); }
		ScriptString NotEnough() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 888); }
		ScriptString Gold() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 900); }
		ScriptString NotEnoughGoldBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 996); }
		ScriptString XP() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 912); }
		ScriptString VIPMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 360); }
		ScriptString BoostMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
		ScriptString EarnMoreXP() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
		ScriptString CodeNotAccepted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 588); }
		ScriptString Failure() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 576); }
		ScriptString NameAlreadyTaken() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 564); }
		ScriptString NameNotAllowed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 876); }
		ScriptString EnterGamerName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 984); }
		ScriptString Enter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1068); }
		ScriptString Welcome() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3756); }
		ScriptString STEAMTransaction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3672); }
		ScriptString STEAMPendingTransaction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3684); }
		ScriptString STEAMCompletingTransaction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3708); }
		ScriptString STEAMDeclinedTransaction() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3696); }
		ScriptString STEAMBadUserData() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3720); }
		ScriptString Warning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4320); }
		ScriptString VideoWarning() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4332); }
		ScriptString Convert() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4356); }
		ScriptString ConvertPortalToGold() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4368); }
		ScriptString Error() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 840); }
		ScriptString BackToGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 864); }
		ScriptString Teammate() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 852); }
		ScriptString Limit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 960); }
		ScriptString Reached() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 972); }
		ScriptString TrClassBanned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 432); }
		ScriptString Mastered() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1056); }
		ScriptString Locked() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1152); }
		ScriptString TrNew() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 828); }
		ScriptString Items() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 708); }
		ScriptString Unlock() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1044); }
		ScriptString Available() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1140); }
		ScriptString Upgrade() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1296); }
		ScriptString Accolades() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1320); }
		ScriptString Earned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1740); }
		ScriptString Page() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1932); }
		ScriptString Category() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2172); }
		ScriptString Enabled() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1368); }
		ScriptString Disabled() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1776); }
		ScriptString Off() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1344); }
		ScriptString SetAudioLevel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1332); }
		ScriptString Badges() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1392); }
		ScriptString Completed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1380); }
		ScriptString NotEarned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1788); }
		ScriptString Buy() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1428); }
		ScriptString BundlePack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1416); }
		ScriptString Bundle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1800); }
		ScriptString Requires() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1404); }
		ScriptString AllItemsOwned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2196); }
		ScriptString BundleRequiresBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
		ScriptString VisitClassPage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3612); }
		ScriptString Owned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1968); }
		ScriptString BundleOwnedBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
		ScriptString Purchase() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1812); }
		ScriptString TrFor() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2184); }
		ScriptString Or() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1464); }
		ScriptString Remove() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1440); }
		ScriptString Map() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1824); }
		ScriptString SelectTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2208); }
		ScriptString AddClanTag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4020); }
		ScriptString Use() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1896); }
		ScriptString Confirm() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2472); }
		ScriptString ChangeClanTagTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3984); }
		ScriptString RenameLoadout() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4104); }
		ScriptString SelectToRenameThisLoadout() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4116); }
		ScriptString Loadout() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1452); }
		ScriptString Primary() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1836); }
		ScriptString Secondary() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1848); }
		ScriptString Belt() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1860); }
		ScriptString Pack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1872); }
		ScriptString Perk() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1884); }
		ScriptString NoInfoFound() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1476); }
		ScriptString AreYouSureYouWantTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2220); }
		ScriptString SpawnLimitReached() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 420); }
		ScriptString Denied() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1488); }
		ScriptString No() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2928); }
		ScriptString Videos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3528); }
		ScriptString Viewers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3588); }
		ScriptString Video() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3516); }
		ScriptString Change() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1512); }
		ScriptString FOV() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1908); }
		ScriptString Sensitivity() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2232); }
		ScriptString JoiningServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1548); }
		ScriptString AttemptingToJoin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1944); }
		ScriptString SetMapName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2256); }
		ScriptString Filter() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2508); }
		ScriptString Set() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1680); }
		ScriptString TrName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2400); }
		ScriptString CustomServerBrowser() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1536); }
		ScriptString FavoriteInitial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2244); }
		ScriptString PasswordInitial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2496); }
		ScriptString Slots() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2676); }
		ScriptString Ping() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2892); }
		ScriptString Type() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3048); }
		ScriptString Rules() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3108); }
		ScriptString Lvl() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1608); }
		ScriptString All() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1524); }
		ScriptString MeAndFriends() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1920); }
		ScriptString CustomReticule() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3744); }
		ScriptString Base() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1980); }
		ScriptString Upgrades() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1584); }
		ScriptString UpgradeDesc() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1596); }
		ScriptString Mastery() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3660); }
		ScriptString Ratings() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1572); }
		ScriptString Damage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1956); }
		ScriptString FireRate() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2520); }
		ScriptString Radius() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2268); }
		ScriptString Range() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3624); }
		ScriptString ClipSize() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2688); }
		ScriptString Ammo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3636); }
		ScriptString AreYouSureYouWantToUnlockAllUpgradesForXX() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3648); }
		ScriptString EnterCode() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1632); }
		ScriptString CodeAccepted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1620); }
		ScriptString Message() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1560); }
		ScriptString Offline() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1992); }
		ScriptString Team() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1644); }
		ScriptString Select() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2016); }
		ScriptString ChooseYourTeam() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2280); }
		ScriptString ToSpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2700); }
		ScriptString Unlocks() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2292); }
		ScriptString Modify() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1500); }
		ScriptString TrClasses() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2040); }
		ScriptString Online() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2004); }
		ScriptString Follower() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2544); }
		ScriptString Followers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2712); }
		ScriptString Shown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1656); }
		ScriptString Hidden() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2028); }
		ScriptString Visible() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1668); }
		ScriptString ChangeBindingBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 444); }
		ScriptString ResetAllToDefault() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4092); }
		ScriptString Streams() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3552); }
		ScriptString Not() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2736); }
		ScriptString CreateParty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3780); }
		ScriptString LearnMore() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4140); }
		ScriptString Your() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3492); }
		ScriptString DealoftheDay() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3504); }
		ScriptString TrHours() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1200); }
		ScriptString TrMinute() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1212); }
		ScriptString TrSecond() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1260); }
		ScriptString Recommended() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2448); }
		ScriptString ClanTags() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4008); }
		ScriptString Party() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3768); }
		ScriptString Queue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2904); }
		ScriptString SearchingForAMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3060); }
		ScriptString SelectToManage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2304); }
		ScriptString CreateNewServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1704); }
		ScriptString CreateNewServerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 456); }
		ScriptString SelectToAddMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1716); }
		ScriptString ChangeNameTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2640); }
		ScriptString InGame() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3960); }
		ScriptString InQueue() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2916); }
		ScriptString LeaderOnly() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3876); }
		ScriptString Add() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2124); }
		ScriptString SendMessage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3792); }
		ScriptString KickFromParty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3804); }
		ScriptString AddedNewFriend() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3948); }
		ScriptString InviteByName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3912); }
		ScriptString InviteSent() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3924); }
		ScriptString InvitationSentTo() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3816); }
		ScriptString InviteFailed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3936); }
		ScriptString CouldNotFindPlayer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3828); }
		ScriptString PendingInvite() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3888); }
		ScriptString Actions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3900); }
		ScriptString FlagsMoveEveryCap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4056); }
		ScriptString Featured() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3564); }
		ScriptString AvailableAtLevel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1728); }
		// WARNING: Property 'Player' has the same name as a defined type!
		ScriptString Overview() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2076); }
		// WARNING: Property 'Level' has the same name as a defined type!
		ScriptString Account() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2556); }
		ScriptString Boosted() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2940); }
		ScriptString TrClassUsage() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3120); }
		ScriptString Most() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3156); }
		ScriptString Played() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2724); }
		ScriptString Stats() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3168); }
		ScriptString Matches() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3192); }
		ScriptString Score() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2808); }
		ScriptString Total() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2772); }
		ScriptString PerHour() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3204); }
		ScriptString Won() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3216); }
		ScriptString Lost() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3240); }
		ScriptString Win() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3228); }
		ScriptString Loss() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3252); }
		ScriptString Combat() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3264); }
		ScriptString Kills() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3276); }
		ScriptString Assists() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3288); }
		ScriptString Midairs() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3300); }
		ScriptString FastestSki() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3312); }
		ScriptString Objective() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3324); }
		ScriptString Flag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3336); }
		ScriptString Defense() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3348); }
		ScriptString Caps() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3360); }
		ScriptString Gens() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3372); }
		ScriptString Destroyed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3396); }
		ScriptString DestroyedAbb() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3408); }
		ScriptString Objs() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3384); }
		ScriptString MostRecentAwards() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3420); }
		ScriptString TrNone() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2064); }
		ScriptString TrSecondsAbb() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1284); }
		ScriptString TrMinutesAbb() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1236); }
		ScriptString TrHoursInitial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2052); }
		ScriptString TrMinutesInitial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1248); }
		ScriptString Join() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2100); }
		ScriptString TeamDeathmatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2328); }
		ScriptString CaptureTheFlag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2568); }
		ScriptString Rabbit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2748); }
		ScriptString Arena() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2952); }
		ScriptString Enable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1356); }
		ScriptString EnableServerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 468); }
		ScriptString ServerExpiredBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 480); }
		ScriptString Disable() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1764); }
		ScriptString DisableServerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 492); }
		ScriptString Kill() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2112); }
		ScriptString KillServerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 504); }
		ScriptString GoToNextMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2340); }
		ScriptString GoToNextMapBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 516); }
		ScriptString Kick() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2580); }
		ScriptString KickPlayerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 528); }
		ScriptString Ban() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2760); }
		ScriptString BanPlayerBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 540); }
		ScriptString AddRentalTimeToThisServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2136); }
		ScriptString Edit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1692); }
		ScriptString Banned() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2160); }
		ScriptString Only() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2364); }
		ScriptString OutOfBounds() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2148); }
		ScriptString ValueMustBeWithin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2352); }
		ScriptString And() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2592); }
		ScriptString Allowed() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2964); }
		ScriptString Free() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2376); }
		ScriptString Credits() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2460); }
		ScriptString Price() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2784); }
		ScriptString Cooldown() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2976); }
		ScriptString Buildup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3072); }
		ScriptString Value() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2796); }
		ScriptString KPH() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4344); }
		ScriptString ToWin() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2988); }
		ScriptString TrLocal() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2388); }
		ScriptString Display() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2820); }
		ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3000); }
		// WARNING: Property 'Admin' has the same name as a defined type!
		ScriptString TrPublic() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3132); }
		ScriptString TrDefault() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2604); }
		ScriptString Max() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3732); }
		ScriptString Players() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2412); }
		ScriptString BaseDestReq() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2844); }
		ScriptString Balanced() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2616); }
		ScriptString Unbalanced() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2832); }
		ScriptString AutoAssign() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3012); }
		ScriptString Warmup() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2856); }
		ScriptString Gametime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3024); }
		ScriptString Overtime() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3096); }
		ScriptString Respawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3144); }
		ScriptString Health() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2868); }
		ScriptString Multiplier() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3036); }
		ScriptString PerTeam() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2424); }
		ScriptString Bundles() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2436); }
		ScriptString Of() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2628); }
		ScriptString Resolution() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2652); }
		ScriptString ResolutionChangeBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 552); }
		ScriptString Revert() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2880); }
		ScriptString Resolutions() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2484); }
		ScriptString Other() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2664); }
		ScriptString ComingSoon() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3600); }
		ScriptString Stream() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3540); }
		ScriptString Spectate() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4272); }
		ScriptString FireToSpectate() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4200); }
		ScriptString FireToRespawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4212); }
		ScriptString OutOfRespawns() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4224); }
		ScriptString OutOfTeamRespawns() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4236); }
		ScriptString TimeUntilRespawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4248); }
		ScriptString Testing() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4068); }
		ScriptString SpawningAs() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4080); }
		ScriptString Pending() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3444); }
		ScriptString TeamScoreBoard() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4260); }
		ScriptString NextMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4152); }
		ScriptString GameType() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4164); }
		ScriptString GameRules() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4176); }
		ScriptString GameTip() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4188); }
		ScriptString LoggingIn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3432); }
		ScriptString PartyInvite() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3840); }
		ScriptString InvitesYouToJoinAParty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3852); }
		ScriptString Block() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3972); }
		ScriptString ChangeClanTag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 4032); }
		ScriptString SelectToGoBack() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3576); }
		ScriptString NewBundleDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3480); }
		ScriptString NewBundleTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3468); }
		ScriptString CustomServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 3456); }
		ScriptString TrSpawn() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 2532); }
		ScriptString Exit() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 1164); }
		ScriptString NotEnoguhGoldBody() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 348); }
		ScriptString HoursLeft() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 264); }
	}
}