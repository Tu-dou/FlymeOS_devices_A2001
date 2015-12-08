.class public Lcom/android/internal/util/pac/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V
    .locals 10
    .param p0, "keycode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 421
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p0

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 424
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 425
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 426
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 428
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 381
    const-string v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**menu_big**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x1

    .line 389
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNavBarDefault(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isNavBarEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_show"

    invoke-static {p0}, Lcom/android/internal/util/pac/Action;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$PAC;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static isPieEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pie_controls"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$PAC;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/pac/Action;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 58
    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    .line 63
    if-eqz p1, :cond_0

    const-string v19, "**null**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v9, 0x0

    .line 69
    .local v9, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 75
    :goto_1
    const-string v19, "statusbar"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v5

    .line 77
    .local v5, "barService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v5, :cond_0

    .line 81
    const-string v19, "window"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v18

    .line 83
    .local v18, "windowManagerService":Landroid/view/IWindowManager;
    if-eqz v18, :cond_0

    .line 87
    const/4 v8, 0x0

    .line 89
    .local v8, "isKeyguardSecure":Z
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e

    move-result v8

    .line 94
    :goto_2
    const-string v19, "**home**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 95
    const/16 v19, 0x3

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto :goto_0

    .line 71
    .end local v5    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v8    # "isKeyguardSecure":Z
    .end local v18    # "windowManagerService":Landroid/view/IWindowManager;
    :catch_0
    move-exception v6

    .line 72
    .local v6, "e":Landroid/os/RemoteException;
    const-string v19, "Action"

    const-string v20, "Error getting window manager service"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v5    # "barService":Lcom/android/internal/statusbar/IStatusBarService;
    .restart local v8    # "isKeyguardSecure":Z
    .restart local v18    # "windowManagerService":Landroid/view/IWindowManager;
    :cond_2
    const-string v19, "**back**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 98
    const/16 v19, 0x4

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto :goto_0

    .line 100
    :cond_3
    const-string v19, "**search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 101
    const/16 v19, 0x54

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v19, "**kill**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 104
    if-nez v9, :cond_0

    .line 106
    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleKillApp()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 107
    :catch_1
    move-exception v19

    goto/16 :goto_0

    .line 110
    :cond_5
    const-string v19, "**notifications**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 111
    if-eqz v9, :cond_6

    if-nez v8, :cond_0

    .line 115
    :cond_6
    :try_start_3
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 116
    :catch_2
    move-exception v19

    goto/16 :goto_0

    .line 119
    :cond_7
    const-string v19, "**settings_panel**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 120
    if-eqz v9, :cond_8

    if-nez v8, :cond_0

    .line 124
    :cond_8
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 125
    :catch_3
    move-exception v19

    goto/16 :goto_0

    .line 126
    :cond_9
    const-string v19, "**lastapp**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 127
    if-nez v9, :cond_0

    .line 131
    :try_start_5
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleLastApp()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 132
    :catch_4
    move-exception v19

    goto/16 :goto_0

    .line 135
    :cond_a
    const-string v19, "**torch**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 137
    :try_start_6
    const-string v19, "torch"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/hardware/ITorchService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ITorchService;

    move-result-object v16

    .line 139
    .local v16, "torchService":Landroid/hardware/ITorchService;
    invoke-interface/range {v16 .. v16}, Landroid/hardware/ITorchService;->toggleTorch()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 140
    .end local v16    # "torchService":Landroid/hardware/ITorchService;
    :catch_5
    move-exception v19

    goto/16 :goto_0

    .line 143
    :cond_b
    const-string v19, "**power_menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 145
    :try_start_7
    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->toggleGlobalMenu()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 146
    :catch_6
    move-exception v19

    goto/16 :goto_0

    .line 149
    :cond_c
    const-string v19, "**menu**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    const-string v19, "**menu_big**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 151
    :cond_d
    const/16 v19, 0x52

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    .line 153
    :cond_e
    const-string v19, "**ime_nav_left**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 154
    const/16 v19, 0x15

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    .line 156
    :cond_f
    const-string v19, "**ime_nav_right**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 157
    const/16 v19, 0x16

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    .line 159
    :cond_10
    const-string v19, "**ime_nav_up**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 160
    const/16 v19, 0x13

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    .line 162
    :cond_11
    const-string v19, "**ime_nav_down**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 163
    const/16 v19, 0x14

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->triggerVirtualKeypress(IZ)V

    goto/16 :goto_0

    .line 165
    :cond_12
    const-string v19, "**power**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 166
    const-string v19, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    .line 167
    .local v12, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    goto/16 :goto_0

    .line 169
    .end local v12    # "pm":Landroid/os/PowerManager;
    :cond_13
    const-string v19, "**ime**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 170
    if-nez v9, :cond_0

    .line 173
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v20, Landroid/os/UserHandle;

    const/16 v21, -0x2

    invoke-direct/range {v20 .. v21}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 177
    :cond_14
    const-string v19, "**pie**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 178
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isPieEnabled(Landroid/content/Context;)Z

    move-result v11

    .line 179
    .local v11, "pieState":Z
    if-eqz v11, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isNavBarEnabled(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 180
    const v19, 0x1040158

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 185
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pie_controls"

    if-eqz v11, :cond_16

    const/16 v19, 0x0

    :goto_3
    const/16 v22, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$PAC;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_16
    const/16 v19, 0x1

    goto :goto_3

    .line 190
    .end local v11    # "pieState":Z
    :cond_17
    const-string v19, "**nav_bar**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isNavBarEnabled(Landroid/content/Context;)Z

    move-result v10

    .line 192
    .local v10, "navBarState":Z
    if-eqz v10, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isPieEnabled(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_18

    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/pac/Action;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 193
    const v19, 0x104015b

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 198
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "navigation_bar_show"

    if-eqz v10, :cond_19

    const/16 v19, 0x0

    :goto_4
    const/16 v22, -0x2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v19

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$PAC;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    :cond_19
    const/16 v19, 0x1

    goto :goto_4

    .line 203
    .end local v10    # "navBarState":Z
    :cond_1a
    const-string v19, "**kill**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 204
    if-nez v9, :cond_0

    .line 208
    :try_start_8
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleKillApp()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 209
    :catch_7
    move-exception v19

    goto/16 :goto_0

    .line 212
    :cond_1b
    const-string v19, "**lastapp**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 213
    if-nez v9, :cond_0

    .line 217
    :try_start_9
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleLastApp()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    .line 218
    :catch_8
    move-exception v19

    goto/16 :goto_0

    .line 221
    :cond_1c
    const-string v19, "**screenshot**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 223
    :try_start_a
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    .line 224
    :catch_9
    move-exception v19

    goto/16 :goto_0

    .line 227
    :cond_1d
    const-string v19, "**recents**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 228
    if-nez v9, :cond_0

    .line 232
    :try_start_b
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 233
    :catch_a
    move-exception v19

    goto/16 :goto_0

    .line 236
    :cond_1e
    const-string v19, "**assist**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1f

    const-string v19, "**keyguard_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 238
    :cond_1f
    const-string v19, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/SearchManager;

    const/16 v20, 0x1

    const/16 v21, -0x2

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v7

    .line 240
    .local v7, "intent":Landroid/content/Intent;
    if-nez v7, :cond_20

    .line 241
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v19, "android.intent.action.VIEW"

    const-string v20, "http://www.google.com"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 243
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_20
    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v9}, Lcom/android/internal/util/pac/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    goto/16 :goto_0

    .line 245
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_21
    const-string v19, "**voice_search**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    .line 247
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.SEARCH_LONG_PRESS"

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v19, 0x10000000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    :try_start_c
    const-string v19, "search"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/SearchManager;

    .line 254
    .local v14, "searchManager":Landroid/app/SearchManager;
    if-eqz v14, :cond_22

    .line 255
    invoke-virtual {v14}, Landroid/app/SearchManager;->stopSearch()V

    .line 257
    :cond_22
    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v9}, Lcom/android/internal/util/pac/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    .line 258
    .end local v14    # "searchManager":Landroid/app/SearchManager;
    :catch_b
    move-exception v6

    .line 259
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v19, "Action:"

    const-string v20, "No activity to handle assist long press action."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 262
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_23
    const-string v19, "**ring_vib**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_25

    .line 263
    const-string v19, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 264
    .local v4, "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 265
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_24

    .line 266
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 267
    const-string v19, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    .line 268
    .local v17, "vib":Landroid/os/Vibrator;
    if-eqz v17, :cond_0

    .line 269
    const-wide/16 v20, 0x32

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 272
    .end local v17    # "vib":Landroid/os/Vibrator;
    :cond_24
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 273
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v19, 0x5

    const/16 v20, 0x55

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 276
    .local v15, "tg":Landroid/media/ToneGenerator;
    if-eqz v15, :cond_0

    .line 277
    const/16 v19, 0x18

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 282
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v15    # "tg":Landroid/media/ToneGenerator;
    :cond_25
    const-string v19, "**ring_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 283
    const-string v19, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 284
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 285
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    if-eqz v19, :cond_26

    .line 286
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 288
    :cond_26
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 289
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v19, 0x5

    const/16 v20, 0x55

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 292
    .restart local v15    # "tg":Landroid/media/ToneGenerator;
    if-eqz v15, :cond_0

    .line 293
    const/16 v19, 0x18

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 298
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v15    # "tg":Landroid/media/ToneGenerator;
    :cond_27
    const-string v19, "**ring_vib_silent**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 299
    const-string v19, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    .line 300
    .restart local v4    # "am":Landroid/media/AudioManager;
    if-eqz v4, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 301
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    .line 302
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 303
    const-string v19, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Vibrator;

    .line 304
    .restart local v17    # "vib":Landroid/os/Vibrator;
    if-eqz v17, :cond_0

    .line 305
    const-wide/16 v20, 0x32

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto/16 :goto_0

    .line 307
    .end local v17    # "vib":Landroid/os/Vibrator;
    :cond_28
    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_29

    .line 308
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 310
    :cond_29
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 311
    new-instance v15, Landroid/media/ToneGenerator;

    const/16 v19, 0x5

    const/16 v20, 0x55

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 314
    .restart local v15    # "tg":Landroid/media/ToneGenerator;
    if-eqz v15, :cond_0

    .line 315
    const/16 v19, 0x18

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 320
    .end local v4    # "am":Landroid/media/AudioManager;
    .end local v15    # "tg":Landroid/media/ToneGenerator;
    :cond_2a
    const-string v19, "**camera**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 323
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.media.action.STILL_IMAGE_CAMERA"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    .restart local v7    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v9}, Lcom/android/internal/util/pac/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    goto/16 :goto_0

    .line 326
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_2b
    const-string v19, "**media_previous**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 327
    const/16 v19, 0x58

    move/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 329
    :cond_2c
    const-string v19, "**media_next**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 330
    const/16 v19, 0x57

    move/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 332
    :cond_2d
    const-string v19, "**media_play_pause**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 333
    const/16 v19, 0x55

    move/from16 v0, v19

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/internal/util/pac/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    goto/16 :goto_0

    .line 335
    :cond_2e
    const-string v19, "**wake_device**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 336
    const-string v19, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 338
    .local v13, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v13}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v19

    if-nez v19, :cond_0

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/os/PowerManager;->wakeUp(J)V

    goto/16 :goto_0

    .line 342
    .end local v13    # "powerManager":Landroid/os/PowerManager;
    :cond_2f
    const-string v19, "**screenshot**"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 344
    :try_start_d
    invoke-interface {v5}, Lcom/android/internal/statusbar/IStatusBarService;->toggleScreenshot()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_0

    .line 345
    :catch_c
    move-exception v19

    goto/16 :goto_0

    .line 350
    :cond_30
    const/4 v7, 0x0

    .line 352
    .restart local v7    # "intent":Landroid/content/Intent;
    const/16 v19, 0x0

    :try_start_e
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_d

    move-result-object v7

    .line 357
    move-object/from16 v0, p0

    invoke-static {v0, v7, v5, v9}, Lcom/android/internal/util/pac/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V

    goto/16 :goto_0

    .line 353
    :catch_d
    move-exception v6

    .line 354
    .local v6, "e":Ljava/net/URISyntaxException;
    const-string v19, "Action:"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "URISyntaxException: ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 90
    .end local v6    # "e":Ljava/net/URISyntaxException;
    .end local v7    # "intent":Landroid/content/Intent;
    :catch_e
    move-exception v19

    goto/16 :goto_2
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/statusbar/IStatusBarService;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "barService"    # Lcom/android/internal/statusbar/IStatusBarService;
    .param p3, "isKeyguardShowing"    # Z

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 397
    :cond_0
    if-eqz p3, :cond_1

    .line 400
    :try_start_0
    invoke-interface {p2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showCustomIntentAfterKeyguard(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Action"

    const-string v2, "Error starting custom intent on keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    :goto_1
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 408
    :catch_1
    move-exception v0

    .line 409
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "Action"

    const-string v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    .line 431
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 432
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 433
    .local v4, "now":J
    const/4 v14, 0x0

    .line 434
    .local v14, "downflags":I
    const/16 v26, 0x0

    .line 435
    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v6, 0x16

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    const/16 v6, 0x14

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    .line 439
    :cond_0
    const/16 v26, 0x6

    move/from16 v14, v26

    .line 443
    :goto_0
    if-eqz p1, :cond_1

    .line 444
    or-int/lit16 v14, v14, 0x80

    .line 447
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 451
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 453
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 457
    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 458
    return-void

    .line 441
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v26, 0x48

    move/from16 v14, v26

    goto :goto_0
.end method
