.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final MAX_BLUR_HEIGHT:I = 0x640

.field private static final MAX_BLUR_WIDTH:I = 0x384

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

.field private final mLights:Lcom/android/server/lights/LightsManager;

.field private final mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    .line 92
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 231
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 234
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 235
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 278
    new-instance v3, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 555
    new-instance v3, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 571
    new-instance v3, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 1006
    new-instance v3, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1103
    new-instance v3, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1116
    new-instance v3, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1129
    new-instance v3, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1288
    new-instance v3, Lcom/android/server/display/DisplayPowerController$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 297
    new-instance v3, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 298
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 300
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 301
    const-class v3, Lcom/android/server/lights/LightsManager;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    .line 302
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 303
    const-class v3, Landroid/view/WindowManagerPolicy;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 304
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 305
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 307
    new-instance v3, Lcom/android/server/display/LiveDisplayController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/LiveDisplayController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 310
    .local v23, "resources":Landroid/content/res/Resources;
    const v3, 0x10e0056

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v25

    .line 313
    .local v25, "screenBrightnessSettingMinimum":I
    const v3, 0x10e0059

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 316
    const v3, 0x10e005e

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 319
    const v3, 0x10e005f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 321
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_0

    .line 322
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessDim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v3, v4, :cond_1

    .line 327
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 337
    .local v10, "screenBrightnessRangeMinimum":I
    const/16 v3, 0xff

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 339
    const v3, 0x1120023

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 342
    const v3, 0x112004f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 345
    const v3, 0x10e005c

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 347
    .local v13, "lightSensorRate":I
    const v3, 0x10e005a

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v14, v3

    .line 349
    .local v14, "brighteningLightDebounce":J
    const v3, 0x10e005b

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 351
    .local v16, "darkeningLightDebounce":J
    const v3, 0x1120050

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 353
    .local v18, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v3, 0x10e005d

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 356
    .local v19, "ambientLightHorizon":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v3, :cond_2

    .line 357
    const v3, 0x107002e

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v22

    .line 359
    .local v22, "lux":[I
    const v3, 0x107002f

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v24

    .line 361
    .local v24, "screenBrightness":[I
    const v3, 0x10e0062

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 363
    .local v9, "lightSensorWarmUpTimeConfig":I
    const v3, 0x1130001

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    .line 367
    .local v12, "dozeScaleFactor":F
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v8

    .line 368
    .local v8, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v8, :cond_4

    .line 369
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "must be monotic and have exactly one more entry than "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_autoBrightnessLevels (size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "which must be strictly increasing.  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Auto-brightness will be disabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 397
    .end local v8    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v9    # "lightSensorWarmUpTimeConfig":I
    .end local v12    # "dozeScaleFactor":F
    .end local v22    # "lux":[I
    .end local v24    # "screenBrightness":[I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 399
    const v3, 0x1120027

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v3, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 410
    :cond_3
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v21, "intent":Landroid/content/Intent;
    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.keyguard.KeyguardService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v4, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 416
    return-void

    .line 377
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v8    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v9    # "lightSensorWarmUpTimeConfig":I
    .restart local v12    # "dozeScaleFactor":F
    .restart local v22    # "lux":[I
    .restart local v24    # "screenBrightness":[I
    :cond_4
    const/4 v3, 0x0

    aget v3, v24, v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    .line 378
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    if-le v3, v2, :cond_5

    .line 379
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") should be less than or equal to the first value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_autoBrightnessLcdBacklightValues ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_5
    if-ge v2, v10, :cond_6

    .line 385
    move v10, v2

    .line 387
    :cond_6
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

    move-object/from16 v20, v0

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    invoke-direct/range {v3 .. v20}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Landroid/content/Context;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZILcom/android/server/display/LiveDisplayController;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/display/DisplayPowerController;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method private animateScreenBrightness(II)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 893
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 894
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_1
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 907
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_2

    if-eq p1, v1, :cond_2

    .line 916
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 917
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 920
    :cond_2
    if-ne p1, v0, :cond_3

    .line 924
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 942
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 944
    :cond_3
    if-ne p1, v5, :cond_5

    .line 949
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 955
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 961
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 962
    :cond_5
    if-ne p1, v3, :cond_8

    .line 966
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 973
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_7

    .line 974
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 981
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 982
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 985
    :cond_8
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 986
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_9

    .line 989
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    goto/16 :goto_0

    .line 991
    :cond_9
    if-eqz p2, :cond_b

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_a

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_b

    .line 997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 991
    goto :goto_1

    .line 1001
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 4

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 839
    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 840
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 841
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 842
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1255
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 888
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1085
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1086
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1087
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1089
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 1227
    :try_start_0
    array-length v2, p1

    .line 1228
    .local v2, "n":I
    new-array v5, v2, [F

    .line 1229
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 1230
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 1231
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1232
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 1233
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 1231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 1237
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1238
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 1240
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    mul-float/2addr v4, v12

    goto :goto_1

    .line 1244
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1065
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1069
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1071
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1072
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1073
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1082
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1077
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1078
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1079
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1170
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1171
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1202
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 1206
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 1209
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LiveDisplayController;->dump(Ljava/io/PrintWriter;)V

    .line 1210
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1038
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1049
    if-eqz p3, :cond_3

    .line 1050
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1051
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1060
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 1054
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1055
    const-wide/16 v0, 0xfa

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 528
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    invoke-virtual {v2, v4}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/ColorFade;

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 532
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 535
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 537
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v5, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 539
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 540
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 542
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 544
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 549
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    goto :goto_0

    .line 532
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 537
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1251
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1213
    packed-switch p0, :pswitch_data_0

    .line 1221
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1215
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 1217
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 1219
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1126
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1127
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1113
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1114
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1100
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1101
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 512
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 513
    monitor-exit v1

    .line 514
    return-void

    .line 513
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 517
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 518
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 519
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 521
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 523
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1092
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1095
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1096
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1014
    if-eqz p1, :cond_1

    .line 1015
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1019
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1034
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1027
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1028
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1030
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 856
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 857
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, v2, :cond_1

    move v1, v2

    .line 858
    .local v1, "wasOn":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 862
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 871
    :goto_1
    if-eq p1, v2, :cond_2

    move v0, v2

    .line 872
    .local v0, "isOn":Z
    :goto_2
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 873
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 874
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    .line 884
    .end local v0    # "isOn":Z
    .end local v1    # "wasOn":Z
    :cond_0
    :goto_3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v4, :cond_5

    :goto_4
    return v2

    :cond_1
    move v1, v3

    .line 857
    goto :goto_0

    .restart local v1    # "wasOn":Z
    :cond_2
    move v0, v3

    .line 871
    goto :goto_2

    .line 875
    .restart local v0    # "isOn":Z
    :cond_3
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 876
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    .line 877
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 881
    :goto_5
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    goto :goto_3

    .line 879
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_5

    .end local v0    # "isOn":Z
    .end local v1    # "wasOn":Z
    :cond_5
    move v2, v3

    .line 884
    goto :goto_4

    .line 863
    .restart local v1    # "wasOn":Z
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 847
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 850
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 853
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 14

    .prologue
    .line 581
    const/4 v5, 0x0

    .line 582
    .local v5, "mustInitialize":Z
    const/4 v0, 0x0

    .line 584
    .local v0, "autoBrightnessAdjustmentChanged":Z
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 585
    const/4 v11, 0x0

    :try_start_0
    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 586
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v11, :cond_1

    .line 587
    monitor-exit v12

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v11, :cond_5

    .line 591
    new-instance v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v11, v13}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 592
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 593
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 594
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 595
    const/4 v5, 0x1

    .line 606
    :cond_2
    :goto_1
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v11, :cond_7

    const/4 v6, 0x1

    .line 607
    .local v6, "mustNotify":Z
    :goto_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    if-eqz v5, :cond_3

    .line 611
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 617
    :cond_3
    const/4 v3, -0x1

    .line 618
    .local v3, "brightness":I
    const/4 v7, 0x0

    .line 619
    .local v7, "performScreenOffTransition":Z
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    packed-switch v11, :pswitch_data_0

    .line 637
    const/4 v10, 0x2

    .line 640
    .local v10, "state":I
    :cond_4
    :goto_3
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    if-nez v11, :cond_9

    if-nez v10, :cond_9

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 596
    .end local v3    # "brightness":I
    .end local v6    # "mustNotify":Z
    .end local v7    # "performScreenOffTransition":Z
    .end local v10    # "state":I
    :cond_5
    :try_start_1
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v11, :cond_2

    .line 597
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v11, v11, v13

    if-eqz v11, :cond_6

    const/4 v0, 0x1

    .line 599
    :goto_4
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v13, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v11, v13}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 600
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v13, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v11, v13

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 601
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 602
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 603
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_1

    .line 607
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .line 597
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 606
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 621
    .restart local v3    # "brightness":I
    .restart local v6    # "mustNotify":Z
    .restart local v7    # "performScreenOffTransition":Z
    :pswitch_0
    const/4 v10, 0x1

    .line 622
    .restart local v10    # "state":I
    const/4 v7, 0x1

    .line 623
    goto :goto_3

    .line 625
    .end local v10    # "state":I
    :pswitch_1
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v11, :cond_8

    .line 626
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 630
    .restart local v10    # "state":I
    :goto_5
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v11, :cond_4

    .line 631
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto :goto_3

    .line 628
    .end local v10    # "state":I
    :cond_8
    const/4 v10, 0x3

    .restart local v10    # "state":I
    goto :goto_5

    .line 643
    :cond_9
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v11, :cond_28

    .line 644
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v11, :cond_26

    const/4 v11, 0x1

    if-eq v10, v11, :cond_26

    .line 645
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 646
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v11, :cond_a

    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    .line 648
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 649
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 661
    :cond_a
    :goto_6
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_b

    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 663
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 664
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 669
    :cond_b
    :goto_7
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_c

    .line 670
    const/4 v10, 0x1

    .line 676
    :cond_c
    invoke-direct {p0, v10, v7}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 677
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v10

    .line 680
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 681
    const/4 v3, 0x0

    .line 682
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 683
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 687
    :cond_d
    const/4 v11, 0x3

    if-eq v10, v11, :cond_e

    const/4 v11, 0x4

    if-ne v10, v11, :cond_f

    .line 688
    :cond_e
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 689
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mLights:Lcom/android/server/lights/LightsManager;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 693
    :cond_f
    const/4 v1, 0x0

    .line 694
    .local v1, "autoBrightnessEnabled":Z
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v11, :cond_12

    .line 695
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v11, :cond_29

    const/4 v11, 0x3

    if-eq v10, v11, :cond_10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_29

    :cond_10
    const/4 v2, 0x1

    .line 697
    .local v2, "autoBrightnessEnabledInDoze":Z
    :goto_8
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v11, :cond_2a

    const/4 v11, 0x2

    if-eq v10, v11, :cond_11

    if-eqz v2, :cond_2a

    :cond_11
    if-gez v3, :cond_2a

    const/4 v1, 0x1

    .line 700
    :goto_9
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2b

    const/4 v11, 0x1

    :goto_a
    invoke-virtual {v12, v1, v13, v11}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZ)V

    .line 709
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_12
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v11, :cond_13

    if-eqz v3, :cond_13

    .line 711
    const/16 v3, 0xff

    .line 715
    :cond_13
    const/4 v9, 0x0

    .line 716
    .local v9, "slowChange":Z
    if-gez v3, :cond_2d

    .line 717
    if-eqz v1, :cond_14

    .line 718
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v11}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v3

    .line 720
    :cond_14
    if-ltz v3, :cond_2c

    .line 722
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 723
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v11, :cond_15

    if-nez v0, :cond_15

    .line 724
    const/4 v9, 0x1

    .line 726
    :cond_15
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 735
    :goto_b
    if-gez v3, :cond_17

    const/4 v11, 0x3

    if-eq v10, v11, :cond_16

    const/4 v11, 0x4

    if-ne v10, v11, :cond_17

    .line 737
    :cond_16
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 744
    :cond_17
    if-gez v3, :cond_18

    .line 745
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 750
    :cond_18
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1b

    .line 751
    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v11, :cond_19

    .line 752
    add-int/lit8 v11, v3, -0xa

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 755
    :cond_19
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v11, :cond_1a

    .line 756
    const/4 v9, 0x0

    .line 758
    :cond_1a
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 763
    :cond_1b
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v11, :cond_1e

    .line 764
    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v3, v11, :cond_1c

    .line 765
    div-int/lit8 v11, v3, 0x2

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 767
    :cond_1c
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v11, :cond_1d

    .line 768
    const/4 v9, 0x0

    .line 770
    :cond_1d
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 775
    :cond_1e
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v11, :cond_20

    .line 776
    const/4 v11, 0x2

    if-eq v10, v11, :cond_1f

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2f

    .line 777
    :cond_1f
    if-eqz v9, :cond_2e

    const/16 v11, 0x28

    :goto_c
    invoke-direct {p0, v3, v11}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 785
    :cond_20
    :goto_d
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

    invoke-virtual {v11}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay()V

    .line 791
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v11, :cond_30

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_30

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v11

    if-nez v11, :cond_30

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v11

    if-eqz v11, :cond_30

    const/4 v8, 0x1

    .line 795
    .local v8, "ready":Z
    :goto_e
    if-eqz v8, :cond_31

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v11}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v11

    if-nez v11, :cond_31

    const/4 v4, 0x1

    .line 799
    .local v4, "finished":Z
    :goto_f
    if-nez v4, :cond_22

    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v11, :cond_22

    .line 800
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_21

    .line 801
    const-string v11, "DisplayPowerController"

    const-string v12, "Unfinished business..."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_21
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 804
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 808
    :cond_22
    if-eqz v8, :cond_24

    if-eqz v6, :cond_24

    .line 810
    iget-object v12, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 811
    :try_start_2
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v11, :cond_23

    .line 812
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 814
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_23

    .line 815
    const-string v11, "DisplayPowerController"

    const-string v13, "Display ready!"

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_23
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 819
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 823
    :cond_24
    if-eqz v4, :cond_0

    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v11, :cond_0

    .line 824
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_25

    .line 825
    const-string v11, "DisplayPowerController"

    const-string v12, "Finished business..."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_25
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 828
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto/16 :goto_0

    .line 651
    .end local v1    # "autoBrightnessEnabled":Z
    .end local v4    # "finished":Z
    .end local v8    # "ready":Z
    .end local v9    # "slowChange":Z
    :cond_26
    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v11, :cond_27

    iget-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v11, :cond_27

    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_27

    const/4 v11, 0x1

    if-eq v10, v11, :cond_27

    .line 655
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_6

    .line 657
    :cond_27
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 658
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 659
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    goto/16 :goto_6

    .line 667
    :cond_28
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 695
    .restart local v1    # "autoBrightnessEnabled":Z
    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 697
    .restart local v2    # "autoBrightnessEnabledInDoze":Z
    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 700
    :cond_2b
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 728
    .end local v2    # "autoBrightnessEnabledInDoze":Z
    .restart local v9    # "slowChange":Z
    :cond_2c
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_b

    .line 731
    :cond_2d
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_b

    .line 777
    :cond_2e
    const/16 v11, 0xc8

    goto/16 :goto_c

    .line 780
    :cond_2f
    const/4 v11, 0x0

    invoke-direct {p0, v3, v11}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_d

    .line 791
    :cond_30
    const/4 v8, 0x0

    goto/16 :goto_e

    .line 795
    .restart local v8    # "ready":Z
    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 818
    .restart local v4    # "finished":Z
    :catchall_1
    move-exception v11

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v11

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1139
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1140
    const-string v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1150
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1167
    return-void

    .line 1147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 18
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 441
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 442
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 447
    const/4 v9, 0x0

    .line 449
    .local v9, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 451
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 452
    const/4 v9, 0x1

    .line 455
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_8

    .line 456
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 457
    const/4 v9, 0x1

    .line 463
    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    .line 464
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 467
    :cond_3
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_7

    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->isShowing()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p1

    iget v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-nez v1, :cond_6

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_see_through"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$PAC;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v14

    .line 472
    .local v14, "seeThrough":Z
    if-eqz v14, :cond_c

    .line 473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/WindowManager;

    .line 475
    .local v16, "wm":Landroid/view/WindowManager;
    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 476
    .local v10, "display":Landroid/view/Display;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 477
    .local v11, "point":Landroid/graphics/Point;
    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 478
    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 479
    .local v13, "rotation":I
    const/4 v1, 0x1

    if-eq v13, v1, :cond_4

    const/4 v1, 0x3

    if-ne v13, v1, :cond_9

    :cond_4
    const/4 v12, 0x1

    .line 483
    .local v12, "reverse":Z
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v12, :cond_a

    iget v2, v11, Landroid/graphics/Point;->y:I

    :goto_2
    if-eqz v12, :cond_b

    iget v3, v11, Landroid/graphics/Point;->x:I

    :goto_3
    const/4 v4, 0x0

    const/16 v5, 0x55f0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 486
    .local v8, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_6

    .line 487
    move-object v15, v8

    .line 489
    .local v15, "tmpBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x384

    if-le v1, v2, :cond_5

    .line 490
    const/16 v1, 0x384

    const/16 v2, 0x640

    const/4 v3, 0x1

    invoke-static {v8, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 493
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v1, v15}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 502
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "point":Landroid/graphics/Point;
    .end local v12    # "reverse":Z
    .end local v13    # "rotation":I
    .end local v14    # "seeThrough":Z
    .end local v15    # "tmpBmp":Landroid/graphics/Bitmap;
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_6
    :goto_4
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 503
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 506
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v17

    return v1

    .line 458
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 460
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 479
    .restart local v10    # "display":Landroid/view/Display;
    .restart local v11    # "point":Landroid/graphics/Point;
    .restart local v13    # "rotation":I
    .restart local v14    # "seeThrough":Z
    .restart local v16    # "wm":Landroid/view/WindowManager;
    :cond_9
    const/4 v12, 0x0

    goto :goto_1

    .line 483
    .restart local v12    # "reverse":Z
    :cond_a
    iget v2, v11, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_b
    iget v3, v11, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 499
    .end local v10    # "display":Landroid/view/Display;
    .end local v11    # "point":Landroid/graphics/Point;
    .end local v12    # "reverse":Z
    .end local v13    # "rotation":I
    .end local v16    # "wm":Landroid/view/WindowManager;
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 507
    .end local v14    # "seeThrough":Z
    :catchall_0
    move-exception v1

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLiveDisplayController:Lcom/android/server/display/LiveDisplayController;

    invoke-virtual {v0}, Lcom/android/server/display/LiveDisplayController;->systemReady()V

    .line 1260
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 835
    return-void
.end method
