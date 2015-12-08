.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioPolicyProxy;,
        Landroid/media/AudioService$AudioServiceInternal;,
        Landroid/media/AudioService$VolumeController;,
        Landroid/media/AudioService$StreamOverride;,
        Landroid/media/AudioService$MyDisplayStatusCallback;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$AudioOrientationEventListener;,
        Landroid/media/AudioService$MediaPlayerInfo;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_MODE:Z

.field private static final DEBUG_SESSIONS:Z

.field protected static final DEBUG_VOL:Z

.field private static DEFAULT_STREAM_VOLUME:[I = null

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static MAX_STREAM_VOLUME:[I = null

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_MICROPHONE_MUTE:I = 0x17

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final PLATFORM_DEFAULT:I = 0x0

.field private static final PLATFORM_TELEVISION:I = 0x2

.field private static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final PREVENT_VOLUME_ADJUSTMENT_IF_SILENT:Z = false

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field private static final STREAM_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VOLUME_SETS_RINGER_MODE_SILENT:Z = true

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field private static final mMediaPlayers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$MediaPlayerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/media/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field mFixedVolumeDevices:I

.field private mForceAnalogCarDock:Z

.field private mForceAnalogDeskDock:Z

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field mFullVolumeDevices:I

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHotwordAudioInputPackage:Ljava/lang/String;

.field private mHotwordInputLock:Ljava/lang/Object;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLinkNotificationWithVolume:Z

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private final mPlatformType:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private mSystemReady:Z

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private final mVoiceCapable:Z

.field private mVolumeControlStream:I

.field private final mVolumeController:Landroid/media/AudioService$VolumeController;

.field private mVolumeKeysControlRingStream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0xa

    const/4 v4, 0x3

    .line 120
    const-string v0, "AudioService.MOD"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_MODE:Z

    .line 123
    const-string v0, "AudioService.AP"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_AP:Z

    .line 126
    const-string v0, "AudioService.VOL"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    .line 129
    const-string v0, "AudioService.SESSIONS"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioService;->DEBUG_SESSIONS:Z

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 276
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 289
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    .line 353
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    .line 369
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v5

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v6

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v7

    const-string v1, "STREAM_MUSIC"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "STREAM_ALARM"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STREAM_NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREAM_BLUETOOTH_SCO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STREAM_SYSTEM_ENFORCED"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STREAM_DTMF"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STREAM_TTS"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 572
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5934
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SILENT"

    aput-object v1, v0, v5

    const-string v1, "VIBRATE"

    aput-object v1, v0, v6

    const-string v1, "NORMAL"

    aput-object v1, v0, v7

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 276
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
    .end array-data

    .line 289
    :array_1
    .array-data 4
        0x4
        0x7
        0x5
        0xb
        0x6
        0x5
        0x7
        0x7
        0xb
        0xb
    .end array-data

    .line 353
    :array_2
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 583
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 196
    new-instance v0, Landroid/media/AudioService$VolumeController;

    invoke-direct {v0}, Landroid/media/AudioService$VolumeController;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    .line 251
    iput v6, p0, Landroid/media/AudioService;->mMode:I

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 273
    const/4 v0, 0x2

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 311
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 323
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 335
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 385
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 408
    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 417
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mHotwordInputLock:Ljava/lang/Object;

    .line 436
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 505
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 509
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 514
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 519
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 523
    iput v6, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 524
    iput v6, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 528
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 531
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 532
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 536
    const v0, 0x22c1400

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 542
    iput v6, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 548
    iput-boolean v12, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 553
    iput v6, p0, Landroid/media/AudioService;->mDockState:I

    .line 566
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 568
    iput-boolean v6, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 1899
    iput v6, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 3159
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5023
    const v0, 0x27f8c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 5723
    iput v6, p0, Landroid/media/AudioService;->mMcc:I

    .line 5727
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 5834
    iput-boolean v6, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5845
    new-instance v0, Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$MyDisplayStatusCallback;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    .line 6381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 6383
    iput v6, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    .line 584
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 585
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 586
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 588
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_voice_capable#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 591
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_4

    .line 592
    iput v12, p0, Landroid/media/AudioService;->mPlatformType:I

    .line 600
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 601
    .local v10, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v10, v12, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 603
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    .line 604
    .local v11, "vibrator":Landroid/os/Vibrator;
    if-nez v11, :cond_6

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 607
    const-string/jumbo v0, "ro.config.vc_call_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 609
    .local v9, "maxVolume":I
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v6

    if-eq v9, v0, :cond_0

    .line 610
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v6

    .line 611
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v6

    .line 613
    :cond_0
    const-string/jumbo v0, "ro.config.media_vol_steps"

    sget-object v1, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 615
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v2

    if-eq v9, v0, :cond_1

    .line 616
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput v9, v0, v2

    .line 617
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v1, v1, 0x4

    aput v1, v0, v2

    .line 620
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_soundEffectVolumeDb#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 623
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 625
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 627
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/AudioService$VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 630
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 632
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_camera_sound_forced#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 634
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 635
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_7

    const/16 v4, 0xb

    :goto_2
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 644
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio_safe_volume_state"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 649
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_safe_media_volume_index#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 652
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_useFixedVolume#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 654
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_useMasterVolume#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 656
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:array@config_masterVolumeRamp#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 659
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_forceAnalogDeskDock#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mForceAnalogDeskDock:Z

    .line 661
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_forceAnalogCarDock#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mForceAnalogCarDock:Z

    .line 665
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "volume_link_notification"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_8

    move v0, v12

    :goto_3
    iput-boolean v0, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    .line 670
    invoke-direct {p0, v6}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 671
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 672
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 674
    invoke-direct {p0}, Landroid/media/AudioService;->initVolumeSteps()V

    .line 675
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 677
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 681
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 682
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 685
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 687
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string v0, "android.media.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v0, "android.media.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 692
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    const-string v0, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string/jumbo v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 699
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_2

    .line 700
    const-string v0, "AudioService"

    const-string/jumbo v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 704
    :cond_2
    const-string/jumbo v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    .line 705
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 708
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "monitoring device rotation, initial="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v0, Landroid/media/AudioService$AudioOrientationEventListener;

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$AudioOrientationEventListener;-><init>(Landroid/media/AudioService;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    .line 711
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioOrientationEventListener;->enable()V

    .line 714
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 717
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 719
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 721
    const-class v0, Landroid/media/AudioManagerInternal;

    new-instance v1, Landroid/media/AudioService$AudioServiceInternal;

    invoke-direct {v1, p0}, Landroid/media/AudioService$AudioServiceInternal;-><init>(Landroid/media/AudioService;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 722
    return-void

    .line 593
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "maxVolume":I
    .end local v10    # "pm":Landroid/os/PowerManager;
    .end local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 595
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 597
    :cond_5
    iput v6, p0, Landroid/media/AudioService;->mPlatformType:I

    goto/16 :goto_0

    .line 604
    .restart local v10    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "vibrator":Landroid/os/Vibrator;
    :cond_6
    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_1

    .restart local v7    # "cameraSoundForced":Z
    .restart local v9    # "maxVolume":I
    :cond_7
    move v4, v6

    .line 635
    goto/16 :goto_2

    :cond_8
    move v0, v6

    .line 665
    goto/16 :goto_3

    .line 311
    :array_0
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data

    .line 323
    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    .line 335
    :array_2
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 115
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$10102(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$10200(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$10400(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/media/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$10502(Landroid/media/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$10600(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10800(Landroid/media/AudioService;IIILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$10900(Landroid/media/AudioService;ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/IBinder;
    .param p5, "x5"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioService;->setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$11008(Landroid/media/AudioService;)I
    .locals 2
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/AudioService;ILandroid/os/IBinder;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2802(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3600(Landroid/media/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$3902(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return p1
.end method

.method static synthetic access$4000()[I
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$4200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    return v0
.end method

.method static synthetic access$4300()[I
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4800(Landroid/media/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$5500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5602(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 115
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5700()Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5900()I
    .locals 1

    .prologue
    .line 115
    sget v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$600(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6400(Landroid/media/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return v0
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mDeviceRotation:I

    return p1
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Landroid/hardware/hdmi/HdmiTvClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    return-object v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7900(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8200(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    return v0
.end method

.method static synthetic access$8802(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    return-void
.end method

.method static synthetic access$9102(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Landroid/media/AudioService;->mVolumeKeysControlRingStream:Z

    return p1
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mForceAnalogDeskDock:Z

    return v0
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-boolean v0, p0, Landroid/media/AudioService;->mForceAnalogCarDock:Z

    return v0
.end method

.method static synthetic access$9400(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$9402(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$9500(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/media/AudioService;)Landroid/media/AudioService$AudioOrientationEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mOrientationListener:Landroid/media/AudioService$AudioOrientationEventListener;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method private adjustStreamVolume(IIILjava/lang/String;I)V
    .locals 20
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1235
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_1

    .line 1372
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    sget-boolean v3, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v3, :cond_2

    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume() stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 1242
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v19, v3, p1

    .line 1248
    .local v19, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v3, v19

    .line 1250
    .local v8, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1252
    .local v6, "device":I
    invoke-virtual {v8, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 1253
    .local v11, "aliasIndex":I
    const/4 v10, 0x1

    .line 1258
    .local v10, "adjustVolume":Z
    and-int/lit16 v3, v6, 0x380

    if-nez v3, :cond_3

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_0

    .line 1263
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v4, v4, v19

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1270
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1271
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    and-int/lit8 p3, p3, -0x21

    .line 1274
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_10

    .line 1276
    or-int/lit8 p3, p3, 0x20

    .line 1281
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    and-int/lit8 v3, v6, 0xc

    if-eqz v3, :cond_f

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v18, v0

    .line 1287
    .local v18, "step":I
    :goto_1
    if-eqz v11, :cond_4

    .line 1288
    move/from16 v11, v18

    .line 1297
    :cond_4
    :goto_2
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    move/from16 v0, v19

    if-ne v0, v3, :cond_8

    .line 1299
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v17

    .line 1301
    .local v17, "ringerMode":I
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_6

    .line 1302
    and-int/lit8 p3, p3, -0x11

    .line 1306
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v11, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)I

    move-result v16

    .line 1307
    .local v16, "result":I
    and-int/lit8 v3, v16, 0x1

    if-eqz v3, :cond_11

    const/4 v10, 0x1

    .line 1309
    :goto_3
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_7

    .line 1310
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x80

    move/from16 p3, v0

    .line 1313
    :cond_7
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0x800

    if-eqz v3, :cond_8

    .line 1314
    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    .line 1318
    .end local v16    # "result":I
    .end local v17    # "ringerMode":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v15

    .line 1320
    .local v15, "oldIndex":I
    if-eqz v10, :cond_e

    if-eqz p2, :cond_e

    .line 1323
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_a

    and-int/lit16 v3, v6, 0x380

    if-eqz v3, :cond_a

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_a

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1327
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v3, :cond_9

    .line 1328
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1330
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1333
    :cond_a
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_12

    add-int v3, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v6}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1335
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1350
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    .line 1351
    .local v14, "newIndex":I
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 1352
    invoke-virtual/range {p0 .. p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v15, v14, v3, v1}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1354
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v3, :cond_e

    .line 1355
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v4

    .line 1357
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mHdmiCecSink:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_d

    if-eq v15, v14, :cond_d

    .line 1360
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1361
    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_13

    const/16 v13, 0x19

    .line 1363
    .local v13, "keyCode":I
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v7, 0x1

    invoke-virtual {v3, v13, v7}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v7, 0x0

    invoke-virtual {v3, v13, v7}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 1365
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1367
    .end local v13    # "keyCode":I
    :cond_d
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1370
    .end local v14    # "newIndex":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1371
    .local v12, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v15, v12, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1271
    .end local v12    # "index":I
    .end local v15    # "oldIndex":I
    .end local v18    # "step":I
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 1285
    :cond_f
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v18

    .restart local v18    # "step":I
    goto/16 :goto_1

    .line 1292
    .end local v18    # "step":I
    :cond_10
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v18

    .restart local v18    # "step":I
    goto/16 :goto_2

    .line 1307
    .restart local v16    # "result":I
    .restart local v17    # "ringerMode":I
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1330
    .end local v16    # "result":I
    .end local v17    # "ringerMode":I
    .restart local v15    # "oldIndex":I
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 1337
    :cond_12
    mul-int v3, p2, v18

    invoke-virtual {v8, v3, v6}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1340
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_4

    .line 1361
    .restart local v14    # "newIndex":I
    :cond_13
    const/16 v13, 0x18

    goto :goto_5

    .line 1365
    .restart local v13    # "keyCode":I
    :catchall_2
    move-exception v3

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v3

    .line 1367
    .end local v13    # "keyCode":I
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;I)V
    .locals 7
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 1200
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1204
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1208
    .local v1, "streamType":I
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v6, v0, v1

    .line 1211
    .local v6, "resolvedStream":I
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    .line 1213
    and-int/lit8 p3, p3, -0x5

    .line 1217
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, v6, p3}, Landroid/media/AudioService$VolumeController;->suppressAdjustment(II)Z

    move-result v0

    const/4 v0, 0x0

    if-eqz v0, :cond_2

    .line 1218
    const/4 p1, 0x0

    .line 1219
    and-int/lit8 p3, p3, -0x5

    .line 1220
    and-int/lit8 p3, p3, -0x11

    .line 1221
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_2

    const-string v0, "AudioService"

    const-string v2, "Volume controller suppressed adjustment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1224
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1225
    return-void

    .line 1206
    .end local v1    # "streamType":I
    .end local v6    # "resolvedStream":I
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v1

    .restart local v1    # "streamType":I
    goto :goto_0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 1741
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1745
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1746
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .prologue
    .line 3657
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3658
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3659
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3661
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3662
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3144
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3146
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3666
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3668
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3669
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3670
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3672
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 4889
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 4890
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 6

    .prologue
    .line 953
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 954
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 955
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 956
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 957
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 961
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 955
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 965
    :cond_2
    monitor-exit v3

    .line 966
    return-void

    .line 965
    .end local v0    # "numStreamTypes":I
    .end local v1    # "streamType":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private checkAllFixedVolumeDevices()V
    .locals 3

    .prologue
    .line 970
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 971
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 972
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 971
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    :cond_0
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 977
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 978
    return-void
.end method

.method private checkForRingerModeChange(III)I
    .locals 5
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 3402
    const/4 v0, 0x1

    .line 3403
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 3405
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_0

    .line 3461
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    :cond_0
    :goto_0
    const-string v2, "AudioService.checkForRingerModeChange"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 3467
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 3469
    return v0

    .line 3407
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 3408
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    .line 3414
    if-gt p3, p1, :cond_0

    mul-int/lit8 v2, p3, 0x2

    if-ge p1, v2, :cond_0

    .line 3415
    const/4 v1, 0x1

    goto :goto_0

    .line 3419
    :cond_1
    if-ge p1, p3, :cond_0

    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_0

    .line 3422
    const/4 v1, 0x0

    goto :goto_0

    .line 3428
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_2

    .line 3429
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3433
    :cond_2
    if-ne p2, v3, :cond_4

    .line 3434
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v3, :cond_3

    .line 3436
    const/4 v1, 0x0

    .line 3444
    :cond_3
    :goto_1
    and-int/lit8 v0, v0, -0x2

    .line 3445
    goto :goto_0

    .line 3441
    :cond_4
    if-ne p2, v4, :cond_3

    .line 3442
    const/4 v1, 0x2

    goto :goto_1

    .line 3447
    :pswitch_2
    if-ne p2, v4, :cond_5

    .line 3451
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_6

    .line 3452
    const/4 v1, 0x1

    .line 3458
    :cond_5
    :goto_2
    and-int/lit8 v0, v0, -0x2

    .line 3459
    goto :goto_0

    .line 3454
    :cond_6
    const/4 v1, 0x2

    goto :goto_2

    .line 3405
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v2, 0x3

    .line 5786
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5787
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, p1

    if-ne v0, v2, :cond_0

    and-int/lit8 v0, p3, 0xc

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v0, :cond_0

    .line 5791
    const/4 v0, 0x0

    monitor-exit v1

    .line 5793
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 5794
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 3052
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3056
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3058
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 5031
    const/4 v7, 0x0

    .line 5032
    .local v7, "delay":I
    if-nez p2, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 5033
    const/4 v9, 0x0

    .line 5034
    .local v9, "devices":I
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5035
    .local v8, "dev":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v8

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_0

    .line 5037
    or-int/2addr v9, v8

    goto :goto_0

    .line 5040
    .end local v8    # "dev":I
    :cond_1
    if-ne v9, p1, :cond_2

    .line 5041
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5048
    const/16 v7, 0x3e8

    .line 5052
    .end local v9    # "devices":I
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5055
    :cond_3
    sget-object v1, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v1

    .line 5056
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 5057
    .local v12, "time":J
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v12

    if-lez v0, :cond_4

    .line 5058
    sget-object v0, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-int v0, v2

    add-int/lit8 v7, v0, 0x1e

    .line 5060
    :cond_4
    monitor-exit v1

    .line 5062
    .end local v12    # "time":J
    :cond_5
    return v7

    .line 5060
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    .prologue
    .line 5201
    const-string v20, "android.media.action.HDMI_AUDIO_PLUG"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5202
    const-string v20, "android.media.extra.AUDIO_PLUG_STATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5203
    const/16 v20, 0x1

    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 5204
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 5205
    .local v18, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 5206
    .local v17, "portGeneration":[I
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v19

    .line 5207
    .local v19, "status":I
    if-nez v19, :cond_8

    .line 5208
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/media/AudioPort;

    .line 5209
    .local v16, "port":Landroid/media/AudioPort;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/AudioDevicePort;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v5, v16

    .line 5210
    check-cast v5, Landroid/media/AudioDevicePort;

    .line 5211
    .local v5, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/16 v21, 0x400

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->type()I

    move-result v20

    const/high16 v21, 0x40000

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 5214
    :cond_1
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    .line 5215
    .local v9, "formats":[I
    array-length v0, v9

    move/from16 v20, v0

    if-lez v20, :cond_5

    .line 5216
    new-instance v7, Ljava/util/ArrayList;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5217
    .local v7, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, v9

    .local v3, "arr$":[I
    array-length v13, v3

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v13, :cond_3

    aget v8, v3, v12

    .line 5219
    .local v8, "format":I
    if-eqz v8, :cond_2

    .line 5220
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5217
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5223
    .end local v8    # "format":I
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v6, v0, [I

    .line 5224
    .local v6, "encodingArray":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    array-length v0, v6

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 5225
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    aput v20, v6, v10

    .line 5224
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5227
    :cond_4
    const-string v20, "android.media.extra.ENCODINGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 5230
    .end local v3    # "arr$":[I
    .end local v6    # "encodingArray":[I
    .end local v7    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    const/4 v15, 0x0

    .line 5231
    .local v15, "maxChannels":I
    invoke-virtual {v5}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v3

    .restart local v3    # "arr$":[I
    array-length v13, v3

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_7

    aget v14, v3, v12

    .line 5232
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v4

    .line 5233
    .local v4, "channelCount":I
    if-le v4, v15, :cond_6

    .line 5234
    move v15, v4

    .line 5231
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 5237
    .end local v4    # "channelCount":I
    .end local v14    # "mask":I
    :cond_7
    const-string v20, "android.media.extra.MAX_CHANNEL_COUNT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5243
    .end local v3    # "arr$":[I
    .end local v5    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "maxChannels":I
    .end local v16    # "port":Landroid/media/AudioPort;
    .end local v17    # "portGeneration":[I
    .end local v18    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v19    # "status":I
    :cond_8
    return-void
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 839
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 840
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 841
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 842
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 981
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 982
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 984
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 985
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 989
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 990
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1876
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1877
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1878
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    .line 1879
    .local v0, "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v0, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1880
    invoke-virtual {v0}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 1881
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1882
    const/4 v2, 0x1

    .line 1885
    .end local v0    # "handler":Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3113
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3114
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 3115
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 3117
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 3118
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 3119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3121
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3132
    :cond_1
    :goto_0
    monitor-exit v7

    .line 3133
    return-void

    .line 3124
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3126
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 3132
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3130
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 2037
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2038
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 2039
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2041
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 2042
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_0

    .line 2044
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2046
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterMaxVolume()I

    move-result v0

    invoke-direct {p0, v8, v7, v0, p2}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 2049
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 2051
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_1
    return-void
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6313
    const-string v2, "\nAudio policies:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6314
    iget-object v3, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 6315
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6316
    .local v1, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-virtual {v1}, Landroid/media/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6318
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6319
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 5941
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5944
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5945
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5946
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5947
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5948
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5949
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 993
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 995
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 998
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 5761
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5762
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 5763
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 5765
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 5766
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 5767
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 5768
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5770
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5771
    .local v10, "index":I
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 5772
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 5773
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5781
    :cond_1
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 5782
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 5783
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private enforceSelfOrSystemUI(Ljava/lang/String;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 5995
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5997
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3535
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 3536
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3538
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 2118
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2121
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 3541
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 3542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3544
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3547
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3548
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3550
    :cond_1
    return-void
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, "delta":I
    if-ne p1, v5, :cond_4

    .line 1633
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return v3

    .line 1637
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1640
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v5, :cond_2

    .line 1641
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 1642
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_2
    :goto_2
    move v3, v0

    .line 1662
    goto :goto_0

    .line 1640
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 1646
    .end local v1    # "i":I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1647
    if-eqz p2, :cond_0

    .line 1650
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1652
    .local v2, "length":I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1655
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 1656
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 1657
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1658
    goto :goto_2

    .line 1655
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamType(I)I
    .locals 6
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x5

    const/high16 v5, -0x80000000

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 3577
    iget v4, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v4, :pswitch_data_0

    .line 3617
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3618
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 3620
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_0
    const/4 p1, 0x6

    .line 3652
    .end local p1    # "suggestedStreamType":I
    :cond_1
    :goto_0
    return p1

    .line 3579
    .restart local p1    # "suggestedStreamType":I
    :pswitch_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3580
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 3583
    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    move p1, v0

    .line 3586
    goto :goto_0

    .line 3588
    :cond_3
    if-ne p1, v5, :cond_9

    .line 3589
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3590
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_4

    .line 3591
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move p1, v1

    .line 3592
    goto :goto_0

    .line 3594
    :cond_5
    iget-boolean v0, p0, Landroid/media/AudioService;->mVolumeKeysControlRingStream:Z

    if-eqz v0, :cond_7

    .line 3595
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_6

    .line 3596
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move p1, v2

    .line 3597
    goto :goto_0

    .line 3599
    :cond_7
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_8

    .line 3600
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC b/c default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move p1, v1

    .line 3601
    goto :goto_0

    .line 3604
    :cond_9
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3605
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_a

    .line 3606
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move p1, v1

    .line 3607
    goto :goto_0

    .line 3611
    :pswitch_1
    if-ne p1, v5, :cond_16

    move p1, v1

    .line 3613
    goto :goto_0

    .line 3623
    :cond_b
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v1, :cond_c

    const-string v1, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move p1, v0

    .line 3624
    goto :goto_0

    .line 3626
    :cond_d
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_e

    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3630
    :cond_e
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_f

    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move p1, v3

    .line 3631
    goto/16 :goto_0

    .line 3632
    :cond_10
    if-ne p1, v5, :cond_16

    .line 3633
    sget v0, Landroid/media/AudioService$StreamOverride;->sDelayMs:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3634
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_11

    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: forcing STREAM_MUSIC"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move p1, v1

    .line 3635
    goto/16 :goto_0

    .line 3637
    :cond_12
    iget-boolean v0, p0, Landroid/media/AudioService;->mVolumeKeysControlRingStream:Z

    if-eqz v0, :cond_14

    .line 3638
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_13

    .line 3639
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move p1, v3

    .line 3640
    goto/16 :goto_0

    .line 3642
    :cond_14
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_15

    .line 3643
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_MUSIC b/c default"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move p1, v1

    .line 3644
    goto/16 :goto_0

    .line 3650
    :cond_16
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_1

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3097
    const/4 v8, 0x0

    .line 3098
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3099
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 3100
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3107
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3109
    return v8

    :cond_1
    move v6, v2

    .line 3107
    goto :goto_0
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1980
    sget-object v0, Landroid/media/AudioService;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 3721
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3722
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3729
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3730
    const/4 v0, 0x2

    .line 3741
    :cond_0
    :goto_0
    return v0

    .line 3731
    :cond_1
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 3732
    const/high16 v0, 0x40000

    goto :goto_0

    .line 3733
    :cond_2
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    .line 3734
    const/high16 v0, 0x80000

    goto :goto_0

    .line 3735
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 3736
    const/high16 v0, 0x200000

    goto :goto_0

    .line 3738
    :cond_4
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method protected static getMaxStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1976
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3061
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3062
    const/4 v0, 0x0

    .line 3063
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3064
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3065
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3066
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 3067
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 3073
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 3064
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 3069
    :cond_1
    if-eqz p2, :cond_2

    .line 3070
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3071
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3073
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 3074
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2312
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2315
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2317
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 5561
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 5563
    .local v9, "config":Landroid/content/res/Configuration;
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_0

    .line 5564
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 5565
    .local v11, "newOrientation":I
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v11, v0, :cond_0

    .line 5566
    iput v11, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 5567
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 5570
    .end local v11    # "newOrientation":I
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5578
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:bool@config_camera_sound_forced#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 5580
    .local v7, "cameraSoundForced":Z
    iget-object v13, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5581
    const/4 v8, 0x0

    .line 5582
    .local v8, "cameraSoundForcedChanged":Z
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5583
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v7, v0, :cond_1

    .line 5584
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 5585
    const/4 v8, 0x1

    .line 5587
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5588
    if-eqz v8, :cond_3

    .line 5589
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5590
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    .line 5591
    .local v12, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v7, :cond_4

    .line 5592
    invoke-virtual {v12}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 5593
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 5601
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 5604
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5613
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5620
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5621
    :try_start_4
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5625
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 5587
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 5620
    :catchall_1
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 5622
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "cameraSoundForcedChanged":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 5623
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "AudioService"

    const-string v1, "Error handling configuration change: "

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5596
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "cameraSoundForced":Z
    .restart local v8    # "cameraSoundForcedChanged":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    :try_start_8
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v12, v0}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 5597
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 5604
    .end local v12    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 6
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5000
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 5001
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v2

    .line 5004
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 5005
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2, v3, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5008
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5009
    monitor-exit v4

    move v1, v2

    .line 5018
    :goto_1
    return v1

    .end local v0    # "isConnected":Z
    :cond_1
    move v0, v3

    .line 5001
    goto :goto_0

    .line 5010
    .restart local v0    # "isConnected":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 5011
    const/4 v1, 0x1

    invoke-static {p2, v1, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5014
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5015
    monitor-exit v4

    move v1, v2

    goto :goto_1

    .line 5017
    :cond_3
    monitor-exit v4

    move v1, v3

    .line 5018
    goto :goto_1

    .line 5017
    .end local v0    # "isConnected":Z
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1890
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1891
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1892
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1893
    const/4 v1, 0x1

    .line 1896
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 4894
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initVolumeSteps()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 809
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_dtmf"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService;->volSteps(I)I

    move-result v1

    aput v1, v0, v4

    .line 813
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_system"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService;->volSteps(I)I

    move-result v1

    aput v1, v0, v5

    .line 817
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_ring"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService;->volSteps(I)I

    move-result v1

    aput v1, v0, v6

    .line 821
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_music"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService;->volSteps(I)I

    move-result v1

    aput v1, v0, v7

    .line 825
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_steps_alarm"

    sget-object v3, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v3, v3, v8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioService;->volSteps(I)I

    move-result v1

    aput v1, v0, v8

    .line 829
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x5

    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "volume_steps_notification"

    sget-object v4, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioService;->volSteps(I)I

    move-result v2

    aput v2, v0, v1

    .line 833
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v1, 0x8

    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "volume_steps_dtmf"

    sget-object v4, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const/16 v5, 0x8

    aget v4, v4, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$PAC;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioService;->volSteps(I)I

    move-result v2

    aput v2, v0, v1

    .line 836
    return-void
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3572
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 6

    .prologue
    .line 3553
    const/4 v0, 0x0

    .line 3555
    .local v0, "IsInCall":Z
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3558
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3559
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3560
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3562
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isPlatformTelevision()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlatformVoice()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 188
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3478
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2523
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 2525
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2526
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2528
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 2531
    const/4 v9, 0x0

    .line 2534
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2603
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2541
    :try_start_0
    iget-object v11, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, #android:xml@audio_assets#t

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2543
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2544
    const/4 v11, 0x0

    const-string/jumbo v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2545
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2547
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2549
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2550
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2551
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2562
    :goto_1
    if-eqz v7, :cond_3

    .line 2563
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2564
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2565
    if-nez v1, :cond_5

    .line 2599
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 2600
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2554
    .restart local v1    # "element":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2555
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2556
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2557
    const/4 v7, 0x1

    .line 2558
    goto :goto_1

    .line 2568
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2569
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2570
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2574
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2575
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2581
    .local v4, "fx":I
    :try_start_3
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2582
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6

    .line 2583
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2584
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2586
    :cond_6
    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2592
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2593
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2599
    if-eqz v9, :cond_0

    .line 2600
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2576
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2577
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2594
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2595
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2599
    if-eqz v9, :cond_0

    .line 2600
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2596
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 2597
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2599
    if-eqz v9, :cond_0

    .line 2600
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 2599
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_7

    .line 2600
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 4819
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 4820
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4822
    invoke-virtual {p0, v7}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 4823
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4827
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4828
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4830
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 4861
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4863
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4865
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4866
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4868
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 4840
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4841
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 4842
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4843
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4846
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4847
    iget-object v7, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v7

    .line 4849
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4850
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4851
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4854
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4855
    return-void

    .line 4842
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4854
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v2, -0x7ffe0000

    .line 4872
    const/4 v0, 0x1

    invoke-static {v2, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4875
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4877
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x7ffe0000

    .line 4881
    const/4 v0, 0x0

    invoke-static {v1, v0, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 4884
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4885
    return-void
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3149
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 3150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3151
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3152
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3154
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3155
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 3157
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive()V
    .locals 11

    .prologue
    const v10, 0xea60

    .line 3316
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3317
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3318
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3320
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_1

    .line 3321
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3328
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3329
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_1

    .line 3332
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3333
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3334
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3335
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3337
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 3341
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_1
    monitor-exit v9

    .line 3342
    return-void

    .line 3341
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x2

    const/4 v8, 0x0

    .line 3349
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3350
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->mcc:I

    .line 3351
    .local v7, "mcc":I
    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v1, v7, :cond_0

    iget v1, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    .line 3352
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:integer@config_safe_media_volume_index#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 3354
    const-string v1, "audio.safemedia.force"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:bool@config_safe_media_volume_enabled#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v8, v0

    .line 3362
    .local v8, "safeMediaVolumeEnabled":Z
    :cond_2
    if-eqz v8, :cond_6

    .line 3363
    const/4 v3, 0x3

    .line 3367
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 3368
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    if-nez v0, :cond_5

    .line 3369
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3370
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3380
    :cond_3
    :goto_0
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 3381
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3389
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_4
    monitor-exit v9

    .line 3390
    return-void

    .line 3373
    .restart local v3    # "persistedState":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_5
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_0

    .line 3389
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3377
    .restart local v7    # "mcc":I
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_6
    const/4 v3, 0x1

    .line 3378
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private onSendBecomingNoisyIntent()V
    .locals 2

    .prologue
    .line 4833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4834
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4835
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 4836
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 4899
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    .line 4900
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSetA2dpSinkConnectionState btDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    :cond_0
    if-nez p1, :cond_1

    .line 4958
    :goto_0
    return-void

    .line 4905
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 4906
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4907
    const-string v7, ""

    .line 4910
    :cond_2
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 4911
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4915
    .local v8, "isConnected":Z
    :goto_1
    if-eqz v8, :cond_8

    if-eq p2, v4, :cond_8

    .line 4916
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4917
    if-nez p2, :cond_3

    .line 4921
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 4927
    :cond_3
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4928
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 4929
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4930
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4933
    :cond_4
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4957
    :cond_5
    :goto_3
    :try_start_2
    monitor-exit v10

    goto :goto_0

    .end local v8    # "isConnected":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    move v8, v1

    .line 4911
    goto :goto_1

    .line 4925
    .restart local v8    # "isConnected":Z
    :cond_7
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4933
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 4934
    :cond_8
    if-nez v8, :cond_5

    if-ne p2, v4, :cond_5

    .line 4935
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4937
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4938
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 4947
    :cond_9
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 4948
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4949
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 4950
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4951
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 4952
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4955
    :cond_a
    monitor-exit v11

    goto :goto_3

    .end local v9    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 4942
    :cond_b
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4943
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4944
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x2

    .line 4962
    sget-boolean v2, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v2, :cond_0

    .line 4963
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4965
    :cond_0
    if-nez p1, :cond_1

    .line 4984
    :goto_0
    return-void

    .line 4968
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4969
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4970
    const-string v0, ""

    .line 4973
    :cond_2
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 4974
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 4978
    .local v1, "isConnected":Z
    :goto_1
    if-eqz v1, :cond_5

    if-eq p2, v5, :cond_5

    .line 4979
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 4983
    :cond_3
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "isConnected":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4974
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 4980
    .restart local v1    # "isConnected":Z
    :cond_5
    if-nez v1, :cond_3

    if-ne p2, v5, :cond_3

    .line 4981
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onSetStreamVolume(IIII)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v1, 0x0

    .line 1443
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-direct {p0, v2, p2, p4, v1}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 1445
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 1448
    :cond_0
    if-nez p2, :cond_3

    .line 1449
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 1455
    .local v0, "newRingerMode":I
    :goto_0
    const-string v2, "AudioService.onSetStreamVolume"

    invoke-direct {p0, v0, v2, v1}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 1457
    .end local v0    # "newRingerMode":I
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1449
    goto :goto_0

    .line 1453
    :cond_3
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 9
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x20000

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5147
    iget-object v8, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v8

    .line 5148
    if-nez p2, :cond_1

    if-eq p1, v3, :cond_0

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    .line 5151
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5153
    :cond_1
    and-int/lit16 v2, p1, -0x6001

    if-eqz v2, :cond_2

    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_a

    const v2, 0x7fffe7ff

    and-int/2addr v2, p1

    if-nez v2, :cond_a

    :cond_2
    move v7, v0

    .line 5156
    .local v7, "isUsb":Z
    :goto_0
    if-ne p2, v0, :cond_3

    move v1, v0

    :cond_3
    if-eqz v7, :cond_b

    move-object v0, p3

    :goto_1
    invoke-direct {p0, v1, p1, v0}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 5157
    if-eqz p2, :cond_c

    .line 5158
    if-eq p1, v3, :cond_4

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_5

    .line 5161
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5163
    :cond_5
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_6

    .line 5164
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5173
    :cond_6
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_8

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    .line 5174
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 5175
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 5176
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8

    .line 5177
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5178
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_7

    .line 5179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5180
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiDisplayStatusCallback:Landroid/media/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 5182
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5194
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    const v0, -0x7ffffff0

    if-eq p1, v0, :cond_9

    .line 5195
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 5197
    :cond_9
    monitor-exit v8

    .line 5198
    return-void

    .end local v7    # "isUsb":Z
    :cond_a
    move v7, v1

    .line 5153
    goto :goto_0

    .line 5156
    .restart local v7    # "isUsb":Z
    :cond_b
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 5182
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5197
    .end local v7    # "isUsb":Z
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 5186
    .restart local v7    # "isUsb":Z
    :cond_c
    :try_start_5
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_8

    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_8

    .line 5187
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_8

    .line 5188
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5189
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 5190
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 10
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3684
    .local v8, "ident":J
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3685
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3686
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3687
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 5988
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 5989
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 5990
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5992
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 11
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    .line 2713
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2716
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2717
    .local v1, "numStreamTypes":I
    const/4 v4, 0x0

    .local v4, "streamType":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2718
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 2720
    .local v3, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v10, :cond_0

    .line 2717
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2724
    :cond_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2725
    const-class v6, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v6

    .line 2727
    :try_start_0
    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_3

    .line 2729
    :cond_2
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2730
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 2731
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v7, 0x1

    # setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v7}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2302(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 2732
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$2200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute_syncVSS(Z)V

    .line 2730
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2735
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2740
    .end local v3    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v5

    invoke-direct {p0, v5, v8}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2742
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllFixedVolumeDevices()V

    .line 2743
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 2745
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2746
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "unsafe_volume_music_active_ms"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v5, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const/4 v7, 0x0

    const v8, 0x44aa200

    invoke-static {v5, v7, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 2749
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v10, :cond_5

    .line 2750
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 2752
    :cond_5
    monitor-exit v6

    .line 2753
    return-void

    .line 2752
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1062
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 1065
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 1066
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 1071
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2

    move v4, v1

    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1079
    return-void

    :cond_0
    move v0, v6

    .line 1062
    goto :goto_0

    .line 1068
    :cond_1
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    :cond_2
    move v4, v6

    .line 1071
    goto :goto_2
.end method

.method private readPersistedSettings()V
    .locals 13

    .prologue
    const/4 v5, 0x2

    const/4 v12, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1082
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1084
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1087
    .local v4, "ringerModeFromSettings":I
    move v3, v4

    .line 1090
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->isValidRingerMode(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1091
    const/4 v3, 0x2

    .line 1093
    :cond_0
    if-ne v3, v6, :cond_1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v8, :cond_1

    .line 1094
    const/4 v3, 0x0

    .line 1096
    :cond_1
    if-eq v3, v4, :cond_2

    .line 1097
    const-string/jumbo v8, "mode_ringer"

    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1099
    :cond_2
    iget-boolean v8, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v8, :cond_3

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1100
    :cond_3
    const/4 v3, 0x2

    .line 1102
    :cond_4
    iget-object v9, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1103
    :try_start_0
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1104
    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_5

    .line 1105
    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 1111
    :cond_5
    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-boolean v8, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_7

    move v8, v5

    :goto_0
    invoke-static {v10, v11, v8}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v8

    iput v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1115
    iget v8, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v10, 0x0

    iget-boolean v11, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v11, :cond_8

    :goto_1
    invoke-static {v8, v10, v5}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1120
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1121
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1123
    const-string/jumbo v5, "volume_keys_control_ring_stream"

    const/4 v8, 0x1

    const/4 v10, -0x2

    invoke-static {v0, v5, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Landroid/media/AudioService;->mVolumeKeysControlRingStream:Z

    .line 1126
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1128
    const-string/jumbo v5, "volume_link_notification"

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_a

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    .line 1131
    const-string/jumbo v5, "mute_streams_affected"

    const/16 v8, 0xe

    invoke-static {v0, v5, v8, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 1138
    const-string/jumbo v5, "volume_master_mute"

    invoke-static {v0, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_b

    move v1, v6

    .line 1140
    .local v1, "masterMute":Z
    :goto_4
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_6

    .line 1141
    const/4 v1, 0x0

    .line 1142
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1144
    :cond_6
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1145
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1147
    const-string/jumbo v5, "microphone_mute"

    invoke-static {v0, v5, v7, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_c

    move v2, v6

    .line 1149
    .local v2, "microphoneMute":Z
    :goto_5
    invoke-static {v2}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1154
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    iget v8, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v5, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1155
    const-string v5, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v8, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-direct {p0, v5, v8}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1158
    invoke-direct {p0, v7}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1159
    invoke-direct {p0, v6}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1162
    iget-object v5, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v5, v0}, Landroid/media/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1163
    return-void

    .end local v1    # "masterMute":Z
    .end local v2    # "microphoneMute":Z
    :cond_7
    move v8, v7

    .line 1111
    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 1115
    goto :goto_1

    :cond_9
    move v5, v7

    .line 1123
    goto :goto_2

    .line 1126
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_a
    move v5, v7

    .line 1128
    goto :goto_3

    :cond_b
    move v1, v7

    .line 1138
    goto :goto_4

    .restart local v1    # "masterMute":Z
    :cond_c
    move v2, v7

    .line 1147
    goto :goto_5
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1166
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 3136
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3137
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 3138
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3139
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 3140
    monitor-exit v1

    .line 3141
    return-void

    .line 3140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 5

    .prologue
    .line 2252
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    .line 2253
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2263
    :cond_0
    :goto_0
    return-void

    .line 2256
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 2257
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2259
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2260
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .prologue
    .line 5976
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5982
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5977
    :pswitch_0
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    goto :goto_0

    .line 5978
    :pswitch_1
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    goto :goto_0

    .line 5979
    :pswitch_2
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    goto :goto_0

    .line 5980
    :pswitch_3
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    goto :goto_0

    .line 5976
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .locals 4

    .prologue
    .line 3345
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    iget v2, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3346
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1666
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1667
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 1670
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1673
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1677
    return-void

    .line 1675
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5067
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 5069
    .local v12, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5070
    const-string/jumbo v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5071
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v12, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5073
    const/4 v9, 0x0

    .line 5075
    .local v9, "connType":I
    const/4 v2, 0x4

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 5076
    const/4 v9, 0x1

    .line 5077
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5078
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5079
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 5080
    invoke-direct {p0}, Landroid/media/AudioService;->startMusicPlayer()V

    .line 5103
    :cond_0
    :goto_0
    iget-object v14, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 5104
    if-eqz v9, :cond_1

    .line 5105
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5106
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    .line 5107
    or-int/2addr v13, v9

    .line 5111
    :goto_1
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v13, v2, :cond_1

    .line 5112
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v2, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5113
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5117
    .end local v13    # "newConn":I
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5119
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5121
    .local v10, "ident":J
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_1
    invoke-static {v12, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5123
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5125
    return-void

    .line 5082
    .end local v10    # "ident":J
    :cond_2
    const/16 v2, 0x8

    move/from16 v0, p1

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x20000

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 5085
    :cond_3
    const/4 v9, 0x2

    .line 5086
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5087
    const-string/jumbo v2, "microphone"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5088
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    .line 5089
    invoke-direct {p0}, Landroid/media/AudioService;->startMusicPlayer()V

    goto :goto_0

    .line 5091
    :cond_4
    const/16 v2, 0x800

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 5092
    const/4 v9, 0x4

    .line 5093
    const-string v2, "android.media.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5094
    :cond_5
    const/16 v2, 0x1000

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 5095
    const/4 v9, 0x4

    .line 5096
    const-string v2, "android.media.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5097
    :cond_6
    const/16 v2, 0x400

    move/from16 v0, p1

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x40000

    move/from16 v0, p1

    if-ne v0, v2, :cond_0

    .line 5099
    :cond_7
    const/16 v9, 0x8

    .line 5100
    move/from16 v0, p2

    invoke-direct {p0, v12, v0}, Landroid/media/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5109
    .restart local v13    # "newConn":I
    :cond_8
    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v13, v2

    goto :goto_1

    .line 5117
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5123
    .restart local v10    # "ident":J
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 2
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 1736
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p2}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 1737
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1738
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1726
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeController;->postMasterVolumeChanged(I)V

    .line 1728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1730
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1732
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 8
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3692
    if-nez p2, :cond_3

    .line 3693
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3697
    :cond_0
    sget-object v3, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v3

    .line 3698
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, p6

    add-long v0, v4, v6

    .line 3699
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3700
    const/16 v2, 0x64

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-ne p1, v2, :cond_2

    .line 3703
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Landroid/media/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 3705
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3706
    .end local v0    # "time":J
    :goto_0
    return-void

    .line 3694
    :cond_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3705
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1680
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1682
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    return-void

    .line 1684
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1690
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1691
    const/4 p1, 0x5

    .line 1694
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1695
    invoke-direct {p0, p4}, Landroid/media/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 1697
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, p1, p4}, Landroid/media/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 1699
    and-int/lit8 v1, p4, 0x20

    if-nez v1, :cond_2

    .line 1700
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1701
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1702
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1703
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1706
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1708
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V
    .locals 8
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "uid"    # I

    .prologue
    const/4 v2, 0x0

    .line 1949
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1952
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p5, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1956
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1957
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1958
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1960
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1962
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 1964
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1965
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1966
    invoke-direct {p0, v7}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    goto :goto_0

    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2
    move v3, v2

    .line 1960
    goto :goto_1
.end method

.method protected static setMaxStreamVolume(II)V
    .locals 1
    .param p0, "streamType"    # I
    .param p1, "maxVol"    # I

    .prologue
    .line 1984
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aput p1, v0, p0

    .line 1985
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;I)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2409
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_0

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setModeInt(mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_0
    const/4 v8, 0x0

    .line 2411
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_1

    .line 2412
    const-string v12, "AudioService"

    const-string/jumbo v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2493
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_0
    return v9

    .line 2416
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_1
    const/4 v5, 0x0

    .line 2417
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2418
    .local v7, "iter":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2419
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2420
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_2

    .line 2421
    move-object v5, v4

    .line 2423
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2424
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2428
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_3
    const/4 v10, 0x0

    .line 2430
    .local v10, "status":I
    :cond_4
    if-nez p1, :cond_a

    .line 2432
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 2433
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2434
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2435
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2436
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_5

    .line 2437
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " using mode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " instead due to death hdlr at pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Landroid/media/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v5}, Landroid/media/AudioService$SetModeDeathHandler;->access$1600(Landroid/media/AudioService$SetModeDeathHandler;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_5
    :goto_1
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_f

    .line 2460
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2461
    if-nez v10, :cond_c

    .line 2462
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_6

    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " mode successfully set to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    :cond_6
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 2476
    :goto_2
    if-eqz v10, :cond_7

    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2478
    :cond_7
    if-nez v10, :cond_9

    .line 2479
    if-eqz p1, :cond_8

    .line 2480
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 2481
    const-string v12, "AudioService"

    const-string/jumbo v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_8
    :goto_3
    const/high16 v12, -0x80000000

    invoke-direct {p0, v12}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v11

    .line 2487
    .local v11, "streamType":I
    invoke-direct {p0, v11}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 2488
    .local v2, "device":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2489
    .local v6, "index":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 2491
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_9
    move v9, v8

    .line 2493
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 2442
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_a
    if-nez v5, :cond_b

    .line 2443
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2447
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_b
    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    :goto_4
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2456
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_1

    .line 2448
    :catch_0
    move-exception v3

    .line 2450
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2465
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v5, :cond_d

    .line 2466
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2467
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2470
    :cond_d
    sget-boolean v12, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v12, :cond_e

    const-string v12, "AudioService"

    const-string v13, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_e
    const/16 p1, 0x0

    goto/16 :goto_2

    .line 2474
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2483
    :cond_10
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_3
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 5628
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 5646
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5648
    :goto_0
    return-void

    .line 5631
    :pswitch_0
    const-string/jumbo v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5635
    :pswitch_1
    const-string/jumbo v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5639
    :pswitch_2
    const-string/jumbo v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5643
    :pswitch_3
    const-string/jumbo v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .locals 7
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    .prologue
    const/4 v5, 0x1

    .line 2138
    iget-boolean v4, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2176
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2142
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad caller: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2144
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidRingerMode(I)V

    .line 2145
    if-ne p1, v5, :cond_4

    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v4, :cond_4

    .line 2146
    const/4 p1, 0x0

    .line 2148
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2150
    .local v0, "identity":J
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2151
    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v3

    .line 2152
    .local v3, "ringerModeInternal":I
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    .line 2153
    .local v2, "ringerModeExternal":I
    if-eqz p3, :cond_7

    .line 2154
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    .line 2155
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_5

    .line 2156
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v2, p1, p2, v3}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;I)I

    move-result p1

    .line 2159
    :cond_5
    if-eq p1, v3, :cond_6

    .line 2160
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2172
    :cond_6
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2163
    :cond_7
    if-eq p1, v3, :cond_8

    .line 2164
    const/4 v4, 0x1

    :try_start_2
    invoke-direct {p0, p1, v4}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2166
    :cond_8
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_9

    .line 2167
    iget-object v4, p0, Landroid/media/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-interface {v4, v3, p1, p2, v2}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;I)I

    move-result p1

    .line 2170
    :cond_9
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setRingerModeExt(I)V

    goto :goto_1

    .line 2172
    .end local v2    # "ringerModeExternal":I
    .end local v3    # "ringerModeInternal":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2174
    :catchall_1
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setRingerModeExt(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 2179
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2180
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    if-ne p1, v0, :cond_0

    monitor-exit v1

    .line 2185
    :goto_0
    return-void

    .line 2181
    :cond_0
    iput p1, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    .line 2182
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2184
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    goto :goto_0

    .line 2182
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setRingerModeInt(IZ)V
    .locals 22
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2190
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerMode:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_1

    const/4 v13, 0x1

    .line 2191
    .local v13, "change":Z
    :goto_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/AudioService;->mRingerMode:I

    .line 2192
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2198
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v17

    .line 2199
    .local v17, "numStreamTypes":I
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/16 v18, 0x1

    .line 2201
    .local v18, "ringerModeMute":Z
    :goto_1
    add-int/lit8 v21, v17, -0x1

    .local v21, "streamType":I
    :goto_2
    if-ltz v21, :cond_a

    .line 2202
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v16

    .line 2203
    .local v16, "isMuted":Z
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v20, 0x1

    .line 2204
    .local v20, "shouldMute":Z
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 2201
    :goto_4
    add-int/lit8 v21, v21, -0x1

    goto :goto_2

    .line 2190
    .end local v13    # "change":Z
    .end local v16    # "isMuted":Z
    .end local v17    # "numStreamTypes":I
    .end local v18    # "ringerModeMute":Z
    .end local v20    # "shouldMute":Z
    .end local v21    # "streamType":I
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 2192
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2199
    .restart local v13    # "change":Z
    .restart local v17    # "numStreamTypes":I
    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 2203
    .restart local v16    # "isMuted":Z
    .restart local v18    # "ringerModeMute":Z
    .restart local v21    # "streamType":I
    :cond_3
    const/16 v20, 0x0

    goto :goto_3

    .line 2205
    .restart local v20    # "shouldMute":Z
    :cond_4
    if-nez v20, :cond_9

    .line 2209
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->isPlatformVoice()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v21

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2211
    const-class v9, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v9

    .line 2212
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 2213
    .local v19, "set":Ljava/util/Set;
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2214
    .local v15, "i":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2215
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 2216
    .local v14, "entry":Ljava/util/Map$Entry;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    .line 2217
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2229
    .end local v14    # "entry":Ljava/util/Map$Entry;
    .end local v15    # "i":Ljava/util/Iterator;
    .end local v19    # "set":Ljava/util/Set;
    :catchall_1
    move-exception v2

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 2221
    .restart local v15    # "i":Ljava/util/Iterator;
    .restart local v19    # "set":Ljava/util/Set;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 2222
    .local v5, "device":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v7, v21

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2229
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2231
    .end local v5    # "device":I
    .end local v15    # "i":Ljava/util/Iterator;
    .end local v19    # "set":Ljava/util/Set;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2232
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v21

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_4

    .line 2235
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2236
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    const/4 v3, 0x1

    shl-int v3, v3, v21

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_4

    .line 2241
    .end local v16    # "isMuted":Z
    .end local v20    # "shouldMute":Z
    :cond_a
    if-eqz p2, :cond_b

    .line 2242
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1f4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2245
    :cond_b
    if-eqz v13, :cond_c

    .line 2247
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v2, v1}, Landroid/media/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2249
    :cond_c
    return-void
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .prologue
    .line 5651
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_0

    .line 5665
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5667
    :goto_0
    return-void

    .line 5653
    :pswitch_0
    const-string/jumbo v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5656
    :pswitch_1
    const-string/jumbo v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5659
    :pswitch_2
    const-string/jumbo v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5662
    :pswitch_3
    const-string/jumbo v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 5651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5738
    iget-object v7, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 5739
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 5741
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 5742
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5743
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 5757
    :cond_0
    :goto_0
    monitor-exit v7

    .line 5758
    return-void

    .line 5744
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 5745
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 5746
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 5747
    invoke-direct {p0}, Landroid/media/AudioService;->saveMusicActiveMs()V

    .line 5748
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 5757
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStreamVolume(IIILjava/lang/String;I)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    const/4 v3, 0x3

    .line 1466
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1537
    :cond_0
    :goto_0
    return-void

    .line 1470
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1471
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, p1

    .line 1472
    .local v8, "streamTypeAlias":I
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v0, v8

    .line 1474
    .local v7, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 1479
    .local v5, "device":I
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_2

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_0

    .line 1484
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v1, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v1, v1, v8

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1489
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 1491
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1493
    invoke-virtual {v7, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1495
    .local v6, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v8}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1497
    if-ne v8, v3, :cond_4

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_4

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_4

    .line 1500
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1501
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_3

    .line 1502
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1504
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1507
    :cond_4
    if-ne v8, v3, :cond_5

    .line 1508
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {p0, v6, p2, v0, p3}, Landroid/media/AudioService;->setSystemAudioVolume(IIII)V

    .line 1511
    :cond_5
    and-int/lit8 p3, p3, -0x21

    .line 1512
    if-ne v8, v3, :cond_6

    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    .line 1514
    or-int/lit8 p3, p3, 0x20

    .line 1517
    if-eqz p2, :cond_6

    .line 1518
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_7

    .line 1520
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 1527
    :cond_6
    :goto_1
    invoke-direct {p0, v8, p2, v5}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1528
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p3}, Landroid/media/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1529
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1535
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1536
    invoke-direct {p0, p1, v6, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1504
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1535
    .end local v6    # "oldIndex":I
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1522
    .restart local v6    # "oldIndex":I
    :cond_7
    :try_start_5
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_1

    .line 1532
    :cond_8
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 1533
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_2
.end method

.method private setStreamVolumeInt(IIIZ)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1762
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 1764
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 1767
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1775
    :cond_1
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .locals 5
    .param p1, "state"    # Z

    .prologue
    .line 1818
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1819
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1820
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1829
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1821
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1822
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1824
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v2, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1826
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1828
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1829
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1826
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1828
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private setSystemAudioVolume(IIII)V
    .locals 7
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .prologue
    .line 1375
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_0

    if-eq p1, p2, :cond_0

    and-int/lit16 v2, p4, 0x100

    if-eqz v2, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1383
    :try_start_0
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v2, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 1393
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1384
    :cond_2
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v0

    .line 1387
    .local v0, "token":J
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    add-int/lit8 v5, p1, 0x5

    div-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, p2, 0x5

    div-int/lit8 v6, v6, 0xa

    invoke-virtual {v2, v5, v6, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1390
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1392
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1393
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1390
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1392
    .end local v0    # "token":J
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private startMusicPlayer()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5129
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "headset_connect_player"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 5132
    .local v1, "launchPlayer":Z
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telecom"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 5133
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-nez v4, :cond_1

    .line 5134
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5135
    .local v2, "playerIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.APP_MUSIC"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5136
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5138
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5143
    .end local v2    # "playerIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 5139
    .restart local v2    # "playerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 5140
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "AudioService"

    const-string v5, "error launching music player"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .prologue
    .line 1006
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 1008
    :goto_0
    return-object v0

    .line 1007
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    goto :goto_0

    .line 1008
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFlagsForSystemAudio(I)I
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1713
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 1714
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1

    .line 1715
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v0, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 1717
    and-int/lit8 p1, p1, -0x2

    .line 1719
    :cond_0
    monitor-exit v1

    .line 1721
    :cond_1
    return p1

    .line 1719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .param p1, "updateVolumes"    # Z

    .prologue
    const/4 v2, 0x2

    const/16 v5, 0x8

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 1014
    iget v0, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v0, :pswitch_data_0

    .line 1024
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1025
    const/4 v7, 0x3

    .line 1028
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iput v3, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 1039
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1041
    iget-boolean v0, p0, Landroid/media/AudioService;->mLinkNotificationWithVolume:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    .line 1042
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v2, v0, v1

    .line 1047
    :goto_2
    if-eqz p1, :cond_0

    .line 1048
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1050
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1051
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1058
    :cond_0
    return-void

    .line 1016
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1017
    const/4 v7, 0x2

    .line 1018
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1020
    .end local v7    # "dtmfStreamAlias":I
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 1021
    const/4 v7, 0x3

    .line 1022
    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1031
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1032
    const/4 v7, 0x0

    .line 1033
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1035
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1

    .line 1044
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v1, v0, v1

    goto :goto_2

    .line 1014
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static volSteps(I)I
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 777
    packed-switch p0, :pswitch_data_0

    .line 791
    .end local p0    # "value":I
    :goto_0
    return p0

    .line 779
    .restart local p0    # "value":I
    :pswitch_0
    const/4 p0, 0x5

    goto :goto_0

    .line 781
    :pswitch_1
    const/4 p0, 0x7

    goto :goto_0

    .line 783
    :pswitch_2
    const/16 p0, 0xf

    goto :goto_0

    .line 785
    :pswitch_3
    const/16 p0, 0x1e

    goto :goto_0

    .line 787
    :pswitch_4
    const/16 p0, 0x2d

    goto :goto_0

    .line 789
    :pswitch_5
    const/16 p0, 0x3c

    goto :goto_0

    .line 777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 850
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 856
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    .line 5537
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public addMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 862
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addMediaPlayerAndUpdateRemoteController: size of existing list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/4 v2, 0x1

    .line 865
    .local v2, "playerToAdd":Z
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 866
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 867
    .local v3, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 868
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 869
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 870
    const-string v4, "AudioService"

    const-string v5, "Player entry present, no need to add"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/4 v2, 0x0

    .line 872
    invoke-virtual {v1, v7}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_0

    .line 874
    :cond_0
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Lost Focus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/media/AudioService$MediaPlayerInfo;->setFocus(Z)V

    goto :goto_0

    .line 879
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v3    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_1
    if-eqz v2, :cond_2

    .line 880
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding Player: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to available player list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    sget-object v4, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/AudioService$MediaPlayerInfo;

    invoke-direct {v5, p0, p1, v7}, Landroid/media/AudioService$MediaPlayerInfo;-><init>(Landroid/media/AudioService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    const-string/jumbo v4, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 887
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 888
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updating focussed RCC change to RCD: CallingPackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->adjustMasterVolume(IILjava/lang/String;I)V

    .line 1399
    return-void
.end method

.method public adjustMasterVolume(IILjava/lang/String;I)V
    .locals 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 1402
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_0

    .line 1417
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1406
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1407
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1408
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1409
    .local v3, "numSteps":I
    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 1410
    .local v1, "direction":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1411
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1412
    add-int/2addr v4, v0

    .line 1410
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1409
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 1416
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v4, p2, p3, p4}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;I)V

    .line 1231
    return-void
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;I)V

    .line 1196
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 4988
    iget-object v7, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4989
    :try_start_0
    iput-boolean p2, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 4990
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4993
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4996
    monitor-exit v7

    .line 4997
    return-void

    .line 4996
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 3709
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3711
    const/4 v1, 0x1

    .line 3717
    :goto_0
    return v1

    .line 3713
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3716
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3078
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3079
    const/4 v2, 0x0

    .line 3080
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3081
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3082
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 3083
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3084
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 3081
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3086
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 3089
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3090
    if-eqz v2, :cond_2

    .line 3091
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3093
    :cond_2
    monitor-exit v5

    .line 3094
    return-void

    .line 3093
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .locals 5

    .prologue
    .line 5799
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5800
    iget-object v1, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v1

    .line 5801
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 5802
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v0, :cond_0

    .line 5803
    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v0, v0, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v2, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v2, v2, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v0, v2, v3, v4}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 5807
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 5809
    :cond_0
    monitor-exit v1

    .line 5810
    return-void

    .line 5809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5953
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5955
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 5956
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 5957
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 5958
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5959
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5960
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5962
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5963
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5964
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5965
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Landroid/media/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5966
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5967
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5968
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5969
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 5970
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 5972
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 5973
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const v4, 0x8000

    const v3, -0x8001

    .line 1904
    if-nez p2, :cond_0

    .line 1940
    :goto_0
    return-void

    .line 1907
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1909
    const-string v1, "AudioService"

    const-string v2, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1913
    const/4 v0, 0x0

    .line 1914
    .local v0, "applyRequired":Z
    if-eqz p1, :cond_5

    .line 1915
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1916
    iget-object v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Landroid/media/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1917
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_2

    .line 1918
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1919
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v1, v4

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 1920
    const/4 v0, 0x1

    .line 1922
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1934
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 1936
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 1937
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1939
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1925
    :cond_5
    :try_start_1
    invoke-direct {p0, p2}, Landroid/media/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v1, :cond_3

    .line 1926
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 1927
    iget v1, p0, Landroid/media/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v1, :cond_3

    .line 1928
    iget v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFullVolumeDevices:I

    .line 1929
    iget v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1930
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1581
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1582
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1583
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1584
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1586
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1591
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1592
    return-void

    .line 1589
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 5545
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getCurrentHotwordInputPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Landroid/media/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 2079
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 2072
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2073
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2074
    .local v0, "device":I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 2067
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 2008
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2009
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2498
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteControlClientNowPlayingEntries()V
    .locals 1

    .prologue
    .line 5494
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteControlClientNowPlayingEntries()V

    .line 5495
    return-void
.end method

.method public getRingerModeExternal()I
    .locals 2

    .prologue
    .line 2105
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2106
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerModeExternal:I

    monitor-exit v1

    return v0

    .line 2107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingerModeInternal()I
    .locals 2

    .prologue
    .line 2112
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2113
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 2114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 5688
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2055
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2056
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 1989
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1990
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 1991
    .local v0, "device":I
    const-class v3, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v3

    .line 1992
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 1995
    .local v1, "index":I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1996
    const/4 v1, 0x0

    .line 1998
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    .line 2000
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2002
    :cond_1
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v3

    return v2

    .line 2003
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 2288
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2289
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public handleHotwordInput(Z)V
    .locals 5
    .param p1, "listening"    # Z

    .prologue
    .line 1558
    iget-object v3, p0, Landroid/media/AudioService;->mHotwordInputLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1559
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.cyanogenmod.intent.action.HOTWORD_INPUT_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v0, "broadcastIntent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    if-lez v2, :cond_1

    .line 1563
    if-eqz p1, :cond_0

    .line 1564
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/media/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    .line 1566
    :cond_0
    const-string v2, "com.cyanogenmod.intent.extra.CURRENT_PACKAGE_NAME"

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1568
    :cond_1
    const-string v4, "com.cyanogenmod.intent.extra.HOTWORD_INPUT_STATE"

    if-eqz p1, :cond_3

    const/4 v2, 0x3

    :goto_0
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1572
    if-nez p1, :cond_2

    .line 1573
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mHotwordAudioInputPackage:Ljava/lang/String;

    .line 1575
    :cond_2
    const-string v2, "android.permission.CAPTURE_AUDIO_HOTWORD"

    invoke-direct {p0, v0, v2}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1576
    monitor-exit v3

    .line 1577
    return-void

    .line 1568
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 1576
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 2816
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2817
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 2818
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 2800
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 5929
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 5930
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 5931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isHdmiSystemAudioSupported()Z
    .locals 1

    .prologue
    .line 5873
    iget-boolean v0, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 1972
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2777
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3531
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3474
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 1834
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 1835
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1837
    :cond_0
    const-class v1, Landroid/media/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 1838
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted_syncVSS()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1839
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isValidRingerMode(I)Z
    .locals 1
    .param p1, "ringerMode"    # I

    .prologue
    .line 2125
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2626
    const/4 v7, 0x3

    .line 2627
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2629
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2630
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2631
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2633
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 2636
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 2634
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 2635
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2636
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 2638
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2639
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 2638
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 2639
    goto :goto_1

    .line 2638
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .prologue
    .line 6032
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6035
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6041
    :cond_0
    :goto_0
    return-void

    .line 6039
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeController;->setVisible(Z)V

    .line 6040
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSystemReady()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioService;->mSystemReady:Z

    .line 731
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 734
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 737
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    .line 738
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    .line 741
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 742
    .local v8, "newIntent":Landroid/content/Intent;
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    invoke-direct {p0, v8}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 746
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 747
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 748
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 752
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "hdmi_control"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 754
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_2

    .line 755
    iget-object v1, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 757
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_1

    .line 758
    iget v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    const v2, -0x2c0003

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 760
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 761
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHdmiCecSink:Z

    .line 762
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x11

    const/16 v6, 0x7530

    move v2, v3

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 773
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioService$StreamOverride;->init(Landroid/content/Context;)V

    .line 774
    return-void

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2607
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    .line 2608
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2612
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2613
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :goto_0
    return-void

    .line 2617
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)Ljava/lang/String;
    .locals 9
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6227
    sget-boolean v5, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v5, :cond_0

    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerAudioPolicy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with config:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6229
    :cond_0
    const/4 v3, 0x0

    .line 6231
    .local v3, "regId":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 6234
    .local v2, "hasPermissionForPolicy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 6235
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t register audio policy for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6257
    :goto_0
    return-object v4

    .line 6240
    :cond_2
    iget-object v5, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v5

    .line 6242
    :try_start_0
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6243
    const-string v6, "AudioService"

    const-string v7, "Cannot re-register policy"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6244
    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 6256
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 6246
    :cond_3
    :try_start_2
    new-instance v0, Landroid/media/AudioService$AudioPolicyProxy;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/AudioService$AudioPolicyProxy;-><init>(Landroid/media/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V

    .line 6247
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 6248
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 6249
    iget-object v6, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6256
    :try_start_3
    monitor-exit v5

    move-object v4, v3

    .line 6257
    goto :goto_0

    .line 6250
    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catch_0
    move-exception v1

    .line 6252
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio policy registration failed, could not link to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binder death"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6254
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5473
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 5469
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2708
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 2709
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 5481
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 5482
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 5486
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 5487
    return-void
.end method

.method public removeMediaPlayerAndUpdateRemoteController(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 922
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMediaPlayerAndUpdateRemoteController: size of existing list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "playerToRemove":Z
    const/4 v0, -0x1

    .line 926
    .local v0, "index":I
    sget-object v5, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 927
    sget-object v5, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 928
    .local v4, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 929
    add-int/lit8 v0, v0, 0x1

    .line 930
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$MediaPlayerInfo;

    .line 931
    .local v2, "player":Landroid/media/AudioService$MediaPlayerInfo;
    invoke-virtual {v2}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 932
    const-string v5, "AudioService"

    const-string v6, "Player entry present remove and update RemoteController"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v3, 0x1

    .line 940
    .end local v2    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_0
    if-eqz v3, :cond_1

    .line 941
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing Player: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from index"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    sget-object v5, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 944
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    const-string/jumbo v5, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    invoke-direct {p0, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 949
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated List size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    return-void

    .line 936
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .restart local v4    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_2
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Player entry for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not present"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 8
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 5514
    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 5515
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5516
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5518
    const-string v0, "AudioService"

    const-string v1, "Invalid permission to (un)lock audio focus"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5519
    const/4 v0, 0x0

    .line 5532
    :goto_0
    return v0

    .line 5523
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 5524
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5525
    const-string v0, "AudioService"

    const-string v2, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 5528
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5532
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/media/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x2

    .line 3759
    if-eq p3, v2, :cond_0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    .line 3760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3762
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3763
    if-ne p3, v2, :cond_2

    .line 3764
    const/16 v1, 0x80

    if-ne p2, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3769
    .local v6, "delay":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    if-ne p3, v2, :cond_3

    const/16 v2, 0x66

    :goto_1
    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3776
    monitor-exit v7

    .line 3777
    return v6

    .line 3767
    .end local v6    # "delay":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "delay":I
    goto :goto_0

    .line 3769
    :cond_3
    const/16 v2, 0x65

    goto :goto_1

    .line 3776
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2805
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2806
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 2807
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2811
    monitor-exit v7

    .line 2812
    return-void

    .line 2807
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 2811
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 5672
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5673
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 5674
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5675
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5677
    monitor-exit v1

    .line 5678
    return-void

    .line 5675
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 5677
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2782
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2796
    :goto_0
    return-void

    .line 2786
    :cond_0
    if-eqz p1, :cond_2

    .line 2787
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2792
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2794
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v2

    move-object v11, v5

    move v12, v3

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2788
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v4, :cond_1

    .line 2789
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 6277
    sget-boolean v7, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v7, :cond_0

    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " policy "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    move v1, v6

    .line 6283
    .local v1, "hasPermissionForPolicy":Z
    :goto_0
    if-nez v1, :cond_2

    .line 6284
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot change audio policy ducking handling for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6309
    :goto_1
    return v4

    .end local v1    # "hasPermissionForPolicy":Z
    :cond_1
    move v1, v5

    .line 6280
    goto :goto_0

    .line 6290
    .restart local v1    # "hasPermissionForPolicy":Z
    :cond_2
    iget-object v7, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v7

    .line 6291
    :try_start_0
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 6292
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6293
    monitor-exit v7

    goto :goto_1

    .line 6308
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 6295
    :cond_3
    :try_start_1
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6296
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-ne p1, v6, :cond_5

    .line 6298
    iget-object v8, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6299
    .local v3, "policy":Landroid/media/AudioService$AudioPolicyProxy;
    iget v8, v3, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v8, v6, :cond_4

    .line 6300
    const-string v5, "AudioService"

    const-string v6, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6301
    monitor-exit v7

    goto :goto_1

    .line 6305
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policy":Landroid/media/AudioService$AudioPolicyProxy;
    :cond_5
    iput p1, v0, Landroid/media/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 6306
    iget-object v8, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    if-ne p1, v6, :cond_6

    move v4, v6

    :goto_2
    invoke-virtual {v8, v4}, Landroid/media/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 6308
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    .line 6309
    goto :goto_1

    :cond_6
    move v4, v5

    .line 6306
    goto :goto_2
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 5849
    const/4 v0, 0x0

    .line 5850
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v2, :cond_2

    .line 5851
    iget-object v3, p0, Landroid/media/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 5852
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_0

    .line 5853
    const-string v2, "AudioService"

    const-string v4, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5854
    monitor-exit v3

    move v1, v0

    .line 5868
    .end local v0    # "device":I
    .local v1, "device":I
    :goto_0
    return v1

    .line 5857
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5858
    :try_start_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v2, p1, :cond_1

    .line 5859
    iput-boolean p1, p0, Landroid/media/AudioService;->mHdmiSystemAudioSupported:Z

    .line 5860
    const/4 v5, 0x5

    if-eqz p1, :cond_3

    const/16 v2, 0xc

    :goto_1
    invoke-static {v5, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 5864
    :cond_1
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 5865
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5866
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move v1, v0

    .line 5868
    .end local v0    # "device":I
    .restart local v1    # "device":I
    goto :goto_0

    .line 5860
    .end local v1    # "device":I
    .restart local v0    # "device":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 5865
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 5866
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public setMasterMute(ZILjava/lang/String;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setMasterMuteInternal(ZILjava/lang/String;Landroid/os/IBinder;I)V

    .line 1945
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;I)V

    .line 2015
    return-void
.end method

.method public setMasterVolume(IILjava/lang/String;I)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 2018
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2027
    if-gez p1, :cond_3

    .line 2028
    const/4 p1, 0x0

    .line 2032
    :cond_2
    :goto_1
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    goto :goto_0

    .line 2029
    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 2030
    const/16 p1, 0x64

    goto :goto_1
.end method

.method public setMicrophoneMute(ZLjava/lang/String;)V
    .locals 7
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2089
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x2c

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    const-string/jumbo v0, "setMicrophoneMute()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2099
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x17

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    .line 2369
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode(mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_0
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2403
    :cond_1
    :goto_0
    return-void

    .line 2374
    :cond_2
    if-ne p1, v5, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2378
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2383
    :cond_3
    if-lt p1, v4, :cond_1

    const/4 v1, 0x4

    if-ge p1, v1, :cond_1

    .line 2387
    const/4 v0, 0x0

    .line 2388
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2389
    if-ne p1, v4, :cond_4

    .line 2390
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 2393
    :cond_4
    if-ne p1, v5, :cond_5

    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2394
    const-string v1, "in_call=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2396
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2397
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2400
    if-eqz v0, :cond_1

    .line 2401
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 2397
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteControlClientBrowsedPlayer()V
    .locals 1

    .prologue
    .line 5498
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->setRemoteControlClientBrowsedPlayer()V

    .line 5499
    return-void
.end method

.method public setRemoteControlClientPlayItem(JI)V
    .locals 1
    .param p1, "uid"    # J
    .param p3, "scope"    # I

    .prologue
    .line 5490
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlayItem(JI)V

    .line 5491
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5503
    const-string/jumbo v0, "set the remote stream volume"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 5504
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 5505
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2129
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2130
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .locals 1
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    .line 2133
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 2134
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2135
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 5682
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5683
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 5684
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2757
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2773
    :goto_0
    return-void

    .line 2761
    :cond_0
    if-eqz p1, :cond_3

    .line 2762
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2763
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2766
    :cond_1
    iput v7, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2771
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2767
    :cond_3
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2768
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStreamMaxVolume(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "maxVol"    # I

    .prologue
    .line 2061
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2062
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setMaxIndex(I)V

    .line 2063
    invoke-static {p1, p2}, Landroid/media/AudioService;->setMaxStreamVolume(II)V

    .line 2064
    return-void
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1793
    iget-boolean v3, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_1

    .line 1815
    :cond_0
    return-void

    .line 1796
    :cond_1
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_2

    .line 1797
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 1799
    :cond_2
    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v3, p1

    .line 1800
    .local v2, "streamAlias":I
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1801
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1802
    invoke-direct {p0, p2}, Landroid/media/AudioService;->setSystemAudioMute(Z)V

    .line 1804
    :cond_3
    const/4 v1, 0x0

    .local v1, "stream":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1805
    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_4

    .line 1806
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 1808
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1810
    const-string v3, "android.media.EXTRA_STREAM_VOLUME_MUTED"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1811
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1804
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1779
    iget-boolean v2, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_1

    .line 1789
    :cond_0
    return-void

    .line 1782
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v2, p1

    .line 1783
    .local v1, "streamAlias":I
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1784
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_3

    .line 1783
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1787
    :cond_3
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    invoke-virtual {v2, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;I)V

    .line 1462
    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2295
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 2302
    :goto_0
    return-void

    .line 2297
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 2300
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .locals 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6001
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Landroid/media/AudioService;->enforceSelfOrSystemUI(Ljava/lang/String;)V

    .line 6004
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6028
    :cond_0
    :goto_0
    return-void

    .line 6009
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeController;->postDismiss()V

    .line 6010
    if-eqz p1, :cond_2

    .line 6013
    :try_start_0
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/media/AudioService$3;

    invoke-direct {v1, p0, p1}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6026
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 6027
    sget-boolean v0, Landroid/media/AudioService;->DEBUG_VOL:Z

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6022
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3745
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3746
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3747
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3753
    monitor-exit v7

    .line 3754
    return-void

    .line 3753
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2267
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 2282
    :goto_0
    :pswitch_0
    return v1

    .line 2269
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2272
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2275
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerModeExternal()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 2269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 2823
    const/16 v1, 0x12

    if-ge p2, v1, :cond_0

    const/4 v0, 0x0

    .line 2826
    .local v0, "scoAudioMode":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2827
    return-void

    .line 2823
    .end local v0    # "scoAudioMode":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .prologue
    .line 2835
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2848
    :cond_0
    :goto_0
    return-void

    .line 2839
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2845
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2846
    .local v2, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 2847
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2831
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 2832
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 5693
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 5694
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 5695
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 5696
    monitor-exit v2

    return-object v0

    .line 5697
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2852
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mSystemReady:Z

    if-nez v1, :cond_1

    .line 2865
    :cond_0
    :goto_0
    return-void

    .line 2856
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 2860
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2861
    .local v2, "ident":J
    if-eqz v0, :cond_2

    .line 2862
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 2864
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 725
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 727
    return-void
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2648
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2649
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 5541
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 5542
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 6261
    sget-boolean v1, Landroid/media/AudioService;->DEBUG_AP:Z

    if-eqz v1, :cond_0

    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6262
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v2

    .line 6263
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$AudioPolicyProxy;

    .line 6264
    .local v0, "app":Landroid/media/AudioService$AudioPolicyProxy;
    if-nez v0, :cond_1

    .line 6265
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    monitor-exit v2

    .line 6274
    :goto_0
    return-void

    .line 6269
    :cond_1
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 6271
    invoke-virtual {v0}, Landroid/media/AudioService$AudioPolicyProxy;->release()V

    .line 6272
    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Landroid/media/AudioService$AudioPolicyProxy;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 5477
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 5478
    return-void
.end method

.method public updateRemoteControllerOnExistingMediaPlayers()V
    .locals 6

    .prologue
    .line 896
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRemoteControllerOnExistingMediaPlayers: size of Player list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    sget-object v3, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 899
    const-string v3, "AudioService"

    const-string v4, "Inform RemoteController regarding existing RCC entry"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    sget-object v3, Landroid/media/AudioService;->mMediaPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 901
    .local v2, "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 902
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$MediaPlayerInfo;

    .line 903
    .local v1, "player":Landroid/media/AudioService$MediaPlayerInfo;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.bluetooth.RCC_CHANGED_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_CALLING_PACKAGE_NAME"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_FOCUS_CHANGED_VALUE"

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->isFocussed()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const-string/jumbo v3, "org.codeaurora.bluetooth.EXTRA_AVAILABLITY_CHANGED_VALUE"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 910
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updating RCC change: CallingPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/AudioService$MediaPlayerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "player":Landroid/media/AudioService$MediaPlayerInfo;
    .end local v2    # "rccIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/AudioService$MediaPlayerInfo;>;"
    :cond_0
    const-string v3, "AudioService"

    const-string v4, "No RCC entry present to update"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_1
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3485
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3492
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit16 v0, v0, 0x126

    .line 3497
    iget v1, p0, Landroid/media/AudioService;->mPlatformType:I

    packed-switch v1, :pswitch_data_0

    .line 3502
    and-int/lit8 v0, v0, -0x9

    .line 3506
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3507
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3508
    and-int/lit16 v0, v0, -0x81

    .line 3512
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3513
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3514
    or-int/lit16 v0, v0, 0x100

    .line 3519
    :goto_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_2

    .line 3520
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3524
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 3525
    const/4 v1, 0x1

    .line 3527
    :goto_3
    return v1

    .line 3499
    :pswitch_0
    const/4 v0, 0x0

    .line 3500
    goto :goto_0

    .line 3510
    :cond_0
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3512
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3516
    :cond_1
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3527
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 3497
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
