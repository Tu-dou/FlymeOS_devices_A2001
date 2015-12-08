.class Lcom/android/server/display/DisplayPowerController$1;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V

    # setter for: Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$002(Lcom/android/server/display/DisplayPowerController;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 283
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerController;->mKeyguardService:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$002(Lcom/android/server/display/DisplayPowerController;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;)Lcom/android/internal/policy/impl/keyguard/KeyguardServiceWrapper;

    .line 288
    return-void
.end method
