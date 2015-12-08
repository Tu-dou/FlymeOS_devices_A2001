.class public Lcom/android/server/gesture/EdgeGestureInputFilter;
.super Ljava/lang/Object;
.source "EdgeGestureInputFilter.java"

# interfaces
.implements Landroid/view/IInputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gesture/EdgeGestureInputFilter$2;,
        Lcom/android/server/gesture/EdgeGestureInputFilter$State;,
        Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_INPUT:Z = false

.field private static final SYSTRACE:Z = false

.field private static final TAG:Ljava/lang/String; = "EdgeGestureInputFilter"


# instance fields
.field private mDeviceId:I

.field private final mHandler:Landroid/os/Handler;

.field private mHost:Landroid/view/IInputFilterHost;

.field private final mLock:Ljava/lang/Object;

.field private mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field private mMotionEventQueueCountDebug:I

.field private mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

.field private volatile mPositions:I

.field private volatile mSensitivity:I

.field private mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

.field private mSyntheticDownTime:J

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTracker:Lcom/android/server/gesture/EdgeGestureTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 151
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 167
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 168
    new-array v1, v4, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 169
    new-array v1, v4, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 172
    iput-object p2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 175
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/server/gesture/EdgeGestureTracker;

    const v2, 0x10500aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x10500a8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x10500a9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/gesture/EdgeGestureTracker;-><init>(III)V

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    .line 179
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    new-instance v2, Lcom/android/server/gesture/EdgeGestureInputFilter$1;

    invoke-direct {v2, p0}, Lcom/android/server/gesture/EdgeGestureInputFilter$1;-><init>(Lcom/android/server/gesture/EdgeGestureInputFilter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/gesture/EdgeGestureTracker;->setOnActivationListener(Lcom/android/server/gesture/EdgeGestureTracker$OnActivationListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v5

    .line 188
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v5

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/gesture/EdgeGestureInputFilter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureInputFilter;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/gesture/EdgeGestureInputFilter;Lcom/android/server/gesture/EdgeGestureInputFilter$State;)Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/gesture/EdgeGestureInputFilter;
    .param p1, "x1"    # Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    return-object p1
.end method

.method private cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 409
    invoke-static {p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->obtain(Landroid/view/MotionEvent;I)Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    move-result-object v0

    .line 410
    .local v0, "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-nez v1, :cond_0

    .line 411
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 415
    :goto_0
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 416
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 420
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iput-object v0, v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    goto :goto_0
.end method

.method private clearAndResetStateLocked(ZZ)V
    .locals 6
    .param p1, "force"    # Z
    .param p2, "shift"    # Z

    .prologue
    const-wide/16 v4, -0x1

    .line 375
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v1, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v1, :cond_0

    .line 398
    :goto_0
    return-void

    .line 378
    :cond_0
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$2;->$SwitchMap$com$android$server$gesture$EdgeGestureInputFilter$State:[I

    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    :goto_1
    :pswitch_0
    iget-wide v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    :goto_2
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureTracker;->reset()V

    .line 387
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendDelayedMotionEventsLocked(Z)V

    goto :goto_1

    .line 391
    :pswitch_3
    const-string v0, "EdgeGestureInputFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quit POSTSYNTHESIZE without ACTION_UP from ACTION_DOWN at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iput-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    goto :goto_1

    .line 397
    :cond_1
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    goto :goto_2

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private clearDelayedMotionEventsLocked()V
    .locals 2

    .prologue
    .line 452
    :goto_0
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iget-object v0, v1, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 454
    .local v0, "next":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    invoke-virtual {v1}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->recycle()V

    .line 455
    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    goto :goto_0

    .line 457
    .end local v0    # "next":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 458
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 462
    return-void
.end method

.method private getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 481
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v3

    .line 482
    .local v1, "oldSize":I
    if-ge v1, p1, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 484
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 485
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 488
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 487
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 494
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v3

    .line 495
    .local v1, "oldSize":I
    if-ge v1, p1, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 497
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 498
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 501
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_1
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "deviceId"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 292
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mDeviceId:I

    .line 294
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 296
    invoke-direct {p0, p2, p3}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V

    .line 297
    monitor-exit v1

    .line 301
    :goto_0
    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 299
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 306
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    :try_start_0
    sget-object v4, Lcom/android/server/gesture/EdgeGestureInputFilter$2;->$SwitchMap$com$android$server$gesture$EdgeGestureInputFilter$State:[I

    iget-object v5, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v5}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    monitor-exit v3

    .line 370
    :goto_1
    return-void

    .line 309
    :pswitch_0
    if-nez v0, :cond_2

    .line 310
    iget v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    iget v5, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    iget v6, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSensitivity:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/gesture/EdgeGestureTracker;->start(Landroid/view/MotionEvent;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    .local v1, "hit":Z
    :goto_2
    if-eqz v1, :cond_2

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 316
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DETECTING:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 317
    monitor-exit v3

    goto :goto_1

    .line 369
    .end local v1    # "hit":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    move v1, v2

    .line 310
    goto :goto_2

    .line 320
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 323
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 324
    if-ne v0, v6, :cond_3

    .line 325
    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->move(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    monitor-exit v3

    goto :goto_1

    .line 333
    :cond_3
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->cacheDelayedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 337
    if-eq v0, v6, :cond_0

    .line 338
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 342
    :pswitch_3
    if-ne v0, v6, :cond_4

    .line 343
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearDelayedMotionEventsLocked()V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V

    .line 345
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->POSTSYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    goto :goto_0

    .line 351
    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    goto :goto_0

    .line 355
    :pswitch_4
    iget-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 356
    if-eq v0, v1, :cond_5

    if-ne v0, v7, :cond_6

    .line 357
    :cond_5
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 358
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 360
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    .line 363
    :pswitch_5
    if-eq v0, v1, :cond_7

    if-ne v0, v7, :cond_0

    .line 364
    :cond_7
    invoke-direct {p0}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearDelayedMotionEventsLocked()V

    .line 365
    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LISTEN:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendDelayedMotionEventsLocked(Z)V
    .locals 8
    .param p1, "shift"    # Z

    .prologue
    .line 423
    :goto_0
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    if-eqz v1, :cond_3

    .line 424
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 425
    .local v0, "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->next:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueue:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 430
    iget v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    .line 434
    if-eqz p1, :cond_2

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->cachedTimeMillis:J

    sub-long v6, v2, v4

    .line 436
    .local v6, "offset":J
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 439
    :cond_0
    iget-object v2, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    iget-wide v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V

    .line 440
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 441
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 446
    .end local v6    # "offset":J
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->recycle()V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget v2, v0, Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;->policyFlags:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_1

    .line 448
    .end local v0    # "info":Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueTail:Lcom/android/server/gesture/EdgeGestureInputFilter$MotionEventInfo;

    .line 449
    return-void
.end method

.method private sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    invoke-interface {v0, p1, p2}, Landroid/view/IInputFilterHost;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendMotionEventWithOffsetLocked(Landroid/view/MotionEvent;IJJ)V
    .locals 19
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "downTime"    # J
    .param p5, "offset"    # J

    .prologue
    .line 466
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 467
    .local v7, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->getTempPointerCoordsWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 468
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/gesture/EdgeGestureInputFilter;->getTempPointerPropertiesWithMinSizeLocked(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 469
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v0, v7, :cond_0

    .line 470
    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 471
    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 469
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    add-long v4, v2, p5

    .line 474
    .local v4, "eventTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    move-wide/from16 v2, p3

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 478
    return-void
.end method

.method private sendSynthesizedMotionEventLocked(Landroid/view/MotionEvent;I)V
    .locals 21
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 508
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 509
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v20

    .line 515
    .local v20, "down":Landroid/view/MotionEvent;
    const-string v4, "EdgeGestureInputFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Synthesized event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSyntheticDownTime:J

    .line 521
    .end local v20    # "down":Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string v4, "EdgeGestureInputFilter"

    const-string v5, "Could not synthesize MotionEvent, this will drop all following events!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 525
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dropSequence()Z
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v2, :cond_0

    .line 240
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->DROP:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 241
    const/4 v0, 0x1

    monitor-exit v1

    .line 244
    :goto_0
    return v0

    .line 243
    :cond_0
    monitor-exit v1

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    invoke-virtual {v2}, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPositions=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mMotionEventQueueCountDebug:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " items"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    monitor-exit v1

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public filterInputEvent(Landroid/view/InputEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    and-int/lit16 v3, v3, 0x1002

    const/16 v4, 0x1002

    if-ne v3, v4, :cond_0

    instance-of v3, p1, Landroid/view/MotionEvent;

    if-nez v3, :cond_1

    .line 264
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    .line 289
    :goto_0
    return-void

    .line 271
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 272
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v1

    .line 273
    .local v1, "deviceId":I
    iget v3, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mDeviceId:I

    if-eq v1, v3, :cond_2

    .line 274
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processDeviceSwitch(ILandroid/view/MotionEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_1
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    goto :goto_0

    .line 276
    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_3

    .line 277
    :try_start_2
    iget-object v4, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    const/4 v3, 0x0

    const/4 v5, 0x1

    :try_start_3
    invoke-direct {p0, v3, v5}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 279
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    :cond_3
    :try_start_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->processMotionEvent(Landroid/view/MotionEvent;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 284
    .end local v1    # "deviceId":I
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/view/InputEvent;->recycle()V

    throw v3

    .line 279
    .restart local v1    # "deviceId":I
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public install(Landroid/view/IInputFilterHost;)V
    .locals 3
    .param p1, "host"    # Landroid/view/IInputFilterHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mHost:Landroid/view/IInputFilterHost;

    .line 534
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 535
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/gesture/EdgeGestureInputFilter;->clearAndResetStateLocked(ZZ)V

    .line 536
    monitor-exit v1

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setImeIsActive(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->setImeIsActive(Z)V

    .line 214
    :cond_0
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOverwriteImeIsActive(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->setOverwriteImeIsActive(Z)V

    .line 223
    :cond_0
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uninstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 544
    return-void
.end method

.method public unlockFilter()Z
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    sget-object v2, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->LOCKED:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    if-ne v0, v2, :cond_0

    .line 230
    sget-object v0, Lcom/android/server/gesture/EdgeGestureInputFilter$State;->SYNTHESIZE:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    iput-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mState:Lcom/android/server/gesture/EdgeGestureInputFilter$State;

    .line 231
    const/4 v0, 0x1

    monitor-exit v1

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_0
    monitor-exit v1

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateDisplay(Landroid/view/Display;Landroid/view/DisplayInfo;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mTracker:Lcom/android/server/gesture/EdgeGestureTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/gesture/EdgeGestureTracker;->updateDisplay(Landroid/view/Display;)V

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updatePositions(I)V
    .locals 0
    .param p1, "positions"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mPositions:I

    .line 201
    return-void
.end method

.method public updateSensitivity(I)V
    .locals 0
    .param p1, "sensitivity"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/server/gesture/EdgeGestureInputFilter;->mSensitivity:I

    .line 206
    return-void
.end method
